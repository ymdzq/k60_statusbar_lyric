.class public final Lcom/android/systemui/qs/QSTileHost;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/qs/QSHost;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/ProtoDumpable;
.implements Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;
.implements Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;


# static fields
.field public static final DEBUG:Z

.field static final TILES:Ljava/lang/String; = "tiles_prefs"


# instance fields
.field public mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

.field public final mCallbacks:Ljava/util/List;

.field public final mCentralSurfacesOptional:Ljava/util/Optional;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:I

.field public final mCustomTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mHostExt:Lcom/android/systemui/qs/QSTileHostExt;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field public final mQsFactories:Ljava/util/ArrayList;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mTileLifeCycleManagerFactory:Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;

.field public final mTileSpecs:Ljava/util/ArrayList;

.field public final mTiles:Ljava/util/LinkedHashMap;

.field public mUserContext:Landroid/content/Context;

.field public final mUserFileManager:Lcom/android/systemui/settings/UserFileManager;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "QSTileHost"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSFactory;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/PluginManager;Ljavax/inject/Provider;Ljava/util/Optional;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/external/CustomTileStatePersister;Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;Lcom/android/systemui/settings/UserFileManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/qs/QSTileHostExt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    .line 33
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mUserContext:Landroid/content/Context;

    .line 35
    iput-object p4, p0, Lcom/android/systemui/qs/QSTileHost;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 37
    iput-object p7, p0, Lcom/android/systemui/qs/QSTileHost;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 39
    iput-object p3, p0, Lcom/android/systemui/qs/QSTileHost;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 41
    iput-object p10, p0, Lcom/android/systemui/qs/QSTileHost;->mTileLifeCycleManagerFactory:Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;

    .line 43
    iput-object p11, p0, Lcom/android/systemui/qs/QSTileHost;->mUserFileManager:Lcom/android/systemui/settings/UserFileManager;

    .line 45
    iput-object p12, p0, Lcom/android/systemui/qs/QSTileHost;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 47
    iput-object p6, p0, Lcom/android/systemui/qs/QSTileHost;->mCentralSurfacesOptional:Ljava/util/Optional;

    .line 49
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-class p1, Lcom/android/systemui/plugins/qs/QSFactory;

    .line 54
    const/4 p2, 0x1

    .line 56
    invoke-interface {p4, p0, p1, p2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 57
    iput-object p8, p0, Lcom/android/systemui/qs/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 60
    iput-object p9, p0, Lcom/android/systemui/qs/QSTileHost;->mCustomTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

    .line 62
    iput-object p14, p0, Lcom/android/systemui/qs/QSTileHost;->mHostExt:Lcom/android/systemui/qs/QSTileHostExt;

    .line 64
    new-instance p1, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;

    .line 66
    invoke-direct {p1, p0, p5, p2}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/Object;I)V

    .line 68
    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    iput-object p13, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 74
    return-void
    .line 76
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/plugins/miui/qs/MiuiQSHost$Callback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final addTile(ILjava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mMainExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final addTile(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSTileHost;->addTile(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public final addTile(Landroid/content/ComponentName;Z)V
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qs/QSTileHost;->addTile(ILjava/lang/String;)V

    return-void
.end method

.method public final addTile(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSTileHost;->addTile(ILjava/lang/String;)V

    return-void
.end method

.method public final changeTileSpecs(Ljava/util/function/Predicate;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mHostExt:Lcom/android/systemui/qs/QSTileHostExt;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHostExt;->getTileSpecs()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 13
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileHost;->saveTilesToSettings(Ljava/util/List;)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public final changeTiles(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mHostExt:Lcom/android/systemui/qs/QSTileHostExt;

    .line 2
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/qs/QSTileHostExt;->userEdited:Z

    .line 5
    iget v2, v0, Lcom/android/systemui/qs/QSTileHostExt;->currentUser:I

    .line 7
    iget-object v0, v0, Lcom/android/systemui/qs/QSTileHostExt;->systemSettings:Lcom/android/systemui/util/settings/SystemSettingsImpl;

    .line 9
    const-string/jumbo v3, "tile_host_edited_by_user"

    .line 11
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->putIntForUser(IILjava/lang/String;)Z

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->changeTilesByUser(Ljava/util/List;Ljava/util/List;)V

    .line 17
    return-void
    .line 20
.end method

.method public final changeTilesByUser(Ljava/util/List;Ljava/util/List;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result p1

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, p1, :cond_2

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 18
    check-cast v3, Ljava/lang/String;

    .line 19
    const-string v4, "custom("

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    move-result v4

    .line 26
    if-nez v4, :cond_0

    .line 27
    goto :goto_1

    .line 29
    :cond_0
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result v4

    .line 33
    if-nez v4, :cond_1

    .line 34
    invoke-static {v3}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 36
    move-result-object v3

    .line 39
    new-instance v4, Landroid/content/Intent;

    .line 40
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 42
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 45
    move-result-object v4

    .line 48
    new-instance v5, Landroid/os/UserHandle;

    .line 49
    iget v6, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    .line 51
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 53
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileHost;->mTileLifeCycleManagerFactory:Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;

    .line 56
    invoke-interface {v6, v4, v5}, Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;->create(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 58
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    .line 62
    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileRemoved()V

    .line 65
    iget v5, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    .line 68
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 70
    move-result-object v6

    .line 73
    new-instance v7, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v6, ":"

    .line 82
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v5

    .line 93
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileHost;->mCustomTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

    .line 94
    iget-object v6, v6, Lcom/android/systemui/qs/external/CustomTileStatePersister;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 96
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 98
    move-result-object v6

    .line 101
    invoke-interface {v6, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    move-result-object v5

    .line 105
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    iget v5, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    .line 109
    invoke-virtual {p0, v5, v3, v1}, Lcom/android/systemui/qs/QSTileHost;->setTileAdded(ILandroid/content/ComponentName;Z)V

    .line 111
    iget-object v3, v4, Lcom/android/systemui/qs/external/TileLifecycleManager;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 114
    new-instance v5, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;

    .line 116
    const/4 v6, 0x2

    .line 118
    invoke-direct {v5, v4, v6}, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/external/TileLifecycleManager;I)V

    .line 119
    check-cast v3, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 122
    invoke-virtual {v3, v5}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 124
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 127
    goto :goto_0

    .line 129
    :cond_2
    sget-boolean p1, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    .line 130
    if-eqz p1, :cond_3

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v0, "saveCurrentTiles "

    .line 136
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 148
    const-string v0, "QSTileHost"

    .line 149
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSTileHost;->saveTilesToSettings(Ljava/util/List;)V

    .line 154
    return-void
    .line 157
.end method

.method public final collapsePanels()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda2;

    .line 2
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda2;-><init>(I)V

    .line 5
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mCentralSurfacesOptional:Ljava/util/Optional;

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mHostExt:Lcom/android/systemui/qs/QSTileHostExt;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 17
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->collapseControlCenter(ZZ)V

    .line 23
    :cond_0
    return-void
    .line 26
.end method

.method public final createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mHostExt:Lcom/android/systemui/qs/QSTileHostExt;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    move-result v0

    .line 10
    const v1, 0x749cd99

    .line 11
    const/4 v2, 0x0

    .line 14
    if-eq v0, v1, :cond_4

    .line 15
    const v1, 0x60c5b385

    .line 17
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHostExt;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 20
    if-eq v0, v1, :cond_2

    .line 22
    const v1, 0x7629bd3c

    .line 24
    if-eq v0, v1, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "custom(com.miui.securitycenter/com.miui.superpower.notification.SuperPowerTileService)"

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_6

    .line 36
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 38
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 40
    move-result v0

    .line 43
    if-nez v0, :cond_a

    .line 44
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 46
    if-eqz v0, :cond_1

    .line 48
    sget-boolean v0, Lcom/android/systemui/controlcenter/utils/Constants;->SUPPORT_EXTREME_BATTERY_SAVER:Z

    .line 50
    if-eqz v0, :cond_1

    .line 52
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 54
    if-eqz v0, :cond_a

    .line 56
    :cond_1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 58
    if-eqz v0, :cond_6

    .line 60
    goto :goto_2

    .line 62
    :cond_2
    const-string v0, "custom(com.miui.screenrecorder/.service.QuickService)"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    goto :goto_0

    .line 71
    :cond_3
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 72
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 74
    move-result v0

    .line 77
    if-eqz v0, :cond_6

    .line 78
    goto :goto_2

    .line 80
    :cond_4
    const-string v0, "custom(com.google.android.gms/.nearby.sharing.SharingTileService)"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v0

    .line 86
    if-nez v0, :cond_5

    .line 87
    goto :goto_0

    .line 89
    :cond_5
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 90
    if-nez v0, :cond_6

    .line 92
    goto :goto_2

    .line 94
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHostExt;->host:Ldagger/Lazy;

    .line 95
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 97
    move-result-object v0

    .line 100
    check-cast v0, Lcom/android/systemui/qs/QSTileHost;

    .line 101
    iget-object v0, v0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object v0

    .line 108
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result v1

    .line 112
    if-eqz v1, :cond_a

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object v1

    .line 118
    check-cast v1, Lcom/android/systemui/plugins/qs/QSFactory;

    .line 119
    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSFactory;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    .line 121
    move-result-object v1

    .line 124
    instance-of v3, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 125
    if-eqz v3, :cond_8

    .line 127
    move-object v3, v1

    .line 129
    check-cast v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 130
    goto :goto_1

    .line 132
    :cond_8
    move-object v3, v2

    .line 133
    :goto_1
    if-eqz v3, :cond_9

    .line 134
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHostExt;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 136
    iget-boolean v3, v3, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 138
    sput-boolean v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInControlCenter:Z

    .line 140
    :cond_9
    if-eqz v1, :cond_7

    .line 142
    move-object v2, v1

    .line 144
    :cond_a
    :goto_2
    return-object v2
    .line 145
.end method

.method public final createTileView(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/systemui/plugins/qs/QSFactory;

    .line 15
    invoke-interface {v1, p1, p2, p3}, Lcom/android/systemui/plugins/qs/QSFactory;->createTileView(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    .line 17
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    return-object v1

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    const-string p3, "Default factory didn\'t create view for "

    .line 31
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p0
    .line 50
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "QSTileHost:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 7
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 9
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 13
    move-result-object p0

    .line 16
    new-instance v0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda7;

    .line 17
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda7;-><init>(I)V

    .line 20
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 23
    move-result-object p0

    .line 26
    new-instance v0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda8;

    .line 27
    invoke-direct {v0, p1, p2}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda8;-><init>(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 29
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 32
    return-void
    .line 35
.end method

.method public final dumpProto(Lcom/android/systemui/dump/nano/SystemUIProtoDump;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 8
    move-result-object p0

    .line 11
    new-instance v0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda6;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda6;-><init>(I)V

    .line 15
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 18
    move-result-object p0

    .line 21
    new-instance v0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda6;

    .line 22
    const/4 v2, 0x1

    .line 24
    invoke-direct {v0, v2}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda6;-><init>(I)V

    .line 25
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 28
    move-result-object p0

    .line 31
    new-instance v0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda7;

    .line 32
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda7;-><init>(I)V

    .line 34
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 37
    move-result-object p0

    .line 40
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 41
    move-result-object v0

    .line 44
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 48
    check-cast p0, Ljava/util/List;

    .line 49
    new-array v0, v1, [Lcom/android/systemui/qs/nano/QsTileState;

    .line 51
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 56
    check-cast p0, [Lcom/android/systemui/qs/nano/QsTileState;

    .line 57
    iput-object p0, p1, Lcom/android/systemui/dump/nano/SystemUIProtoDump;->tiles:[Lcom/android/systemui/qs/nano/QsTileState;

    .line 59
    return-void
    .line 61
.end method

.method public final forceCollapsePanels()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda2;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda2;-><init>(I)V

    .line 5
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mCentralSurfacesOptional:Ljava/util/Optional;

    .line 8
    invoke-virtual {v2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mHostExt:Lcom/android/systemui/qs/QSTileHostExt;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 17
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->collapseControlCenter(ZZ)V

    .line 22
    :cond_0
    return-void
    .line 25
.end method

.method public final getBarState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHostExt()Lcom/android/systemui/qs/QSTileHostExt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mHostExt:Lcom/android/systemui/qs/QSTileHostExt;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getQsFactories()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSpecs()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStockTiles()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mHostExt:Lcom/android/systemui/qs/QSTileHostExt;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->qsStockTiles$delegate:Lkotlin/Lazy;

    .line 4
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/String;

    .line 10
    return-object p0
    .line 12
.end method

.method public final getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getTiles()Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getUserContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mUserContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getUserId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    .line 2
    return p0
    .line 4
.end method

.method public final indexOf(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final isQSFullyCollapsed()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final isTileAdded(ILandroid/content/ComponentName;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mUserFileManager:Lcom/android/systemui/settings/UserFileManager;

    .line 2
    check-cast p0, Lcom/android/systemui/settings/UserFileManagerImpl;

    .line 4
    const-string/jumbo v0, "tiles_prefs"

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences(ILjava/lang/String;)Landroid/content/SharedPreferences;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    move-result p0

    .line 21
    return p0
    .line 22
.end method

.method public final loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p1

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 9
    const-string v1, "QSTileHost"

    .line 10
    sget-boolean v2, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const p2, 0x7f1309fa    # @string/quick_settings_tiles 'default'

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    const-string p1, "Loaded tile specs from default config: "

    .line 25
    invoke-static {p1, p2, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    goto :goto_0

    .line 30
    :cond_0
    if-eqz v2, :cond_1

    .line 31
    const-string p1, "Loaded tile specs from setting: "

    .line 33
    invoke-static {p1, p2, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 38
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArraySet;

    .line 43
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 45
    const-string v1, ","

    .line 48
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 50
    move-result-object p2

    .line 53
    array-length v2, p2

    .line 54
    const/4 v3, 0x0

    .line 55
    move v4, v3

    .line 56
    :goto_1
    if-ge v3, v2, :cond_7

    .line 57
    aget-object v5, p2, v3

    .line 59
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 65
    move-result v6

    .line 68
    if-eqz v6, :cond_2

    .line 69
    goto :goto_3

    .line 71
    :cond_2
    const-string v6, "default"

    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v6

    .line 77
    if-eqz v6, :cond_5

    .line 78
    if-nez v4, :cond_6

    .line 80
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileHost;->mHostExt:Lcom/android/systemui/qs/QSTileHostExt;

    .line 82
    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTileHostExt;->getDefaultTiles()Ljava/lang/String;

    .line 84
    move-result-object v4

    .line 87
    filled-new-array {v1}, [Ljava/lang/String;

    .line 88
    move-result-object v5

    .line 91
    invoke-static {v4, v5}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 92
    move-result-object v4

    .line 95
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object v4

    .line 99
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v5

    .line 103
    if-eqz v5, :cond_4

    .line 104
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object v5

    .line 109
    check-cast v5, Ljava/lang/String;

    .line 110
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 112
    move-result v6

    .line 115
    if-nez v6, :cond_3

    .line 116
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 121
    goto :goto_2

    .line 124
    :cond_4
    const/4 v4, 0x1

    .line 125
    goto :goto_3

    .line 126
    :cond_5
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 127
    move-result v6

    .line 130
    if-nez v6, :cond_6

    .line 131
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 139
    goto :goto_1

    .line 141
    :cond_7
    return-object p1
    .line 142
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSFactory;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mHostExt:Lcom/android/systemui/qs/QSTileHostExt;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const/4 p1, 0x6

    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-static {p0, p2, v0, p1}, Lcom/android/systemui/qs/QSTileHostExt;->updateTiles$default(Lcom/android/systemui/qs/QSTileHostExt;ZZI)V

    .line 17
    return-void
    .line 20
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSFactory;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mHostExt:Lcom/android/systemui/qs/QSTileHostExt;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    const/4 p1, 0x6

    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {p0, v0, v1, p1}, Lcom/android/systemui/qs/QSTileHostExt;->updateTiles$default(Lcom/android/systemui/qs/QSTileHostExt;ZZI)V

    .line 17
    return-void
    .line 20
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1
    const-string/jumbo v0, "sysui_qs_tiles"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    sget-object p1, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 12
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string p1, "QSTileHost"

    .line 19
    const-string v0, "Recreating tiles"

    .line 21
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    .line 26
    if-nez p2, :cond_1

    .line 28
    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    .line 30
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object p2

    .line 39
    const v1, 0x7f1309fd    # @string/quick_settings_tiles_retail_mode 'night,dark,dnd,flashlight,rotation,location'

    .line 40
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 46
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    .line 47
    move-result-object p2

    .line 50
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 51
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 53
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 55
    move-result v2

    .line 58
    iget v3, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    .line 59
    if-eq v2, v3, :cond_2

    .line 61
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 63
    move-result-object v1

    .line 66
    iput-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mUserContext:Landroid/content/Context;

    .line 67
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 69
    if-eqz v1, :cond_2

    .line 71
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 73
    move-result-object v3

    .line 76
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->changeUser(Landroid/os/UserHandle;)V

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 80
    move-object v3, p2

    .line 82
    check-cast v3, Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v4

    .line 88
    if-eqz v4, :cond_3

    .line 89
    iget v4, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    .line 91
    if-ne v2, v4, :cond_3

    .line 93
    return-void

    .line 95
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 96
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 98
    move-result-object v5

    .line 101
    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 102
    move-result-object v5

    .line 105
    new-instance v6, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;

    .line 106
    const/4 v7, 0x0

    .line 108
    invoke-direct {v6, v7, p2}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 109
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 112
    move-result-object p2

    .line 115
    new-instance v5, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda4;

    .line 116
    invoke-direct {v5, p0}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/QSTileHost;)V

    .line 118
    invoke-interface {p2, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 121
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 124
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 126
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    move-result-object v5

    .line 132
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    move-result v6

    .line 136
    if-eqz v6, :cond_c

    .line 137
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    move-result-object v6

    .line 142
    check-cast v6, Ljava/lang/String;

    .line 143
    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    move-result-object v7

    .line 148
    check-cast v7, Lcom/android/systemui/plugins/qs/QSTile;

    .line 149
    const-string v8, "Tile not available"

    .line 151
    const-string v9, "Destroying not available tile: "

    .line 153
    iget-object v10, p0, Lcom/android/systemui/qs/QSTileHost;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 155
    if-eqz v7, :cond_8

    .line 157
    instance-of v11, v7, Lcom/android/systemui/qs/external/CustomTile;

    .line 159
    if-eqz v11, :cond_4

    .line 161
    move-object v12, v7

    .line 163
    check-cast v12, Lcom/android/systemui/qs/external/CustomTile;

    .line 164
    iget v12, v12, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    .line 166
    if-ne v12, v2, :cond_8

    .line 168
    :cond_4
    invoke-interface {v7}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    .line 170
    move-result v12

    .line 173
    if-eqz v12, :cond_7

    .line 174
    sget-boolean v8, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    .line 176
    if-eqz v8, :cond_5

    .line 178
    new-instance v8, Ljava/lang/StringBuilder;

    .line 180
    const-string v9, "Adding "

    .line 182
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v8

    .line 193
    invoke-static {p1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_5
    invoke-interface {v7}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    .line 197
    if-nez v11, :cond_6

    .line 200
    iget v8, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    .line 202
    if-eq v8, v2, :cond_6

    .line 204
    invoke-interface {v7, v2}, Lcom/android/systemui/plugins/qs/QSTile;->userSwitch(I)V

    .line 206
    :cond_6
    invoke-virtual {p2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {v10, v6}, Lcom/android/systemui/qs/logging/QSLogger;->logTileAdded(Ljava/lang/String;)V

    .line 212
    goto :goto_0

    .line 215
    :cond_7
    invoke-interface {v7}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    .line 219
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v7

    .line 230
    invoke-static {p1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v10, v6, v8}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    goto :goto_0

    .line 237
    :cond_8
    if-eqz v7, :cond_9

    .line 238
    invoke-interface {v7}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    .line 243
    const-string v11, "Destroying tile for wrong user: "

    .line 245
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v7

    .line 256
    invoke-static {p1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v7, "Tile for wrong user"

    .line 260
    invoke-virtual {v10, v6, v7}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_9
    const-string v7, "Creating tile: "

    .line 265
    invoke-static {v7, v6, p1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :try_start_0
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    .line 270
    move-result-object v7

    .line 273
    if-eqz v7, :cond_b

    .line 274
    invoke-interface {v7, v6}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 276
    invoke-interface {v7}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    .line 279
    move-result v11

    .line 282
    if-eqz v11, :cond_a

    .line 283
    invoke-virtual {p2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {v10, v6}, Lcom/android/systemui/qs/logging/QSLogger;->logTileAdded(Ljava/lang/String;)V

    .line 288
    goto/16 :goto_0

    .line 291
    :cond_a
    invoke-interface {v7}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    .line 293
    new-instance v7, Ljava/lang/StringBuilder;

    .line 296
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object v7

    .line 310
    invoke-static {p1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {v10, v6, v8}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    goto/16 :goto_0

    .line 317
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    .line 319
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    const-string v8, "No factory for a spec: "

    .line 324
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object v7

    .line 335
    invoke-static {p1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    goto/16 :goto_0

    .line 339
    :catchall_0
    move-exception v7

    .line 341
    new-instance v8, Ljava/lang/StringBuilder;

    .line 342
    const-string v9, "Error creating tile for spec: "

    .line 344
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    move-result-object v6

    .line 355
    invoke-static {p1, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    goto/16 :goto_0

    .line 359
    :cond_c
    iput v2, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    .line 361
    new-instance v2, Ljava/util/ArrayList;

    .line 363
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 365
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 368
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 371
    move-result-object v5

    .line 374
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 375
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    .line 378
    invoke-virtual {v4, p2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 381
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    .line 384
    move-result p2

    .line 387
    if-eqz p2, :cond_d

    .line 388
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 390
    move-result p2

    .line 393
    if-nez p2, :cond_d

    .line 394
    const-string p2, "No valid tiles on tuning changed. Setting to default."

    .line 396
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string p1, ""

    .line 401
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    .line 403
    move-result-object p1

    .line 406
    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/qs/QSTileHost;->changeTilesByUser(Ljava/util/List;Ljava/util/List;)V

    .line 407
    goto :goto_2

    .line 410
    :cond_d
    const/4 p1, 0x0

    .line 411
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    .line 412
    check-cast p2, Ljava/util/ArrayList;

    .line 414
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 416
    move-result v0

    .line 419
    if-ge p1, v0, :cond_e

    .line 420
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 422
    move-result-object p2

    .line 425
    check-cast p2, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost$Callback;

    .line 426
    invoke-interface {p2}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost$Callback;->onTilesChanged()V

    .line 428
    add-int/lit8 p1, p1, 0x1

    .line 431
    goto :goto_1

    .line 433
    :cond_e
    :goto_2
    return-void
    .line 434
.end method

.method public final openPanels()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda2;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda2;-><init>(I)V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mCentralSurfacesOptional:Ljava/util/Optional;

    .line 8
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 10
    return-void
    .line 13
.end method

.method public final removeCallback(Lcom/android/systemui/plugins/miui/qs/MiuiQSHost$Callback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final removeTile(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "custom("

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 11
    move-result-object v0

    .line 14
    iget v2, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    .line 15
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/qs/QSTileHost;->setTileAdded(ILandroid/content/ComponentName;Z)V

    .line 17
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;

    .line 20
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/Object;I)V

    .line 22
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 25
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    return-void
    .line 30
.end method

.method public final removeTileByUser(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/Object;I)V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 8
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    return-void
    .line 13
.end method

.method public final removeTiles(Ljava/util/Collection;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;

    .line 2
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/Object;I)V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 8
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    return-void
    .line 13
.end method

.method public final saveTilesToSettings(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mHostExt:Lcom/android/systemui/qs/QSTileHostExt;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileHostExt;->superSaveMode:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, ","

    .line 9
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileHostExt;->userEdited:Z

    .line 15
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHostExt;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 20
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 22
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 24
    move-result v0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 28
    check-cast p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 30
    const-string/jumbo v2, "sysui_qs_tiles"

    .line 32
    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->putStringForUser(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 35
    goto :goto_0

    .line 38
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt;->temporarySpecs:Ljava/lang/String;

    .line 39
    const/4 p1, 0x1

    .line 41
    const/4 v0, 0x6

    .line 42
    invoke-static {p0, p1, v1, v0}, Lcom/android/systemui/qs/QSTileHostExt;->updateTiles$default(Lcom/android/systemui/qs/QSTileHostExt;ZZI)V

    .line 43
    :goto_0
    return-void
    .line 46
.end method

.method public final setTileAdded(ILandroid/content/ComponentName;Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mUserFileManager:Lcom/android/systemui/settings/UserFileManager;

    .line 2
    check-cast p0, Lcom/android/systemui/settings/UserFileManagerImpl;

    .line 4
    const-string/jumbo v0, "tiles_prefs"

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences(ILjava/lang/String;)Landroid/content/SharedPreferences;

    .line 9
    move-result-object p0

    .line 12
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    move-result-object p0

    .line 16
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 20
    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object p0

    .line 24
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    return-void
    .line 28
.end method
