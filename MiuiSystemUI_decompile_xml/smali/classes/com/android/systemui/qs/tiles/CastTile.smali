.class public final Lcom/android/systemui/qs/tiles/CastTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mController:Lcom/android/systemui/statusbar/policy/CastController;

.field public final mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field public final mHotspotCallback:Lcom/android/systemui/qs/tiles/CastTile$2;

.field public mHotspotConnected:Z

.field public final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mSignalCallback:Lcom/android/systemui/qs/tiles/CastTile$1;

.field public mWifiConnected:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "android.settings.CAST_SETTINGS"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/animation/DialogLaunchAnimator;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    new-instance p1, Lcom/android/systemui/qs/tiles/CastTile$Callback;

    .line 5
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/CastTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    .line 7
    new-instance p2, Lcom/android/systemui/qs/tiles/CastTile$1;

    .line 10
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/CastTile$1;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    .line 12
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CastTile$1;

    .line 15
    new-instance p3, Lcom/android/systemui/qs/tiles/CastTile$2;

    .line 17
    invoke-direct {p3, p0}, Lcom/android/systemui/qs/tiles/CastTile$2;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    .line 19
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/CastTile;->mHotspotCallback:Lcom/android/systemui/qs/tiles/CastTile$2;

    .line 22
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    .line 24
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 26
    iput-object p14, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 28
    invoke-virtual {p0, p10, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->observe(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p0, p11, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->observe(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0, p12, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->observe(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0, p13, p3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->observe(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    .line 39
    return-void
    .line 42
.end method


# virtual methods
.method public final getActiveDevices()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->getCastDevices()Ljava/util/List;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 31
    iget v2, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    .line 33
    const/4 v3, 0x2

    .line 35
    if-eq v2, v3, :cond_1

    .line 36
    const/4 v3, 0x1

    .line 38
    if-ne v2, v3, :cond_0

    .line 39
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_0

    .line 44
    :cond_2
    return-object v0
    .line 45
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    const-string v0, "android.settings.CAST_SETTINGS"

    .line 4
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    return-object p0
    .line 9
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x72

    .line 2
    return p0
    .line 4
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f130972    # @string/quick_settings_cast_title 'Screen Cast'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 4
    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->getActiveDevices()Ljava/util/List;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->getActiveDevices()Ljava/util/List;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v2, :cond_2

    .line 26
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 32
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    .line 34
    instance-of v1, v1, Landroid/media/MediaRouter$RouteInfo;

    .line 36
    if-eqz v1, :cond_1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    move v1, v3

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 43
    :goto_1
    if-eqz v1, :cond_4

    .line 44
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 46
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 48
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 50
    if-nez v0, :cond_3

    .line 52
    new-instance v0, Lcom/android/systemui/qs/tiles/CastTile$$ExternalSyntheticLambda1;

    .line 54
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/CastTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/CastTile;Landroid/view/View;)V

    .line 56
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 59
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    goto :goto_2

    .line 64
    :cond_3
    new-instance p1, Lcom/android/systemui/qs/tiles/CastTile$$ExternalSyntheticLambda0;

    .line 65
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/CastTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 70
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 72
    goto :goto_2

    .line 75
    :cond_4
    check-cast v0, Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object p1

    .line 81
    check-cast p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 82
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    .line 84
    check-cast p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    .line 91
    instance-of v0, v0, Landroid/media/projection/MediaProjectionInfo;

    .line 93
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    .line 95
    const-string v2, "CastController"

    .line 97
    if-eqz v1, :cond_5

    .line 99
    const-string/jumbo v1, "stopCasting isProjection="

    .line 101
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 104
    :cond_5
    if-eqz v0, :cond_7

    .line 107
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    .line 109
    check-cast p1, Landroid/media/projection/MediaProjectionInfo;

    .line 111
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 113
    invoke-virtual {p0}, Landroid/media/projection/MediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    .line 115
    move-result-object v0

    .line 118
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    move-result v0

    .line 122
    if-eqz v0, :cond_6

    .line 123
    invoke-virtual {p0}, Landroid/media/projection/MediaProjectionManager;->stopActiveProjection()V

    .line 125
    goto :goto_2

    .line 128
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 129
    const-string v0, "Projection is no longer active: "

    .line 131
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 142
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    goto :goto_2

    .line 146
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    .line 147
    invoke-virtual {p0}, Landroid/media/MediaRouter;->getFallbackRoute()Landroid/media/MediaRouter$RouteInfo;

    .line 149
    move-result-object p0

    .line 152
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 153
    :goto_2
    return-void
    .line 156
.end method

.method public final handleLongClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CastTile;->handleClick(Landroid/view/View;)V

    .line 2
    return-void
    .line 5
.end method

.method public final handleSetListening(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 2
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 9
    const-string v1, "handleSetListening "

    .line 11
    invoke-static {v1, p1, v0}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 13
    :cond_0
    if-nez p1, :cond_3

    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    .line 18
    check-cast p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 20
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscoveringLock:Ljava/lang/Object;

    .line 22
    monitor-enter p1

    .line 24
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscovering:Z

    .line 25
    if-nez v0, :cond_1

    .line 27
    monitor-exit p1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscovering:Z

    .line 32
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    .line 34
    if-eqz v0, :cond_2

    .line 36
    const-string v0, "CastController"

    .line 38
    const-string/jumbo v1, "setDiscovering: false"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->handleDiscoveryChangeLocked()V

    .line 46
    monitor-exit p1

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0

    .line 53
    :cond_3
    :goto_0
    return-void
    .line 54
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    const p2, 0x7f130972    # @string/quick_settings_cast_title 'Screen Cast'

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object p2

    .line 12
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 13
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 15
    const-string p2, ""

    .line 17
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 19
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 22
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    .line 24
    check-cast v2, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 26
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->getCastDevices()Ljava/util/List;

    .line 28
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v2

    .line 37
    move v3, v1

    .line 38
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v4

    .line 42
    const/4 v5, 0x1

    .line 43
    const/4 v6, 0x2

    .line 44
    if-eqz v4, :cond_3

    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 50
    check-cast v4, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 51
    iget v7, v4, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    .line 53
    if-ne v7, v6, :cond_2

    .line 55
    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 57
    iget-object v2, v4, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    .line 59
    if-eqz v2, :cond_1

    .line 61
    goto :goto_1

    .line 63
    :cond_1
    const v2, 0x7f130970    # @string/quick_settings_cast_device_default_name 'Unnamed device'

    .line 64
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 70
    :goto_1
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const-string v3, ","

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 88
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 90
    move-result-object v3

    .line 93
    const v4, 0x7f130053    # @string/accessibility_cast_name 'Connected to %s.'

    .line 94
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v2

    .line 107
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 108
    move v3, v1

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    if-ne v7, v5, :cond_0

    .line 112
    move v3, v5

    .line 114
    goto :goto_0

    .line 115
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 116
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 118
    if-nez v2, :cond_4

    .line 120
    const v2, 0x7f13098a    # @string/quick_settings_connecting 'Connecting...'

    .line 122
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 125
    move-result-object v2

    .line 128
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 129
    :cond_4
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 131
    if-eqz v2, :cond_5

    .line 133
    const v2, 0x7f080f0d    # @drawable/ic_cast_connected 'res/drawable/ic_cast_connected.xml'

    .line 135
    goto :goto_3

    .line 138
    :cond_5
    const v2, 0x7f080f0c    # @drawable/ic_cast 'res/drawable/ic_cast.xml'

    .line 139
    :goto_3
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 142
    move-result-object v2

    .line 145
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 146
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mWifiConnected:Z

    .line 148
    if-nez v2, :cond_7

    .line 150
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mHotspotConnected:Z

    .line 152
    if-eqz v2, :cond_6

    .line 154
    goto :goto_4

    .line 156
    :cond_6
    move v2, v1

    .line 157
    goto :goto_5

    .line 158
    :cond_7
    :goto_4
    move v2, v5

    .line 159
    :goto_5
    if-nez v2, :cond_9

    .line 160
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 162
    if-eqz v2, :cond_8

    .line 164
    goto :goto_6

    .line 166
    :cond_8
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 167
    const p0, 0x7f130971    # @string/quick_settings_cast_no_wifi 'Wi‑Fi not connected'

    .line 169
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 172
    move-result-object p0

    .line 175
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 176
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->forceExpandIcon:Z

    .line 178
    goto :goto_8

    .line 180
    :cond_9
    :goto_6
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 181
    if-eqz v0, :cond_a

    .line 183
    goto :goto_7

    .line 185
    :cond_a
    move v6, v5

    .line 186
    :goto_7
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 187
    if-nez v0, :cond_b

    .line 189
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 191
    :cond_b
    const-class p2, Landroid/widget/Button;

    .line 193
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 195
    move-result-object p2

    .line 198
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->getActiveDevices()Ljava/util/List;

    .line 201
    move-result-object p0

    .line 204
    check-cast p0, Ljava/util/ArrayList;

    .line 205
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 207
    move-result p2

    .line 210
    if-nez p2, :cond_c

    .line 211
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 213
    move-result-object p0

    .line 216
    check-cast p0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 217
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    .line 219
    instance-of p0, p0, Landroid/media/MediaRouter$RouteInfo;

    .line 221
    if-eqz p0, :cond_d

    .line 223
    :cond_c
    move v1, v5

    .line 225
    :cond_d
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->forceExpandIcon:Z

    .line 226
    :goto_8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 233
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    const-string p2, ", "

    .line 238
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 243
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    move-result-object p0

    .line 251
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 252
    return-void
    .line 254
.end method

.method public final handleUserSwitch(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    .line 6
    check-cast p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    .line 10
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->rebindAsUser(I)V

    .line 12
    return-void
    .line 15
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    .line 8
    return-object p0
    .line 10
.end method
