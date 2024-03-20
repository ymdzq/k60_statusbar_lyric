.class public final Landroidx/room/RoomOpenHelper;
.super Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mConfiguration:Landroidx/room/DatabaseConfiguration;

.field public final mDelegate:Landroidx/room/RoomOpenHelper$Delegate;

.field public final mIdentityHash:Ljava/lang/String;

.field public final mLegacyHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p2, Landroidx/room/RoomOpenHelper$Delegate;->version:I

    .line 2
    invoke-direct {p0, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;-><init>(I)V

    .line 4
    iput-object p1, p0, Landroidx/room/RoomOpenHelper;->mConfiguration:Landroidx/room/DatabaseConfiguration;

    .line 7
    iput-object p2, p0, Landroidx/room/RoomOpenHelper;->mDelegate:Landroidx/room/RoomOpenHelper$Delegate;

    .line 9
    iput-object p3, p0, Landroidx/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Landroidx/room/RoomOpenHelper;->mLegacyHash:Ljava/lang/String;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final onConfigure()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onCreate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 3

    .line 1
    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    .line 2
    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    .line 4
    move-result-object v0

    .line 7
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 15
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-nez v1, :cond_0

    .line 19
    const/4 v2, 0x1

    .line 21
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 22
    iget-object v0, p0, Landroidx/room/RoomOpenHelper;->mDelegate:Landroidx/room/RoomOpenHelper$Delegate;

    .line 25
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenHelper$Delegate;->createAllTables(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 27
    if-nez v2, :cond_2

    .line 30
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenHelper$Delegate;->onValidateSchema(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 32
    move-result-object v1

    .line 35
    iget-boolean v2, v1, Landroidx/room/RoomOpenHelper$ValidationResult;->isValid:Z

    .line 36
    if-eqz v2, :cond_1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    const-string v0, "Pre-packaged database has an invalid schema: "

    .line 45
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v0, v1, Landroidx/room/RoomOpenHelper$ValidationResult;->expectedFoundMsg:Ljava/lang/String;

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0

    .line 62
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/room/RoomOpenHelper;->updateIdentity(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 63
    invoke-virtual {v0}, Landroidx/room/RoomOpenHelper$Delegate;->onCreate()V

    .line 66
    return-void

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 71
    throw p0
    .line 74
.end method

.method public final onDowngrade(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/RoomOpenHelper;->onUpgrade(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V

    .line 2
    return-void
    .line 5
.end method

.method public final onOpen(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 5

    .line 1
    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    .line 2
    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    .line 4
    move-result-object v0

    .line 7
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 15
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v2

    .line 23
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 24
    const/4 v0, 0x0

    .line 27
    iget-object v3, p0, Landroidx/room/RoomOpenHelper;->mDelegate:Landroidx/room/RoomOpenHelper$Delegate;

    .line 28
    if-eqz v1, :cond_3

    .line 30
    new-instance v1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    .line 32
    const-string v4, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    .line 34
    invoke-direct {v1, v4, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p1, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    .line 39
    move-result-object v1

    .line 42
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 43
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move-object v2, v0

    .line 54
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 55
    iget-object v1, p0, Landroidx/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v4

    .line 63
    if-nez v4, :cond_4

    .line 64
    iget-object v4, p0, Landroidx/room/RoomOpenHelper;->mLegacyHash:Ljava/lang/String;

    .line 66
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v4

    .line 71
    if-eqz v4, :cond_2

    .line 72
    goto :goto_2

    .line 74
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 75
    const-string p1, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: "

    .line 77
    const-string v0, ", found: "

    .line 79
    invoke-static {p1, v2, v0, v1}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 90
    throw p0

    .line 93
    :cond_3
    invoke-virtual {v3, p1}, Landroidx/room/RoomOpenHelper$Delegate;->onValidateSchema(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 94
    move-result-object v1

    .line 97
    iget-boolean v2, v1, Landroidx/room/RoomOpenHelper$ValidationResult;->isValid:Z

    .line 98
    if-eqz v2, :cond_5

    .line 100
    invoke-virtual {v3}, Landroidx/room/RoomOpenHelper$Delegate;->onPostMigrate()V

    .line 102
    invoke-virtual {p0, p1}, Landroidx/room/RoomOpenHelper;->updateIdentity(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 105
    :cond_4
    :goto_2
    invoke-virtual {v3, p1}, Landroidx/room/RoomOpenHelper$Delegate;->onOpen(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 108
    iput-object v0, p0, Landroidx/room/RoomOpenHelper;->mConfiguration:Landroidx/room/DatabaseConfiguration;

    .line 111
    return-void

    .line 113
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    const-string v0, "Pre-packaged database has an invalid schema: "

    .line 118
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    iget-object v0, v1, Landroidx/room/RoomOpenHelper$ValidationResult;->expectedFoundMsg:Ljava/lang/String;

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 131
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    throw p0

    .line 135
    :catchall_1
    move-exception p0

    .line 136
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 137
    throw p0
    .line 140
.end method

.method public final onUpgrade(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/room/RoomOpenHelper;->mConfiguration:Landroidx/room/DatabaseConfiguration;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_d

    .line 5
    iget-object v0, v0, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    const/4 v2, 0x1

    .line 12
    if-ne p2, p3, :cond_0

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 18
    goto/16 :goto_7

    .line 19
    :cond_0
    if-le p3, p2, :cond_1

    .line 21
    move v3, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v3, v1

    .line 25
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    move v5, p2

    .line 31
    :cond_2
    if-eqz v3, :cond_3

    .line 32
    if-ge v5, p3, :cond_a

    .line 34
    goto :goto_1

    .line 36
    :cond_3
    if-le v5, p3, :cond_a

    .line 37
    :goto_1
    iget-object v6, v0, Landroidx/room/RoomDatabase$MigrationContainer;->mMigrations:Ljava/util/HashMap;

    .line 39
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v7

    .line 44
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v6

    .line 48
    check-cast v6, Ljava/util/TreeMap;

    .line 49
    if-nez v6, :cond_4

    .line 51
    goto :goto_6

    .line 53
    :cond_4
    if-eqz v3, :cond_5

    .line 54
    invoke-virtual {v6}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    .line 56
    move-result-object v7

    .line 59
    goto :goto_2

    .line 60
    :cond_5
    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 61
    move-result-object v7

    .line 64
    :goto_2
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v7

    .line 68
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v8

    .line 72
    if-eqz v8, :cond_9

    .line 73
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v8

    .line 78
    check-cast v8, Ljava/lang/Integer;

    .line 79
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 81
    move-result v8

    .line 84
    if-eqz v3, :cond_7

    .line 85
    if-gt v8, p3, :cond_8

    .line 87
    if-le v8, v5, :cond_8

    .line 89
    goto :goto_3

    .line 91
    :cond_7
    if-lt v8, p3, :cond_8

    .line 92
    if-ge v8, v5, :cond_8

    .line 94
    :goto_3
    move v9, v2

    .line 96
    goto :goto_4

    .line 97
    :cond_8
    move v9, v1

    .line 98
    :goto_4
    if-eqz v9, :cond_6

    .line 99
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v5

    .line 104
    invoke-virtual {v6, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-result-object v5

    .line 108
    check-cast v5, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB$1;

    .line 109
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    move v6, v2

    .line 114
    move v5, v8

    .line 115
    goto :goto_5

    .line 116
    :cond_9
    move v6, v1

    .line 117
    :goto_5
    if-nez v6, :cond_2

    .line 118
    :goto_6
    const/4 v0, 0x0

    .line 120
    goto :goto_7

    .line 121
    :cond_a
    move-object v0, v4

    .line 122
    :goto_7
    if-eqz v0, :cond_d

    .line 123
    iget-object v1, p0, Landroidx/room/RoomOpenHelper;->mDelegate:Landroidx/room/RoomOpenHelper$Delegate;

    .line 125
    invoke-virtual {v1, p1}, Landroidx/room/RoomOpenHelper$Delegate;->onPreMigrate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 130
    move-result-object v0

    .line 133
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    move-result v3

    .line 137
    if-eqz v3, :cond_b

    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    move-result-object v3

    .line 143
    check-cast v3, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB$1;

    .line 144
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    const-string v3, "drop table if exists NotificationUsageInfo"

    .line 149
    invoke-virtual {p1, v3}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    const-string v3, "drop table if exists notification_usage"

    .line 154
    invoke-virtual {p1, v3}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    const-string v3, "create table if not exists notification_usage (id integer primary key not null,pkgName text not null, latestSentTime integer not null,sentCount integer not null,avgSentDaily integer  not null,avgSentWeekly integer not null)"

    .line 159
    invoke-virtual {p1, v3}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    goto :goto_8

    .line 164
    :cond_b
    invoke-virtual {v1, p1}, Landroidx/room/RoomOpenHelper$Delegate;->onValidateSchema(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 165
    move-result-object v0

    .line 168
    iget-boolean v3, v0, Landroidx/room/RoomOpenHelper$ValidationResult;->isValid:Z

    .line 169
    if-eqz v3, :cond_c

    .line 171
    invoke-virtual {v1}, Landroidx/room/RoomOpenHelper$Delegate;->onPostMigrate()V

    .line 173
    invoke-virtual {p0, p1}, Landroidx/room/RoomOpenHelper;->updateIdentity(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 176
    move v1, v2

    .line 179
    goto :goto_9

    .line 180
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    .line 183
    const-string p2, "Migration didn\'t properly handle: "

    .line 185
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    iget-object p2, v0, Landroidx/room/RoomOpenHelper$ValidationResult;->expectedFoundMsg:Ljava/lang/String;

    .line 190
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object p1

    .line 198
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 199
    throw p0

    .line 202
    :cond_d
    :goto_9
    if-eqz v1, :cond_e

    .line 203
    return-void

    .line 205
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 206
    const-string p1, "A migration from "

    .line 208
    const-string v0, " to "

    .line 210
    const-string v1, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    .line 212
    invoke-static {p1, p2, v0, p3, v1}, Landroidx/room/RoomOpenHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 214
    move-result-object p1

    .line 217
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 218
    throw p0
    .line 221
.end method

.method public final updateIdentity(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 2

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 2
    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'"

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Landroidx/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string p0, "\')"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 28
    return-void
    .line 31
.end method
