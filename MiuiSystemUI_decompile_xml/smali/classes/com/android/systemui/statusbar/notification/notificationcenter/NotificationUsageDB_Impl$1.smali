.class public final Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl$1;->this$0:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl;

    .line 2
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final createAllTables(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 0

    .line 1
    const-string p0, "CREATE TABLE IF NOT EXISTS `notification_usage` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `pkgName` TEXT NOT NULL, `latestSentTime` INTEGER NOT NULL, `sentCount` INTEGER NOT NULL, `avgSentDaily` INTEGER NOT NULL, `avgSentWeekly` INTEGER NOT NULL)"

    .line 2
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 7
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'3b57adf1a6ccd6f075e4622747bb7d28\')"

    .line 12
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    return-void
    .line 17
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl$1;->this$0:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl;

    .line 2
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 11
    if-gtz v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    .line 15
    const/4 v0, 0x0

    .line 17
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 22
    const/4 p0, 0x0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    return-void
    .line 27
.end method

.method public final onOpen(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl$1;->this$0:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl;

    .line 2
    iput-object p1, v0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl$1;->this$0:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl;

    .line 6
    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl$1;->this$0:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl;

    .line 11
    iget-object p1, p1, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    .line 13
    if-eqz p1, :cond_1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    move-result p1

    .line 20
    if-gtz p1, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl$1;->this$0:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl;

    .line 24
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    .line 26
    const/4 p1, 0x0

    .line 28
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 32
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 33
    const/4 p0, 0x0

    .line 36
    throw p0

    .line 37
    :cond_1
    :goto_0
    return-void
    .line 38
.end method

.method public final onPostMigrate()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onPreMigrate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onValidateSchema(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
    .locals 22

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 8
    const-string v5, "id"

    .line 10
    const-string v6, "INTEGER"

    .line 12
    const/4 v8, 0x1

    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    move-object v2, v1

    .line 18
    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    const-string v2, "id"

    .line 22
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 27
    const-string v6, "pkgName"

    .line 29
    const-string v7, "TEXT"

    .line 31
    const/4 v14, 0x1

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v13, 0x0

    .line 35
    const/4 v10, 0x1

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x1

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x1

    .line 40
    move-object v3, v1

    .line 41
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    const-string v3, "pkgName"

    .line 45
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 50
    const-string v18, "latestSentTime"

    .line 52
    const-string v19, "INTEGER"

    .line 54
    const/16 v16, 0x0

    .line 56
    const/16 v17, 0x1

    .line 58
    const/16 v20, 0x0

    .line 60
    const/16 v21, 0x1

    .line 62
    move-object v15, v1

    .line 64
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    const-string v3, "latestSentTime"

    .line 68
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 73
    const-string/jumbo v18, "sentCount"

    .line 75
    const-string v19, "INTEGER"

    .line 78
    move-object v15, v1

    .line 80
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 81
    const-string/jumbo v3, "sentCount"

    .line 84
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 90
    const-string v18, "avgSentDaily"

    .line 92
    const-string v19, "INTEGER"

    .line 94
    move-object v15, v1

    .line 96
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    const-string v3, "avgSentDaily"

    .line 100
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 105
    const-string v11, "avgSentWeekly"

    .line 107
    const-string v12, "INTEGER"

    .line 109
    move-object v8, v1

    .line 111
    move v9, v2

    .line 112
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 113
    const-string v2, "avgSentWeekly"

    .line 116
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v1, Ljava/util/HashSet;

    .line 121
    const/4 v2, 0x0

    .line 123
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 124
    new-instance v3, Ljava/util/HashSet;

    .line 127
    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 129
    new-instance v4, Landroidx/room/util/TableInfo;

    .line 132
    const-string v5, "notification_usage"

    .line 134
    invoke-direct {v4, v5, v0, v1, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 136
    move-object/from16 v0, p1

    .line 139
    invoke-static {v0, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 141
    move-result-object v0

    .line 144
    invoke-virtual {v4, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result v1

    .line 148
    if-nez v1, :cond_0

    .line 149
    new-instance v1, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    .line 153
    const-string v5, "notification_usage(com.android.systemui.statusbar.notification.notificationcenter.NotificationUsageInfo).\n Expected:\n"

    .line 155
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    const-string v4, "\n Found:\n"

    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 174
    invoke-direct {v1, v0, v2}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 175
    return-object v1

    .line 178
    :cond_0
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 179
    const/4 v1, 0x1

    .line 181
    const/4 v2, 0x0

    .line 182
    invoke-direct {v0, v2, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 183
    return-object v0
    .line 186
.end method
