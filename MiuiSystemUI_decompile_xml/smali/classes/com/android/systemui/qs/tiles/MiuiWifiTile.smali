.class public final Lcom/android/systemui/qs/tiles/MiuiWifiTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final WIFI_ENTRY_COMPARATOR:Ljava/util/Comparator;

.field public static final WIFI_SETTINGS:Landroid/content/Intent;


# instance fields
.field public final accessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

.field public connectedHotspot:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

.field public final detailAdapter:Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;

.field public hotspotList:Ljava/util/List;

.field public isConnected:Z

.field public isSltOn:Z

.field public final networkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final observer:Landroidx/lifecycle/LifecycleEventObserver;

.field public final shareNetworkCallback:Lcom/android/systemui/qs/tiles/MiuiWifiTile$ShareNetworkCallback;

.field public final shareNetworkController:Lcom/android/systemui/controlcenter/policy/ShareNetworkController;

.field public final signalCallback:Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;

.field public final slaveWifiHelper:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

.field public final sltController:Lcom/android/systemui/controlcenter/policy/SltController;

.field public final sltListener:Lcom/android/systemui/qs/tiles/MiuiWifiTile$sltListener$1;

.field public final stateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

.field public targetEnable:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "android.settings.WIFI_SETTINGS"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 9
    sget-object v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;->INSTANCE:Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;

    .line 11
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 13
    move-result-object v0

    .line 16
    sget-object v1, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;->INSTANCE$1:Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;

    .line 17
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 19
    move-result-object v0

    .line 22
    sget-object v1, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;->INSTANCE$2:Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;

    .line 23
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 25
    move-result-object v0

    .line 28
    sget-object v1, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;->INSTANCE$3:Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;

    .line 29
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 31
    move-result-object v0

    .line 34
    sput-object v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->WIFI_ENTRY_COMPARATOR:Ljava/util/Comparator;

    .line 35
    return-void
    .line 37
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/statusbar/connectivity/AccessPointController;Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;Lcom/android/systemui/controlcenter/policy/ShareNetworkController;Lcom/android/systemui/controlcenter/policy/SltController;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->networkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 5
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->accessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 7
    iput-object p12, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->slaveWifiHelper:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

    .line 9
    iput-object p13, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->shareNetworkController:Lcom/android/systemui/controlcenter/policy/ShareNetworkController;

    .line 11
    iput-object p14, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->sltController:Lcom/android/systemui/controlcenter/policy/SltController;

    .line 13
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;

    .line 15
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 17
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/MiuiWifiTile;Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->detailAdapter:Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;

    .line 22
    new-instance p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 24
    invoke-direct {p1}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->stateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 29
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;

    .line 31
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/MiuiWifiTile;)V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->signalCallback:Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;

    .line 36
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiWifiTile$ShareNetworkCallback;

    .line 38
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$ShareNetworkCallback;-><init>(Lcom/android/systemui/qs/tiles/MiuiWifiTile;)V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->shareNetworkCallback:Lcom/android/systemui/qs/tiles/MiuiWifiTile$ShareNetworkCallback;

    .line 43
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiWifiTile$sltListener$1;

    .line 45
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$sltListener$1;-><init>(Lcom/android/systemui/qs/tiles/MiuiWifiTile;)V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->sltListener:Lcom/android/systemui/qs/tiles/MiuiWifiTile$sltListener$1;

    .line 50
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiWifiTile$observer$1;

    .line 52
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$observer$1;-><init>(Lcom/android/systemui/qs/tiles/MiuiWifiTile;)V

    .line 54
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->observer:Landroidx/lifecycle/LifecycleEventObserver;

    .line 57
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiWifiTile$1;

    .line 59
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$1;-><init>(Lcom/android/systemui/qs/tiles/MiuiWifiTile;)V

    .line 61
    invoke-virtual {p4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void
    .line 67
.end method


# virtual methods
.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->detailAdapter:Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x7e

    .line 2
    return p0
    .line 4
.end method

.method public final bridge synthetic getTileLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->getTileLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTileLabel()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 3
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1309c7    # @string/quick_settings_miui_wifi_label 'WLAN'

    goto :goto_0

    :cond_0
    const v0, 0x7f1309c9    # @string/quick_settings_miui_wlan_label 'WLAN'

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 4
    if-nez p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 13
    const-string p1, "handleClick: not ready, ignore"

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void

    .line 20
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->isSltOn:Z

    .line 21
    if-eqz v0, :cond_2

    .line 23
    return-void

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->stateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 26
    invoke-virtual {p1, v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 28
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 31
    xor-int/lit8 p1, p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->targetEnable:Z

    .line 35
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->networkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 37
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 39
    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSingleExecutor:Ljava/util/concurrent/Executor;

    .line 41
    new-instance v2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda7;

    .line 43
    const/4 v3, 0x0

    .line 45
    invoke-direct {v2, v0, p1, v3}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;ZI)V

    .line 46
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 49
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->targetEnable:Z

    .line 52
    if-eqz p1, :cond_3

    .line 54
    sget-object p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 56
    goto :goto_0

    .line 58
    :cond_3
    const/4 p1, 0x0

    .line 59
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public final handleSecondaryClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 4
    if-nez p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->accessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->canConfigWifi()Z

    .line 13
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_1

    .line 18
    sget-object p1, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 22
    invoke-interface {p0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 24
    return-void

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    .line 29
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 32
    if-nez p1, :cond_2

    .line 34
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->networkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 36
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 38
    iget-object v2, p1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSingleExecutor:Ljava/util/concurrent/Executor;

    .line 40
    new-instance v3, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda7;

    .line 42
    invoke-direct {v3, p1, v0, v1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;ZI)V

    .line 44
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->detailAdapter:Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->updateItems()V

    .line 56
    return-void
    .line 59
.end method

.method public final handleSetListening(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 2
    return-void
    .line 5
.end method

.method public final handleShowStateMessage()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 16
    if-nez v0, :cond_1

    .line 18
    goto :goto_2

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v2

    .line 24
    const/4 v3, 0x2

    .line 25
    if-ne v2, v3, :cond_3

    .line 26
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 28
    if-eqz v0, :cond_2

    .line 30
    const v0, 0x7f130a1a    # @string/quick_settings_wifi_state_change_message_on 'WLAN is on'

    .line 32
    goto :goto_1

    .line 35
    :cond_2
    const v0, 0x7f130a1d    # @string/quick_settings_wlan_state_change_message_on 'WLAN is on'

    .line 36
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 43
    goto :goto_4

    .line 46
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 47
    goto :goto_4

    .line 49
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 50
    move-result v0

    .line 53
    const/4 v2, 0x1

    .line 54
    if-ne v0, v2, :cond_6

    .line 55
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 57
    if-eqz v0, :cond_5

    .line 59
    const v0, 0x7f130a19    # @string/quick_settings_wifi_state_change_message_off 'WLAN is off'

    .line 61
    goto :goto_3

    .line 64
    :cond_5
    const v0, 0x7f130a1c    # @string/quick_settings_wlan_state_change_message_off 'WLAN is off'

    .line 65
    :goto_3
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 72
    :cond_6
    :goto_4
    return-void
    .line 75
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 2
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "handleUpdateState arg: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    if-nez p1, :cond_1

    .line 27
    goto/16 :goto_f

    .line 29
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->isSltOn:Z

    .line 31
    const v1, 0x7f08118b    # @drawable/ic_qs_wifi_off 'res/drawable/ic_qs_wifi_off.xml'

    .line 33
    const/4 v2, 0x0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 39
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 41
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 43
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 45
    move-result-object p2

    .line 48
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->getTileLabel()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 54
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 55
    goto/16 :goto_f

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->signalCallback:Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;

    .line 59
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;->signalInfo:Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;

    .line 61
    sget-object v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 63
    const/4 v4, 0x1

    .line 65
    if-ne p2, v3, :cond_3

    .line 66
    move p2, v4

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    move p2, v2

    .line 70
    :goto_0
    iget-boolean v3, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->isTransient:Z

    .line 71
    if-nez v3, :cond_4

    .line 73
    if-eqz p2, :cond_5

    .line 75
    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->targetEnable:Z

    .line 77
    if-eqz v5, :cond_5

    .line 79
    move v5, v4

    .line 81
    goto :goto_1

    .line 82
    :cond_5
    move v5, v2

    .line 83
    :goto_1
    if-eqz v3, :cond_6

    .line 84
    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->targetEnable:Z

    .line 86
    if-nez v6, :cond_6

    .line 88
    move v6, v4

    .line 90
    goto :goto_2

    .line 91
    :cond_6
    move v6, v2

    .line 92
    :goto_2
    iget-boolean v7, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->targetEnable:Z

    .line 93
    if-eqz v7, :cond_7

    .line 95
    iget-boolean v8, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->enabled:Z

    .line 97
    if-eqz v8, :cond_7

    .line 99
    if-eqz v3, :cond_8

    .line 101
    :cond_7
    if-nez v7, :cond_9

    .line 103
    iget-boolean v7, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->enabled:Z

    .line 105
    if-nez v7, :cond_8

    .line 107
    if-eqz v3, :cond_9

    .line 109
    :cond_8
    move v7, v4

    .line 111
    goto :goto_3

    .line 112
    :cond_9
    move v7, v2

    .line 113
    :goto_3
    iput-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 114
    if-nez p2, :cond_b

    .line 116
    if-eqz v3, :cond_a

    .line 118
    goto :goto_4

    .line 120
    :cond_a
    move p2, v2

    .line 121
    goto :goto_5

    .line 122
    :cond_b
    :goto_4
    move p2, v4

    .line 123
    :goto_5
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 124
    iget-boolean p2, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->enabled:Z

    .line 126
    if-eqz p2, :cond_c

    .line 128
    iget v3, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->wifiSignalIconId:I

    .line 130
    if-lez v3, :cond_c

    .line 132
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    .line 134
    if-eqz v3, :cond_c

    .line 136
    move v3, v4

    .line 138
    goto :goto_6

    .line 139
    :cond_c
    move v3, v2

    .line 140
    :goto_6
    iget v8, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->wifiSignalIconId:I

    .line 141
    if-lez v8, :cond_d

    .line 143
    iget-object v8, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    .line 145
    if-nez v8, :cond_d

    .line 147
    move v8, v4

    .line 149
    goto :goto_7

    .line 150
    :cond_d
    move v8, v2

    .line 151
    :goto_7
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->isConnected:Z

    .line 152
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 154
    if-nez v5, :cond_10

    .line 156
    if-nez v6, :cond_10

    .line 158
    if-eq v7, p2, :cond_e

    .line 160
    move v2, v4

    .line 162
    :cond_e
    if-eqz v2, :cond_f

    .line 163
    iget-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z

    .line 165
    if-eqz v2, :cond_f

    .line 167
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 169
    :cond_f
    iget-boolean p2, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->enabled:Z

    .line 172
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 174
    :cond_10
    new-instance p2, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 181
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 183
    move-result-object v2

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->getTileLabel()Ljava/lang/String;

    .line 187
    move-result-object v6

    .line 190
    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 191
    const/4 v9, 0x0

    .line 193
    if-eqz v7, :cond_11

    .line 194
    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 196
    goto :goto_c

    .line 198
    :cond_11
    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 199
    if-nez v7, :cond_12

    .line 201
    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 203
    goto :goto_c

    .line 205
    :cond_12
    if-eqz v3, :cond_18

    .line 206
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    .line 208
    if-nez v7, :cond_13

    .line 210
    sget-boolean v7, Lcom/miui/systemui/util/CommonUtil;->OWNER_USER_PROCESS:Z

    .line 212
    move-object v7, v9

    .line 214
    goto :goto_8

    .line 215
    :cond_13
    invoke-static {v7}, Lcom/miui/systemui/util/CommonUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    move-result-object v7

    .line 219
    :goto_8
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->connectedHotspot:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

    .line 220
    if-eqz v8, :cond_14

    .line 222
    iget-object v8, v8, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->realSsid:Ljava/lang/String;

    .line 224
    goto :goto_9

    .line 226
    :cond_14
    move-object v8, v9

    .line 227
    :goto_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 228
    move-result v8

    .line 231
    if-nez v8, :cond_17

    .line 232
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->connectedHotspot:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

    .line 234
    if-eqz v8, :cond_15

    .line 236
    iget-object v8, v8, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->realSsid:Ljava/lang/String;

    .line 238
    goto :goto_a

    .line 240
    :cond_15
    move-object v8, v9

    .line 241
    :goto_a
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    move-result v8

    .line 245
    if-eqz v8, :cond_17

    .line 246
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->connectedHotspot:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

    .line 248
    if-eqz p0, :cond_16

    .line 250
    iget-object v7, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->ssid:Ljava/lang/String;

    .line 252
    goto :goto_b

    .line 254
    :cond_16
    move-object v7, v9

    .line 255
    :cond_17
    :goto_b
    iput-object v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 256
    goto :goto_c

    .line 258
    :cond_18
    if-eqz v8, :cond_19

    .line 259
    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 261
    goto :goto_c

    .line 263
    :cond_19
    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 264
    :goto_c
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string p0, ","

    .line 269
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 274
    if-eqz v7, :cond_1a

    .line 276
    const v7, 0x7f130b5a    # @string/switch_bar_on 'On'

    .line 278
    goto :goto_d

    .line 281
    :cond_1a
    const v7, 0x7f130b59    # @string/switch_bar_off 'Off'

    .line 282
    :goto_d
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 285
    move-result-object v7

    .line 288
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 295
    if-eqz v7, :cond_1c

    .line 297
    if-eqz v3, :cond_1c

    .line 299
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    .line 301
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-object p0, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    .line 309
    if-nez p0, :cond_1b

    .line 311
    sget-boolean p0, Lcom/miui/systemui/util/CommonUtil;->OWNER_USER_PROCESS:Z

    .line 313
    goto :goto_e

    .line 315
    :cond_1b
    invoke-static {p0}, Lcom/miui/systemui/util/CommonUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    move-result-object v9

    .line 319
    :goto_e
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_1c
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 323
    if-nez p0, :cond_1d

    .line 325
    if-eqz v5, :cond_1e

    .line 327
    :cond_1d
    const/4 v4, 0x2

    .line 329
    :cond_1e
    iput v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 330
    if-eqz p0, :cond_1f

    .line 332
    const v1, 0x7f08118c    # @drawable/ic_qs_wifi_on 'res/drawable/ic_qs_wifi_on.xml'

    .line 334
    :cond_1f
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 337
    move-result-object p0

    .line 340
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 341
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    move-result-object p0

    .line 346
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 347
    const p0, 0x7f1300df    # @string/accessibility_quick_settings_open_settings 'Open %s settings.'

    .line 349
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 352
    move-result-object p2

    .line 355
    invoke-virtual {v2, p0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 356
    move-result-object p0

    .line 359
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 360
    const-class p0, Landroid/widget/Switch;

    .line 362
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 364
    move-result-object p0

    .line 367
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 368
    :goto_f
    return-void
    .line 370
.end method

.method public final isAvailable()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object p0

    .line 7
    const-string v0, "android.hardware.wifi"

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public final isConnected()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->isConnected:Z

    .line 2
    return p0
    .line 4
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final setDetailListening(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->detailAdapter:Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->accessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    check-cast p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->addAccessPointCallback(Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;)V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    check-cast p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->removeAccessPointCallback(Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;)V

    .line 16
    :goto_0
    return-void
    .line 19
.end method
