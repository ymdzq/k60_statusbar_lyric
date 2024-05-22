.class public final Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl;
.super Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public volatile _notificationUsageDao:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    new-instance v2, Ljava/util/HashMap;

    .line 8
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    new-instance v1, Landroidx/room/InvalidationTracker;

    .line 13
    const-string v3, "notification_usage"

    .line 15
    filled-new-array {v3}, [Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 20
    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    .line 21
    return-object v1
.end method

.method public final createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 3

    .line 1
    new-instance v0, Landroidx/room/RoomOpenHelper;

    .line 2
    new-instance v1, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl$1;

    .line 4
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl$1;-><init>(Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl;)V

    .line 6
    const-string p0, "3b57adf1a6ccd6f075e4622747bb7d28"

    .line 9
    const-string v2, "9c31d7c538c9de50b012bb4ed85e97b0"

    .line 11
    invoke-direct {v0, p1, v1, p0, v2}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p0, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    .line 16
    check-cast p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    .line 23
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    .line 25
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 27
    invoke-direct {p0, v1, p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V

    .line 29
    return-object p0
    .line 32
.end method

.method public final getAutoMigrations()Ljava/util/List;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB$1;

    .line 3
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 5
    move-result-object p0

    .line 8
    return-object p0
    .line 9
.end method

.method public final getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/HashSet;

    .line 2
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final getRequiredTypeConverters()Ljava/util/Map;
    .locals 2

    .line 1
    new-instance p0, Ljava/util/HashMap;

    .line 2
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 7
    move-result-object v0

    .line 10
    const-class v1, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;

    .line 11
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    return-object p0
    .line 16
.end method

.method public final getUsageDao()Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl;->_notificationUsageDao:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl;->_notificationUsageDao:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;

    .line 6
    return-object p0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl;->_notificationUsageDao:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;

    .line 10
    if-nez v0, :cond_1

    .line 12
    new-instance v0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;

    .line 14
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;-><init>(Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;)V

    .line 16
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl;->_notificationUsageDao:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB_Impl;->_notificationUsageDao:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;

    .line 21
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v0
    .line 27
.end method
