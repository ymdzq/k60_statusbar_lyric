.class public final Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final mListeners:Ljava/util/Map;

.field public static final mTiles:Ljava/util/Map;


# instance fields
.field public final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public final mBackupManager:Landroid/app/backup/BackupManager;

.field public final mBaseBroadcastReceiver:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBubblesOptional:Ljava/util/Optional;

.field public final mContext:Landroid/content/Context;

.field public final mINotificationManager:Landroid/app/INotificationManager;

.field public final mIPeopleManager:Landroid/app/people/IPeopleManager;

.field public final mLauncherApps:Landroid/content/pm/LauncherApps;

.field public final mListener:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;

.field public final mLock:Ljava/lang/Object;

.field public final mManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

.field public final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final mNotificationKeyToWidgetIdsMatchedByUri:Ljava/util/Map;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPeopleManager:Landroid/app/people/PeopleManager;

.field public mRegisteredReceivers:Z

.field public final mSharedPrefs:Landroid/content/SharedPreferences;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListeners:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    sput-object v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mTiles:Ljava/util/Map;

    .line 14
    return-void
    .line 16
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/app/people/IPeopleManager;Landroid/app/people/PeopleManager;Landroid/content/pm/LauncherApps;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Landroid/content/pm/PackageManager;Ljava/util/Optional;Landroid/os/UserManager;Landroid/app/backup/BackupManager;Landroid/app/INotificationManager;Landroid/app/NotificationManager;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    .line 27
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationKeyToWidgetIdsMatchedByUri:Ljava/util/Map;

    .line 29
    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListener:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;

    .line 30
    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBaseBroadcastReceiver:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;

    .line 31
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 33
    iput-object p3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    .line 34
    iput-object p4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPeopleManager:Landroid/app/people/PeopleManager;

    .line 35
    iput-object p5, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 36
    iput-object p6, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 37
    iput-object p7, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 38
    iput-object p8, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBubblesOptional:Ljava/util/Optional;

    .line 39
    iput-object p9, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserManager:Landroid/os/UserManager;

    .line 40
    iput-object p10, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 41
    iput-object p11, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mINotificationManager:Landroid/app/INotificationManager;

    .line 42
    iput-object p12, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 43
    iput-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 44
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 45
    iput-object p13, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Landroid/content/pm/PackageManager;Ljava/util/Optional;Landroid/os/UserManager;Landroid/app/NotificationManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationKeyToWidgetIdsMatchedByUri:Ljava/util/Map;

    .line 5
    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListener:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;

    .line 6
    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBaseBroadcastReceiver:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;

    .line 7
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const-string v0, "people"

    .line 9
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/app/people/IPeopleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    .line 11
    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 12
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 13
    const-class p2, Landroid/app/people/PeopleManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/people/PeopleManager;

    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPeopleManager:Landroid/app/people/PeopleManager;

    .line 14
    iput-object p3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 15
    iput-object p4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p2, "notification"

    .line 16
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 17
    invoke-static {p2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mINotificationManager:Landroid/app/INotificationManager;

    .line 18
    iput-object p5, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBubblesOptional:Ljava/util/Optional;

    .line 19
    iput-object p6, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserManager:Landroid/os/UserManager;

    .line 20
    new-instance p2, Landroid/app/backup/BackupManager;

    invoke-direct {p2, p1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 21
    iput-object p7, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 22
    iput-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 23
    iput-object p8, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 24
    iput-object p9, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static getNewWidgets(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Set;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 2
    move-result-object p0

    .line 5
    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda1;

    .line 6
    invoke-direct {v0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    .line 8
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 11
    move-result-object p0

    .line 14
    new-instance p1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda2;

    .line 15
    const/4 v0, 0x0

    .line 17
    invoke-direct {p1, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda2;-><init>(I)V

    .line 18
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 21
    move-result-object p0

    .line 24
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 25
    move-result-object p1

    .line 28
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 32
    check-cast p0, Ljava/util/Set;

    .line 33
    return-object p0
    .line 35
.end method


# virtual methods
.method public final addNewWidget(ILcom/android/systemui/people/widget/PeopleTileKey;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileFromPersistentStorage(Lcom/android/systemui/people/widget/PeopleTileKey;IZ)Landroid/app/people/PeopleSpaceTile;

    .line 3
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->augmentTileFromNotificationEntryManager(Landroid/app/people/PeopleSpaceTile;Ljava/util/Optional;)Landroid/app/people/PeopleSpaceTile;

    .line 18
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    .line 22
    monitor-enter v1

    .line 24
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getKeyFromStorageByWidgetId(I)Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 25
    move-result-object v2

    .line 28
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    invoke-static {v2}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    .line 30
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    filled-new-array {p1}, [I

    .line 36
    move-result-object v1

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->deleteWidgets([I)V

    .line 40
    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 44
    sget-object v2, Lcom/android/systemui/people/PeopleSpaceUtils$PeopleSpaceWidgetEvent;->PEOPLE_SPACE_WIDGET_ADDED:Lcom/android/systemui/people/PeopleSpaceUtils$PeopleSpaceWidgetEvent;

    .line 46
    check-cast v1, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 48
    invoke-virtual {v1, v2}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 50
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    .line 53
    monitor-enter v2

    .line 55
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    .line 58
    move-result-object v3

    .line 61
    iget-object v4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 62
    invoke-static {v1, p2, p1, v3, v4}, Lcom/android/systemui/people/PeopleSpaceUtils;->setSharedPreferencesStorageForTile(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleTileKey;ILandroid/net/Uri;Landroid/app/backup/BackupManager;)V

    .line 64
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->registerConversationListenerIfNeeded(ILcom/android/systemui/people/widget/PeopleTileKey;)V

    .line 68
    :try_start_3
    iget-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 71
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 76
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 80
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 81
    move-result-object v2

    .line 84
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    .line 85
    move-result-object v3

    .line 88
    const/4 v4, 0x2

    .line 89
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/content/pm/LauncherApps;->cacheShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 90
    goto :goto_1

    .line 93
    :catch_0
    move-exception p2

    .line 94
    const-string v1, "PeopleSpaceWidgetMgr"

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    const-string v3, "failed to cache shortcut for widget "

    .line 99
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v2

    .line 110
    invoke-static {v1, v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 114
    new-instance v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda5;

    .line 116
    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;ILandroid/app/people/PeopleSpaceTile;)V

    .line 118
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 121
    return-void

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    throw p0

    .line 127
    :catchall_1
    move-exception p0

    .line 128
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 129
    throw p0

    .line 130
    :catch_1
    const-string p0, "PeopleSpaceWidgetMgr"

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    .line 133
    const-string v0, "Cannot add widget "

    .line 135
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string p1, " since app was uninstalled"

    .line 143
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p1

    .line 151
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
    .line 155
.end method

.method public final augmentTileFromNotificationEntryManager(Landroid/app/people/PeopleSpaceTile;Ljava/util/Optional;)Landroid/app/people/PeopleSpaceTile;
    .locals 6

    .line 1
    new-instance v2, Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 2
    invoke-direct {v2, p1}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Landroid/app/people/PeopleSpaceTile;)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->groupConversationNotifications(Ljava/util/Collection;)Ljava/util/Map;

    .line 15
    move-result-object v4

    .line 18
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    .line 19
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    move-object v3, v0

    .line 35
    move-object v0, p0

    .line 36
    move-object v1, p1

    .line 37
    move-object v5, p2

    .line 38
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->augmentTileFromNotifications(Landroid/app/people/PeopleSpaceTile;Lcom/android/systemui/people/widget/PeopleTileKey;Ljava/lang/String;Ljava/util/Map;Ljava/util/Optional;)Landroid/app/people/PeopleSpaceTile;

    .line 39
    move-result-object p0

    .line 42
    return-object p0
    .line 43
.end method

.method public final augmentTileFromNotifications(Landroid/app/people/PeopleSpaceTile;Lcom/android/systemui/people/widget/PeopleTileKey;Ljava/lang/String;Ljava/util/Map;Ljava/util/Optional;)Landroid/app/people/PeopleSpaceTile;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "android.permission.READ_CONTACTS"

    .line 6
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 8
    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v3

    .line 20
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    if-eqz v0, :cond_2

    .line 26
    sget-object v0, Lcom/android/systemui/people/PeopleSpaceUtils;->EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 28
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    new-instance p3, Ljava/util/ArrayList;

    .line 36
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    goto :goto_1

    .line 41
    :cond_1
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 42
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 46
    move-result-object v0

    .line 49
    new-instance v4, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda0;

    .line 50
    invoke-direct {v4}, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 52
    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 55
    move-result-object v0

    .line 58
    new-instance v4, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda1;

    .line 59
    invoke-direct {v4, v2, p3}, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 61
    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 64
    move-result-object p3

    .line 67
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 68
    move-result-object v0

    .line 71
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 72
    move-result-object p3

    .line 75
    check-cast p3, Ljava/util/List;

    .line 76
    :goto_1
    move-object v4, p3

    .line 78
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 79
    :cond_2
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object p2

    .line 85
    check-cast p2, Ljava/util/Set;

    .line 86
    if-nez p2, :cond_3

    .line 88
    new-instance p2, Ljava/util/HashSet;

    .line 90
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 92
    :cond_3
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 95
    move-result p3

    .line 98
    if-eqz p3, :cond_4

    .line 99
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 101
    move-result p3

    .line 104
    if-eqz p3, :cond_4

    .line 105
    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeNotificationFields(Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;

    .line 107
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_4
    invoke-interface {p2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 112
    sget-object p3, Lcom/android/systemui/people/PeopleSpaceUtils;->EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 115
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 117
    move-result-object p3

    .line 120
    move p4, v3

    .line 121
    :cond_5
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    move-result v0

    .line 125
    if-eqz v0, :cond_7

    .line 126
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    move-result-object v0

    .line 131
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 132
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 134
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 136
    move-result-object v0

    .line 139
    invoke-static {v0}, Lcom/android/systemui/people/NotificationHelper;->isMissedCall(Landroid/app/Notification;)Z

    .line 140
    move-result v2

    .line 143
    if-eqz v2, :cond_6

    .line 144
    goto :goto_2

    .line 146
    :cond_6
    invoke-static {v0}, Lcom/android/systemui/people/NotificationHelper;->getMessagingStyleMessages(Landroid/app/Notification;)Ljava/util/List;

    .line 147
    move-result-object v0

    .line 150
    if-eqz v0, :cond_5

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 153
    move-result v0

    .line 156
    add-int/2addr p4, v0

    .line 157
    goto :goto_2

    .line 158
    :cond_7
    sget-object p3, Lcom/android/systemui/people/NotificationHelper;->notificationEntryComparator:Lcom/android/systemui/people/NotificationHelper$1;

    .line 159
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 161
    move-result p3

    .line 164
    const/4 v0, 0x0

    .line 165
    if-eqz p3, :cond_8

    .line 166
    move-object p2, v0

    .line 168
    goto :goto_3

    .line 169
    :cond_8
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 170
    move-result-object p2

    .line 173
    new-instance p3, Lcom/android/systemui/people/NotificationHelper$$ExternalSyntheticLambda0;

    .line 174
    invoke-direct {p3}, Lcom/android/systemui/people/NotificationHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 176
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 179
    move-result-object p2

    .line 182
    sget-object p3, Lcom/android/systemui/people/NotificationHelper;->notificationEntryComparator:Lcom/android/systemui/people/NotificationHelper$1;

    .line 183
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    .line 185
    move-result-object p2

    .line 188
    invoke-interface {p2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 189
    move-result-object p2

    .line 192
    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    move-result-object p2

    .line 196
    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 197
    :goto_3
    if-eqz p2, :cond_12

    .line 199
    iget-object p3, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 201
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 203
    move-result-object p3

    .line 206
    if-nez p3, :cond_9

    .line 207
    goto/16 :goto_9

    .line 209
    :cond_9
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 211
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 213
    move-result-object p3

    .line 216
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    .line 217
    move-result-object v2

    .line 220
    invoke-static {p2}, Lcom/android/systemui/people/NotificationHelper;->getContactUri(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    .line 221
    move-result-object v4

    .line 224
    invoke-virtual {p5}, Ljava/util/Optional;->isPresent()Z

    .line 225
    move-result v5

    .line 228
    iget-object v6, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 229
    if-eqz v5, :cond_a

    .line 231
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    .line 233
    move-result-object v5

    .line 236
    if-nez v5, :cond_a

    .line 237
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 239
    move-result v5

    .line 242
    if-nez v5, :cond_a

    .line 243
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 245
    move-result-object v4

    .line 248
    new-instance v5, Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 249
    invoke-direct {v5, p1}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Landroid/app/people/PeopleSpaceTile;)V

    .line 251
    invoke-virtual {p5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 254
    move-result-object p1

    .line 257
    check-cast p1, Ljava/lang/Integer;

    .line 258
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 260
    move-result p1

    .line 263
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 264
    invoke-static {v6, v5, p1, v4, p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->setSharedPreferencesStorageForTile(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleTileKey;ILandroid/net/Uri;Landroid/app/backup/BackupManager;)V

    .line 266
    invoke-virtual {v2, v4}, Landroid/app/people/PeopleSpaceTile$Builder;->setContactUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 269
    :cond_a
    invoke-static {p3}, Lcom/android/systemui/people/NotificationHelper;->isMissedCall(Landroid/app/Notification;)Z

    .line 272
    move-result p0

    .line 275
    invoke-static {p3}, Lcom/android/systemui/people/NotificationHelper;->getMessagingStyleMessages(Landroid/app/Notification;)Ljava/util/List;

    .line 276
    move-result-object p1

    .line 279
    if-nez p0, :cond_b

    .line 280
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 282
    move-result p5

    .line 285
    if-eqz p5, :cond_b

    .line 286
    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    .line 288
    move-result-object p0

    .line 291
    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeNotificationFields(Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;

    .line 292
    move-result-object p0

    .line 295
    goto/16 :goto_a

    .line 296
    :cond_b
    if-eqz p1, :cond_c

    .line 298
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 300
    move-result-object p1

    .line 303
    check-cast p1, Landroid/app/Notification$MessagingStyle$Message;

    .line 304
    goto :goto_4

    .line 306
    :cond_c
    move-object p1, v0

    .line 307
    :goto_4
    if-eqz p1, :cond_d

    .line 308
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    .line 310
    move-result-object p5

    .line 313
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 314
    move-result p5

    .line 317
    if-nez p5, :cond_d

    .line 318
    goto :goto_5

    .line 320
    :cond_d
    move v1, v3

    .line 321
    :goto_5
    if-eqz p0, :cond_e

    .line 322
    if-nez v1, :cond_e

    .line 324
    const p0, 0x7f130735    # @string/missed_call 'Missed call'

    .line 326
    invoke-virtual {v6, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 329
    move-result-object p0

    .line 332
    goto :goto_6

    .line 333
    :cond_e
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    .line 334
    move-result-object p0

    .line 337
    :goto_6
    if-eqz p1, :cond_f

    .line 338
    invoke-static {p1}, Lcom/android/internal/widget/MessagingMessage;->hasImage(Landroid/app/Notification$MessagingStyle$Message;)Z

    .line 340
    move-result p5

    .line 343
    if-eqz p5, :cond_f

    .line 344
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    .line 346
    move-result-object p5

    .line 349
    goto :goto_7

    .line 350
    :cond_f
    move-object p5, v0

    .line 351
    :goto_7
    iget-object v1, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 352
    const-string v4, "android.isGroupConversation"

    .line 354
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 356
    move-result v1

    .line 359
    if-nez v1, :cond_10

    .line 360
    goto :goto_8

    .line 362
    :cond_10
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    .line 363
    move-result-object p1

    .line 366
    if-nez p1, :cond_11

    .line 367
    goto :goto_8

    .line 369
    :cond_11
    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    .line 370
    move-result-object v0

    .line 373
    :goto_8
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 374
    move-result-wide v3

    .line 377
    invoke-virtual {v2, v3, v4}, Landroid/app/people/PeopleSpaceTile$Builder;->setLastInteractionTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 378
    move-result-object p1

    .line 381
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 382
    move-result-object p2

    .line 385
    invoke-virtual {p1, p2}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationKey(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 386
    move-result-object p1

    .line 389
    iget-object p2, p3, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 390
    invoke-virtual {p1, p2}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationCategory(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 392
    move-result-object p1

    .line 395
    invoke-virtual {p1, p0}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationContent(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 396
    move-result-object p0

    .line 399
    invoke-virtual {p0, v0}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationSender(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 400
    move-result-object p0

    .line 403
    invoke-virtual {p0, p5}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationDataUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 404
    move-result-object p0

    .line 407
    invoke-virtual {p0, p4}, Landroid/app/people/PeopleSpaceTile$Builder;->setMessagesCount(I)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 408
    move-result-object p0

    .line 411
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    .line 412
    move-result-object p0

    .line 415
    goto :goto_a

    .line 416
    :cond_12
    :goto_9
    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeNotificationFields(Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;

    .line 417
    move-result-object p0

    .line 420
    :goto_a
    return-object p0
    .line 421
.end method

.method public final deleteWidgets([I)V
    .locals 13

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_3

    .line 5
    aget v3, p1, v2

    .line 7
    iget-object v4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 9
    sget-object v5, Lcom/android/systemui/people/PeopleSpaceUtils$PeopleSpaceWidgetEvent;->PEOPLE_SPACE_WIDGET_DELETED:Lcom/android/systemui/people/PeopleSpaceUtils$PeopleSpaceWidgetEvent;

    .line 11
    check-cast v4, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 13
    invoke-virtual {v4, v5}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 15
    iget-object v4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v4

    .line 20
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    move-result-object v6

    .line 26
    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 27
    move-result-object v5

    .line 30
    new-instance v6, Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 31
    const-string/jumbo v7, "shortcut_id"

    .line 33
    const/4 v8, 0x0

    .line 36
    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v7

    .line 40
    const-string/jumbo v9, "user_id"

    .line 41
    const/4 v10, -0x1

    .line 44
    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 45
    move-result v9

    .line 48
    const-string v10, "package_name"

    .line 49
    invoke-interface {v5, v10, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 54
    invoke-direct {v6, v7, v5, v9}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    invoke-static {v6}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    .line 58
    move-result v9

    .line 61
    if-nez v9, :cond_0

    .line 62
    const-string p0, "PeopleSpaceWidgetMgr"

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const-string v0, "Invalid tile key trying to remove widget "

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 82
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    monitor-exit v4

    .line 86
    return-void

    .line 87
    :cond_0
    new-instance v9, Ljava/util/HashSet;

    .line 88
    iget-object v10, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 90
    invoke-virtual {v6}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    .line 92
    move-result-object v11

    .line 95
    new-instance v12, Ljava/util/HashSet;

    .line 96
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 98
    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 101
    move-result-object v10

    .line 104
    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 105
    iget-object v10, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 108
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 110
    move-result-object v11

    .line 113
    invoke-interface {v10, v11, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v8

    .line 117
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 118
    iget-object v10, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    .line 119
    monitor-enter v10

    .line 121
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 122
    invoke-static {v4, v6, v3, v8}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeSharedPreferencesStorageForTile(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleTileKey;ILjava/lang/String;)V

    .line 124
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 128
    move-result-object v3

    .line 131
    invoke-virtual {v9, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 132
    move-result v3

    .line 135
    if-eqz v3, :cond_2

    .line 136
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    .line 138
    move-result v3

    .line 141
    const/4 v4, 0x1

    .line 142
    if-ne v3, v4, :cond_2

    .line 143
    sget-object v3, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListeners:Ljava/util/Map;

    .line 145
    monitor-enter v3

    .line 147
    :try_start_2
    move-object v4, v3

    .line 148
    check-cast v4, Ljava/util/HashMap;

    .line 149
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-result-object v4

    .line 154
    check-cast v4, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;

    .line 155
    if-nez v4, :cond_1

    .line 157
    monitor-exit v3

    .line 159
    goto :goto_1

    .line 160
    :cond_1
    move-object v8, v3

    .line 161
    check-cast v8, Ljava/util/HashMap;

    .line 162
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPeopleManager:Landroid/app/people/PeopleManager;

    .line 168
    invoke-virtual {v3, v4}, Landroid/app/people/PeopleManager;->unregisterConversationListener(Landroid/app/people/PeopleManager$ConversationListener;)V

    .line 170
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 173
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 175
    move-result-object v4

    .line 178
    iget v6, v6, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    .line 179
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 181
    move-result-object v6

    .line 184
    const/4 v7, 0x2

    .line 185
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/content/pm/LauncherApps;->uncacheShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 186
    goto :goto_2

    .line 189
    :catch_0
    move-exception v3

    .line 190
    const-string v4, "PeopleSpaceWidgetMgr"

    .line 191
    const-string v5, "failed to uncache shortcut"

    .line 193
    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    goto :goto_2

    .line 198
    :catchall_0
    move-exception p0

    .line 199
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 200
    throw p0

    .line 201
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 202
    goto/16 :goto_0

    .line 204
    :catchall_1
    move-exception p0

    .line 206
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 207
    throw p0

    .line 208
    :catchall_2
    move-exception p0

    .line 209
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 210
    throw p0

    .line 211
    :cond_3
    return-void
    .line 212
.end method

.method public final getKeyFromStorageByWidgetId(I)Lcom/android/systemui/people/widget/PeopleTileKey;
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    move-result-object p0

    .line 12
    new-instance p1, Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 13
    const-string/jumbo v0, "shortcut_id"

    .line 15
    const-string v1, ""

    .line 18
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    const-string/jumbo v2, "user_id"

    .line 24
    const/4 v3, -0x1

    .line 27
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 28
    move-result v2

    .line 31
    const-string v3, "package_name"

    .line 32
    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    invoke-direct {p1, v0, p0, v2}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    return-object p1
    .line 41
.end method

.method public final getMatchingKeyWidgetIds(Lcom/android/systemui/people/widget/PeopleTileKey;)Ljava/util/Set;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    new-instance p0, Ljava/util/HashSet;

    .line 8
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 10
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 14
    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 19
    new-instance v1, Ljava/util/HashSet;

    .line 20
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 22
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 25
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 27
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 31
    return-object v0
    .line 34
.end method

.method public final getMatchingUriWidgetIds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;)Ljava/util/Set;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;->POSTED:Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p2

    .line 7
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationKeyToWidgetIdsMatchedByUri:Ljava/util/Map;

    .line 8
    if-eqz p2, :cond_4

    .line 10
    sget-object p2, Lcom/android/systemui/people/NotificationHelper;->notificationEntryComparator:Lcom/android/systemui/people/NotificationHelper$1;

    .line 12
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 14
    move-result-object p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    const/4 p2, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/people/NotificationHelper;->isMissedCall(Landroid/app/Notification;)Z

    .line 22
    move-result p2

    .line 25
    :goto_0
    if-nez p2, :cond_1

    .line 26
    goto :goto_1

    .line 28
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/people/NotificationHelper;->getContactUri(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 32
    if-nez p2, :cond_2

    .line 33
    goto :goto_1

    .line 35
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    .line 36
    new-instance v2, Ljava/util/HashSet;

    .line 38
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 40
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 43
    invoke-interface {p0, p2, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 45
    move-result-object p0

    .line 48
    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 49
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 52
    move-result p0

    .line 55
    if-eqz p0, :cond_3

    .line 56
    :goto_1
    const/4 v1, 0x0

    .line 58
    :cond_3
    if-eqz v1, :cond_5

    .line 59
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 61
    move-result p0

    .line 64
    if-nez p0, :cond_5

    .line 65
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    check-cast v0, Ljava/util/HashMap;

    .line 71
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-object v1

    .line 76
    :cond_4
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 80
    check-cast v0, Ljava/util/HashMap;

    .line 81
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object p0

    .line 86
    check-cast p0, Ljava/util/Set;

    .line 87
    if-eqz p0, :cond_5

    .line 89
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 91
    move-result p1

    .line 94
    if-nez p1, :cond_5

    .line 95
    return-object p0

    .line 97
    :cond_5
    new-instance p0, Ljava/util/HashSet;

    .line 98
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 100
    return-object p0
    .line 103
.end method

.method public final getNotificationPolicyState()I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 4
    move-result-object v0

    .line 7
    iget v1, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 8
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    .line 10
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v1, :cond_0

    .line 15
    return v2

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    .line 18
    move-result p0

    .line 21
    if-eq p0, v2, :cond_8

    .line 22
    const/4 v1, 0x2

    .line 24
    if-eq p0, v1, :cond_1

    .line 25
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowConversations()Z

    .line 28
    move-result p0

    .line 31
    if-eqz p0, :cond_3

    .line 32
    iget p0, v0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 34
    if-ne p0, v2, :cond_2

    .line 36
    return v2

    .line 38
    :cond_2
    if-ne p0, v1, :cond_3

    .line 39
    const/4 p0, 0x4

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const/4 p0, 0x0

    .line 43
    :goto_0
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    .line 44
    move-result v3

    .line 47
    if-eqz v3, :cond_6

    .line 48
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    .line 50
    move-result v0

    .line 53
    if-eq v0, v2, :cond_5

    .line 54
    if-eq v0, v1, :cond_4

    .line 56
    return v2

    .line 58
    :cond_4
    or-int/lit8 p0, p0, 0x8

    .line 59
    return p0

    .line 61
    :cond_5
    or-int/lit8 p0, p0, 0x10

    .line 62
    return p0

    .line 64
    :cond_6
    if-eqz p0, :cond_7

    .line 65
    return p0

    .line 67
    :cond_7
    :goto_1
    return v1

    .line 68
    :cond_8
    return v2
    .line 69
.end method

.method public final getPackageSuspended(Landroid/app/people/PeopleSpaceTile;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 10
    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->isPackageSuspended(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 30
    sget-object v2, Lcom/android/systemui/people/PeopleSpaceUtils;->EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 31
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    .line 33
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 37
    move-result p1

    .line 40
    const/16 v2, 0x80

    .line 41
    invoke-virtual {p0, v1, v2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 43
    return v0
    .line 46
.end method

.method public final getPreview(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    .line 3
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 5
    move-result p2

    .line 8
    invoke-interface {v1, p3, p2, p1}, Landroid/app/people/IPeopleManager;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    .line 9
    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 13
    sget-object p3, Lcom/android/systemui/people/PeopleSpaceUtils;->EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 15
    const-string p3, "PeopleSpaceUtils"

    .line 17
    const/4 v1, 0x0

    .line 19
    if-nez p1, :cond_0

    .line 20
    const-string p1, "ConversationChannel is null"

    .line 22
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    goto :goto_1

    .line 27
    :cond_0
    new-instance v2, Landroid/app/people/PeopleSpaceTile$Builder;

    .line 28
    invoke-direct {v2, p1, p2}, Landroid/app/people/PeopleSpaceTile$Builder;-><init>(Landroid/app/people/ConversationChannel;Landroid/content/pm/LauncherApps;)V

    .line 30
    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    .line 33
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 39
    move-result-object p2

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    const/4 p2, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move p2, v1

    .line 51
    :goto_0
    if-nez p2, :cond_2

    .line 52
    const-string p1, "PeopleSpaceTile is not valid"

    .line 54
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_1
    move-object p1, v0

    .line 59
    :cond_2
    if-nez p1, :cond_3

    .line 60
    return-object v0

    .line 62
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 63
    move-result-object p2

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->augmentTileFromNotificationEntryManager(Landroid/app/people/PeopleSpaceTile;Ljava/util/Optional;)Landroid/app/people/PeopleSpaceTile;

    .line 67
    move-result-object p1

    .line 70
    new-instance p2, Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 71
    invoke-direct {p2, p1}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Landroid/app/people/PeopleSpaceTile;)V

    .line 73
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {p0, p1, v1, p4, p2}, Lcom/android/systemui/people/PeopleTileViewHelper;->createRemoteViews(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILandroid/os/Bundle;Lcom/android/systemui/people/widget/PeopleTileKey;)Landroid/widget/RemoteViews;

    .line 78
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :catch_0
    move-exception p0

    .line 83
    const-string p1, "PeopleSpaceWidgetMgr"

    .line 84
    const-string p2, "failed to get conversation or tile"

    .line 86
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    return-object v0
    .line 91
.end method

.method public final getTileForExistingWidget(I)Landroid/app/people/PeopleSpaceTile;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileForExistingWidgetThrowing(I)Landroid/app/people/PeopleSpaceTile;

    .line 2
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "failed to retrieve tile for existing widget "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 21
    const-string v0, "PeopleSpaceWidgetMgr"

    .line 22
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    const/4 p0, 0x0

    .line 27
    return-object p0
    .line 28
.end method

.method public final getTileForExistingWidgetThrowing(I)Landroid/app/people/PeopleSpaceTile;
    .locals 6

    .line 1
    sget-object v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mTiles:Ljava/util/Map;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v1

    .line 8
    move-object v2, v0

    .line 9
    check-cast v2, Ljava/util/HashMap;

    .line 10
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    check-cast v1, Landroid/app/people/PeopleSpaceTile;

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    return-object v1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 29
    move-result-object v0

    .line 32
    new-instance v1, Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 33
    const-string/jumbo v2, "shortcut_id"

    .line 35
    const-string v3, ""

    .line 38
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 43
    const-string/jumbo v3, "user_id"

    .line 44
    const/4 v4, -0x1

    .line 47
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 48
    move-result v3

    .line 51
    const-string v4, "package_name"

    .line 52
    const-string v5, ""

    .line 54
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 59
    invoke-direct {v1, v2, v0, v3}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileFromPersistentStorage(Lcom/android/systemui/people/widget/PeopleTileKey;IZ)Landroid/app/people/PeopleSpaceTile;

    .line 64
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p0
    .line 71
.end method

.method public final getTileFromPersistentStorage(Lcom/android/systemui/people/widget/PeopleTileKey;IZ)Landroid/app/people/PeopleSpaceTile;
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    .line 2
    move-result v0

    .line 5
    const-string v1, "PeopleSpaceWidgetMgr"

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    const-string p0, "Invalid tile key finding tile for existing widget "

    .line 11
    invoke-static {p0, p2, v1}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 13
    return-object v2

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    .line 17
    if-eqz v0, :cond_4

    .line 19
    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 21
    if-nez v3, :cond_1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    :try_start_0
    iget-object v4, p1, Lcom/android/systemui/people/widget/PeopleTileKey;->mPackageName:Ljava/lang/String;

    .line 26
    iget v5, p1, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    .line 28
    iget-object p1, p1, Lcom/android/systemui/people/widget/PeopleTileKey;->mShortcutId:Ljava/lang/String;

    .line 30
    invoke-interface {v0, v4, v5, p1}, Landroid/app/people/IPeopleManager;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    .line 32
    move-result-object p1

    .line 35
    if-nez p1, :cond_2

    .line 36
    return-object v2

    .line 38
    :cond_2
    new-instance v0, Landroid/app/people/PeopleSpaceTile$Builder;

    .line 39
    invoke-direct {v0, p1, v3}, Landroid/app/people/PeopleSpaceTile$Builder;-><init>(Landroid/app/people/ConversationChannel;Landroid/content/pm/LauncherApps;)V

    .line 41
    iget-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 44
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 49
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 53
    if-eqz p3, :cond_3

    .line 54
    if-eqz p1, :cond_3

    .line 56
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    .line 58
    move-result-object p3

    .line 61
    invoke-virtual {p3}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    .line 62
    move-result-object p3

    .line 65
    if-nez p3, :cond_3

    .line 66
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 68
    move-result-object p1

    .line 71
    invoke-virtual {v0, p1}, Landroid/app/people/PeopleSpaceTile$Builder;->setContactUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 72
    :cond_3
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    .line 75
    move-result-object p1

    .line 78
    const-string p3, "android.intent.action.BOOT_COMPLETED"

    .line 79
    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileWithCurrentState(Landroid/app/people/PeopleSpaceTile;Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile;

    .line 81
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-object p0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    const-string p3, "getTileFromPersistentStorage failing for widget "

    .line 89
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 100
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    return-object v2

    .line 104
    :cond_4
    :goto_0
    const-string p0, "System services are null"

    .line 105
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-object v2
    .line 110
.end method

.method public final getTileWithCurrentState(Landroid/app/people/PeopleSpaceTile;Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    sparse-switch v1, :sswitch_data_0

    .line 12
    goto :goto_0

    .line 15
    :sswitch_0
    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    .line 16
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    move p2, v2

    .line 24
    goto :goto_1

    .line 25
    :sswitch_1
    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 26
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    const/4 p2, 0x2

    .line 34
    goto :goto_1

    .line 35
    :sswitch_2
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 36
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p2

    .line 41
    if-eqz p2, :cond_0

    .line 42
    const/4 p2, 0x5

    .line 44
    goto :goto_1

    .line 45
    :sswitch_3
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 46
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p2

    .line 51
    if-eqz p2, :cond_0

    .line 52
    const/4 p2, 0x7

    .line 54
    goto :goto_1

    .line 55
    :sswitch_4
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 56
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result p2

    .line 61
    if-eqz p2, :cond_0

    .line 62
    const/4 p2, 0x6

    .line 64
    goto :goto_1

    .line 65
    :sswitch_5
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 66
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result p2

    .line 71
    if-eqz p2, :cond_0

    .line 72
    const/4 p2, 0x3

    .line 74
    goto :goto_1

    .line 75
    :sswitch_6
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    .line 76
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result p2

    .line 81
    if-eqz p2, :cond_0

    .line 82
    move p2, v3

    .line 84
    goto :goto_1

    .line 85
    :sswitch_7
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 86
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result p2

    .line 91
    if-eqz p2, :cond_0

    .line 92
    const/4 p2, 0x4

    .line 94
    goto :goto_1

    .line 95
    :cond_0
    :goto_0
    const/4 p2, -0x1

    .line 96
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserManager:Landroid/os/UserManager;

    .line 97
    packed-switch p2, :pswitch_data_0

    .line 99
    goto :goto_2

    .line 102
    :pswitch_0
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    .line 103
    move-result-object p0

    .line 106
    if-eqz p0, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    .line 109
    move-result-object p0

    .line 112
    invoke-virtual {v1, p0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    .line 113
    move-result p0

    .line 116
    if-eqz p0, :cond_1

    .line 117
    move v2, v3

    .line 119
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsUserQuieted(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 120
    goto :goto_3

    .line 123
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getPackageSuspended(Landroid/app/people/PeopleSpaceTile;)Z

    .line 124
    move-result p0

    .line 127
    invoke-virtual {v0, p0}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsPackageSuspended(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 128
    goto :goto_3

    .line 131
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getNotificationPolicyState()I

    .line 132
    move-result p0

    .line 135
    invoke-virtual {v0, p0}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationPolicyState(I)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 136
    goto :goto_3

    .line 139
    :goto_2
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    .line 140
    move-result-object p2

    .line 143
    if-eqz p2, :cond_2

    .line 144
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    .line 146
    move-result-object p2

    .line 149
    invoke-virtual {v1, p2}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    .line 150
    move-result p2

    .line 153
    if-eqz p2, :cond_2

    .line 154
    move v2, v3

    .line 156
    :cond_2
    invoke-virtual {v0, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsUserQuieted(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 157
    move-result-object p2

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getPackageSuspended(Landroid/app/people/PeopleSpaceTile;)Z

    .line 161
    move-result p1

    .line 164
    invoke-virtual {p2, p1}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsPackageSuspended(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 165
    move-result-object p1

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getNotificationPolicyState()I

    .line 169
    move-result p0

    .line 172
    invoke-virtual {p1, p0}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationPolicyState(I)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 173
    :goto_3
    :pswitch_3
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    .line 176
    move-result-object p0

    .line 179
    return-object p0

    .line 180
    nop

    .line 181
    :sswitch_data_0
    .sparse-switch
        -0x49d08e2b -> :sswitch_7
        -0x3bb3e592 -> :sswitch_6
        -0x33813a72 -> :sswitch_5
        -0x122164c -> :sswitch_4
        0x2f94f923 -> :sswitch_3
        0x31af1c32 -> :sswitch_2
        0x4cef8b35 -> :sswitch_1
        0x7d95a11b -> :sswitch_0
    .end sparse-switch

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
    .line 216
.end method

.method public final groupConversationNotifications(Ljava/util/Collection;)Ljava/util/Map;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 2
    move-result-object p1

    .line 5
    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda3;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    .line 8
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 11
    move-result-object p0

    .line 14
    new-instance p1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda4;

    .line 15
    const/4 v0, 0x0

    .line 17
    invoke-direct {p1, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda4;-><init>(I)V

    .line 18
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    .line 21
    move-result-object v0

    .line 24
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 25
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    .line 29
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    .line 33
    move-result-object p1

    .line 36
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 40
    check-cast p0, Ljava/util/Map;

    .line 41
    return-object p0
    .line 43
.end method

.method public final registerConversationListenerIfNeeded(ILcom/android/systemui/people/widget/PeopleTileKey;)V
    .locals 6

    .line 1
    invoke-static {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const-string p0, "PeopleSpaceWidgetMgr"

    .line 8
    const-string p2, "Invalid tile key registering listener for widget "

    .line 10
    invoke-static {p2, p1, p0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    return-void

    .line 15
    :cond_0
    new-instance v4, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;

    .line 16
    invoke-direct {v4, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    .line 18
    sget-object p1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListeners:Ljava/util/Map;

    .line 21
    monitor-enter p1

    .line 23
    :try_start_0
    move-object v0, p1

    .line 24
    check-cast v0, Ljava/util/HashMap;

    .line 25
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    monitor-exit p1

    .line 33
    return-void

    .line 34
    :cond_1
    move-object v0, p1

    .line 35
    check-cast v0, Ljava/util/HashMap;

    .line 36
    invoke-virtual {v0, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPeopleManager:Landroid/app/people/PeopleManager;

    .line 42
    iget-object v1, p2, Lcom/android/systemui/people/widget/PeopleTileKey;->mPackageName:Ljava/lang/String;

    .line 44
    iget v2, p2, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    .line 46
    iget-object v3, p2, Lcom/android/systemui/people/widget/PeopleTileKey;->mShortcutId:Ljava/lang/String;

    .line 48
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 52
    move-result-object v5

    .line 55
    invoke-virtual/range {v0 .. v5}, Landroid/app/people/PeopleManager;->registerConversationListener(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/PeopleManager$ConversationListener;Ljava/util/concurrent/Executor;)V

    .line 56
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p0
    .line 62
.end method

.method public final updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    const-string v0, "PeopleSpaceWidgetMgr"

    .line 4
    const-string v1, "Storing null tile for widget "

    .line 6
    invoke-static {v1, p1, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    :cond_0
    sget-object v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mTiles:Ljava/util/Map;

    .line 11
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 17
    move-object v2, v0

    .line 18
    check-cast v2, Ljava/util/HashMap;

    .line 19
    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 25
    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getKeyFromStorageByWidgetId(I)Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 31
    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    .line 35
    move-result v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    const-string p0, "Invalid tile key updating widget "

    .line 41
    const-string p2, "PeopleSpaceWidgetMgr"

    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {v2, p2, p1, v0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->createRemoteViews(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILandroid/os/Bundle;Lcom/android/systemui/people/widget/PeopleTileKey;)Landroid/widget/RemoteViews;

    .line 51
    move-result-object p2

    .line 54
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 55
    invoke-virtual {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 57
    :goto_0
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p0
    .line 63
.end method

.method public final updateSingleConversationWidgets([I)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_2

    .line 9
    aget v3, p1, v2

    .line 11
    invoke-virtual {p0, v3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileForExistingWidget(I)Landroid/app/people/PeopleSpaceTile;

    .line 13
    move-result-object v4

    .line 16
    if-nez v4, :cond_0

    .line 17
    const-string v5, "Matching conversation not found for widget "

    .line 19
    const-string v6, "PeopleSpaceWidgetMgr"

    .line 21
    invoke-static {v5, v3, v6}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v5

    .line 32
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    if-eqz v4, :cond_1

    .line 36
    new-instance v5, Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 38
    invoke-direct {v5, v4}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Landroid/app/people/PeopleSpaceTile;)V

    .line 40
    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->registerConversationListenerIfNeeded(ILcom/android/systemui/people/widget/PeopleTileKey;)V

    .line 43
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    sget-object v1, Lcom/android/systemui/people/PeopleSpaceUtils;->EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 49
    new-instance v1, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda2;

    .line 51
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 53
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 55
    invoke-direct {v1, v2, p0, v0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Map;[I)V

    .line 57
    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 60
    return-void
.end method

.method public final updateStorageAndViewWithConversationData(Landroid/app/people/ConversationChannel;I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileForExistingWidget(I)Landroid/app/people/PeopleSpaceTile;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    .line 17
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_2

    .line 22
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    .line 24
    move-result-object v2

    .line 27
    array-length v2, v2

    .line 28
    if-lez v2, :cond_2

    .line 29
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    .line 31
    move-result-object v2

    .line 34
    aget-object v2, v2, v3

    .line 35
    invoke-virtual {v2}, Landroid/app/Person;->getUri()Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 40
    if-nez v4, :cond_1

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v2}, Landroid/app/Person;->getUri()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 47
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 48
    move-result-object v2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 53
    :goto_1
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    .line 54
    move-result-object v4

    .line 57
    if-eqz v4, :cond_3

    .line 58
    invoke-virtual {v0, v4}, Landroid/app/people/PeopleSpaceTile$Builder;->setUserName(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 60
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 63
    invoke-virtual {v4, v1, v3}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    .line 65
    move-result-object v1

    .line 68
    invoke-static {v1}, Landroid/app/people/PeopleSpaceTile;->convertDrawableToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Icon;

    .line 69
    move-result-object v1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setUserIcon(Landroid/graphics/drawable/Icon;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 75
    :cond_4
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    .line 78
    move-result-object v1

    .line 81
    if-eqz v1, :cond_5

    .line 82
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 84
    move-result v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsImportantConversation(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 88
    :cond_5
    invoke-virtual {v0, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setContactUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 91
    move-result-object v1

    .line 94
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getStatuses()Ljava/util/List;

    .line 95
    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setStatuses(Ljava/util/List;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 99
    move-result-object v1

    .line 102
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getLastEventTimestamp()J

    .line 103
    move-result-wide v2

    .line 106
    invoke-virtual {v1, v2, v3}, Landroid/app/people/PeopleSpaceTile$Builder;->setLastInteractionTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 107
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    .line 110
    move-result-object p1

    .line 113
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V

    .line 114
    return-void
    .line 117
.end method

.method public final updateWidgetIdsBasedOnNotifications(Ljava/util/Set;Ljava/util/Collection;)V
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->groupConversationNotifications(Ljava/util/Collection;)Ljava/util/Map;

    .line 12
    move-result-object p2

    .line 15
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 16
    move-result-object p1

    .line 19
    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda4;

    .line 20
    const/4 v1, 0x4

    .line 22
    invoke-direct {v0, v1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda4;-><init>(I)V

    .line 23
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 26
    move-result-object p1

    .line 29
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    .line 30
    move-result-object v0

    .line 33
    new-instance v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda7;

    .line 34
    invoke-direct {v1, p0, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Map;)V

    .line 36
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 39
    move-result-object p2

    .line 42
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 46
    check-cast p1, Ljava/util/Map;

    .line 47
    new-instance p2, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda8;

    .line 49
    invoke-direct {p2, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    .line 51
    invoke-interface {p1, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    const-string p1, "PeopleSpaceWidgetMgr"

    .line 59
    const-string/jumbo p2, "updateWidgetIdsBasedOnNotifications failing"

    .line 61
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :goto_0
    return-void
    .line 67
.end method

.method public updateWidgetsFromBroadcastInBackground(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 6
    const-class v3, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;

    .line 8
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 13
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    return-void

    .line 19
    :cond_0
    array-length v1, v0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_3

    .line 22
    aget v3, v0, v2

    .line 24
    const/4 v4, 0x0

    .line 26
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    .line 27
    monitor-enter v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileForExistingWidgetThrowing(I)Landroid/app/people/PeopleSpaceTile;

    .line 30
    move-result-object v6

    .line 33
    if-nez v6, :cond_1

    .line 34
    const-string v6, "PeopleSpaceWidgetMgr"

    .line 36
    new-instance v7, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const-string v8, "Matching conversation not found for widget "

    .line 43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v7

    .line 54
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    monitor-exit v5

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p0, v6, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileWithCurrentState(Landroid/app/people/PeopleSpaceTile;Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile;

    .line 60
    move-result-object v4

    .line 63
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V

    .line 64
    monitor-exit v5

    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception v6

    .line 69
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    throw v6
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    :catch_0
    move-exception v5

    .line 72
    const-string v6, "PeopleSpaceWidgetMgr"

    .line 73
    new-instance v7, Ljava/lang/StringBuilder;

    .line 75
    const-string v8, "Package no longer found for widget "

    .line 77
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v7

    .line 88
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    iget-object v5, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 92
    const-class v6, Landroid/app/job/JobScheduler;

    .line 94
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    move-result-object v5

    .line 99
    check-cast v5, Landroid/app/job/JobScheduler;

    .line 100
    if-eqz v5, :cond_2

    .line 102
    const v6, 0x475b8c1

    .line 104
    invoke-virtual {v5, v6}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    .line 107
    move-result-object v5

    .line 110
    if-eqz v5, :cond_2

    .line 111
    goto :goto_1

    .line 113
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    .line 114
    monitor-enter v5

    .line 116
    :try_start_3
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V

    .line 117
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    filled-new-array {v3}, [I

    .line 121
    move-result-object v3

    .line 124
    invoke-virtual {p0, v3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->deleteWidgets([I)V

    .line 125
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 128
    goto :goto_0

    .line 130
    :catchall_1
    move-exception p0

    .line 131
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 132
    throw p0

    .line 133
    :cond_3
    return-void
    .line 134
.end method
