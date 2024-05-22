.class public final Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# instance fields
.field public final airplaneSettings:Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$airplaneSettings$1;

.field public isSltOn:Z

.field public mAirplane:Z

.field public mListening:Z

.field public mTargetAirplane:Z

.field public final networkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final sltController:Lcom/android/systemui/controlcenter/policy/SltController;

.field public final sltListener:Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$sltListener$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/controlcenter/policy/SltController;)V
    .locals 11

    .line 1
    move-object v10, p0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object/from16 v5, p6

    .line 8
    move-object/from16 v6, p7

    .line 10
    move-object/from16 v7, p8

    .line 12
    move-object/from16 v8, p9

    .line 14
    move-object/from16 v9, p10

    .line 16
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 18
    move-object/from16 v0, p11

    .line 21
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->networkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 23
    move-object/from16 v0, p14

    .line 25
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->sltController:Lcom/android/systemui/controlcenter/policy/SltController;

    .line 27
    new-instance v0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$sltListener$1;

    .line 29
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$sltListener$1;-><init>(Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;)V

    .line 31
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->sltListener:Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$sltListener$1;

    .line 34
    move-object/from16 v0, p12

    .line 36
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 38
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 40
    move-result v6

    .line 43
    new-instance v7, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$airplaneSettings$1;

    .line 44
    move-object v0, v7

    .line 46
    move-object/from16 v1, p5

    .line 47
    move-object v2, p4

    .line 49
    move-object v3, p0

    .line 50
    move-object/from16 v4, p12

    .line 51
    move-object/from16 v5, p13

    .line 53
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$airplaneSettings$1;-><init>(Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/GlobalSettings;I)V

    .line 55
    iput-object v7, v10, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->airplaneSettings:Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$airplaneSettings$1;

    .line 58
    new-instance v0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$1;

    .line 60
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;)V

    .line 62
    move-object v1, p4

    .line 65
    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    return-void
    .line 69
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
    .locals 5

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->isSltOn:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Lcom/miui/enterprise/RestrictionsHelper;->hasAirplaneRestriction(Landroid/content/Context;)Z

    .line 9
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 13
    if-nez v0, :cond_4

    .line 15
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    .line 17
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lmiui/enterprise/IRestrictionsHelper;->isAirplaneRestriction()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    goto :goto_1

    .line 27
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->mAirplane:Z

    .line 28
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->mTargetAirplane:Z

    .line 30
    const/4 v3, 0x1

    .line 32
    if-eq v0, v2, :cond_3

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    move-result-object p0

    .line 38
    const-string p1, "airplane_mode_on"

    .line 39
    const/4 v4, 0x0

    .line 41
    invoke-static {p0, p1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 42
    move-result p0

    .line 45
    if-ne p0, v3, :cond_2

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    move v3, v4

    .line 49
    :goto_0
    const-string p0, "handleClick "

    .line 50
    const-string p1, " "

    .line 52
    invoke-static {p0, v0, p1, v2, p1}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object p0

    .line 57
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 64
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 68
    :cond_3
    xor-int/2addr v0, v3

    .line 69
    const-string v1, "connectivity"

    .line 70
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    move-result-object p1

    .line 75
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 76
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->mTargetAirplane:Z

    .line 78
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 80
    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 84
    return-void

    .line 87
    :cond_4
    :goto_1
    const-string p0, "Device is in enterprise mode, Airplane is restricted by enterprise!"

    .line 88
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
    .line 93
.end method

.method public final handleSetListening(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->mListening:Z

    .line 5
    if-ne v0, p1, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->mListening:Z

    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->airplaneSettings:Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$airplaneSettings$1;

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->networkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 17
    if-eqz p1, :cond_1

    .line 19
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 21
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 23
    goto :goto_0

    .line 26
    :cond_1
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 27
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 29
    :goto_0
    return-void
    .line 32
.end method

.method public final handleShowStateMessage()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

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
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v2

    .line 24
    const/4 v3, 0x2

    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    const v0, 0x7f130958    # @string/quick_settings_airplane_state_change_message_on 'Airplane mode is on'

    .line 28
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 35
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 39
    goto :goto_2

    .line 41
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v0

    .line 45
    const/4 v2, 0x1

    .line 46
    if-ne v0, v2, :cond_4

    .line 47
    const v0, 0x7f130957    # @string/quick_settings_airplane_state_change_message_off 'Airplane mode is off'

    .line 49
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 56
    :cond_4
    :goto_2
    return-void
    .line 59
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    const-string p2, "no_airplane_mode"

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 6
    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->mAirplane:Z

    .line 9
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 13
    const v1, 0x7f130134    # @string/airplane_mode 'Airplane mode'

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 22
    const v1, 0x7f0811ab    # @drawable/ic_signal_airplane_disable 'res/drawable/ic_signal_airplane_disable.xml'

    .line 24
    if-eqz p2, :cond_0

    .line 27
    const v2, 0x7f0811ac    # @drawable/ic_signal_airplane_enable 'res/drawable/ic_signal_airplane_enable.xml'

    .line 29
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 32
    move-result-object v2

    .line 35
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 39
    move-result-object v2

    .line 42
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 43
    :goto_0
    if-eqz p2, :cond_1

    .line 45
    const/4 p2, 0x2

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 p2, 0x1

    .line 49
    :goto_1
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 50
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->isSltOn:Z

    .line 52
    if-eqz p0, :cond_2

    .line 54
    const/4 p0, 0x0

    .line 56
    iput-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 57
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 59
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 61
    move-result-object p0

    .line 64
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 65
    :cond_2
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 67
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 69
    if-eqz p2, :cond_3

    .line 71
    const p2, 0x7f130b5a    # @string/switch_bar_on 'On'

    .line 73
    goto :goto_2

    .line 76
    :cond_3
    const p2, 0x7f130b59    # @string/switch_bar_off 'Off'

    .line 77
    :goto_2
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    const-string p0, ","

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 103
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 104
    const-class p0, Landroid/widget/Switch;

    .line 106
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 111
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 112
    return-void
    .line 114
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

.method public final setIsAirplaneMode(Lcom/android/systemui/statusbar/connectivity/IconState;)V
    .locals 0

    .line 1
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->mTargetAirplane:Z

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->mAirplane:Z

    .line 6
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 9
    return-void
    .line 12
.end method
