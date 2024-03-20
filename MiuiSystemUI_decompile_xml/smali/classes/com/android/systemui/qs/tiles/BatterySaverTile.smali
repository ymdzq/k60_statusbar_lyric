.class public final Lcom/android/systemui/qs/tiles/BatterySaverTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public mPluggedIn:Z

.field public mPowerSave:Z

.field protected final mSetting:Lcom/android/systemui/qs/SettingObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 5
    invoke-virtual {p0, p10, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->observe(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 14
    move-result p1

    .line 17
    new-instance p2, Lcom/android/systemui/qs/tiles/BatterySaverTile$1;

    .line 18
    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 20
    invoke-direct {p2, p0, p11, p3, p1}, Lcom/android/systemui/qs/tiles/BatterySaverTile$1;-><init>(Lcom/android/systemui/qs/tiles/BatterySaverTile;Lcom/android/systemui/util/settings/SettingsProxy;Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;I)V

    .line 22
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    const-string v0, "android.settings.BATTERY_SAVER_SETTINGS"

    .line 4
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    return-object p0
    .line 9
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x105

    .line 2
    return p0
    .line 4
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f130167    # @string/battery_detail_switch_title 'Battery Saver'

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
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    .line 11
    const/4 v1, 0x1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 15
    check-cast p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSaverStartView:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 23
    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    .line 31
    const/4 p1, 0x4

    .line 33
    invoke-static {p1, p0, v0, v1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setPowerSaveMode(ILandroid/content/Context;ZZ)V

    .line 34
    return-void
    .line 37
.end method

.method public final handleDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 5
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 8
    return-void
    .line 11
.end method

.method public final handleSetListening(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 7
    if-nez p1, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 12
    check-cast p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSaverStartView:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPluggedIn:Z

    .line 4
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    move p2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    .line 12
    if-eqz p2, :cond_1

    .line 14
    const/4 p2, 0x2

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move p2, v0

    .line 18
    :goto_0
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 19
    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    .line 21
    if-eqz p2, :cond_2

    .line 23
    const p2, 0x7f08170d    # @drawable/qs_battery_saver_icon_on 'res/drawable/qs_battery_saver_icon_on.xml'

    .line 25
    goto :goto_1

    .line 28
    :cond_2
    const p2, 0x7f08170c    # @drawable/qs_battery_saver_icon_off 'res/drawable/qs_battery_saver_icon_off.xml'

    .line 29
    :goto_1
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 32
    move-result-object p2

    .line 35
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 36
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 38
    const v2, 0x7f130167    # @string/battery_detail_switch_title 'Battery Saver'

    .line 40
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 46
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 47
    const-string v2, ""

    .line 49
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 51
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 53
    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    .line 55
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 57
    const-class p2, Landroid/widget/Switch;

    .line 59
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 64
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 65
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/qs/SettingObserver;->getValue()I

    .line 69
    move-result p0

    .line 72
    if-nez p0, :cond_3

    .line 73
    goto :goto_2

    .line 75
    :cond_3
    move v0, v1

    .line 76
    :goto_2
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->showRippleEffect:Z

    .line 77
    return-void
    .line 79
.end method

.method public final handleUserSwitch(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SettingObserver;->setUserId(I)V

    .line 4
    return-void
    .line 7
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

.method public final onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPluggedIn:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 8
    return-void
    .line 11
.end method

.method public final onPowerSaveChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 5
    return-void
    .line 8
.end method
