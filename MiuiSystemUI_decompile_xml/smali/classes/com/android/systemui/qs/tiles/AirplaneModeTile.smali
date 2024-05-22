.class public final Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mLazyConnectivityManager:Ldagger/Lazy;

.field public mListening:Z

.field public final mReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

.field public final mSetting:Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    new-instance p1, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    .line 5
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    .line 10
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 12
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mLazyConnectivityManager:Ldagger/Lazy;

    .line 14
    new-instance p1, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    .line 16
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 18
    check-cast p13, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 20
    invoke-virtual {p13}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 22
    move-result p3

    .line 25
    invoke-direct {p1, p0, p12, p2, p3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Lcom/android/systemui/util/settings/SettingsProxy;Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;I)V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    .line 29
    return-void
    .line 31
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    const-string v0, "android.settings.AIRPLANE_MODE_SETTINGS"

    .line 4
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    return-object p0
    .line 9
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x70

    .line 2
    return p0
    .line 4
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f130134    # @string/airplane_mode 'Airplane mode'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 4
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 6
    xor-int/lit8 v0, p1, 0x1

    .line 8
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 10
    const/16 v2, 0x70

    .line 12
    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 14
    if-nez p1, :cond_0

    .line 17
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    .line 19
    move-result-object v0

    .line 22
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    new-instance p1, Landroid/content/Intent;

    .line 37
    const-string v0, "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

    .line 39
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 45
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 47
    return-void

    .line 50
    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mLazyConnectivityManager:Ldagger/Lazy;

    .line 53
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 58
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 59
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 61
    return-void
    .line 64
.end method

.method public final handleSetListening(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mListening:Z

    .line 5
    if-ne v0, p1, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mListening:Z

    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 14
    if-eqz p1, :cond_1

    .line 16
    new-instance v2, Landroid/content/IntentFilter;

    .line 18
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 20
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    .line 23
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 32
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 37
    return-void
    .line 40
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    const-string v0, "no_airplane_mode"

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 6
    instance-of v0, p2, Ljava/lang/Integer;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    check-cast p2, Ljava/lang/Integer;

    .line 13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    .line 20
    invoke-virtual {p2}, Lcom/android/systemui/qs/SettingObserver;->getValue()I

    .line 22
    move-result p2

    .line 25
    :goto_0
    const/4 v0, 0x1

    .line 26
    if-eqz p2, :cond_1

    .line 27
    move p2, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 p2, 0x0

    .line 31
    :goto_1
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 32
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 34
    const v1, 0x7f130134    # @string/airplane_mode 'Airplane mode'

    .line 36
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 43
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 45
    if-eqz p0, :cond_2

    .line 47
    const p0, 0x7f081708    # @drawable/qs_airplane_icon_on 'res/drawable/qs_airplane_icon_on.xml'

    .line 49
    goto :goto_2

    .line 52
    :cond_2
    const p0, 0x7f081707    # @drawable/qs_airplane_icon_off 'res/drawable/qs_airplane_icon_off.xml'

    .line 53
    :goto_2
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 56
    move-result-object p0

    .line 59
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 60
    if-eqz p2, :cond_3

    .line 62
    const/4 v0, 0x2

    .line 64
    :cond_3
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 65
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 67
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 69
    const-class p0, Landroid/widget/Switch;

    .line 71
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 77
    return-void
    .line 79
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method
