.class public final Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;
.super Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/demomode/DemoMode;


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mInDemoMode:Z

.field public mLastShowNoSim:Z

.field public mLastSimDetected:Z

.field public mMainWifiVisible:Z

.field public mMainline:Z

.field public mSlaveWifiConnected:Z

.field public mSlaveWifiEnabled:Z

.field public mSlaveWifiLevel:I

.field public mSlaveWifiRssi:I

.field public mSlaveWifiSignalReceiver:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;

.field public final mSlotNoSim:Ljava/lang/String;

.field public mSubSize:I

.field public mSupportSlaveWifi:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/android/systemui/tuner/TunerService;)V

    .line 2
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 7
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    .line 9
    const p3, 0x7f130066    # @string/accessibility_data_signal_full 'Data signal full.'

    .line 11
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 17
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 18
    const p3, 0x7f081891    # @drawable/stat_sys_signal_5 'res/drawable/stat_sys_signal_5.xml'

    .line 20
    const-string p4, "demo_mobile"

    .line 23
    invoke-virtual {p1, p2, p4, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 25
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 28
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    .line 30
    const p3, 0x7f130104    # @string/accessibility_wifi_signal_full 'Wifi signal full.'

    .line 32
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 38
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 39
    const p3, 0x7f08192b    # @drawable/stat_sys_wifi_signal_4 'res/drawable/stat_sys_wifi_signal_4.xml'

    .line 41
    const-string p5, "demo_wifi"

    .line 44
    invoke-virtual {p1, p2, p5, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 46
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 49
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 51
    const/4 p2, 0x0

    .line 53
    invoke-virtual {p1, p4, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 54
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 57
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 59
    invoke-virtual {p1, p5, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 61
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    .line 64
    const p3, 0x7f130b28    # @string/status_bar_no_sim 'no_sim'

    .line 66
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlotNoSim:Ljava/lang/String;

    .line 73
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 75
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object p4

    .line 82
    const p5, 0x7f1305e6    # @string/keyguard_missing_sim_message_short 'No SIM'

    .line 83
    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 86
    move-result-object p4

    .line 89
    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 90
    const p5, 0x7f081855    # @drawable/stat_sys_no_sim 'res/drawable/stat_sys_no_sim.xml'

    .line 92
    invoke-virtual {p3, p4, p1, p5}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 98
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 102
    return-void
    .line 105
.end method


# virtual methods
.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mInDemoMode:Z

    .line 2
    if-nez p1, :cond_0

    .line 4
    const-string p1, "enter"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mInDemoMode:Z

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->updateDemoIconVisibility()V

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mInDemoMode:Z

    .line 21
    if-eqz p1, :cond_1

    .line 23
    const-string p1, "exit"

    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mInDemoMode:Z

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->updateDemoIconVisibility()V

    .line 36
    :cond_1
    :goto_0
    return-void
    .line 39
.end method

.method public final getCurrentIconId(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)I
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiEnabled:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiConnected:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiNoNetwork:Z

    .line 15
    iget v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiStandard:I

    .line 17
    const/16 v5, 0x8

    .line 19
    if-ne v4, v5, :cond_1

    .line 21
    move v4, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v4, v2

    .line 25
    :goto_1
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->mloAvailable:Z

    .line 26
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mMainWifiVisible:Z

    .line 28
    if-eqz v6, :cond_2

    .line 30
    if-eqz v0, :cond_2

    .line 32
    goto :goto_2

    .line 34
    :cond_2
    move v1, v2

    .line 35
    :goto_2
    if-eqz v3, :cond_3

    .line 36
    sget-object p0, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    .line 38
    iget p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->level:I

    .line 40
    aget p0, p0, p1

    .line 42
    return p0

    .line 44
    :cond_3
    if-eqz v4, :cond_4

    .line 45
    if-nez v5, :cond_5

    .line 47
    :cond_4
    if-eqz v1, :cond_6

    .line 49
    :cond_5
    sget-object p0, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_MLO_ICONS:[I

    .line 51
    iget p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->level:I

    .line 53
    aget p0, p0, p1

    .line 55
    return p0

    .line 57
    :cond_6
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->meteredHint:Z

    .line 58
    if-eqz v1, :cond_7

    .line 60
    sget-object p0, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_HOTSPOT_ICONS:[I

    .line 62
    iget p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->level:I

    .line 64
    aget p0, p0, p1

    .line 66
    return p0

    .line 68
    :cond_7
    sget-object v1, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_FULL_ICONS:[I

    .line 69
    if-eqz v0, :cond_8

    .line 71
    iget p0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiLevel:I

    .line 73
    aget p0, v1, p0

    .line 75
    return p0

    .line 77
    :cond_8
    iget p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->level:I

    .line 78
    aget p0, v1, p0

    .line 80
    return p0
    .line 82
.end method

.method public final onDemoModeFinished()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDemoModeStarted()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setIsAirplaneMode(Lcom/android/systemui/statusbar/connectivity/IconState;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    if-nez p1, :cond_0

    .line 6
    const-string v0, ""

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/connectivity/IconState;->toString()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    :goto_0
    const-string/jumbo v1, "setIsAirplaneMode: icon = "

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    const-string v1, "StatusBarSignalPolicy"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    .line 27
    const/4 v1, 0x1

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHideAirplane:Z

    .line 33
    if-nez v0, :cond_2

    .line 35
    move v0, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v0, v2

    .line 39
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    .line 40
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    .line 42
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 44
    if-eqz v0, :cond_3

    .line 46
    iget v0, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->icon:I

    .line 48
    if-lez v0, :cond_3

    .line 50
    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 52
    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->contentDescription:Ljava/lang/String;

    .line 54
    invoke-virtual {v4, p1, v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 56
    invoke-virtual {v4, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 59
    goto :goto_2

    .line 62
    :cond_3
    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 63
    invoke-virtual {v4, v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 65
    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mLastShowNoSim:Z

    .line 68
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mLastSimDetected:Z

    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->setNoSims(ZZ)V

    .line 72
    return-void
    .line 75
.end method

.method public final setMobileDataIndicators(Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;)V
    .locals 5

    .line 1
    iget v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->subId:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v2

    .line 9
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v3

    .line 13
    if-eqz v3, :cond_1

    .line 14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 20
    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    .line 22
    if-ne v4, v0, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    const-string v2, "Unexpected subscription "

    .line 27
    const-string v3, "StatusBarSignalPolicy"

    .line 29
    invoke-static {v2, v0, v3}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    const/4 v3, 0x0

    .line 34
    :goto_0
    if-nez v3, :cond_2

    .line 35
    return-void

    .line 37
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->statusIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 38
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    .line 40
    iput-boolean v2, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 42
    iget v2, v0, Lcom/android/systemui/statusbar/connectivity/IconState;->icon:I

    .line 44
    iput v2, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    .line 46
    iget v2, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->statusType:I

    .line 48
    iput v2, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    .line 50
    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/IconState;->contentDescription:Ljava/lang/String;

    .line 52
    iput-object v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->contentDescription:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->typeContentDescription:Ljava/lang/CharSequence;

    .line 56
    iput-object v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    .line 58
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->roaming:Z

    .line 60
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    .line 62
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->activityIn:Z

    .line 64
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityIn:Z

    .line 66
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->activityOut:Z

    .line 68
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityOut:Z

    .line 70
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->airplane:Z

    .line 72
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->airplane:Z

    .line 74
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->dataConnected:Z

    .line 76
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 78
    iget-object v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showName:Ljava/lang/String;

    .line 80
    iput-object v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showName:Ljava/lang/String;

    .line 82
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volte:Z

    .line 84
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volte:Z

    .line 86
    iget v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volteId:I

    .line 88
    iput v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    .line 90
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->hideVolte:Z

    .line 92
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->hideVolte:Z

    .line 94
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vowifi:Z

    .line 96
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vowifi:Z

    .line 98
    iget v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vowifiId:I

    .line 100
    iput v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vowifiId:I

    .line 102
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->hideVowifi:Z

    .line 104
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->hideVowifi:Z

    .line 106
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vonr:Z

    .line 108
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vonr:Z

    .line 110
    iget v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vonrId:I

    .line 112
    iput v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vonrId:I

    .line 114
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showVonr:Z

    .line 116
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showVonr:Z

    .line 118
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->speechHd:Z

    .line 120
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->speechHd:Z

    .line 122
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volteNoSerivce:Z

    .line 124
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteNoService:Z

    .line 126
    const/4 v0, 0x0

    .line 128
    iput v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->fiveGDrawableId:I

    .line 129
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showDataTypeDataDisconnected:Z

    .line 131
    iput-boolean v2, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showDataTypeDataDisconnected:Z

    .line 133
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showMobileDataTypeInMMS:Z

    .line 135
    iput-boolean v2, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showMobileDataTypeInMMS:Z

    .line 137
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showMobileDataTypeSingle:Z

    .line 139
    iput-boolean v2, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showMobileDataTypeSingle:Z

    .line 141
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mInDemoMode:Z

    .line 143
    iput-boolean v2, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->demoMode:Z

    .line 145
    iget v2, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSubSize:I

    .line 147
    const/4 v4, 0x1

    .line 149
    if-le v2, v4, :cond_3

    .line 150
    move v0, v4

    .line 152
    :cond_3
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNewHD:Z

    .line 153
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->sltEnabled:Z

    .line 155
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 157
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->sltConnected:Z

    .line 159
    iput-boolean p1, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltConnected:Z

    .line 161
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copyStates(Ljava/util/List;)Ljava/util/List;

    .line 163
    move-result-object p1

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 167
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    .line 171
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    .line 173
    return-void
    .line 176
.end method

.method public final setNoSims(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mLastShowNoSim:Z

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mLastSimDetected:Z

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mInDemoMode:Z

    .line 8
    if-nez p1, :cond_0

    .line 10
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    .line 12
    if-nez p1, :cond_0

    .line 14
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 19
    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlotNoSim:Ljava/lang/String;

    .line 23
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 25
    return-void
    .line 28
.end method

.method public final setSubs(Ljava/util/List;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSubSize:I

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    .line 8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    .line 10
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 12
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    if-eq v0, v1, :cond_4

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSubSize:I

    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 27
    move v1, v5

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v7

    .line 32
    if-eqz v7, :cond_3

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v7

    .line 38
    check-cast v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 39
    iget-boolean v8, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNewHD:Z

    .line 41
    iget v9, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSubSize:I

    .line 43
    if-le v9, v6, :cond_1

    .line 45
    move v10, v6

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v10, v5

    .line 49
    :goto_1
    if-eq v8, v10, :cond_0

    .line 50
    if-le v9, v6, :cond_2

    .line 52
    move v1, v6

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move v1, v5

    .line 56
    :goto_2
    iput-boolean v1, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNewHD:Z

    .line 57
    move v1, v6

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    if-eqz v1, :cond_4

    .line 61
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copyStates(Ljava/util/List;)Ljava/util/List;

    .line 63
    move-result-object v0

    .line 66
    move-object v1, v4

    .line 67
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 68
    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    .line 70
    :cond_4
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->DEBUG:Z

    .line 73
    if-eqz v0, :cond_5

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v1, "setSubs: "

    .line 79
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 95
    const-string v1, "StatusBarSignalPolicy"

    .line 96
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 101
    move-result v0

    .line 104
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 105
    move-result v1

    .line 108
    if-eq v0, v1, :cond_6

    .line 109
    goto :goto_4

    .line 111
    :cond_6
    move v1, v5

    .line 112
    :goto_3
    if-ge v1, v0, :cond_8

    .line 113
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object v7

    .line 118
    check-cast v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 119
    iget v7, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    .line 121
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object v8

    .line 126
    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 127
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 129
    move-result v8

    .line 132
    if-eq v7, v8, :cond_7

    .line 133
    :goto_4
    move v0, v5

    .line 135
    goto :goto_5

    .line 136
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 137
    goto :goto_3

    .line 139
    :cond_8
    move v0, v6

    .line 140
    :goto_5
    if-eqz v0, :cond_9

    .line 141
    goto/16 :goto_8

    .line 143
    :cond_9
    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 145
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotNoCalling:Ljava/lang/String;

    .line 150
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotCallStrength:Ljava/lang/String;

    .line 155
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    .line 163
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCallIndicatorStates:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 170
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 173
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 176
    move-result v1

    .line 179
    move v3, v5

    .line 180
    :goto_6
    if-ge v3, v1, :cond_d

    .line 181
    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 183
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 185
    move-result-object v7

    .line 188
    check-cast v7, Landroid/telephony/SubscriptionInfo;

    .line 189
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 191
    move-result v7

    .line 194
    invoke-direct {v4, v7}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;-><init>(I)V

    .line 195
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 201
    move-result-object v4

    .line 204
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    move-result v7

    .line 208
    if-eqz v7, :cond_b

    .line 209
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    move-result-object v7

    .line 214
    check-cast v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;

    .line 215
    iget v8, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->subId:I

    .line 217
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 219
    move-result-object v9

    .line 222
    check-cast v9, Landroid/telephony/SubscriptionInfo;

    .line 223
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 225
    move-result v9

    .line 228
    if-ne v8, v9, :cond_a

    .line 229
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    move v4, v5

    .line 234
    goto :goto_7

    .line 235
    :cond_b
    move v4, v6

    .line 236
    :goto_7
    if-eqz v4, :cond_c

    .line 237
    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;

    .line 239
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 241
    move-result-object v7

    .line 244
    check-cast v7, Landroid/telephony/SubscriptionInfo;

    .line 245
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 247
    move-result v7

    .line 250
    invoke-direct {v4, v7}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;-><init>(I)V

    .line 251
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 257
    goto :goto_6

    .line 259
    :cond_d
    :goto_8
    return-void
    .line 260
.end method

.method public final setWifiIndicators(Lcom/android/systemui/statusbar/connectivity/WifiIndicators;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->statusIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 4
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 6
    move-result-object v1

    .line 9
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    .line 10
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mMainWifiVisible:Z

    .line 12
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_0

    .line 15
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mMainline:Z

    .line 17
    if-eqz v4, :cond_0

    .line 19
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiConnected:Z

    .line 21
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiEnabled:Z

    .line 23
    :cond_0
    const/4 v4, 0x1

    .line 25
    if-nez v2, :cond_2

    .line 26
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiEnabled:Z

    .line 28
    if-eqz v2, :cond_1

    .line 30
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiConnected:Z

    .line 32
    if-eqz v2, :cond_1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    move v2, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    move v2, v4

    .line 39
    :goto_1
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 40
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->activityIn:Z

    .line 42
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityIn:Z

    .line 44
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->activityOut:Z

    .line 46
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityOut:Z

    .line 48
    iget v6, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->wifiStandard:I

    .line 50
    iput v6, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiStandard:I

    .line 52
    const/4 v7, 0x6

    .line 54
    if-eq v6, v7, :cond_4

    .line 55
    const/16 v7, 0x8

    .line 57
    if-ne v6, v7, :cond_3

    .line 59
    goto :goto_2

    .line 61
    :cond_3
    move v6, v3

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    :goto_2
    move v6, v4

    .line 64
    :goto_3
    iget-boolean v7, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->noNetwork:Z

    .line 65
    if-eqz v6, :cond_5

    .line 67
    if-nez v7, :cond_5

    .line 69
    move v6, v4

    .line 71
    goto :goto_4

    .line 72
    :cond_5
    move v6, v3

    .line 73
    :goto_4
    iput-boolean v6, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->showWifiStandard:Z

    .line 74
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    .line 76
    iput-object v6, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->slot:Ljava/lang/String;

    .line 78
    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/IconState;->contentDescription:Ljava/lang/String;

    .line 80
    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->contentDescription:Ljava/lang/String;

    .line 82
    iput-boolean v7, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiNoNetwork:Z

    .line 84
    iget v0, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->level:I

    .line 86
    iput v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->level:I

    .line 88
    iget-object v0, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->macAddress:Landroid/net/MacAddress;

    .line 90
    if-eqz v0, :cond_6

    .line 92
    invoke-virtual {v0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 97
    const-string v6, "00:00:00:00:00:00"

    .line 98
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v0

    .line 103
    xor-int/2addr v0, v4

    .line 104
    goto :goto_5

    .line 105
    :cond_6
    move v0, v3

    .line 106
    :goto_5
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->mloAvailable:Z

    .line 107
    if-eqz v2, :cond_7

    .line 109
    if-eqz v5, :cond_7

    .line 111
    const v0, 0x7f081919    # @drawable/stat_sys_wifi_inout 'res/drawable/stat_sys_wifi_inout.xml'

    .line 113
    iput v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityResId:I

    .line 116
    goto :goto_6

    .line 118
    :cond_7
    if-eqz v2, :cond_8

    .line 119
    const v0, 0x7f081916    # @drawable/stat_sys_wifi_in 'res/drawable/stat_sys_wifi_in.xml'

    .line 121
    iput v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityResId:I

    .line 124
    goto :goto_6

    .line 126
    :cond_8
    if-eqz v5, :cond_9

    .line 127
    const v0, 0x7f08191c    # @drawable/stat_sys_wifi_out 'res/drawable/stat_sys_wifi_out.xml'

    .line 129
    iput v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityResId:I

    .line 132
    goto :goto_6

    .line 134
    :cond_9
    iput v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityResId:I

    .line 135
    :goto_6
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiNoNetwork:Z

    .line 137
    if-eqz v0, :cond_a

    .line 139
    iput v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityResId:I

    .line 141
    :cond_a
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->meteredHint:Z

    .line 143
    iput-boolean p1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->meteredHint:Z

    .line 145
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mInDemoMode:Z

    .line 147
    iput-boolean p1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->demoMode:Z

    .line 149
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->getCurrentIconId(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)I

    .line 151
    move-result p1

    .line 154
    iput p1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 155
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 157
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 160
    return-void
    .line 162
.end method

.method public final updateDemoIconVisibility()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mInDemoMode:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 8
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHasMobileDataFeature:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 17
    move-object v2, v1

    .line 19
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 20
    const-string v3, "demo_mobile"

    .line 22
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 24
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mInDemoMode:Z

    .line 27
    move-object v2, v1

    .line 29
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 30
    const-string v3, "demo_wifi"

    .line 32
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 34
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mLastShowNoSim:Z

    .line 37
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mLastSimDetected:Z

    .line 39
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->setNoSims(ZZ)V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 44
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mInDemoMode:Z

    .line 46
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->demoMode:Z

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v2

    .line 58
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 68
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 69
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mInDemoMode:Z

    .line 71
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->demoMode:Z

    .line 73
    goto :goto_1

    .line 75
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copyStates(Ljava/util/List;)Ljava/util/List;

    .line 76
    move-result-object v0

    .line 79
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 80
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    .line 82
    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    .line 84
    return-void
    .line 87
.end method

.method public final updateSlaveWifiIconState()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSupportSlaveWifi:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mMainWifiVisible:Z

    .line 7
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v0, :cond_2

    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiEnabled:Z

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiConnected:Z

    .line 17
    if-eqz v0, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    move v0, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    :goto_0
    move v0, v2

    .line 24
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 25
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 27
    if-eq v4, v0, :cond_3

    .line 29
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 31
    move v1, v2

    .line 33
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->getCurrentIconId(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)I

    .line 34
    move-result v0

    .line 37
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 38
    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 40
    if-eq v4, v0, :cond_4

    .line 42
    iput v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 44
    goto :goto_2

    .line 46
    :cond_4
    move v2, v1

    .line 47
    :goto_2
    if-eqz v2, :cond_5

    .line 48
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 50
    :cond_5
    return-void
    .line 53
.end method

.method public final updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    .line 13
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/StatusBarIconList;

    .line 15
    if-nez p1, :cond_1

    .line 17
    iget-object v6, v1, Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;->wifiSlot:Ljava/lang/String;

    .line 19
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;->mobileSlot:Ljava/lang/String;

    .line 24
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getIconHolder(ILjava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 29
    move-result-object v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getViewIndex(ILjava/lang/String;)I

    .line 36
    move-result v1

    .line 39
    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->findOrInsertSlot(Ljava/lang/String;)I

    .line 42
    move-result v5

    .line 45
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v5

    .line 49
    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 50
    const/4 v6, 0x0

    .line 52
    iput-object v6, v5, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 53
    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda2;

    .line 55
    invoke-direct {v5, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda2;-><init>(II)V

    .line 57
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/HashMap;

    .line 60
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 62
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getIconHolder(ILjava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 66
    move-result-object v1

    .line 69
    if-nez v1, :cond_2

    .line 70
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 72
    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 74
    iput-object p1, v1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 77
    iput v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 79
    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 81
    goto :goto_0

    .line 84
    :cond_2
    iput-object p1, v1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 85
    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 87
    :goto_0
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 90
    if-eqz v1, :cond_3

    .line 92
    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 94
    if-lez v1, :cond_3

    .line 96
    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 98
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 102
    :goto_1
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 105
    if-eqz v1, :cond_4

    .line 107
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiNoNetwork:Z

    .line 109
    if-nez p1, :cond_4

    .line 111
    move p1, v2

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    move p1, v3

    .line 115
    :goto_2
    const-class v1, Lcom/android/systemui/statusbar/policy/HDController;

    .line 116
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    move-result-object v1

    .line 121
    check-cast v1, Lcom/android/systemui/statusbar/policy/HDController;

    .line 122
    iget-boolean v4, v1, Lcom/android/systemui/statusbar/policy/HDController;->mWifiAvailable:Z

    .line 124
    if-eq v4, p1, :cond_5

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v5, "setWifiAvailable: "

    .line 130
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v4

    .line 142
    const-string v5, "HDController"

    .line 143
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput-boolean p1, v1, Lcom/android/systemui/statusbar/policy/HDController;->mWifiAvailable:Z

    .line 148
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HDController;->update()V

    .line 150
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    .line 153
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object v4

    .line 158
    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v5

    .line 162
    if-eqz v5, :cond_7

    .line 163
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v5

    .line 168
    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 169
    iget-boolean v6, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->wifiAvailable:Z

    .line 171
    if-eq v6, p1, :cond_6

    .line 173
    iput-boolean p1, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->wifiAvailable:Z

    .line 175
    move v3, v2

    .line 177
    goto :goto_3

    .line 178
    :cond_7
    if-eqz v3, :cond_8

    .line 179
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copyStates(Ljava/util/List;)Ljava/util/List;

    .line 181
    move-result-object p1

    .line 184
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    .line 185
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    .line 187
    :cond_8
    return-void
    .line 190
.end method
