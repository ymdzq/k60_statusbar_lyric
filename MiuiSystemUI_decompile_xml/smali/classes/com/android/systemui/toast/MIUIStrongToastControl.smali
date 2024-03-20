.class public final Lcom/android/systemui/toast/MIUIStrongToastControl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public isSuperPowerSave:Z

.field public mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

.field public final mBatterySuperSaveModeChangeObserver:Lcom/android/systemui/toast/MIUIStrongToastControl$2;

.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public mCharge:Ljava/lang/String;

.field public mChargeFlag:I

.field public mChargeLevel:F

.field public mChargeRate:F

.field public mChargeShowing:Z

.field public mChargeSpeed:I

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mContext:Landroid/content/Context;

.field public final mControlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

.field public mDecimal:Z

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mDeviceStateCallback:Lcom/android/systemui/toast/MIUIStrongToastControl$4;

.field public mDuration:J

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerCallBack:Lcom/android/systemui/toast/MIUIStrongToastControl$8;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMinimalismModeController:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

.field public mMiuiStrongToast:Lcom/android/systemui/toast/MIUIStrongToast;

.field public mMiuiStrongToastCallBack:Lcom/android/systemui/toast/MIUIStrongToast;

.field public final mMultiUserController:Lcom/miui/systemui/MultiUserController;

.field public mPackageName:Ljava/lang/String;

.field public mParam:Ljava/lang/String;

.field public mRapidLevel:F

.field public mRapidRate:F

.field public mStateInitialized:Z

.field public mStatusBarGuideModel:Lcom/android/systemui/toast/bean/StatusBarGuideModel;

.field public mStrongSupperCharge:I

.field public mStrongToastCategory:Ljava/lang/String;

.field public final mStrongToastLogger:Lcom/android/systemui/toast/StrongToastLogger;

.field public mTarget:Landroid/app/PendingIntent;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public mWireState:I


# direct methods
.method public static -$$Nest$mupdatePowerSaveState(Lcom/android/systemui/toast/MIUIStrongToastControl;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "power_supersave_mode_open"

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v2, 0x1

    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->isSuperPowerSave:Z

    .line 18
    if-eq v2, v0, :cond_1

    .line 20
    iput-boolean v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->isSuperPowerSave:Z

    .line 22
    if-eqz v2, :cond_1

    .line 24
    new-instance v0, Lcom/android/systemui/toast/MIUIStrongToastControl$$ExternalSyntheticLambda0;

    .line 26
    invoke-direct {v0, p0}, Lcom/android/systemui/toast/MIUIStrongToastControl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/toast/MIUIStrongToastControl;)V

    .line 28
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMainHandler:Landroid/os/Handler;

    .line 31
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    :cond_1
    return-void
    .line 36
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/policy/MinimalismModeController;Landroid/os/Handler;Landroid/os/Handler;Lcom/miui/systemui/MultiUserController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/toast/StrongToastLogger;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p5

    .line 6
    move-object/from16 v3, p12

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v4, -0x1

    .line 13
    iput v4, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeSpeed:I

    .line 14
    const-wide/16 v5, 0x0

    .line 16
    iput-wide v5, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mDuration:J

    .line 18
    new-instance v5, Lcom/android/systemui/toast/MIUIStrongToastControl$4;

    .line 20
    invoke-direct {v5, v0}, Lcom/android/systemui/toast/MIUIStrongToastControl$4;-><init>(Lcom/android/systemui/toast/MIUIStrongToastControl;)V

    .line 22
    iput-object v5, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mDeviceStateCallback:Lcom/android/systemui/toast/MIUIStrongToastControl$4;

    .line 25
    new-instance v6, Lcom/android/systemui/toast/MIUIStrongToastControl$6;

    .line 27
    invoke-direct {v6, v0}, Lcom/android/systemui/toast/MIUIStrongToastControl$6;-><init>(Lcom/android/systemui/toast/MIUIStrongToastControl;)V

    .line 29
    iput-object v6, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 32
    new-instance v7, Lcom/android/systemui/toast/MIUIStrongToastControl$8;

    .line 34
    invoke-direct {v7, v0}, Lcom/android/systemui/toast/MIUIStrongToastControl$8;-><init>(Lcom/android/systemui/toast/MIUIStrongToastControl;)V

    .line 36
    iput-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mKeyguardStateControllerCallBack:Lcom/android/systemui/toast/MIUIStrongToastControl$8;

    .line 39
    const-class v8, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 41
    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    move-result-object v8

    .line 46
    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 47
    iput-object v8, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 49
    const-class v9, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 51
    invoke-static {v9}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    move-result-object v9

    .line 56
    check-cast v9, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 57
    iput-object v9, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mControlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 59
    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 61
    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 63
    iput-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mContext:Landroid/content/Context;

    .line 66
    move-object/from16 v7, p3

    .line 68
    iput-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 70
    move-object/from16 v7, p6

    .line 72
    iput-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 74
    move-object/from16 v7, p7

    .line 76
    iput-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMinimalismModeController:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    .line 78
    move-object/from16 v7, p9

    .line 80
    iput-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMainHandler:Landroid/os/Handler;

    .line 82
    move-object/from16 v7, p10

    .line 84
    iput-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMultiUserController:Lcom/miui/systemui/MultiUserController;

    .line 86
    move-object/from16 v7, p11

    .line 88
    iput-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 90
    iput-object v3, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 92
    const-class v7, Landroid/hardware/devicestate/DeviceStateManager;

    .line 94
    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    move-result-object v7

    .line 99
    check-cast v7, Landroid/hardware/devicestate/DeviceStateManager;

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 102
    move-result-object v8

    .line 105
    invoke-virtual {v7, v8, v5}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 106
    invoke-virtual {v7}, Landroid/hardware/devicestate/DeviceStateManager;->getCurrentState()I

    .line 109
    new-instance v5, Lcom/miui/charge/MiuiBatteryStatus;

    .line 112
    const/4 v10, 0x1

    .line 114
    const/4 v11, 0x0

    .line 115
    const/4 v12, 0x0

    .line 116
    const/4 v13, 0x0

    .line 117
    const/4 v14, 0x0

    .line 118
    const/4 v15, -0x1

    .line 119
    const/16 v16, 0x1

    .line 120
    const/16 v17, -0x1

    .line 122
    const/16 v18, 0x0

    .line 124
    const/16 v19, 0x0

    .line 126
    move-object v9, v5

    .line 128
    invoke-direct/range {v9 .. v19}, Lcom/miui/charge/MiuiBatteryStatus;-><init>(IIIIIIIIIZ)V

    .line 129
    iput-object v5, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 132
    move-object/from16 v5, p2

    .line 134
    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 136
    move-object/from16 v5, p4

    .line 139
    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 141
    new-instance v5, Landroid/content/IntentFilter;

    .line 144
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    const-string v6, "android.intent.action.USER_PRESENT"

    .line 149
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v6, "miui.intent.action.ACTION_SOC_DECIMAL"

    .line 154
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v6, "miui.intent.action.ACTION_WIRELESS_POSITION"

    .line 159
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const/16 v6, 0x3e9

    .line 164
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 166
    new-instance v6, Lcom/android/systemui/toast/MIUIStrongToastControl$5;

    .line 169
    invoke-direct {v6, v0}, Lcom/android/systemui/toast/MIUIStrongToastControl$5;-><init>(Lcom/android/systemui/toast/MIUIStrongToastControl;)V

    .line 171
    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 177
    move-object/from16 v5, p13

    .line 179
    iput-object v5, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mStrongToastLogger:Lcom/android/systemui/toast/StrongToastLogger;

    .line 181
    new-instance v5, Lcom/android/systemui/toast/MIUIStrongToastControl$1;

    .line 183
    invoke-direct {v5, v0}, Lcom/android/systemui/toast/MIUIStrongToastControl$1;-><init>(Lcom/android/systemui/toast/MIUIStrongToastControl;)V

    .line 185
    new-instance v6, Lcom/android/systemui/toast/MIUIStrongToastControl$2;

    .line 188
    move-object/from16 v7, p8

    .line 190
    invoke-direct {v6, v0, v7}, Lcom/android/systemui/toast/MIUIStrongToastControl$2;-><init>(Lcom/android/systemui/toast/MIUIStrongToastControl;Landroid/os/Handler;)V

    .line 192
    iput-object v6, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mBatterySuperSaveModeChangeObserver:Lcom/android/systemui/toast/MIUIStrongToastControl$2;

    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 197
    move-result-object v7

    .line 200
    const-string v8, "power_supersave_mode_open"

    .line 201
    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 203
    move-result-object v8

    .line 206
    const/4 v9, 0x0

    .line 207
    invoke-virtual {v7, v8, v9, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 208
    invoke-virtual {v6, v9}, Lcom/android/systemui/toast/MIUIStrongToastControl$2;->onChange(Z)V

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 214
    move-result-object v1

    .line 217
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 218
    invoke-virtual {v2, v5, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 220
    new-instance v1, Lcom/android/systemui/toast/MIUIStrongToastControl$3;

    .line 223
    invoke-direct {v1, v0}, Lcom/android/systemui/toast/MIUIStrongToastControl$3;-><init>(Lcom/android/systemui/toast/MIUIStrongToastControl;)V

    .line 225
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 228
    return-void
    .line 231
.end method


# virtual methods
.method public final getSupportCharge(Lcom/miui/charge/MiuiBatteryStatus;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/miui/charge/ChargeUtils;->SUPPORT_DOUBLE_CHARGE:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object p0

    .line 10
    const-string v2, "key_fast_charge_enabled"

    .line 11
    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 13
    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne p0, v2, :cond_0

    .line 18
    move v1, v2

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    const-string p0, "MIUIStrongToastControl"

    .line 22
    const-string v2, "SettingNotFoundException: key_fast_charge_enabled"

    .line 24
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 29
    if-eqz v1, :cond_1

    .line 31
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 33
    iget p1, p1, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p1

    .line 40
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 44
    const-string v0, "%dW MAX"

    .line 45
    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_1
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 52
    iget p1, p1, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object p1

    .line 59
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 63
    const-string v0, "%dW"

    .line 64
    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 69
    return-object p0
    .line 70
.end method

.method public final hideStrongToastImmediately()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMiuiStrongToastCallBack:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mStrongToastShow:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->onComplete()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToastControl;->hideStrongToastImmediately()V

    .line 2
    return-void
    .line 5
.end method

.method public final onMaxBoundsChanged(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToastControl;->hideStrongToastImmediately()V

    .line 2
    return-void
    .line 5
.end method

.method public final onSmallestScreenWidthChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToastControl;->hideStrongToastImmediately()V

    .line 2
    return-void
    .line 5
.end method

.method public final setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string/jumbo p1, "strong_toast_action"

    .line 2
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 5
    move-result p1

    .line 8
    if-eqz p1, :cond_8

    .line 9
    if-nez p3, :cond_0

    .line 11
    goto/16 :goto_2

    .line 13
    :cond_0
    const-string/jumbo p1, "status_bar_strong_toast"

    .line 15
    const-string p2, ""

    .line 18
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 27
    move-result p2

    .line 30
    const/4 v0, 0x3

    .line 31
    const/4 v1, 0x2

    .line 32
    const/4 v2, 0x1

    .line 33
    sparse-switch p2, :sswitch_data_0

    .line 34
    goto :goto_0

    .line 37
    :sswitch_0
    const-string/jumbo p2, "show_default_strong_toast"

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    move p1, v0

    .line 48
    goto :goto_1

    .line 49
    :sswitch_1
    const-string/jumbo p2, "update_strong_toast"

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result p1

    .line 56
    if-nez p1, :cond_2

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    move p1, v1

    .line 60
    goto :goto_1

    .line 61
    :sswitch_2
    const-string p2, "hide_strong_toast"

    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    goto :goto_0

    .line 70
    :cond_3
    move p1, v2

    .line 71
    goto :goto_1

    .line 72
    :sswitch_3
    const-string/jumbo p2, "show_custom_strong_toast"

    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result p1

    .line 79
    if-nez p1, :cond_4

    .line 80
    goto :goto_0

    .line 82
    :cond_4
    const/4 p1, 0x0

    .line 83
    goto :goto_1

    .line 84
    :goto_0
    const/4 p1, -0x1

    .line 85
    :goto_1
    const-string p2, "MIUIStrongToastControl"

    .line 86
    if-eqz p1, :cond_7

    .line 88
    if-eq p1, v2, :cond_6

    .line 90
    if-eq p1, v1, :cond_5

    .line 92
    if-eq p1, v0, :cond_7

    .line 94
    const-string/jumbo p0, "unknown  command"

    .line 96
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    goto :goto_2

    .line 102
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMiuiStrongToastCallBack:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 103
    if-eqz p0, :cond_8

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->updateStrongToast()V

    .line 107
    goto :goto_2

    .line 110
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMiuiStrongToastCallBack:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 111
    if-eqz p0, :cond_8

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->hideStrongToast()V

    .line 115
    goto :goto_2

    .line 118
    :cond_7
    const-string/jumbo p1, "showCustomStrongToast"

    .line 119
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0, p3}, Lcom/android/systemui/toast/MIUIStrongToastControl;->showCustomStrongToast(Landroid/os/Bundle;)V

    .line 125
    :cond_8
    :goto_2
    return-void

    .line 128
    nop

    .line 129
    :sswitch_data_0
    .sparse-switch
        -0x79f457b5 -> :sswitch_3
        -0x6a6f75a4 -> :sswitch_2
        -0x1d3d9dcb -> :sswitch_1
        0x12ef57bf -> :sswitch_0
    .end sparse-switch
    .line 130
.end method

.method public final showCustomStrongToast(Landroid/os/Bundle;)V
    .locals 12

    const-string v0, "package_name"

    const-string v1, ""

    .line 140
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, "strong_toast_category"

    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mStrongToastCategory:Ljava/lang/String;

    const-string/jumbo v0, "target"

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mTarget:Landroid/app/PendingIntent;

    const-string v0, "duration"

    const-wide/16 v2, 0x0

    .line 143
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mDuration:J

    const-string v0, "level"

    const/4 v2, 0x0

    .line 144
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeLevel:F

    const-string v0, "rapid_rate"

    .line 145
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeRate:F

    const-string v0, "charge"

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mCharge:Ljava/lang/String;

    const-string/jumbo v0, "strong_toast_charge_flag"

    const/4 v2, 0x0

    .line 147
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeFlag:I

    const-string v0, "param"

    .line 148
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mParam:Ljava/lang/String;

    const-string/jumbo v0, "strong_supper_charge"

    .line 149
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mStrongSupperCharge:I

    .line 150
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mParam:Ljava/lang/String;

    const-class v1, Lcom/android/systemui/toast/bean/StatusBarGuideModel;

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/toast/bean/StatusBarGuideModel;

    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mStatusBarGuideModel:Lcom/android/systemui/toast/bean/StatusBarGuideModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MIUIStrongToastControl"

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mStatusBarGuideModel:Lcom/android/systemui/toast/bean/StatusBarGuideModel;

    if-nez p1, :cond_0

    const-string p1, "mParam gson error "

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    :goto_1
    new-instance v11, Lcom/android/systemui/toast/bean/StrongToastModel;

    iget-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mStrongToastCategory:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mTarget:Landroid/app/PendingIntent;

    iget-wide v4, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mDuration:J

    .line 155
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeLevel:F

    iget v6, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeRate:F

    iget-object v7, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mCharge:Ljava/lang/String;

    iget v8, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeFlag:I

    iget v9, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mStrongSupperCharge:I

    iget-object v10, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mStatusBarGuideModel:Lcom/android/systemui/toast/bean/StatusBarGuideModel;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/toast/bean/StrongToastModel;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/Long;FFLjava/lang/String;IILcom/android/systemui/toast/bean/StatusBarGuideModel;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mPackageName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " mStrongToastCategory:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mStrongToastCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mTarget:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mTarget:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mDuration :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mParam\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mChargeLevel\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeLevel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mCharge\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mCharge:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mChargeRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mChargeFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mStatusBarGuideModel :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mStrongToastLogger:Lcom/android/systemui/toast/StrongToastLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v3, Lcom/android/systemui/toast/StrongToastLogger$showStrongToast$2;->INSTANCE:Lcom/android/systemui/toast/StrongToastLogger$showStrongToast$2;

    const-string v4, "StrongToastLog"

    const/4 v5, 0x0

    .line 158
    iget-object v1, v1, Lcom/android/systemui/toast/StrongToastLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    move-result-object v2

    .line 159
    invoke-interface {v2, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 160
    invoke-interface {v2, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 162
    invoke-virtual {p0, v11}, Lcom/android/systemui/toast/MIUIStrongToastControl;->showCustomStrongToast(Lcom/android/systemui/toast/bean/StrongToastModel;)V

    return-void
.end method

.method public final showCustomStrongToast(Lcom/android/systemui/toast/bean/StrongToastModel;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    const-string v1, "MIUIStrongToastControl"

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mContext display id :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0500b3    # @bool/support_strong_toast 'true'

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "phone land  not support"

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "in device provisioned"

    .line 6
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMultiUserController:Lcom/miui/systemui/MultiUserController;

    .line 8
    iget v2, v2, Lcom/miui/systemui/MultiUserController;->kidSpaceUserId:I

    if-ne v0, v2, :cond_3

    return-void

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 10
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v0, :cond_1a

    .line 11
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mControlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 12
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->isExpand:Z

    if-nez v0, :cond_1a

    .line 13
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 14
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPanelExpanded:Z

    if-eqz v0, :cond_4

    goto/16 :goto_6

    .line 15
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->isSuperPowerSave:Z

    if-eqz v0, :cond_5

    return-void

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMinimalismModeController:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->isMininalismModeOn()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    .line 19
    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isPadOrFoldLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_1

    :cond_8
    :goto_0
    move v0, v4

    :goto_1
    if-eqz v0, :cond_9

    .line 20
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll(Z)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMiuiStrongToast:Lcom/android/systemui/toast/MIUIStrongToast;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMiuiStrongToastCallBack:Lcom/android/systemui/toast/MIUIStrongToast;

    if-eqz v0, :cond_18

    .line 22
    iget-boolean v0, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mStrongToastShow:Z

    if-nez v0, :cond_18

    :cond_a
    const-string v0, "init strong toast"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Lcom/android/systemui/toast/MIUIStrongToast;

    iget-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/toast/MIUIStrongToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMiuiStrongToast:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 25
    iput-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMiuiStrongToastCallBack:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 26
    iget-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-nez v1, :cond_b

    .line 27
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_2

    .line 28
    :cond_b
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_c

    .line 29
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 30
    :cond_c
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0d01d7    # @layout/miui_strong_toast 'res/layout/miui_strong_toast.xml'

    invoke-virtual {v2, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    if-nez v2, :cond_d

    goto/16 :goto_4

    :cond_d
    const v5, 0x7f0a0504    # @id/ll_strong_toast

    .line 32
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mDarkToast:Landroid/widget/LinearLayout;

    .line 33
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    const v5, 0x7f0a01ee    # @id/cl_strong_toast_msg

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mDarkToastContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    new-instance v5, Lcom/android/systemui/toast/MIUIStrongToast$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/toast/MIUIStrongToast$1;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    const v5, 0x7f0a04e4    # @id/left_image

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftImageView:Landroid/widget/ImageView;

    .line 36
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    const v5, 0x7f0a04e5    # @id/left_text

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 37
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    const v5, 0x7f0a07ba    # @id/right_text

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightTextView:Landroid/widget/TextView;

    .line 38
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    const v5, 0x7f0a07b5    # @id/right_image

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    .line 39
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    const v5, 0x7f0a07c6    # @id/rl_left

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 40
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    const v5, 0x7f0a07c7    # @id/rl_right

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 41
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    const v5, 0x7f0a027f    # @id/cut_out

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCutOut:Landroid/view/View;

    .line 42
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    const v5, 0x7f0a04e7    # @id/left_video

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/toast/view/TextureVideoView;

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 43
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    const v5, 0x7f0a07c1    # @id/right_video

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/toast/view/TextureVideoView;

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 44
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/toast/view/TextureVideoView;->setAudioFocusRequest(I)V

    .line 45
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/toast/view/TextureVideoView;->setAudioFocusRequest(I)V

    .line 46
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    const v5, 0x7f0a04e2    # @id/left_fl

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftContentWithOutText:Landroid/widget/FrameLayout;

    .line 47
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    const v5, 0x7f0a07b2    # @id/right_fl

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightContentWithOutText:Landroid/widget/FrameLayout;

    .line 48
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    const v5, 0x7f0a08f5    # @id/strong_toast_bottom_view

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mStrongToastBottomView:Landroid/view/View;

    .line 49
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    const v6, 0x7f0a036b    # @id/fl_pad_toast_bg

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mSTBgFL:Landroid/widget/FrameLayout;

    .line 50
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    const v6, 0x7f0a01ed    # @id/circle_center

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCirCleCenter:Landroid/widget/FrameLayout;

    .line 51
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    const v6, 0x7f0a0457    # @id/iv_center

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mSTBgCenterIv:Landroid/widget/ImageView;

    .line 52
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    const v6, 0x7f0a07ce    # @id/round_rect

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/toast/view/RoundRect;

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRoundRect:Lcom/android/systemui/toast/view/RoundRect;

    .line 53
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mStrongToastBottomView:Landroid/view/View;

    .line 54
    iget-boolean v5, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowBottom:Z

    if-eqz v5, :cond_e

    .line 55
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_e
    const/16 v5, 0x8

    .line 56
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :goto_3
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    new-instance v5, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0, v3}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    invoke-virtual {v2, v5}, Lcom/android/systemui/toast/view/TextureVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 58
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    new-instance v5, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0, v4}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    invoke-virtual {v2, v5}, Lcom/android/systemui/toast/view/TextureVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 59
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f071110    # @dimen/strong_toast_padding_default '18.0dp'

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mPaddingDefault:I

    .line 60
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f071111    # @dimen/strong_toast_padding_smail '9.0dp'

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mPaddingSmail:I

    .line 61
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07110f    # @dimen/strong_toast_padding_big '20.0dp'

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mPaddingBig:I

    .line 62
    :goto_4
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mDarkToastContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 63
    iget-object v5, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 64
    iget-object v6, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 65
    iget-boolean v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowBottom:Z

    const/4 v8, 0x2

    if-eqz v7, :cond_16

    .line 66
    iget v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentTextHeight:I

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 67
    iget-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mDarkToastContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    .line 69
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 70
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 71
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_f

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-lt v2, v7, :cond_10

    :cond_f
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    move v2, v3

    goto :goto_5

    .line 72
    :cond_11
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-gtz v2, :cond_12

    move v2, v4

    goto :goto_5

    :cond_12
    move v2, v8

    .line 73
    :goto_5
    iget v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    int-to-float v7, v7

    const v9, 0x3ba71de7    # 0.0051f

    mul-float/2addr v7, v9

    float-to-int v7, v7

    .line 74
    iget-object v10, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCutOut:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 75
    iget-object v11, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1050296    # @android:dimen/select_dialog_padding_start_material

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 76
    iget v12, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    int-to-float v12, v12

    const v13, 0x3d87c84b    # 0.0663f

    mul-float/2addr v12, v13

    const v13, 0x3f19999a    # 0.6f

    mul-float/2addr v11, v13

    invoke-static {v12, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    float-to-int v11, v11

    iput v11, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContainerMargin:I

    if-nez v2, :cond_13

    .line 77
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    mul-int/lit8 v12, v7, 0x2

    add-int/2addr v12, v11

    iput v12, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 78
    iget-object v11, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCutOut:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v11, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    iget v12, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContainerMargin:I

    invoke-virtual {v11, v12, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 80
    iget-object v11, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    iget v12, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContainerMargin:I

    invoke-virtual {v11, v3, v3, v12, v3}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 81
    iget v11, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    iget v12, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v7

    iput v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 82
    iget-object v11, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCutOut:Landroid/view/View;

    new-instance v12, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda6;

    invoke-direct {v12, v0, v1}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;Landroid/graphics/Rect;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_13
    if-ne v2, v4, :cond_14

    mul-int/lit8 v11, v7, 0x2

    .line 83
    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 84
    iget-object v11, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCutOut:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget v11, v1, Landroid/graphics/Rect;->right:I

    .line 86
    iput v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 87
    iget-object v12, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    iget v13, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    int-to-float v13, v13

    mul-float/2addr v13, v9

    float-to-int v13, v13

    invoke-virtual {v12, v13, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 88
    iget-object v12, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    iget v13, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContainerMargin:I

    invoke-virtual {v12, v3, v3, v13, v3}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 89
    iget-object v12, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCutOut:Landroid/view/View;

    new-instance v13, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;

    invoke-direct {v13, v0, v11, v1, v3}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;ILandroid/graphics/Rect;I)V

    invoke-virtual {v12, v13}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_14
    if-ne v2, v8, :cond_15

    mul-int/2addr v7, v8

    .line 90
    iput v7, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 91
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCutOut:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v7

    .line 93
    iget-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    iget v10, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContainerMargin:I

    invoke-virtual {v7, v10, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 94
    iput v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 95
    iget-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    iget v10, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v9, v10

    invoke-virtual {v7, v3, v3, v9, v3}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 96
    iget-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCutOut:Landroid/view/View;

    new-instance v9, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;

    invoke-direct {v9, v0, v2, v1, v4}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;ILandroid/graphics/Rect;I)V

    invoke-virtual {v7, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 97
    :cond_15
    iget v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    int-to-float v1, v1

    const v2, 0x3c271de7    # 0.0102f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 98
    iget-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 99
    iget v9, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    int-to-float v9, v9

    const v10, 0x3d9cac08    # 0.0765f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 100
    iget-object v11, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftImageView:Landroid/widget/ImageView;

    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 101
    iget-object v9, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftImageView:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    iget v9, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    int-to-float v9, v9

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 104
    iget-object v11, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 105
    iget-object v9, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    invoke-virtual {v7}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 107
    iget v9, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    int-to-float v9, v9

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 108
    iget-object v11, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    invoke-virtual {v11, v9}, Landroid/view/TextureView;->setMinimumWidth(I)V

    .line 109
    iget-object v9, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    invoke-virtual {v9, v7}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    invoke-virtual {v7}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 111
    iget v9, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    int-to-float v9, v9

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 112
    iget-object v11, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    invoke-virtual {v11, v9}, Landroid/view/TextureView;->setMinimumWidth(I)V

    .line 113
    iget-object v9, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    invoke-virtual {v9, v7}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftContentWithOutText:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 115
    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 116
    iget v9, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    int-to-float v9, v9

    const v11, 0x3f49fbe7    # 0.789f

    mul-float/2addr v11, v9

    float-to-int v11, v11

    iput v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    mul-float/2addr v2, v9

    float-to-int v2, v2

    .line 117
    iput v2, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 118
    iput v2, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 119
    iget-object v11, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftContentWithOutText:Landroid/widget/FrameLayout;

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v11, v9}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 120
    iget-object v9, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftContentWithOutText:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightContentWithOutText:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 122
    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 123
    iput v2, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 124
    iput v2, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 125
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    iget v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v10

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 126
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 127
    iget v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v10

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 128
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightContentWithOutText:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    :cond_16
    iget-boolean v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowBottom:Z

    if-eqz v1, :cond_17

    .line 133
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    int-to-float v2, v2

    const v5, 0x3d31a4be    # 0.04337f

    mul-float/2addr v2, v5

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 134
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightTextView:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 135
    :cond_17
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v4}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 136
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v8}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 137
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMiuiStrongToastCallBack:Lcom/android/systemui/toast/MIUIStrongToast;

    if-eqz v0, :cond_19

    .line 138
    invoke-virtual {v0, p1}, Lcom/android/systemui/toast/MIUIStrongToast;->showCustomStrongToast(Lcom/android/systemui/toast/bean/StrongToastModel;)V

    .line 139
    :cond_19
    iget-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMiuiStrongToast:Lcom/android/systemui/toast/MIUIStrongToast;

    new-instance v0, Lcom/android/systemui/toast/MIUIStrongToastControl$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/toast/MIUIStrongToastControl$7;-><init>(Lcom/android/systemui/toast/MIUIStrongToastControl;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1a
    :goto_6
    return-void
.end method

.method public final structureChargeStrongToast(Lcom/miui/charge/MiuiBatteryStatus;I)Landroid/os/Bundle;
    .locals 11

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    const-string/jumbo v1, "strong_toast_category"

    .line 7
    const-string v2, "charge"

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string/jumbo v1, "strong_supper_charge"

    .line 15
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    iget v4, p1, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 22
    const/4 v5, 0x1

    .line 24
    const/16 v6, 0x32

    .line 25
    const/4 v7, 0x3

    .line 27
    if-ne v4, v7, :cond_0

    .line 28
    iget v8, p1, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 30
    if-lt v8, v6, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/toast/MIUIStrongToastControl;->getSupportCharge(Lcom/miui/charge/MiuiBatteryStatus;)Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 37
    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    goto :goto_1

    .line 41
    :cond_0
    if-lt v4, v5, :cond_1

    .line 42
    move v4, v5

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v4, v3

    .line 46
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mContext:Landroid/content/Context;

    .line 47
    if-eqz v4, :cond_2

    .line 49
    const v4, 0x7f130b38    # @string/strong_toast_quick_charging 'Quick charging'

    .line 51
    invoke-virtual {v8, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const v4, 0x7f130b37    # @string/strong_toast_charging 'Charging'

    .line 59
    invoke-virtual {v8, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 65
    :goto_1
    iget v8, p1, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 66
    const/16 v9, 0xa

    .line 68
    const-string v10, "duration"

    .line 70
    if-ne v8, v9, :cond_3

    .line 72
    const-wide/16 v8, 0x2710

    .line 74
    invoke-virtual {v0, v10, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 76
    goto :goto_2

    .line 79
    :cond_3
    const-wide/16 v8, 0x1388

    .line 80
    invoke-virtual {v0, v10, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 82
    :goto_2
    const/4 v8, 0x2

    .line 85
    if-ne p2, v8, :cond_4

    .line 86
    iget v9, p1, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 88
    if-lt v9, v6, :cond_4

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/systemui/toast/MIUIStrongToastControl;->getSupportCharge(Lcom/miui/charge/MiuiBatteryStatus;)Ljava/lang/String;

    .line 92
    move-result-object v4

    .line 95
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    iput-boolean v3, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mDecimal:Z

    .line 102
    goto :goto_4

    .line 104
    :cond_4
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget p2, p1, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 108
    if-lt p2, v5, :cond_5

    .line 110
    move p2, v5

    .line 112
    goto :goto_3

    .line 113
    :cond_5
    move p2, v3

    .line 114
    :goto_3
    if-eqz p2, :cond_6

    .line 115
    move p2, v5

    .line 117
    goto :goto_4

    .line 118
    :cond_6
    move p2, v3

    .line 119
    :goto_4
    const-string v1, "level"

    .line 120
    if-ne p2, v8, :cond_7

    .line 122
    iget p1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mRapidLevel:F

    .line 124
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 126
    const-string p1, "rapid_rate"

    .line 129
    iget p0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mRapidRate:F

    .line 131
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 133
    goto :goto_5

    .line 136
    :cond_7
    iget p0, p1, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 137
    int-to-float p0, p0

    .line 139
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 140
    :goto_5
    const-string/jumbo p0, "strong_toast_charge_flag"

    .line 143
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    return-object v0
    .line 149
.end method
