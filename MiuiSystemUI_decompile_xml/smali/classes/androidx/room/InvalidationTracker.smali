.class public final Landroidx/room/InvalidationTracker;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TRIGGERS:[Ljava/lang/String;


# instance fields
.field public volatile mCleanupStatement:Landroidx/sqlite/db/SupportSQLiteStatement;

.field public final mDatabase:Landroidx/room/RoomDatabase;

.field public volatile mInitialized:Z

.field public final mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

.field public final mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

.field public final mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mRefreshRunnable:Landroidx/room/InvalidationTracker$1;

.field public final mSyncTriggersLock:Ljava/lang/Object;

.field public final mTableIdLookup:Ljava/util/HashMap;

.field public final mTableNames:[Ljava/lang/String;

.field public final mViewTables:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "DELETE"

    .line 2
    const-string v1, "INSERT"

    .line 4
    const-string v2, "UPDATE"

    .line 6
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    .line 12
    return-void
    .line 14
.end method

.method public varargs constructor <init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    iput-object v0, p0, Landroidx/room/InvalidationTracker;->mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    iput-boolean v1, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    .line 13
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    .line 15
    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    .line 17
    iput-object v0, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    .line 20
    new-instance v0, Ljava/lang/Object;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Landroidx/room/InvalidationTracker;->mSyncTriggersLock:Ljava/lang/Object;

    .line 27
    new-instance v0, Landroidx/room/InvalidationTracker$1;

    .line 29
    invoke-direct {v0, p0}, Landroidx/room/InvalidationTracker$1;-><init>(Landroidx/room/InvalidationTracker;)V

    .line 31
    iput-object v0, p0, Landroidx/room/InvalidationTracker;->mRefreshRunnable:Landroidx/room/InvalidationTracker$1;

    .line 34
    iput-object p1, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    .line 36
    new-instance p1, Landroidx/room/InvalidationTracker$ObservedTableTracker;

    .line 38
    array-length v0, p4

    .line 40
    invoke-direct {p1, v0}, Landroidx/room/InvalidationTracker$ObservedTableTracker;-><init>(I)V

    .line 41
    iput-object p1, p0, Landroidx/room/InvalidationTracker;->mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    .line 44
    new-instance p1, Ljava/util/HashMap;

    .line 46
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 48
    iput-object p1, p0, Landroidx/room/InvalidationTracker;->mTableIdLookup:Ljava/util/HashMap;

    .line 51
    iput-object p3, p0, Landroidx/room/InvalidationTracker;->mViewTables:Ljava/util/Map;

    .line 53
    new-instance p1, Ljava/util/IdentityHashMap;

    .line 55
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 57
    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 60
    array-length p1, p4

    .line 63
    new-array p3, p1, [Ljava/lang/String;

    .line 64
    iput-object p3, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    .line 66
    :goto_0
    if-ge v1, p1, :cond_1

    .line 68
    aget-object p3, p4, v1

    .line 70
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 74
    move-result-object p3

    .line 77
    iget-object v2, p0, Landroidx/room/InvalidationTracker;->mTableIdLookup:Ljava/util/HashMap;

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v3

    .line 83
    invoke-virtual {v2, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    aget-object v2, p4, v1

    .line 87
    move-object v3, p2

    .line 89
    check-cast v3, Ljava/util/HashMap;

    .line 90
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object v2

    .line 95
    check-cast v2, Ljava/lang/String;

    .line 96
    if-eqz v2, :cond_0

    .line 98
    iget-object p3, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 105
    aput-object v0, p3, v1

    .line 106
    goto :goto_1

    .line 108
    :cond_0
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    .line 109
    aput-object p3, v0, v1

    .line 111
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 113
    goto :goto_0

    .line 115
    :cond_1
    check-cast p2, Ljava/util/HashMap;

    .line 116
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 118
    move-result-object p1

    .line 121
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 122
    move-result-object p1

    .line 125
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    move-result p2

    .line 129
    if-eqz p2, :cond_3

    .line 130
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    move-result-object p2

    .line 135
    check-cast p2, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 138
    move-result-object p3

    .line 141
    check-cast p3, Ljava/lang/String;

    .line 142
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 144
    invoke-virtual {p3, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 146
    move-result-object p3

    .line 149
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mTableIdLookup:Ljava/util/HashMap;

    .line 150
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 152
    move-result v0

    .line 155
    if-eqz v0, :cond_2

    .line 156
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 158
    move-result-object p2

    .line 161
    check-cast p2, Ljava/lang/String;

    .line 162
    invoke-virtual {p2, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 164
    move-result-object p2

    .line 167
    iget-object p4, p0, Landroidx/room/InvalidationTracker;->mTableIdLookup:Ljava/util/HashMap;

    .line 168
    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-result-object p3

    .line 173
    check-cast p3, Ljava/lang/Integer;

    .line 174
    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    goto :goto_2

    .line 179
    :cond_3
    return-void
    .line 180
.end method


# virtual methods
.method public final ensureInitialization()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    .line 2
    iget-object v0, v0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    return v2

    .line 21
    :cond_1
    iget-boolean v0, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    .line 22
    if-nez v0, :cond_2

    .line 24
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    .line 26
    iget-object v0, v0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 28
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 30
    :cond_2
    iget-boolean p0, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    .line 33
    if-nez p0, :cond_3

    .line 35
    const-string p0, "ROOM"

    .line 37
    const-string v0, "database is not initialized even though it is open"

    .line 39
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return v2

    .line 44
    :cond_3
    return v1
    .line 45
.end method

.method public final startTrackingTable(ILandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "INSERT OR IGNORE INTO room_table_modification_log VALUES("

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, ", 0)"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    invoke-interface {p2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    iget-object p0, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    .line 24
    aget-object p0, p0, p1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    sget-object v1, Landroidx/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    .line 33
    const/4 v2, 0x0

    .line 35
    move v3, v2

    .line 36
    :goto_0
    const/4 v4, 0x3

    .line 37
    if-ge v3, v4, :cond_0

    .line 38
    aget-object v4, v1, v3

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 42
    const-string v5, "CREATE TEMP TRIGGER IF NOT EXISTS "

    .line 45
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v5, "`"

    .line 50
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v6, "room_table_modification_trigger_"

    .line 55
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v6, "_"

    .line 61
    invoke-static {v0, p0, v6, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v5, " AFTER "

    .line 66
    const-string v6, " ON `"

    .line 68
    invoke-static {v0, v5, v4, v6, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v4, "` BEGIN UPDATE "

    .line 73
    const-string/jumbo v5, "room_table_modification_log"

    .line 75
    const-string v6, " SET "

    .line 78
    const-string v7, "invalidated"

    .line 80
    invoke-static {v0, v4, v5, v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v4, " = 1"

    .line 85
    const-string v5, " WHERE "

    .line 87
    const-string/jumbo v6, "table_id"

    .line 89
    const-string v8, " = "

    .line 92
    invoke-static {v0, v4, v5, v6, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string v4, " AND "

    .line 100
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v4, " = 0"

    .line 108
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v4, "; END"

    .line 113
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v4

    .line 121
    invoke-interface {p2, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    add-int/lit8 v3, v3, 0x1

    .line 125
    goto :goto_0

    .line 127
    :cond_0
    return-void
    .line 128
.end method

.method public final syncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 13

    .line 1
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    .line 9
    iget-object v0, v0, Landroidx/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 13
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    iget-object v1, p0, Landroidx/room/InvalidationTracker;->mSyncTriggersLock:Ljava/lang/Object;

    .line 20
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 22
    :try_start_2
    iget-object v2, p0, Landroidx/room/InvalidationTracker;->mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    .line 23
    invoke-virtual {v2}, Landroidx/room/InvalidationTracker$ObservedTableTracker;->getTablesToSync()[I

    .line 25
    move-result-object v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    :try_start_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 32
    return-void

    .line 35
    :cond_1
    :try_start_4
    array-length v3, v2

    .line 36
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    .line 37
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionNonExclusive()V

    .line 43
    goto :goto_0

    .line 46
    :cond_2
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 47
    :goto_0
    const/4 v4, 0x0

    .line 50
    move v5, v4

    .line 51
    :goto_1
    if-ge v5, v3, :cond_6

    .line 52
    :try_start_5
    aget v6, v2, v5

    .line 54
    const/4 v7, 0x1

    .line 56
    if-eq v6, v7, :cond_4

    .line 57
    const/4 v7, 0x2

    .line 59
    if-eq v6, v7, :cond_3

    .line 60
    goto :goto_3

    .line 62
    :cond_3
    iget-object v6, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    .line 63
    aget-object v6, v6, v5

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    sget-object v8, Landroidx/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    .line 72
    move v9, v4

    .line 74
    :goto_2
    const/4 v10, 0x3

    .line 75
    if-ge v9, v10, :cond_5

    .line 76
    aget-object v10, v8, v9

    .line 78
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 80
    const-string v11, "DROP TRIGGER IF EXISTS "

    .line 83
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v11, "`"

    .line 88
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string/jumbo v12, "room_table_modification_trigger_"

    .line 93
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v12, "_"

    .line 102
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v10

    .line 116
    invoke-interface {p1, v10}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    add-int/lit8 v9, v9, 0x1

    .line 120
    goto :goto_2

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    goto :goto_4

    .line 124
    :cond_4
    invoke-virtual {p0, v5, p1}, Landroidx/room/InvalidationTracker;->startTrackingTable(ILandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 125
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 128
    goto :goto_1

    .line 130
    :cond_6
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 131
    :try_start_6
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 134
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 137
    :try_start_7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 138
    goto :goto_5

    .line 141
    :goto_4
    :try_start_8
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 142
    throw p0

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 147
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 148
    :catchall_2
    move-exception p0

    .line 149
    :try_start_a
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 150
    throw p0
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0

    .line 153
    :catch_0
    move-exception p0

    .line 154
    const-string p1, "ROOM"

    .line 155
    const-string v0, "Cannot run invalidation tracker. Is the db closed?"

    .line 157
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :goto_5
    return-void
    .line 162
.end method
