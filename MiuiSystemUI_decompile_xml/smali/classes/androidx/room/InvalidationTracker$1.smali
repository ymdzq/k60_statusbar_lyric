.class public final Landroidx/room/InvalidationTracker$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/room/InvalidationTracker;


# direct methods
.method public constructor <init>(Landroidx/room/InvalidationTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final checkUpdatedTable()Ljava/util/Set;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    iget-object v1, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 7
    iget-object v1, v1, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    .line 9
    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    .line 11
    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    .line 13
    const/4 v4, 0x0

    .line 15
    invoke-direct {v2, v3, v4}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    .line 19
    move-result-object v1

    .line 22
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 23
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    const/4 v2, 0x0

    .line 29
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 30
    move-result v2

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 42
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 45
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    iget-object p0, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 51
    iget-object p0, p0, Landroidx/room/InvalidationTracker;->mCleanupStatement:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 53
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 55
    :cond_1
    return-object v0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 60
    throw p0
    .line 63
.end method

.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 2
    iget-object v0, v0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    .line 4
    iget-object v0, v0, Landroidx/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 8
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 12
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    :try_start_0
    iget-object v4, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 18
    invoke-virtual {v4}, Landroidx/room/InvalidationTracker;->ensureInitialization()Z

    .line 20
    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 23
    if-nez v4, :cond_0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 26
    iget-object p0, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    return-void

    .line 34
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 35
    iget-object v4, v4, Landroidx/room/InvalidationTracker;->mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 39
    move-result v4

    .line 42
    if-nez v4, :cond_1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    iget-object v4, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 46
    iget-object v4, v4, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    .line 48
    iget-object v4, v4, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 50
    invoke-interface {v4}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 52
    move-result-object v4

    .line 55
    invoke-interface {v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    .line 56
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    iget-object v4, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 63
    iget-object v4, v4, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    .line 65
    iget-object v4, v4, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 67
    invoke-interface {v4}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 69
    move-result-object v4

    .line 72
    invoke-interface {v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 73
    :try_start_2
    invoke-virtual {p0}, Landroidx/room/InvalidationTracker$1;->checkUpdatedTable()Ljava/util/Set;

    .line 76
    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    :try_start_3
    invoke-interface {v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    :try_start_4
    invoke-interface {v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 83
    goto :goto_3

    .line 86
    :catch_0
    move-exception v4

    .line 87
    goto :goto_2

    .line 88
    :catchall_0
    move-exception v6

    .line 89
    goto :goto_1

    .line 90
    :catchall_1
    move-exception v6

    .line 91
    move-object v5, v3

    .line 92
    :goto_1
    invoke-interface {v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 93
    throw v6
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 96
    :catchall_2
    move-exception v1

    .line 97
    goto/16 :goto_8

    .line 98
    :catch_1
    move-exception v4

    .line 100
    move-object v5, v3

    .line 101
    :goto_2
    :try_start_5
    const-string v6, "ROOM"

    .line 102
    const-string v7, "Cannot run invalidation tracker. Is the db closed?"

    .line 104
    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 106
    :goto_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 109
    iget-object v0, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    if-eqz v5, :cond_9

    .line 117
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 119
    move-result v0

    .line 122
    if-nez v0, :cond_9

    .line 123
    iget-object v0, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 125
    iget-object v0, v0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    .line 127
    monitor-enter v0

    .line 129
    :try_start_6
    iget-object p0, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 130
    iget-object p0, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    .line 132
    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object p0

    .line 137
    :cond_3
    :goto_4
    move-object v4, p0

    .line 138
    check-cast v4, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;

    .line 139
    invoke-virtual {v4}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->hasNext()Z

    .line 141
    move-result v6

    .line 144
    if-eqz v6, :cond_8

    .line 145
    invoke-virtual {v4}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->next()Ljava/lang/Object;

    .line 147
    move-result-object v4

    .line 150
    check-cast v4, Ljava/util/Map$Entry;

    .line 151
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 153
    move-result-object v4

    .line 156
    check-cast v4, Landroidx/room/InvalidationTracker$ObserverWrapper;

    .line 157
    iget-object v6, v4, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    .line 159
    array-length v7, v6

    .line 161
    move v8, v2

    .line 162
    move-object v9, v3

    .line 163
    :goto_5
    if-ge v8, v7, :cond_7

    .line 164
    aget v10, v6, v8

    .line 166
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    move-result-object v10

    .line 171
    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 172
    move-result v10

    .line 175
    if-eqz v10, :cond_6

    .line 176
    if-ne v7, v1, :cond_4

    .line 178
    iget-object v9, v4, Landroidx/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    .line 180
    goto :goto_6

    .line 182
    :cond_4
    if-nez v9, :cond_5

    .line 183
    new-instance v9, Ljava/util/HashSet;

    .line 185
    invoke-direct {v9, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 187
    :cond_5
    iget-object v10, v4, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    .line 190
    aget-object v10, v10, v8

    .line 192
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_6
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 197
    goto :goto_5

    .line 199
    :cond_7
    if-eqz v9, :cond_3

    .line 200
    iget-object v4, v4, Landroidx/room/InvalidationTracker$ObserverWrapper;->mObserver:Landroidx/room/MultiInstanceInvalidationClient$5;

    .line 202
    invoke-virtual {v4, v9}, Landroidx/room/MultiInstanceInvalidationClient$5;->onInvalidated(Ljava/util/Set;)V

    .line 204
    goto :goto_4

    .line 207
    :cond_8
    monitor-exit v0

    .line 208
    goto :goto_7

    .line 209
    :catchall_3
    move-exception p0

    .line 210
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 211
    throw p0

    .line 212
    :cond_9
    :goto_7
    return-void

    .line 213
    :goto_8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 214
    iget-object p0, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    throw v1
    .line 222
.end method
