.class public final Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;
.super Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NFCController$NFCEnableListener;


# instance fields
.field public mAlwaysShowBtIcon:I

.field public mBluetoothBatteryLevel:I

.field public final mBtAlwaysShowIconObserver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$2;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mHeadsetMap:Ljava/util/HashMap;

.field public mInoutState:I

.field public final mIntentReceiver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$4;

.field public mMuteIconResId:I

.field public final mNFCController:Lcom/android/systemui/statusbar/policy/NFCController;

.field public mNFCVisible:Z

.field public final mSecondSpaceStatusIconObserver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;

.field public mSecondSpaceStatusIconVisible:Z

.field public final mSlotBluetoothBattery:Ljava/lang/String;

.field public final mSlotMicphone:Ljava/lang/String;

.field public final mStatusBarManager:Landroid/app/StatusBarManager;

.field public final mUserChangedCallback:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$3;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Looper;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/screenrecord/RecordingController;Landroid/telecom/TelecomManager;ILcom/android/systemui/util/RingerModeTrackerImpl;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/privacy/logging/PrivacyLogger;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NFCController;)V
    .locals 4

    move-object v0, p0

    move-object/from16 v1, p29

    .line 1
    invoke-direct/range {p0 .. p28}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Looper;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/screenrecord/RecordingController;Landroid/telecom/TelecomManager;ILcom/android/systemui/util/RingerModeTrackerImpl;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/privacy/logging/PrivacyLogger;)V

    const/4 v2, -0x1

    .line 2
    iput v2, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mBluetoothBatteryLevel:I

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mHeadsetMap:Ljava/util/HashMap;

    .line 4
    new-instance v2, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mSecondSpaceStatusIconObserver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;

    .line 5
    new-instance v2, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$2;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mBtAlwaysShowIconObserver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$2;

    .line 6
    new-instance v2, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$3;-><init>(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mUserChangedCallback:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$3;

    .line 7
    new-instance v2, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mIntentReceiver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$4;

    .line 8
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v2, p30

    .line 9
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mNFCController:Lcom/android/systemui/statusbar/policy/NFCController;

    move-object/from16 v2, p21

    .line 10
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    const-string v2, "bluetooth_handsfree_battery"

    .line 11
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mSlotBluetoothBattery:Ljava/lang/String;

    const-string v2, "micphone"

    .line 12
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mSlotMicphone:Ljava/lang/String;

    const-string/jumbo v2, "statusbar"

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-void
.end method


# virtual methods
.method public final onBluetoothBatteryChange(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mBluetoothBatteryLevel:I

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mBluetoothBatteryLevel:I

    .line 6
    const/4 v0, -0x1

    .line 8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mSlotBluetoothBattery:Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 11
    if-ne p1, v0, :cond_0

    .line 13
    const/4 p0, 0x0

    .line 15
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 16
    invoke-virtual {v2, v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 18
    return-void

    .line 21
    :cond_0
    const v0, 0x7f1300d4    # @string/accessibility_quick_settings_bluetooth_handsfree_battery_level 'Bluetooth device battery %d percent.'

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 25
    packed-switch p1, :pswitch_data_0

    .line 27
    mul-int/lit8 p1, p1, 0xa

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object p1

    .line 35
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 39
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 43
    move-object p1, v2

    .line 44
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 45
    const v0, 0x7f081803    # @drawable/stat_sys_bluetooth_handsfree_battery_5 'res/drawable/stat_sys_bluetooth_handsfree_battery_5.xml'

    .line 47
    invoke-virtual {p1, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 50
    goto :goto_0

    .line 53
    :pswitch_0
    mul-int/lit8 p1, p1, 0xa

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object p1

    .line 59
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 63
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 67
    move-object p1, v2

    .line 68
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 69
    const v0, 0x7f081800    # @drawable/stat_sys_bluetooth_handsfree_battery_4 'res/drawable/stat_sys_bluetooth_handsfree_battery_4.xml'

    .line 71
    invoke-virtual {p1, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 74
    goto :goto_0

    .line 77
    :pswitch_1
    mul-int/lit8 p1, p1, 0xa

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object p1

    .line 83
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 84
    move-result-object p1

    .line 87
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 91
    move-object p1, v2

    .line 92
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 93
    const v0, 0x7f0817fd    # @drawable/stat_sys_bluetooth_handsfree_battery_3 'res/drawable/stat_sys_bluetooth_handsfree_battery_3.xml'

    .line 95
    invoke-virtual {p1, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 98
    goto :goto_0

    .line 101
    :pswitch_2
    mul-int/lit8 p1, p1, 0xa

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object p1

    .line 107
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 108
    move-result-object p1

    .line 111
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 115
    move-object p1, v2

    .line 116
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 117
    const v0, 0x7f0817fa    # @drawable/stat_sys_bluetooth_handsfree_battery_2 'res/drawable/stat_sys_bluetooth_handsfree_battery_2.xml'

    .line 119
    invoke-virtual {p1, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 122
    goto :goto_0

    .line 125
    :pswitch_3
    mul-int/lit8 p1, p1, 0xa

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    move-result-object p1

    .line 131
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 132
    move-result-object p1

    .line 135
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 139
    move-object p1, v2

    .line 140
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 141
    const v0, 0x7f0817f7    # @drawable/stat_sys_bluetooth_handsfree_battery_1 'res/drawable/stat_sys_bluetooth_handsfree_battery_1.xml'

    .line 143
    invoke-virtual {p1, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 146
    :goto_0
    const/4 p0, 0x1

    .line 149
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 150
    invoke-virtual {v2, v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 152
    :cond_1
    return-void

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 156
.end method

.method public final onBluetoothInoutStateChange(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mInoutState:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mInoutState:I

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->updateBluetooth()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final onKeyguardShowingChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->updateSecondSpace()V

    .line 5
    return-void
    .line 8
.end method

.method public final onLocationActiveChanged(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->isCTARequiredLocation(Landroid/content/Context;)Z

    .line 4
    move-result p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 10
    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .line 12
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 18
    if-eqz p1, :cond_0

    .line 20
    const/4 p1, 0x1

    .line 22
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 30
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 32
    :cond_1
    :goto_0
    return-void
    .line 35
.end method

.method public final updateBluetooth()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 2
    const v1, 0x7f1300d5    # @string/accessibility_quick_settings_bluetooth_on 'Bluetooth on.'

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 10
    const v2, 0x7f08180b    # @drawable/stat_sys_data_bluetooth 'res/drawable/stat_sys_data_bluetooth.xml'

    .line 11
    const/4 v3, 0x0

    .line 14
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 15
    if-eqz v4, :cond_9

    .line 17
    check-cast v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 19
    iget v5, v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    .line 21
    const/4 v6, 0x1

    .line 23
    const/4 v7, 0x2

    .line 24
    if-ne v5, v7, :cond_0

    .line 25
    move v5, v6

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v5, v3

    .line 29
    :goto_0
    sget-boolean v8, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 30
    if-eqz v8, :cond_1

    .line 32
    iget-boolean v3, v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 34
    goto :goto_2

    .line 36
    :cond_1
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 37
    if-nez v4, :cond_2

    .line 39
    goto :goto_2

    .line 41
    :cond_2
    if-nez v5, :cond_4

    .line 42
    iget v4, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mInoutState:I

    .line 44
    if-eqz v4, :cond_3

    .line 46
    goto :goto_1

    .line 48
    :cond_3
    iget v4, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mAlwaysShowBtIcon:I

    .line 49
    if-ne v4, v6, :cond_5

    .line 51
    :cond_4
    :goto_1
    move v3, v6

    .line 53
    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    .line 54
    const v1, 0x7f13004e    # @string/accessibility_bluetooth_connected 'Bluetooth connected.'

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 62
    const v2, 0x7f08180c    # @drawable/stat_sys_data_bluetooth_connected 'res/drawable/stat_sys_data_bluetooth_connected.xml'

    .line 63
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mInoutState:I

    .line 66
    const/4 v4, 0x3

    .line 68
    if-ne v0, v4, :cond_7

    .line 69
    const v2, 0x7f081813    # @drawable/stat_sys_data_bluetooth_inout 'res/drawable/stat_sys_data_bluetooth_inout.xml'

    .line 71
    goto :goto_3

    .line 74
    :cond_7
    if-ne v0, v7, :cond_8

    .line 75
    const v2, 0x7f081816    # @drawable/stat_sys_data_bluetooth_out 'res/drawable/stat_sys_data_bluetooth_out.xml'

    .line 77
    goto :goto_3

    .line 80
    :cond_8
    if-ne v0, v6, :cond_9

    .line 81
    const v2, 0x7f081810    # @drawable/stat_sys_data_bluetooth_in 'res/drawable/stat_sys_data_bluetooth_in.xml'

    .line 83
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 86
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBluetooth:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 92
    invoke-virtual {v0, p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 95
    return-void
    .line 98
.end method

.method public final updateSecondSpace()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mSecondSpaceStatusIconVisible:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mCurrentUserId:I

    .line 6
    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 10
    move-object v1, v0

    .line 12
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 13
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 15
    if-eqz v1, :cond_0

    .line 17
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 19
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 21
    if-eqz v0, :cond_1

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    const-string/jumbo v1, "second_space"

    .line 28
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 31
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 33
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 35
    return-void
    .line 38
.end method

.method public final updateVolumeZen()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 4
    iget v0, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    .line 6
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    .line 15
    if-eq v0, v3, :cond_1

    .line 17
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 19
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    .line 21
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 23
    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTrackerImpl;

    .line 30
    iget-object v0, v0, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerModeInternal:Lcom/android/systemui/util/RingerModeLiveData;

    .line 32
    invoke-virtual {v0}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    .line 34
    move-result-object v0

    .line 37
    if-eqz v0, :cond_5

    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result v3

    .line 43
    if-ne v3, v2, :cond_2

    .line 44
    const v0, 0x7f081867    # @drawable/stat_sys_ringer_vibrate 'res/drawable/stat_sys_ringer_vibrate.xml'

    .line 46
    const v1, 0x7f1300e8    # @string/accessibility_ringer_vibrate 'Ringer vibrate.'

    .line 49
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    move v1, v2

    .line 59
    :cond_3
    const v0, 0x7f1300e7    # @string/accessibility_ringer_silent 'Ringer silent.'

    .line 60
    const v2, 0x7f081864    # @drawable/stat_sys_ringer_silent 'res/drawable/stat_sys_ringer_silent.xml'

    .line 63
    move v6, v1

    .line 66
    move v1, v0

    .line 67
    move v0, v2

    .line 68
    move v2, v6

    .line 69
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mMuteVisible:Z

    .line 70
    if-ne v3, v2, :cond_4

    .line 72
    iget v3, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mMuteIconResId:I

    .line 74
    if-eq v3, v0, :cond_5

    .line 76
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 78
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotMute:Ljava/lang/String;

    .line 80
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 87
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 88
    invoke-virtual {v3, v1, v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 93
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotMute:Ljava/lang/String;

    .line 95
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 97
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 99
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mMuteVisible:Z

    .line 102
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mMuteIconResId:I

    .line 104
    :cond_5
    return-void
    .line 106
.end method
