.class public final Lcom/miui/charge/MiuiChargeController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/charge/view/IChargeAnimationListener;
.implements Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;
.implements Lcom/miui/interfaces/SettingsObserver$Callback;


# instance fields
.field public hasShowdChargeAnim:Z

.field public final mAngleSensor:Landroid/hardware/Sensor;

.field public mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

.field public mChargeAnimationShowing:Z

.field public mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

.field public mChargeDeviceForAnalytic:I

.field public mChargeDeviceType:I

.field public mChargeSpeed:I

.field public mClickShowChargeUI:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:I

.field public mFastChargeChanged:Z

.field public mFoldStatus:Ljava/lang/Boolean;

.field public final mHandler:Landroid/os/Handler;

.field public mIsFastCharge:Z

.field public final mIsFoldChargeVideo:Z

.field public final mKeyguardUpdateMonitorCallback:Lcom/miui/charge/MiuiChargeController$1;

.field public final mMiuiKeyguardUpdateCallback:Lcom/miui/charge/MiuiChargeController$2;

.field public mMiuiWirelessChargeSlowlyView:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

.field public mNeedRepositionDevice:Z

.field public mPendingChargeAnimation:Z

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mScreenOffRunnable:Lcom/miui/charge/MiuiChargeController$5;

.field public mScreenOn:Z

.field public final mScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mSensorEventListener:Lcom/miui/charge/MiuiChargeController$7;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mShowNewAnimation:Z

.field public final mShowSlowlyRunnable:Lcom/miui/charge/MiuiChargeController$5;

.field public mStateInitialized:Z

.field public final mUpdateMonitor:Lmiui/stub/MiuiStub$3;

.field public final mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

.field public mWireState:I

.field public mWirelessChargeStartTime:J

.field public mWirelessChargeState:I

.field public mWirelessCharging:Z

.field public mWirelessOnline:Z


# direct methods
.method public constructor <init>()V
    .locals 22

    .line 1
    move-object/from16 v6, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 7
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    iput-object v0, v6, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    .line 12
    const/4 v7, -0x1

    .line 14
    iput v7, v6, Lcom/miui/charge/MiuiChargeController;->mChargeSpeed:I

    .line 15
    const/4 v8, 0x0

    .line 17
    iput-boolean v8, v6, Lcom/miui/charge/MiuiChargeController;->mWirelessOnline:Z

    .line 18
    iput-boolean v8, v6, Lcom/miui/charge/MiuiChargeController;->mWirelessCharging:Z

    .line 20
    iput-boolean v8, v6, Lcom/miui/charge/MiuiChargeController;->mNeedRepositionDevice:Z

    .line 22
    iput-boolean v8, v6, Lcom/miui/charge/MiuiChargeController;->mScreenOn:Z

    .line 24
    iput-boolean v8, v6, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    .line 26
    iput-boolean v8, v6, Lcom/miui/charge/MiuiChargeController;->mShowNewAnimation:Z

    .line 28
    iput-boolean v8, v6, Lcom/miui/charge/MiuiChargeController;->mIsFastCharge:Z

    .line 30
    iput-boolean v8, v6, Lcom/miui/charge/MiuiChargeController;->mFastChargeChanged:Z

    .line 32
    iput-boolean v8, v6, Lcom/miui/charge/MiuiChargeController;->hasShowdChargeAnim:Z

    .line 34
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 36
    move-result v0

    .line 39
    iput v0, v6, Lcom/miui/charge/MiuiChargeController;->mCurrentUser:I

    .line 40
    new-instance v0, Lcom/miui/charge/MiuiChargeController$1;

    .line 42
    invoke-direct {v0, v6}, Lcom/miui/charge/MiuiChargeController$1;-><init>(Lcom/miui/charge/MiuiChargeController;)V

    .line 44
    iput-object v0, v6, Lcom/miui/charge/MiuiChargeController;->mKeyguardUpdateMonitorCallback:Lcom/miui/charge/MiuiChargeController$1;

    .line 47
    new-instance v1, Lcom/miui/charge/MiuiChargeController$2;

    .line 49
    invoke-direct {v1, v6}, Lcom/miui/charge/MiuiChargeController$2;-><init>(Lcom/miui/charge/MiuiChargeController;)V

    .line 51
    iput-object v1, v6, Lcom/miui/charge/MiuiChargeController;->mMiuiKeyguardUpdateCallback:Lcom/miui/charge/MiuiChargeController$2;

    .line 54
    new-instance v2, Lcom/miui/charge/MiuiChargeController$5;

    .line 56
    invoke-direct {v2, v6, v8}, Lcom/miui/charge/MiuiChargeController$5;-><init>(Lcom/miui/charge/MiuiChargeController;I)V

    .line 58
    iput-object v2, v6, Lcom/miui/charge/MiuiChargeController;->mScreenOffRunnable:Lcom/miui/charge/MiuiChargeController$5;

    .line 61
    new-instance v2, Lcom/miui/charge/MiuiChargeController$5;

    .line 63
    const/4 v3, 0x1

    .line 65
    invoke-direct {v2, v6, v3}, Lcom/miui/charge/MiuiChargeController$5;-><init>(Lcom/miui/charge/MiuiChargeController;I)V

    .line 66
    iput-object v2, v6, Lcom/miui/charge/MiuiChargeController;->mShowSlowlyRunnable:Lcom/miui/charge/MiuiChargeController$5;

    .line 69
    new-instance v2, Lcom/miui/charge/MiuiChargeController$7;

    .line 71
    invoke-direct {v2, v6}, Lcom/miui/charge/MiuiChargeController$7;-><init>(Lcom/miui/charge/MiuiChargeController;)V

    .line 73
    iput-object v2, v6, Lcom/miui/charge/MiuiChargeController;->mSensorEventListener:Lcom/miui/charge/MiuiChargeController$7;

    .line 76
    const-class v2, Lmiui/stub/MiuiStub$1;

    .line 78
    invoke-static {v2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    move-result-object v2

    .line 83
    check-cast v2, Lmiui/stub/MiuiStub$1;

    .line 84
    invoke-virtual {v2}, Lmiui/stub/MiuiStub$1;->getSystemUIContext()Landroid/content/Context;

    .line 86
    move-result-object v9

    .line 89
    iput-object v9, v6, Lcom/miui/charge/MiuiChargeController;->mContext:Landroid/content/Context;

    .line 90
    const-string v2, "power"

    .line 92
    invoke-virtual {v9, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    move-result-object v2

    .line 97
    move-object v10, v2

    .line 98
    check-cast v10, Landroid/os/PowerManager;

    .line 99
    iput-object v10, v6, Lcom/miui/charge/MiuiChargeController;->mPowerManager:Landroid/os/PowerManager;

    .line 101
    const-class v2, Lmiui/stub/MiuiStub$3;

    .line 103
    invoke-static {v2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    move-result-object v2

    .line 108
    check-cast v2, Lmiui/stub/MiuiStub$3;

    .line 109
    iput-object v2, v6, Lcom/miui/charge/MiuiChargeController;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 111
    const-class v4, Lmiui/stub/MiuiStub$13;

    .line 113
    invoke-static {v4}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    move-result-object v5

    .line 118
    check-cast v5, Lmiui/stub/MiuiStub$13;

    .line 119
    iput-object v5, v6, Lcom/miui/charge/MiuiChargeController;->mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

    .line 121
    new-instance v5, Lcom/miui/charge/MiuiBatteryStatus;

    .line 123
    const/4 v12, 0x1

    .line 125
    const/4 v13, 0x0

    .line 126
    const/4 v14, 0x0

    .line 127
    const/4 v15, 0x0

    .line 128
    const/16 v16, 0x0

    .line 129
    const/16 v17, -0x1

    .line 131
    const/16 v18, 0x1

    .line 133
    const/16 v19, -0x1

    .line 135
    const/16 v20, 0x0

    .line 137
    const/16 v21, 0x0

    .line 139
    move-object v11, v5

    .line 141
    invoke-direct/range {v11 .. v21}, Lcom/miui/charge/MiuiBatteryStatus;-><init>(IIIIIIIIIZ)V

    .line 142
    iput-object v5, v6, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 145
    invoke-virtual {v2, v0}, Lmiui/stub/MiuiStub$3;->registerCallback(Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;)V

    .line 147
    invoke-static {v4}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    move-result-object v0

    .line 153
    check-cast v0, Lmiui/stub/MiuiStub$13;

    .line 154
    invoke-virtual {v0, v1}, Lmiui/stub/MiuiStub$13;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 156
    const-class v0, Lmiui/stub/MiuiStub$4;

    .line 159
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 161
    move-result-object v0

    .line 164
    check-cast v0, Lmiui/stub/MiuiStub$4;

    .line 165
    invoke-virtual {v0, v6}, Lmiui/stub/MiuiStub$4;->addObserver(Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;)V

    .line 167
    const-class v0, Lcom/miui/interfaces/SettingsObserver;

    .line 170
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 172
    move-result-object v0

    .line 175
    check-cast v0, Lcom/miui/interfaces/SettingsObserver;

    .line 176
    const/4 v2, 0x1

    .line 178
    const/4 v4, 0x1

    .line 179
    const-string v1, "key_fast_charge_enabled"

    .line 180
    filled-new-array {v1}, [Ljava/lang/String;

    .line 182
    move-result-object v1

    .line 185
    check-cast v0, Lcom/miui/systemui/functions/SettingsObserverImpl;

    .line 186
    iget v5, v0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mCurrentUser:I

    .line 188
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 190
    move-result-object v1

    .line 193
    move-object v11, v1

    .line 194
    check-cast v11, [Ljava/lang/String;

    .line 195
    move-object/from16 v1, p0

    .line 197
    move v3, v4

    .line 199
    move v4, v5

    .line 200
    move-object v5, v11

    .line 201
    invoke-virtual/range {v0 .. v5}, Lcom/miui/systemui/functions/SettingsObserverImpl;->addCallback(Lcom/miui/interfaces/SettingsObserver$Callback;III[Ljava/lang/String;)V

    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    .line 205
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    const-string v1, "android.intent.action.USER_PRESENT"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v1, "miui.intent.action.ACTION_SOC_DECIMAL"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v1, "miui.intent.action.ACTION_WIRELESS_POSITION"

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const/16 v1, 0x3e9

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 227
    new-instance v1, Lcom/miui/charge/MiuiChargeController$3;

    .line 230
    invoke-direct {v1, v6}, Lcom/miui/charge/MiuiChargeController$3;-><init>(Lcom/miui/charge/MiuiChargeController;)V

    .line 232
    invoke-virtual {v9, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    const/16 v0, 0xa

    .line 238
    const-string/jumbo v1, "wireless_charge"

    .line 240
    invoke-virtual {v10, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 243
    move-result-object v0

    .line 246
    iput-object v0, v6, Lcom/miui/charge/MiuiChargeController;->mScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 247
    invoke-virtual {v0, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 249
    iput v7, v6, Lcom/miui/charge/MiuiChargeController;->mWirelessChargeState:I

    .line 252
    iput v7, v6, Lcom/miui/charge/MiuiChargeController;->mChargeDeviceType:I

    .line 254
    iput-boolean v8, v6, Lcom/miui/charge/MiuiChargeController;->mStateInitialized:Z

    .line 256
    iput v7, v6, Lcom/miui/charge/MiuiChargeController;->mWireState:I

    .line 258
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 260
    iput-boolean v0, v6, Lcom/miui/charge/MiuiChargeController;->mIsFoldChargeVideo:Z

    .line 262
    const-string/jumbo v0, "sensor"

    .line 264
    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    move-result-object v0

    .line 270
    check-cast v0, Landroid/hardware/SensorManager;

    .line 271
    iput-object v0, v6, Lcom/miui/charge/MiuiChargeController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 273
    const v1, 0x1fa268f

    .line 275
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 278
    move-result-object v0

    .line 281
    iput-object v0, v6, Lcom/miui/charge/MiuiChargeController;->mAngleSensor:Landroid/hardware/Sensor;

    .line 282
    return-void
    .line 284
.end method

.method public static shouldShowChargeAnim()Z
    .locals 1

    .line 1
    const-class v0, Lmiui/stub/MiuiStub$13;

    .line 2
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lmiui/stub/MiuiStub$13;

    .line 8
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$13;->isKeyguardShowing()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    sget-boolean v0, Lcom/miui/charge/ChargeUtils;->sChargeAnimationDisabled:Z

    .line 16
    if-nez v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
    .line 24
.end method


# virtual methods
.method public final checkBatteryStatus(Lcom/miui/charge/MiuiBatteryStatus;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    if-nez v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iput-object v1, v0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 9
    iget v2, v1, Lcom/miui/charge/MiuiBatteryStatus;->chargeDeviceType:I

    .line 11
    iput v2, v0, Lcom/miui/charge/MiuiChargeController;->mChargeDeviceType:I

    .line 13
    move/from16 v2, p2

    .line 15
    iput-boolean v2, v0, Lcom/miui/charge/MiuiChargeController;->mClickShowChargeUI:Z

    .line 17
    iget v3, v1, Lcom/miui/charge/MiuiBatteryStatus;->status:I

    .line 19
    iget v4, v1, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 21
    const/16 v5, 0xa

    .line 23
    const/4 v6, 0x1

    .line 25
    const/4 v7, 0x0

    .line 26
    if-ne v4, v5, :cond_1

    .line 27
    move v8, v6

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v8, v7

    .line 31
    :goto_0
    if-ne v4, v5, :cond_2

    .line 32
    move v9, v6

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v9, v7

    .line 36
    :goto_1
    const/16 v10, 0xb

    .line 37
    if-ne v4, v10, :cond_3

    .line 39
    move v4, v6

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    move v4, v7

    .line 43
    :goto_2
    const/4 v11, 0x4

    .line 44
    const/4 v12, 0x2

    .line 45
    const/4 v13, -0x1

    .line 46
    if-eq v3, v12, :cond_4

    .line 47
    const/4 v14, 0x5

    .line 49
    if-eq v3, v14, :cond_4

    .line 50
    if-ne v3, v11, :cond_6

    .line 52
    :cond_4
    if-eqz v9, :cond_5

    .line 54
    goto :goto_3

    .line 56
    :cond_5
    if-eqz v4, :cond_6

    .line 57
    move v5, v10

    .line 59
    goto :goto_3

    .line 60
    :cond_6
    move v5, v13

    .line 61
    :goto_3
    iget v4, v0, Lcom/miui/charge/MiuiChargeController;->mWireState:I

    .line 62
    if-eq v4, v13, :cond_7

    .line 64
    if-eq v5, v4, :cond_7

    .line 66
    iput v13, v0, Lcom/miui/charge/MiuiChargeController;->mChargeDeviceType:I

    .line 68
    iget-object v4, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 70
    if-eqz v4, :cond_7

    .line 72
    iget-boolean v9, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    .line 74
    if-eqz v9, :cond_7

    .line 76
    iget-object v4, v4, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargePercentView:Lcom/miui/charge/view/MiuiChargePercentCountView;

    .line 78
    iget-object v4, v4, Lcom/miui/charge/view/MiuiChargePercentCountView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 80
    if-eqz v4, :cond_7

    .line 82
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 84
    :cond_7
    iget-object v4, v0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 87
    iget v4, v4, Lcom/miui/charge/MiuiBatteryStatus;->carChargeMode:I

    .line 89
    if-ne v4, v6, :cond_8

    .line 91
    move v4, v6

    .line 93
    goto :goto_4

    .line 94
    :cond_8
    move v4, v7

    .line 95
    :goto_4
    iget v9, v0, Lcom/miui/charge/MiuiChargeController;->mChargeDeviceType:I

    .line 96
    sget-boolean v14, Lcom/miui/charge/ChargeUtils;->sChargeAnimationDisabled:Z

    .line 98
    if-ne v9, v6, :cond_9

    .line 100
    move v14, v6

    .line 102
    goto :goto_5

    .line 103
    :cond_9
    move v14, v7

    .line 104
    :goto_5
    if-eq v9, v12, :cond_b

    .line 105
    const/4 v12, 0x3

    .line 107
    if-ne v9, v12, :cond_a

    .line 108
    goto :goto_6

    .line 110
    :cond_a
    move v12, v7

    .line 111
    goto :goto_7

    .line 112
    :cond_b
    :goto_6
    move v12, v6

    .line 113
    :goto_7
    if-ne v9, v11, :cond_c

    .line 114
    move v9, v6

    .line 116
    goto :goto_8

    .line 117
    :cond_c
    move v9, v7

    .line 118
    :goto_8
    const-string v11, "checkBatteryStatus: wireState "

    .line 119
    const-string v15, " status "

    .line 121
    const-string v6, " plugged "

    .line 123
    invoke-static {v11, v5, v15, v3, v6}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    move-result-object v3

    .line 128
    iget v6, v1, Lcom/miui/charge/MiuiBatteryStatus;->plugged:I

    .line 129
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v6, " chargeSpeed "

    .line 134
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget v6, v1, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 139
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    const-string v6, " maxChargingWattage "

    .line 144
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget v6, v1, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 149
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string v6, " isRapidCharge "

    .line 154
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    const-string v6, " isSuperCharge "

    .line 162
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v6, " isStrongSuperCharge "

    .line 167
    const-string v11, " isCarMode "

    .line 169
    invoke-static {v3, v12, v6, v9, v11}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 174
    const-string v4, " mChargeDeviceType "

    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget v4, v0, Lcom/miui/charge/MiuiChargeController;->mChargeDeviceType:I

    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    const-string v4, " mChargeDeviceForAnalytic "

    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget v4, v0, Lcom/miui/charge/MiuiChargeController;->mChargeDeviceForAnalytic:I

    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    const-string v4, " isChargeAnimationDisabled "

    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    sget-boolean v4, Lcom/miui/charge/ChargeUtils;->sChargeAnimationDisabled:Z

    .line 202
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object v3

    .line 210
    const-string v4, "MiuiChargeController"

    .line 211
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v3, v0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 216
    sput-object v3, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 218
    iget-boolean v3, v0, Lcom/miui/charge/MiuiChargeController;->mStateInitialized:Z

    .line 220
    if-eqz v3, :cond_14

    .line 222
    invoke-static {}, Lcom/miui/charge/MiuiChargeController;->shouldShowChargeAnim()Z

    .line 224
    move-result v3

    .line 227
    iget-object v6, v0, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    .line 228
    iget-object v9, v0, Lcom/miui/charge/MiuiChargeController;->mScreenOffRunnable:Lcom/miui/charge/MiuiChargeController$5;

    .line 230
    if-eqz v3, :cond_11

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    .line 234
    const-string v11, "dealWithAnimationShow mWireState="

    .line 236
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    iget v11, v0, Lcom/miui/charge/MiuiChargeController;->mWireState:I

    .line 241
    const-string v12, ",wireState="

    .line 243
    const-string v14, ",mFastChargeChanged="

    .line 245
    invoke-static {v3, v11, v12, v5, v14}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 247
    iget-boolean v11, v0, Lcom/miui/charge/MiuiChargeController;->mFastChargeChanged:Z

    .line 250
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 252
    const-string v11, ",mIsFastCharge="

    .line 255
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-boolean v11, v0, Lcom/miui/charge/MiuiChargeController;->mIsFastCharge:Z

    .line 260
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 262
    const-string v11, ",hasShowdChargeAnim="

    .line 265
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-boolean v11, v0, Lcom/miui/charge/MiuiChargeController;->hasShowdChargeAnim:Z

    .line 270
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    move-result-object v3

    .line 278
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-boolean v3, v0, Lcom/miui/charge/MiuiChargeController;->mClickShowChargeUI:Z

    .line 282
    if-eqz v3, :cond_d

    .line 284
    iget-boolean v3, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    .line 286
    if-eqz v3, :cond_f

    .line 288
    goto :goto_a

    .line 290
    :cond_d
    iget-boolean v3, v0, Lcom/miui/charge/MiuiChargeController;->mFastChargeChanged:Z

    .line 291
    if-eqz v3, :cond_e

    .line 293
    iget-boolean v3, v0, Lcom/miui/charge/MiuiChargeController;->mIsFastCharge:Z

    .line 295
    if-eqz v3, :cond_e

    .line 297
    iget-boolean v3, v0, Lcom/miui/charge/MiuiChargeController;->hasShowdChargeAnim:Z

    .line 299
    if-eqz v3, :cond_e

    .line 301
    const/4 v3, 0x1

    .line 303
    goto :goto_9

    .line 304
    :cond_e
    move v3, v7

    .line 305
    :goto_9
    iget v11, v0, Lcom/miui/charge/MiuiChargeController;->mWireState:I

    .line 306
    if-ne v11, v5, :cond_f

    .line 308
    if-nez v3, :cond_f

    .line 310
    const-string v3, " dealWithAnimationShow \u76f8\u540c "

    .line 312
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    goto :goto_a

    .line 317
    :cond_f
    iget-object v3, v0, Lcom/miui/charge/MiuiChargeController;->mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

    .line 318
    invoke-virtual {v3}, Lmiui/stub/MiuiStub$13;->isKeyguardShowing()Z

    .line 320
    move-result v4

    .line 323
    invoke-virtual {v3}, Lmiui/stub/MiuiStub$13;->isKeyguardOccluded()Z

    .line 324
    move-result v3

    .line 327
    if-eq v5, v13, :cond_10

    .line 328
    if-eqz v4, :cond_11

    .line 330
    if-nez v3, :cond_11

    .line 332
    invoke-virtual {v0, v5}, Lcom/miui/charge/MiuiChargeController;->showChargeAnimation(I)V

    .line 334
    const-class v3, Lcom/miui/interfaces/IHapticFeedBack;

    .line 337
    invoke-static {v3}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 339
    move-result-object v3

    .line 342
    check-cast v3, Lcom/miui/interfaces/IHapticFeedBack;

    .line 343
    check-cast v3, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 345
    const/16 v4, 0x4a

    .line 347
    const/4 v11, 0x0

    .line 349
    const/16 v12, 0xd3

    .line 350
    invoke-virtual {v3, v12, v11, v4, v7}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(ILjava/lang/String;II)V

    .line 352
    goto :goto_a

    .line 355
    :cond_10
    iput-boolean v7, v0, Lcom/miui/charge/MiuiChargeController;->mPendingChargeAnimation:Z

    .line 356
    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 358
    const-string v3, "dealWithAnimationShow"

    .line 361
    invoke-virtual {v0, v3}, Lcom/miui/charge/MiuiChargeController;->dismissChargeAnimation(Ljava/lang/String;)V

    .line 363
    :cond_11
    :goto_a
    iget-boolean v3, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessOnline:Z

    .line 366
    if-eqz v3, :cond_13

    .line 368
    if-nez v8, :cond_13

    .line 370
    if-ne v5, v10, :cond_12

    .line 372
    iget-object v3, v0, Lcom/miui/charge/MiuiChargeController;->mContext:Landroid/content/Context;

    .line 374
    const v4, 0x7f130d20    # @string/wireless_change_to_ac_charging 'Switched to wired charging'

    .line 376
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 379
    move-result-object v4

    .line 382
    const/4 v11, 0x1

    .line 383
    invoke-static {v3, v4, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 384
    move-result-object v3

    .line 387
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 388
    goto :goto_b

    .line 391
    :cond_12
    const/4 v11, 0x1

    .line 392
    :goto_b
    iput-boolean v7, v0, Lcom/miui/charge/MiuiChargeController;->mNeedRepositionDevice:Z

    .line 393
    sput-boolean v7, Lcom/miui/charge/ChargeUtils;->sNeedRepositionDevice:Z

    .line 395
    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 397
    goto :goto_c

    .line 400
    :cond_13
    const/4 v11, 0x1

    .line 401
    :goto_c
    if-ne v5, v10, :cond_15

    .line 402
    iput-boolean v7, v0, Lcom/miui/charge/MiuiChargeController;->mNeedRepositionDevice:Z

    .line 404
    sput-boolean v7, Lcom/miui/charge/ChargeUtils;->sNeedRepositionDevice:Z

    .line 406
    invoke-virtual {v0, v7}, Lcom/miui/charge/MiuiChargeController;->showMissedTip(Z)V

    .line 408
    goto :goto_d

    .line 411
    :cond_14
    const/4 v11, 0x1

    .line 412
    :cond_15
    :goto_d
    const/16 v3, 0xa

    .line 413
    if-ne v5, v3, :cond_16

    .line 415
    move v3, v11

    .line 417
    goto :goto_e

    .line 418
    :cond_16
    move v3, v7

    .line 419
    :goto_e
    iget v4, v1, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 420
    iget v6, v0, Lcom/miui/charge/MiuiChargeController;->mWireState:I

    .line 422
    if-eq v6, v5, :cond_17

    .line 424
    move v6, v11

    .line 426
    goto :goto_f

    .line 427
    :cond_17
    move v6, v7

    .line 428
    :goto_f
    if-eqz v6, :cond_18

    .line 429
    if-eqz v3, :cond_18

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 433
    move-result-wide v3

    .line 436
    iput-wide v3, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessChargeStartTime:J

    .line 437
    goto :goto_10

    .line 439
    :cond_18
    const-wide/16 v9, -0x1

    .line 440
    const-wide/16 v11, 0x0

    .line 442
    if-eqz v6, :cond_1a

    .line 444
    if-nez v3, :cond_1a

    .line 446
    iget-wide v3, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessChargeStartTime:J

    .line 448
    cmp-long v3, v3, v11

    .line 450
    if-lez v3, :cond_19

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 454
    :cond_19
    iput-wide v9, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessChargeStartTime:J

    .line 457
    iput v13, v0, Lcom/miui/charge/MiuiChargeController;->mChargeDeviceForAnalytic:I

    .line 459
    goto :goto_10

    .line 461
    :cond_1a
    if-nez v6, :cond_1b

    .line 462
    if-eqz v3, :cond_1b

    .line 464
    iget-wide v6, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessChargeStartTime:J

    .line 466
    cmp-long v3, v6, v11

    .line 468
    if-lez v3, :cond_1b

    .line 470
    const/16 v3, 0x64

    .line 472
    if-lt v4, v3, :cond_1b

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 476
    iput-wide v9, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessChargeStartTime:J

    .line 479
    iput v13, v0, Lcom/miui/charge/MiuiChargeController;->mChargeDeviceForAnalytic:I

    .line 481
    :cond_1b
    :goto_10
    iget-object v3, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 483
    if-eqz v3, :cond_1c

    .line 485
    iget-boolean v4, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    .line 487
    if-eqz v4, :cond_1c

    .line 489
    iget v4, v1, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 491
    invoke-virtual {v3, v4}, Lcom/miui/charge/container/MiuiChargeAnimationView;->setProgress(I)V

    .line 493
    invoke-virtual/range {p0 .. p2}, Lcom/miui/charge/MiuiChargeController;->switchChargeItemViewAnimation(Lcom/miui/charge/MiuiBatteryStatus;Z)V

    .line 496
    :cond_1c
    iput-boolean v8, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessOnline:Z

    .line 499
    const/16 v2, 0xa

    .line 501
    if-ne v5, v2, :cond_1d

    .line 503
    const/4 v2, 0x1

    .line 505
    goto :goto_11

    .line 506
    :cond_1d
    const/4 v2, 0x0

    .line 507
    :goto_11
    iput-boolean v2, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessCharging:Z

    .line 508
    iput v5, v0, Lcom/miui/charge/MiuiChargeController;->mWireState:I

    .line 510
    invoke-virtual/range {p1 .. p1}, Lcom/miui/charge/MiuiBatteryStatus;->isPluggedIn()Z

    .line 512
    move-result v1

    .line 515
    if-nez v1, :cond_1e

    .line 516
    iput v13, v0, Lcom/miui/charge/MiuiChargeController;->mChargeSpeed:I

    .line 518
    const/4 v1, 0x0

    .line 520
    iput-boolean v1, v0, Lcom/miui/charge/MiuiChargeController;->hasShowdChargeAnim:Z

    .line 521
    :cond_1e
    return-void
    .line 523
.end method

.method public final dismissChargeAnimation(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "dismissChargeAnimation: "

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "MiuiChargeController"

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {}, Lcom/miui/charge/MiuiChargeController;->shouldShowChargeAnim()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    iget-boolean v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    .line 19
    if-nez v0, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    new-instance v1, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda0;

    .line 28
    invoke-direct {v1, p0, p1}, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/charge/MiuiChargeController;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    .line 37
    return-void

    .line 39
    :cond_2
    :goto_0
    const-string v0, "USER_PRESENT"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p1

    .line 45
    if-eqz p1, :cond_4

    .line 46
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 48
    if-nez p1, :cond_3

    .line 50
    goto :goto_1

    .line 52
    :cond_3
    const-string p1, "releaseMemory"

    .line 53
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 58
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->setChargeAnimationListener(Lcom/miui/charge/view/IChargeAnimationListener;)V

    .line 61
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    iput-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 69
    :cond_4
    :goto_1
    return-void
    .line 71
.end method

.method public final onChargeAnimationEnd(ILjava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, " onChargeAnimationEnd: wireState:"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string p1, ", reason:"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string p1, ", mChargeAnimationShowing:"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-boolean p1, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 33
    const-string v0, "MiuiChargeController"

    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 39
    move-result-wide v1

    .line 42
    const/4 p1, 0x0

    .line 43
    iget-object v3, p0, Lcom/miui/charge/MiuiChargeController;->mPowerManager:Landroid/os/PowerManager;

    .line 44
    invoke-virtual {v3, v1, v2, p1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 46
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 49
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 51
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    .line 54
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeController;->mScreenOffRunnable:Lcom/miui/charge/MiuiChargeController$5;

    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    const-string p1, "USER_PRESENT"

    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 69
    if-nez p1, :cond_0

    .line 71
    goto :goto_0

    .line 73
    :cond_0
    const-string p1, "releaseMemory"

    .line 74
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 79
    const/4 p2, 0x0

    .line 81
    invoke-virtual {p1, p2}, Lcom/miui/charge/container/MiuiChargeAnimationView;->setChargeAnimationListener(Lcom/miui/charge/view/IChargeAnimationListener;)V

    .line 82
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 85
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    iput-object p2, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 90
    :cond_1
    :goto_0
    return-void
    .line 92
.end method

.method public final onContentChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "key_fast_charge_enabled"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_4

    .line 8
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/miui/charge/MiuiChargeController;->mShowNewAnimation:Z

    .line 11
    const/4 v0, 0x0

    .line 13
    if-eqz p2, :cond_0

    .line 14
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    :cond_0
    move p2, v0

    .line 21
    :goto_0
    if-eqz p2, :cond_1

    .line 22
    move p2, p1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move p2, v0

    .line 26
    :goto_1
    iput-boolean p2, p0, Lcom/miui/charge/MiuiChargeController;->mIsFastCharge:Z

    .line 27
    iget-object p2, p0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 29
    invoke-virtual {p2}, Lcom/miui/charge/MiuiBatteryStatus;->isPluggedIn()Z

    .line 31
    move-result p2

    .line 34
    if-eqz p2, :cond_2

    .line 35
    iget-object p2, p0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 37
    invoke-virtual {p2}, Lcom/miui/charge/MiuiBatteryStatus;->isPluggedIn()Z

    .line 39
    move-result p2

    .line 42
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 43
    iget v1, v1, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 45
    iget-object v2, p0, Lcom/miui/charge/MiuiChargeController;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {v1, p2, v2}, Lcom/miui/charge/ChargeUtils;->getChargingHintText(IZLandroid/content/Context;)Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 52
    const-class v1, Lmiui/stub/MiuiStub$12;

    .line 53
    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 58
    check-cast v1, Lmiui/stub/MiuiStub$12;

    .line 59
    iget-object v1, v1, Lmiui/stub/MiuiStub$12;->this$0:Lmiui/stub/MiuiStub;

    .line 61
    iget-object v1, v1, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 63
    iget-object v1, v1, Lmiui/stub/MiuiStub$SysUIProvider;->mKeyguardIndicationController:Ldagger/Lazy;

    .line 65
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 70
    check-cast v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 71
    iput-object p2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mComputePowerIndication:Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    .line 75
    :cond_2
    iget p2, p0, Lcom/miui/charge/MiuiChargeController;->mCurrentUser:I

    .line 78
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 80
    move-result v1

    .line 83
    if-eq p2, v1, :cond_3

    .line 84
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 86
    move-result p1

    .line 89
    iput p1, p0, Lcom/miui/charge/MiuiChargeController;->mCurrentUser:I

    .line 90
    return-void

    .line 92
    :cond_3
    iput-boolean p1, p0, Lcom/miui/charge/MiuiChargeController;->mFastChargeChanged:Z

    .line 93
    iget-boolean p1, p0, Lcom/miui/charge/MiuiChargeController;->mIsFastCharge:Z

    .line 95
    if-eqz p1, :cond_4

    .line 97
    const-string p1, "MiuiChargeController"

    .line 99
    const-string p2, "onContentChanged\uff1aisSupportDoubleCharge"

    .line 101
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/miui/charge/MiuiChargeController;->checkBatteryStatus(Lcom/miui/charge/MiuiBatteryStatus;Z)V

    .line 108
    :cond_4
    return-void
    .line 111
.end method

.method public final onStartedGoingToSleep()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/charge/MiuiChargeController;->mScreenOn:Z

    .line 3
    invoke-static {}, Lcom/miui/charge/MiuiChargeController;->shouldShowChargeAnim()Z

    .line 5
    move-result v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p0, v0}, Lcom/miui/charge/MiuiChargeController;->showMissedTip(Z)V

    .line 11
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/miui/charge/MiuiChargeController;->prepareChargeAnimation()V

    .line 20
    :cond_0
    const-string v0, "dismiss_for_screen_off"

    .line 23
    invoke-virtual {p0, v0}, Lcom/miui/charge/MiuiChargeController;->dismissChargeAnimation(Ljava/lang/String;)V

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    .line 28
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController;->mScreenOffRunnable:Lcom/miui/charge/MiuiChargeController$5;

    .line 30
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    return-void
    .line 35
.end method

.method public final onStartedWakingUp()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/charge/MiuiChargeController;->mScreenOn:Z

    .line 3
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda1;

    .line 7
    invoke-direct {v1, p0}, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda1;-><init>(Lcom/miui/charge/MiuiChargeController;)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    return-void
    .line 15
.end method

.method public final prepareChargeAnimation()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/miui/charge/MiuiChargeController;->shouldShowChargeAnim()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget-boolean v0, p0, Lcom/miui/charge/MiuiChargeController;->mShowNewAnimation:Z

    .line 13
    if-eqz v0, :cond_2

    .line 15
    :cond_1
    const-string v0, "MiuiChargeController"

    .line 17
    const-string v1, "prepareChargeAnimation: init mChargeAnimationView "

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 24
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeController;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {v0, v1}, Lcom/miui/charge/container/MiuiChargeAnimationView;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 31
    invoke-virtual {v0, p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->setChargeAnimationListener(Lcom/miui/charge/view/IChargeAnimationListener;)V

    .line 33
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 36
    new-instance v1, Lcom/miui/charge/MiuiChargeController$4;

    .line 38
    invoke-direct {v1, p0}, Lcom/miui/charge/MiuiChargeController$4;-><init>(Lcom/miui/charge/MiuiChargeController;)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 46
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 48
    iget v1, v1, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 50
    invoke-virtual {v0, v1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->setProgress(I)V

    .line 52
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 55
    iget-boolean v1, p0, Lcom/miui/charge/MiuiChargeController;->mClickShowChargeUI:Z

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/miui/charge/MiuiChargeController;->switchChargeItemViewAnimation(Lcom/miui/charge/MiuiBatteryStatus;Z)V

    .line 59
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 62
    invoke-virtual {v0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->addChargeView()V

    .line 64
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 67
    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 70
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 75
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 78
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 80
    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/miui/charge/MiuiChargeController;->mFastChargeChanged:Z

    .line 84
    iput-boolean v0, p0, Lcom/miui/charge/MiuiChargeController;->mShowNewAnimation:Z

    .line 86
    return-void
    .line 88
.end method

.method public final showChargeAnimation(I)V
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, " showChargeAnimation: wireState="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "MiuiChargeController"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, Lcom/miui/charge/MiuiChargeController;->shouldShowChargeAnim()Z

    .line 21
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    return-void

    .line 27
    :cond_0
    iget-boolean v0, p0, Lcom/miui/charge/MiuiChargeController;->mPendingChargeAnimation:Z

    .line 28
    if-eqz v0, :cond_1

    .line 30
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    .line 33
    iget-object v2, p0, Lcom/miui/charge/MiuiChargeController;->mScreenOffRunnable:Lcom/miui/charge/MiuiChargeController$5;

    .line 35
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    iget-boolean v3, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    .line 40
    const/4 v4, 0x1

    .line 42
    if-eqz v3, :cond_3

    .line 43
    iget v0, p0, Lcom/miui/charge/MiuiChargeController;->mWireState:I

    .line 45
    if-eq v0, p1, :cond_2

    .line 47
    iput-boolean v4, p0, Lcom/miui/charge/MiuiChargeController;->mPendingChargeAnimation:Z

    .line 49
    const-string p1, "changeChargeAnimation"

    .line 51
    invoke-virtual {p0, p1}, Lcom/miui/charge/MiuiChargeController;->dismissChargeAnimation(Ljava/lang/String;)V

    .line 53
    :cond_2
    return-void

    .line 56
    :cond_3
    invoke-virtual {p0}, Lcom/miui/charge/MiuiChargeController;->prepareChargeAnimation()V

    .line 57
    iput-boolean v4, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    .line 60
    iget-boolean p1, p0, Lcom/miui/charge/MiuiChargeController;->mClickShowChargeUI:Z

    .line 62
    if-nez p1, :cond_4

    .line 64
    iput-boolean v4, p0, Lcom/miui/charge/MiuiChargeController;->hasShowdChargeAnim:Z

    .line 66
    :cond_4
    iget-boolean p1, p0, Lcom/miui/charge/MiuiChargeController;->mIsFoldChargeVideo:Z

    .line 68
    const/4 v3, 0x0

    .line 70
    if-eqz p1, :cond_5

    .line 71
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mAngleSensor:Landroid/hardware/Sensor;

    .line 73
    if-eqz p1, :cond_5

    .line 75
    iget-object v5, p0, Lcom/miui/charge/MiuiChargeController;->mSensorEventListener:Lcom/miui/charge/MiuiChargeController$7;

    .line 77
    iget-object v6, p0, Lcom/miui/charge/MiuiChargeController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 79
    invoke-virtual {v6, v5, p1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 81
    :cond_5
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 84
    iget-boolean v5, p0, Lcom/miui/charge/MiuiChargeController;->mScreenOn:Z

    .line 86
    iget-boolean v6, p0, Lcom/miui/charge/MiuiChargeController;->mClickShowChargeUI:Z

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v8, "startChargeAnimation: mInitScreenOn "

    .line 95
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    const-string v8, ", clickShow="

    .line 104
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v7

    .line 115
    const-string v8, "MiuiChargeAnimationView"

    .line 116
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-boolean v7, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mStartingDismissAnim:Z

    .line 121
    if-eqz v7, :cond_6

    .line 123
    iget-object v7, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 125
    if-eqz v7, :cond_6

    .line 127
    const-string v9, "CANCEL_FROM_START"

    .line 129
    iput-object v9, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissReason:Ljava/lang/String;

    .line 131
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    .line 133
    :cond_6
    iget-object v7, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

    .line 136
    iget-object v7, v7, Lmiui/stub/MiuiStub$13;->this$0:Lmiui/stub/MiuiStub;

    .line 138
    iget-object v7, v7, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 140
    iget-object v7, v7, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mKeyguardUpdateMonitorInjector:Ldagger/Lazy;

    .line 142
    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 144
    move-result-object v7

    .line 147
    check-cast v7, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 148
    invoke-virtual {v7, v4, v3}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->handleChargeAnimationShowingChanged(ZZ)V

    .line 150
    const/high16 v7, 0x3f800000    # 1.0f

    .line 153
    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 155
    iget-object v9, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    .line 158
    const/4 v10, 0x0

    .line 160
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 161
    sget-object v9, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 164
    iget v9, v9, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 166
    iput v9, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWireState:I

    .line 168
    const/16 v11, 0xa

    .line 170
    if-ne v9, v11, :cond_8

    .line 172
    iget-boolean v9, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mSupportWaveChargeAnimation:Z

    .line 174
    if-nez v9, :cond_8

    .line 176
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 178
    move-result-object v9

    .line 181
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 182
    move-result-object v9

    .line 185
    const-string v11, "accelerometer_rotation"

    .line 186
    invoke-static {v9, v11, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 188
    move-result v9

    .line 191
    if-nez v9, :cond_7

    .line 192
    move v9, v4

    .line 194
    goto :goto_0

    .line 195
    :cond_7
    move v9, v3

    .line 196
    :goto_0
    if-nez v9, :cond_8

    .line 197
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportParticleChargeAnimation()Z

    .line 199
    move-result v9

    .line 202
    if-nez v9, :cond_8

    .line 203
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 205
    move-result-object v9

    .line 208
    invoke-static {v9}, Lcom/miui/utils/configs/MiuiConfigs;->isFoldLargeScreenAndNotPad(Landroid/content/Context;)Z

    .line 209
    move-result v9

    .line 212
    if-nez v9, :cond_8

    .line 213
    move v9, v4

    .line 215
    goto :goto_1

    .line 216
    :cond_8
    move v9, v3

    .line 217
    :goto_1
    if-eqz v9, :cond_b

    .line 218
    iget-object v9, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mOrientationListener:Lcom/miui/charge/container/MiuiChargeAnimationView$1;

    .line 220
    if-eqz v9, :cond_c

    .line 222
    iget-object v9, v9, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mSensor:Landroid/hardware/Sensor;

    .line 224
    if-eqz v9, :cond_9

    .line 226
    move v9, v4

    .line 228
    goto :goto_2

    .line 229
    :cond_9
    move v9, v3

    .line 230
    :goto_2
    if-eqz v9, :cond_c

    .line 231
    const-string v9, "enable orientation sensor"

    .line 233
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v8, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mOrientationListener:Lcom/miui/charge/container/MiuiChargeAnimationView$1;

    .line 238
    iget-object v9, v8, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mSensor:Landroid/hardware/Sensor;

    .line 240
    if-nez v9, :cond_a

    .line 242
    const-string v8, "DeviceOrientationEventListener"

    .line 244
    const-string v9, "Cannot detect sensors. Not enabled"

    .line 246
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    goto :goto_3

    .line 251
    :cond_a
    iget-boolean v11, v8, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mEnabled:Z

    .line 252
    if-nez v11, :cond_c

    .line 254
    iget v11, v8, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mRate:I

    .line 256
    iget-object v12, v8, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mSensorManager:Landroid/hardware/SensorManager;

    .line 258
    iget-object v13, v8, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mSensorEventListener:Lcom/miui/charge/OrientationEventListenerWrapper$SensorEventListenerImpl;

    .line 260
    invoke-virtual {v12, v13, v9, v11}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 262
    iput-boolean v4, v8, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mEnabled:Z

    .line 265
    const/4 v9, -0x1

    .line 267
    iput v9, v8, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mOrientation:I

    .line 268
    goto :goto_3

    .line 270
    :cond_b
    iget-object v8, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    .line 271
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 273
    iget-object v8, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    .line 276
    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 278
    :cond_c
    :goto_3
    filled-new-array {v3, v4}, [I

    .line 281
    move-result-object v8

    .line 284
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 285
    move-result-object v8

    .line 288
    new-instance v9, Lcom/miui/charge/container/MiuiChargeAnimationView$2;

    .line 289
    invoke-direct {v9, p1, v5}, Lcom/miui/charge/container/MiuiChargeAnimationView$2;-><init>(Lcom/miui/charge/container/MiuiChargeAnimationView;Z)V

    .line 291
    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 294
    filled-new-array {v3, v4}, [I

    .line 297
    move-result-object v9

    .line 300
    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 301
    move-result-object v9

    .line 304
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    .line 305
    move-result v11

    .line 308
    if-eqz v11, :cond_d

    .line 309
    const/16 v11, 0x3e8

    .line 311
    goto :goto_4

    .line 313
    :cond_d
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportParticleChargeAnimation()Z

    .line 314
    move-result v11

    .line 317
    if-eqz v11, :cond_e

    .line 318
    const/16 v11, 0x514

    .line 320
    goto :goto_4

    .line 322
    :cond_e
    move v11, v3

    .line 323
    :goto_4
    int-to-long v11, v11

    .line 324
    invoke-virtual {v9, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 325
    new-instance v11, Lcom/miui/charge/container/MiuiChargeAnimationView$3;

    .line 328
    invoke-direct {v11, p1}, Lcom/miui/charge/container/MiuiChargeAnimationView$3;-><init>(Lcom/miui/charge/container/MiuiChargeAnimationView;)V

    .line 330
    invoke-virtual {v9, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 333
    new-instance v11, Landroid/animation/AnimatorSet;

    .line 336
    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 338
    iput-object v11, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 341
    const-wide/16 v12, 0x320

    .line 343
    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 345
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportParticleChargeAnimation()Z

    .line 348
    move-result v11

    .line 351
    if-eqz v11, :cond_f

    .line 352
    iget-object v11, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 354
    new-instance v12, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 356
    invoke-direct {v12}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 358
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 361
    goto :goto_5

    .line 364
    :cond_f
    iget-object v11, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 365
    iget-object v12, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    .line 367
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 369
    :goto_5
    iget-object v11, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 372
    new-instance v12, Lcom/miui/charge/container/MiuiChargeAnimationView$4;

    .line 374
    invoke-direct {v12, p1}, Lcom/miui/charge/container/MiuiChargeAnimationView$4;-><init>(Lcom/miui/charge/container/MiuiChargeAnimationView;)V

    .line 376
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 379
    iget-object v11, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 382
    filled-new-array {v8, v9}, [Landroid/animation/Animator;

    .line 384
    move-result-object v8

    .line 387
    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 388
    iget-object v8, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 391
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 393
    iget-object v8, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    .line 396
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    new-instance v9, Ljava/lang/StringBuilder;

    .line 401
    const-string/jumbo v11, "startContainerAnimation: screenOn "

    .line 403
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    move-result-object v9

    .line 415
    const-string v11, "MiuiChargeContainerView"

    .line 416
    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v8, v8, Lcom/miui/charge/container/MiuiChargeContainerView;->mChargeView:Lcom/miui/charge/container/IChargeView;

    .line 421
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    new-instance v9, Ljava/lang/StringBuilder;

    .line 426
    const-string/jumbo v11, "startAnimation: mInitScreenOn "

    .line 428
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    move-result-object v9

    .line 440
    const-string v11, "IChargeView"

    .line 441
    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iput-boolean v5, v8, Lcom/miui/charge/container/IChargeView;->mInitScreenOn:Z

    .line 446
    sget-object v5, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 448
    iget v9, v5, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 450
    iput v9, v8, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 452
    iget v5, v5, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 454
    iput v5, v8, Lcom/miui/charge/container/IChargeView;->mChargeSpeed:I

    .line 456
    iget-object v5, v8, Lcom/miui/charge/container/IChargeView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 458
    if-eqz v5, :cond_10

    .line 460
    iget-boolean v9, v8, Lcom/miui/charge/container/IChargeView;->mStartingDismissAnim:Z

    .line 462
    if-eqz v9, :cond_10

    .line 464
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 466
    :cond_10
    iput-boolean v3, v8, Lcom/miui/charge/container/IChargeView;->mStartingDismissAnim:Z

    .line 469
    iget-boolean v5, v8, Lcom/miui/charge/container/IChargeView;->mInitScreenOn:Z

    .line 471
    if-eqz v5, :cond_11

    .line 473
    move v5, v10

    .line 475
    goto :goto_6

    .line 476
    :cond_11
    move v5, v7

    .line 477
    :goto_6
    invoke-virtual {v8, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 478
    invoke-virtual {v8}, Lcom/miui/charge/container/IChargeView;->setViewState()V

    .line 481
    invoke-virtual {v8, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 484
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 487
    invoke-virtual {v8}, Lcom/miui/charge/container/IChargeView;->initAnimator()V

    .line 490
    iget-object v5, v8, Lcom/miui/charge/container/IChargeView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 493
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isStarted()Z

    .line 495
    move-result v5

    .line 498
    if-eqz v5, :cond_12

    .line 499
    iget-object v5, v8, Lcom/miui/charge/container/IChargeView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 501
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 503
    :cond_12
    iget-object v5, v8, Lcom/miui/charge/container/IChargeView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 506
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 508
    invoke-virtual {v8, v3}, Lcom/miui/charge/container/IChargeView;->setComponentTransparent(Z)V

    .line 511
    invoke-virtual {v8}, Lcom/miui/charge/container/IChargeView;->startAnimationOnChildView()V

    .line 514
    iget-object v5, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargePercentView:Lcom/miui/charge/view/MiuiChargePercentCountView;

    .line 517
    new-instance v8, Ljava/lang/StringBuilder;

    .line 519
    const-string/jumbo v9, "startPercentViewAnimation: "

    .line 521
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    iget v9, v5, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeSpeed:I

    .line 527
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    move-result-object v8

    .line 535
    const-string v9, "MiuiChargePercentCountView"

    .line 536
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v8, Ljava/lang/StringBuilder;

    .line 541
    const-string v11, "resetViewState: chargeSpeed= "

    .line 543
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    iget v11, v5, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeSpeed:I

    .line 548
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 550
    const-string v11, ",clickShow="

    .line 553
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    move-result-object v8

    .line 564
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget v8, v5, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeSpeed:I

    .line 568
    if-nez v8, :cond_13

    .line 570
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 572
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 575
    iget v8, v5, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateInit:I

    .line 578
    int-to-float v8, v8

    .line 580
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 581
    goto :goto_7

    .line 584
    :cond_13
    const v8, 0x3f59999a    # 0.85f

    .line 585
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 588
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 591
    iget v8, v5, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateSmall:I

    .line 594
    int-to-float v8, v8

    .line 596
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 597
    :goto_7
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    .line 600
    move-result v8

    .line 603
    if-eqz v8, :cond_15

    .line 604
    iget-object v8, v5, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    .line 606
    const/16 v9, 0x109

    .line 608
    const/16 v12, 0x66

    .line 610
    invoke-virtual {v8, v9, v12, v12}, Lcom/miui/charge/view/NumberDrawView;->setSize(III)V

    .line 612
    if-eqz v6, :cond_14

    .line 615
    const/high16 v8, -0x3d380000    # -100.0f

    .line 617
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 619
    goto :goto_8

    .line 622
    :cond_14
    const/high16 v8, -0x3d600000    # -80.0f

    .line 623
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 625
    goto :goto_8

    .line 628
    :cond_15
    iget v8, v5, Lcom/miui/charge/view/MiuiChargePercentCountView;->mLargeTextSizePx:I

    .line 629
    iget v9, v5, Lcom/miui/charge/view/MiuiChargePercentCountView;->mSmallTextSizePx:I

    .line 631
    iget v12, v5, Lcom/miui/charge/view/MiuiChargePercentCountView;->mPercentTextSizePx:I

    .line 633
    iget-object v5, v5, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    .line 635
    invoke-virtual {v5, v8, v9, v12}, Lcom/miui/charge/view/NumberDrawView;->setSize(III)V

    .line 637
    :goto_8
    iget-object v5, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeLogoView:Lcom/miui/charge/container/MiuiChargeLogoView;

    .line 640
    new-instance v8, Ljava/lang/StringBuilder;

    .line 642
    const-string/jumbo v9, "startLogoAnimation: mChargeSpeed="

    .line 644
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    iget v9, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    .line 650
    const-string v12, "MiuiChargeLogoView"

    .line 652
    invoke-static {v8, v9, v12}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 654
    sget-object v8, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 657
    iget v8, v8, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 659
    new-instance v8, Ljava/lang/StringBuilder;

    .line 661
    const-string v9, "resetLogoViewState: mChargeSpeed="

    .line 663
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 665
    iget v9, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    .line 668
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 679
    move-result-object v8

    .line 682
    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget v8, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    .line 686
    const/4 v9, 0x3

    .line 688
    const/4 v11, 0x2

    .line 689
    const/16 v12, 0x8

    .line 690
    if-eqz v8, :cond_1c

    .line 692
    if-eq v8, v4, :cond_1a

    .line 694
    if-eq v8, v11, :cond_18

    .line 696
    if-eq v8, v9, :cond_16

    .line 698
    goto/16 :goto_a

    .line 700
    :cond_16
    iget-object v8, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    .line 702
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 704
    iget-object v8, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    .line 707
    iget v12, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTipTranslateSmall:I

    .line 709
    int-to-float v12, v12

    .line 711
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 712
    iget-object v8, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 715
    invoke-virtual {v8}, Lcom/miui/charge/view/MiuiChargeTurboView;->setStrongViewInitState()V

    .line 717
    iget-object v8, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 720
    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 722
    if-eqz v6, :cond_17

    .line 725
    iget-object v5, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 727
    invoke-virtual {v5}, Lcom/miui/charge/view/MiuiChargeTurboView;->setStrongViewShowState()V

    .line 729
    goto :goto_a

    .line 732
    :cond_17
    iget-object v5, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 733
    invoke-virtual {v5}, Lcom/miui/charge/view/MiuiChargeTurboView;->setStrongViewInitState()V

    .line 735
    goto :goto_a

    .line 738
    :cond_18
    iget-object v8, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    .line 739
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 741
    iget-object v8, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    .line 744
    iget v12, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTipTranslateSmall:I

    .line 746
    int-to-float v12, v12

    .line 748
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 749
    iget-object v8, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 752
    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 754
    if-eqz v6, :cond_19

    .line 757
    iget-object v5, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 759
    invoke-virtual {v5}, Lcom/miui/charge/view/MiuiChargeTurboView;->setViewShowState()V

    .line 761
    goto :goto_a

    .line 764
    :cond_19
    iget-object v5, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 765
    invoke-virtual {v5}, Lcom/miui/charge/view/MiuiChargeTurboView;->setViewInitState()V

    .line 767
    goto :goto_a

    .line 770
    :cond_1a
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    .line 771
    move-result v6

    .line 774
    if-eqz v6, :cond_1b

    .line 775
    iget-object v6, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    .line 777
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 779
    goto :goto_9

    .line 782
    :cond_1b
    iget-object v6, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    .line 783
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 785
    :goto_9
    iget-object v6, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    .line 788
    iget v8, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTipTranslateSmall:I

    .line 790
    int-to-float v8, v8

    .line 792
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 793
    iget-object v6, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 796
    invoke-virtual {v6}, Lcom/miui/charge/view/MiuiChargeTurboView;->setViewInitState()V

    .line 798
    iget-object v5, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 801
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 803
    goto :goto_a

    .line 806
    :cond_1c
    iget-object v6, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    .line 807
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 809
    iget-object v6, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    .line 812
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 814
    iget-object v6, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 817
    invoke-virtual {v6}, Lcom/miui/charge/view/MiuiChargeTurboView;->setViewInitState()V

    .line 819
    iget-object v5, v5, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 822
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 824
    :goto_a
    iget-object p1, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeIconView:Lcom/miui/charge/container/MiuiChargeIconView;

    .line 827
    if-eqz p1, :cond_24

    .line 829
    new-instance v5, Ljava/lang/StringBuilder;

    .line 831
    const-string/jumbo v6, "startLightningAnimation: mChargeSpeed="

    .line 833
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 836
    iget v6, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mChargeSpeed:I

    .line 839
    const-string v8, "MiuiChargeIconView"

    .line 841
    invoke-static {v5, v6, v8}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 843
    sget-object v5, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 846
    iget v5, v5, Lcom/miui/charge/MiuiBatteryStatus;->carChargeMode:I

    .line 848
    if-ne v5, v4, :cond_1d

    .line 850
    move v3, v4

    .line 852
    :cond_1d
    iput-boolean v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mIsCarMode:Z

    .line 853
    new-instance v3, Ljava/lang/StringBuilder;

    .line 855
    const-string v5, "resetLightingViewState: mChargeSpeed="

    .line 857
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 859
    iget v5, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mChargeSpeed:I

    .line 862
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 864
    const-string v5, ",mIsCarMode="

    .line 867
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    iget-boolean v5, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mIsCarMode:Z

    .line 872
    invoke-static {v3, v5, v8}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 874
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 877
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 879
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 882
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 884
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 887
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 889
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    .line 892
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 894
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    .line 897
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 899
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    .line 902
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 904
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 907
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 909
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 912
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 914
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 917
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 919
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    .line 922
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 924
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    .line 927
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 929
    iget-boolean v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mIsCarMode:Z

    .line 932
    if-eqz v3, :cond_1e

    .line 934
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    .line 936
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 938
    iget-object p1, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    .line 941
    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 943
    goto/16 :goto_c

    .line 946
    :cond_1e
    iget v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mChargeSpeed:I

    .line 948
    if-ne v4, v3, :cond_1f

    .line 950
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    .line 952
    move-result v3

    .line 955
    if-nez v3, :cond_22

    .line 956
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 958
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 960
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 963
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 965
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 968
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 970
    goto :goto_b

    .line 973
    :cond_1f
    if-ne v11, v3, :cond_20

    .line 974
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    .line 976
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 978
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    .line 981
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 983
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    .line 986
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 988
    goto :goto_b

    .line 991
    :cond_20
    if-ne v9, v3, :cond_21

    .line 992
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 994
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 996
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 999
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1001
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 1004
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1006
    goto :goto_b

    .line 1009
    :cond_21
    if-nez v3, :cond_22

    .line 1010
    sget-object v3, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 1012
    iget v3, v3, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 1014
    const/16 v4, 0xa

    .line 1016
    if-ne v3, v4, :cond_22

    .line 1018
    const-string v3, "resetIconViewState: mWireState=WIRELESS"

    .line 1020
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 1025
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1027
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 1030
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1032
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 1035
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1037
    :cond_22
    :goto_b
    invoke-static {}, Lcom/miui/charge/container/MiuiChargeIconView;->isDoubleChargeShow()Z

    .line 1040
    move-result v3

    .line 1043
    if-eqz v3, :cond_23

    .line 1044
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 1046
    iget-object p1, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    .line 1048
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1050
    goto :goto_c

    .line 1053
    :cond_23
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 1054
    iget-object p1, p1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    .line 1056
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1058
    :cond_24
    :goto_c
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 1061
    invoke-virtual {p1}, Lmiui/stub/MiuiStub$3;->isDeviceInteractive()Z

    .line 1063
    move-result p1

    .line 1066
    if-nez p1, :cond_25

    .line 1067
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1069
    move-result-wide v3

    .line 1072
    const-string p1, "com.android.systemui:RAPID_CHARGE"

    .line 1073
    iget-object v5, p0, Lcom/miui/charge/MiuiChargeController;->mPowerManager:Landroid/os/PowerManager;

    .line 1075
    invoke-virtual {v5, v3, v4, p1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 1077
    :cond_25
    const-string p1, "mScreenOnWakeLock showChargeAnimation: acquire"

    .line 1080
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 1085
    invoke-virtual {p1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->getAnimationDuration()I

    .line 1087
    move-result p1

    .line 1090
    int-to-long v3, p1

    .line 1091
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1092
    invoke-virtual {p1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1094
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1097
    const-string/jumbo v3, "showChargeAnimation: mScreenOn "

    .line 1099
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1102
    iget-boolean v3, p0, Lcom/miui/charge/MiuiChargeController;->mScreenOn:Z

    .line 1105
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1110
    move-result-object p1

    .line 1113
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-boolean p1, p0, Lcom/miui/charge/MiuiChargeController;->mNeedRepositionDevice:Z

    .line 1117
    if-nez p1, :cond_26

    .line 1119
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 1121
    invoke-virtual {p1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->getAnimationDuration()I

    .line 1123
    move-result p1

    .line 1126
    const/16 v1, 0x2710

    .line 1127
    if-le p1, v1, :cond_26

    .line 1129
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1131
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 1134
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->getAnimationDuration()I

    .line 1136
    move-result p0

    .line 1139
    add-int/lit16 p0, p0, -0x12c

    .line 1140
    int-to-long p0, p0

    .line 1142
    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1143
    :cond_26
    return-void
    .line 1146
.end method

.method public final showMissedTip(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "MiuiWirelessChargeSlowlyView"

    .line 3
    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mMiuiWirelessChargeSlowlyView:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    .line 7
    const/4 v2, 0x1

    .line 9
    if-nez p1, :cond_0

    .line 10
    invoke-static {}, Lcom/miui/charge/MiuiChargeController;->shouldShowChargeAnim()Z

    .line 12
    move-result p1

    .line 15
    xor-int/2addr p1, v2

    .line 16
    new-instance v3, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    .line 17
    iget-object v4, p0, Lcom/miui/charge/MiuiChargeController;->mContext:Landroid/content/Context;

    .line 19
    invoke-direct {v3, v4, p1}, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;-><init>(Landroid/content/Context;Z)V

    .line 21
    iput-object v3, p0, Lcom/miui/charge/MiuiChargeController;->mMiuiWirelessChargeSlowlyView:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController;->mMiuiWirelessChargeSlowlyView:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    const-string/jumbo p1, "show: "

    .line 31
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 37
    iget-object v1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    .line 39
    if-nez p1, :cond_2

    .line 41
    const p1, 0x7f0d01bc    # @layout/miui_keyguard_wireless_charge_slowly 'res/layout/miui_keyguard_wireless_charge_slowly.xml'

    .line 43
    invoke-static {v1, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    move-result-object p1

    .line 49
    const v3, 0x7f0a0ac3    # @id/wireless_charge_picture

    .line 50
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v3

    .line 56
    check-cast v3, Landroid/widget/ImageView;

    .line 57
    iput-object v3, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mImageView:Landroid/widget/ImageView;

    .line 59
    const v3, 0x7f0a0ac4    # @id/wireless_charge_slowly_video

    .line 61
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v3

    .line 67
    check-cast v3, Landroid/view/TextureView;

    .line 68
    iget-object v4, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mSurfaceTextureListener:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;

    .line 70
    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 72
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 75
    const v4, 0x7f140896    # @style/wireless_charge_slowly_dialog

    .line 77
    invoke-direct {v3, v1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 80
    const/4 v4, 0x0

    .line 83
    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)V

    .line 84
    invoke-virtual {v3, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    .line 87
    iget-boolean p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mTipOnlyOnce:Z

    .line 90
    if-eqz p1, :cond_1

    .line 92
    new-instance v0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$1;

    .line 94
    invoke-direct {v0, p0}, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$1;-><init>(Lcom/miui/charge/MiuiWirelessChargeSlowlyView;)V

    .line 96
    :cond_1
    const p1, 0x7f130d22    # @string/wireless_charge_dialog_cancel 'Got it'

    .line 99
    invoke-virtual {v3, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 102
    invoke-virtual {v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 105
    move-result-object p1

    .line 108
    iput-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 109
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 111
    move-result-object p1

    .line 114
    const/16 v0, 0x7da

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 117
    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 120
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 122
    move-result-object p1

    .line 125
    invoke-virtual {p1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 126
    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 129
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 131
    move-result-object p1

    .line 134
    const v0, 0x7f080c38    # @drawable/dialog_bg_light 'res/drawable-xxhdpi/dialog_bg_light.9.png'

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 138
    :cond_2
    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 141
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 143
    iget-object p0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 146
    const/4 p1, -0x2

    .line 148
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 149
    move-result-object p0

    .line 152
    if-eqz p0, :cond_5

    .line 153
    const/high16 p1, -0x1000000

    .line 155
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 157
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 160
    move-result-object p1

    .line 163
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 164
    move-result-object v0

    .line 167
    const v1, 0x7f07128c    # @dimen/wireless_chagre_slowly_dialog_button_height '60.0dp'

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 171
    move-result v0

    .line 174
    float-to-int v0, v0

    .line 175
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    goto :goto_0

    .line 181
    :cond_3
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    .line 182
    iget-object v2, p0, Lcom/miui/charge/MiuiChargeController;->mShowSlowlyRunnable:Lcom/miui/charge/MiuiChargeController$5;

    .line 184
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController;->mMiuiWirelessChargeSlowlyView:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    .line 189
    if-eqz p0, :cond_5

    .line 191
    const-string p1, "dismiss: "

    .line 193
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 198
    if-eqz p1, :cond_4

    .line 200
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 202
    :cond_4
    iput-object v0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 205
    :cond_5
    :goto_0
    return-void
    .line 207
.end method

.method public final switchChargeItemViewAnimation(Lcom/miui/charge/MiuiBatteryStatus;Z)V
    .locals 13

    .line 1
    iget v0, p1, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 2
    iget v1, p1, Lcom/miui/charge/MiuiBatteryStatus;->chargeDeviceType:I

    .line 4
    invoke-static {v0, v1}, Lcom/miui/charge/ChargeUtils;->getChargeSpeed(II)I

    .line 6
    move-result v0

    .line 9
    iget v1, p0, Lcom/miui/charge/MiuiChargeController;->mChargeSpeed:I

    .line 10
    if-ne v1, v0, :cond_0

    .line 12
    iget-boolean v1, p0, Lcom/miui/charge/MiuiChargeController;->mIsFastCharge:Z

    .line 14
    if-nez v1, :cond_0

    .line 16
    if-eqz p2, :cond_12

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 20
    if-eqz v1, :cond_12

    .line 22
    const-string/jumbo v1, "switchChargeItemViewAnimation: "

    .line 24
    const-string v2, ",chargeDeviceType="

    .line 27
    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    move-result-object v1

    .line 32
    iget p1, p1, Lcom/miui/charge/MiuiBatteryStatus;->chargeDeviceType:I

    .line 33
    const-string v2, "MiuiChargeController"

    .line 35
    invoke-static {v1, p1, v2}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 37
    iput v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeSpeed:I

    .line 40
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo v1, "switchChargeItemViewAnimation: , clickShow="

    .line 49
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    const-string p2, " chargeSpeed="

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 69
    const-string p2, "MiuiChargeAnimationView"

    .line 70
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v1, "switchContainerViewAnimation: chargeSpeed="

    .line 82
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p2

    .line 94
    const-string v1, "MiuiChargeContainerView"

    .line 95
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p1, Lcom/miui/charge/container/MiuiChargeContainerView;->mChargeView:Lcom/miui/charge/container/IChargeView;

    .line 100
    invoke-virtual {p1, v0}, Lcom/miui/charge/container/IChargeView;->switchContainerViewAnimation(I)V

    .line 102
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargePercentView:Lcom/miui/charge/view/MiuiChargePercentCountView;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v1, "switchPercentViewAnimation: "

    .line 112
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p2

    .line 124
    const-string v1, "MiuiChargePercentCountView"

    .line 125
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput v0, p1, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeSpeed:I

    .line 130
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    .line 132
    move-result p2

    .line 135
    const/4 v2, 0x1

    .line 136
    const/4 v3, 0x0

    .line 137
    const/4 v4, 0x2

    .line 138
    if-eqz p2, :cond_3

    .line 139
    new-instance p2, Ljava/lang/StringBuilder;

    .line 141
    const-string/jumbo v5, "startWaveTextAnimation: chargeSpeed= "

    .line 143
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    iget v5, p1, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeSpeed:I

    .line 149
    invoke-static {p2, v5, v1}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 151
    sget-object p2, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    .line 154
    new-array v1, v4, [F

    .line 156
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getAlpha()F

    .line 158
    move-result v5

    .line 161
    aput v5, v1, v3

    .line 162
    const/high16 v5, 0x3f800000    # 1.0f

    .line 164
    aput v5, v1, v2

    .line 166
    invoke-static {p2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 168
    move-result-object p2

    .line 171
    filled-new-array {p2}, [Landroid/animation/PropertyValuesHolder;

    .line 172
    move-result-object p2

    .line 175
    invoke-static {p1, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 176
    move-result-object p2

    .line 179
    const-wide/16 v5, 0x320

    .line 180
    invoke-virtual {p2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 182
    move-result-object p2

    .line 185
    iget-object v1, p1, Lcom/miui/charge/view/MiuiChargePercentCountView;->mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    .line 186
    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 188
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    .line 191
    move-result v1

    .line 194
    if-eqz v1, :cond_1

    .line 195
    const/16 v1, 0x3e8

    .line 197
    goto :goto_0

    .line 199
    :cond_1
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportParticleChargeAnimation()Z

    .line 200
    move-result v1

    .line 203
    if-eqz v1, :cond_2

    .line 204
    const/16 v1, 0x514

    .line 206
    goto :goto_0

    .line 208
    :cond_2
    move v1, v3

    .line 209
    :goto_0
    int-to-long v5, v1

    .line 210
    invoke-virtual {p2, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 211
    new-instance v1, Lcom/miui/charge/view/MiuiChargePercentCountView$2;

    .line 214
    invoke-direct {v1, p1, v2}, Lcom/miui/charge/view/MiuiChargePercentCountView$2;-><init>(Lcom/miui/charge/view/MiuiChargePercentCountView;I)V

    .line 216
    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 219
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    .line 222
    goto :goto_1

    .line 225
    :cond_3
    invoke-virtual {p1}, Lcom/miui/charge/view/MiuiChargePercentCountView;->switchAnimation()V

    .line 226
    :goto_1
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeLogoView:Lcom/miui/charge/container/MiuiChargeLogoView;

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    .line 234
    const-string/jumbo v1, "switchLogoAnimation: mChargeSpeed="

    .line 236
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    move-result-object p2

    .line 248
    const-string v1, "MiuiChargeLogoView"

    .line 249
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iput v0, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    .line 254
    sget-object p2, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 256
    iget p2, p2, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    .line 260
    const-string/jumbo v5, "switchChargeLogo: mChargeSpeed="

    .line 262
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    iget v5, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    .line 268
    invoke-static {p2, v5, v1}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 270
    iget-object p2, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 273
    if-eqz p2, :cond_4

    .line 275
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 277
    :cond_4
    iput v3, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTipTranslationY:I

    .line 280
    iput v3, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTipAlpha:I

    .line 282
    iput v3, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mTurboViewTranslationY:I

    .line 284
    iput v3, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mTurboViewAlpha:I

    .line 286
    iget p2, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    .line 288
    const/4 v1, 0x3

    .line 290
    if-ne v2, p2, :cond_5

    .line 291
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    .line 293
    move-result p2

    .line 296
    if-nez p2, :cond_5

    .line 297
    iget-object p2, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    .line 299
    const v5, 0x7f130a21    # @string/rapid_charge_mode_tip 'Quick charge'

    .line 301
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 304
    iget p2, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTipTranslateSmall:I

    .line 307
    iput p2, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTipTranslationY:I

    .line 309
    iput v2, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTipAlpha:I

    .line 311
    goto :goto_2

    .line 313
    :cond_5
    iget p2, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    .line 314
    if-eq v4, p2, :cond_6

    .line 316
    if-ne v1, p2, :cond_7

    .line 318
    :cond_6
    iget p2, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTipTranslateSmall:I

    .line 320
    iput p2, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mTurboViewTranslationY:I

    .line 322
    iput v2, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mTurboViewAlpha:I

    .line 324
    :cond_7
    :goto_2
    sget-object p2, Landroid/widget/RelativeLayout;->TRANSLATION_Y:Landroid/util/Property;

    .line 326
    new-array v5, v4, [F

    .line 328
    iget-object v6, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    .line 330
    invoke-virtual {v6}, Landroid/widget/TextView;->getTranslationY()F

    .line 332
    move-result v6

    .line 335
    aput v6, v5, v3

    .line 336
    iget v6, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTipTranslationY:I

    .line 338
    int-to-float v6, v6

    .line 340
    aput v6, v5, v2

    .line 341
    invoke-static {p2, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 343
    move-result-object p2

    .line 346
    sget-object v5, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 347
    new-array v6, v4, [F

    .line 349
    iget-object v7, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    .line 351
    invoke-virtual {v7}, Landroid/widget/TextView;->getAlpha()F

    .line 353
    move-result v7

    .line 356
    aput v7, v6, v3

    .line 357
    iget v7, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTipAlpha:I

    .line 359
    int-to-float v7, v7

    .line 361
    aput v7, v6, v2

    .line 362
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 364
    move-result-object v5

    .line 367
    iget-object v6, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    .line 368
    filled-new-array {v5, p2}, [Landroid/animation/PropertyValuesHolder;

    .line 370
    move-result-object p2

    .line 373
    invoke-static {v6, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 374
    move-result-object p2

    .line 377
    const-wide/16 v5, 0x1f4

    .line 378
    invoke-virtual {p2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 380
    move-result-object p2

    .line 383
    iget-object v7, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    .line 384
    invoke-virtual {p2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 386
    sget-object v7, Landroid/widget/RelativeLayout;->TRANSLATION_Y:Landroid/util/Property;

    .line 389
    new-array v8, v4, [F

    .line 391
    iget-object v9, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 393
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getTranslationY()F

    .line 395
    move-result v9

    .line 398
    aput v9, v8, v3

    .line 399
    iget v9, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mTurboViewTranslationY:I

    .line 401
    int-to-float v9, v9

    .line 403
    aput v9, v8, v2

    .line 404
    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 406
    move-result-object v7

    .line 409
    sget-object v8, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 410
    new-array v9, v4, [F

    .line 412
    iget-object v10, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 414
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getAlpha()F

    .line 416
    move-result v10

    .line 419
    aput v10, v9, v3

    .line 420
    iget v10, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mTurboViewAlpha:I

    .line 422
    int-to-float v10, v10

    .line 424
    aput v10, v9, v2

    .line 425
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 427
    move-result-object v8

    .line 430
    iget-object v9, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 431
    filled-new-array {v8, v7}, [Landroid/animation/PropertyValuesHolder;

    .line 433
    move-result-object v7

    .line 436
    invoke-static {v9, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 437
    move-result-object v7

    .line 440
    const-wide/16 v8, 0xfa

    .line 441
    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 443
    move-result-object v7

    .line 446
    iget-object v8, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    .line 447
    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 449
    new-instance v8, Lcom/miui/charge/container/MiuiChargeLogoView$1;

    .line 452
    invoke-direct {v8, p1}, Lcom/miui/charge/container/MiuiChargeLogoView$1;-><init>(Lcom/miui/charge/container/MiuiChargeLogoView;)V

    .line 454
    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 457
    new-instance v8, Landroid/animation/AnimatorSet;

    .line 460
    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 462
    iput-object v8, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 465
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    .line 467
    move-result v9

    .line 470
    const/16 v10, 0x320

    .line 471
    if-eqz v9, :cond_8

    .line 473
    move v9, v10

    .line 475
    goto :goto_3

    .line 476
    :cond_8
    move v9, v3

    .line 477
    :goto_3
    int-to-long v11, v9

    .line 478
    invoke-virtual {v8, v11, v12}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 479
    iget-object v8, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 482
    filled-new-array {p2, v7}, [Landroid/animation/Animator;

    .line 484
    move-result-object p2

    .line 487
    invoke-virtual {v8, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 488
    iget-object p1, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 491
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 493
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeIconView:Lcom/miui/charge/container/MiuiChargeIconView;

    .line 496
    if-eqz p0, :cond_12

    .line 498
    const-string/jumbo p1, "switchLightningAnimation: mChargeSpeed="

    .line 500
    const-string p2, "MiuiChargeIconView"

    .line 503
    invoke-static {p1, v0, p2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 505
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mChargeSpeed:I

    .line 508
    sget-object p1, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 510
    iget p1, p1, Lcom/miui/charge/MiuiBatteryStatus;->carChargeMode:I

    .line 512
    if-ne p1, v2, :cond_9

    .line 514
    move p1, v2

    .line 516
    goto :goto_4

    .line 517
    :cond_9
    move p1, v3

    .line 518
    :goto_4
    iput-boolean p1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIsCarMode:Z

    .line 519
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 521
    if-eqz p1, :cond_a

    .line 523
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 525
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 528
    const-string/jumbo v0, "switchChargeLightning: mChargeSpeed="

    .line 530
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 533
    iget v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mChargeSpeed:I

    .line 536
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 538
    const-string v0, ",mIsCarMode="

    .line 541
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget-boolean v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIsCarMode:Z

    .line 546
    invoke-static {p1, v0, p2}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 548
    iput v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleScaleXY:I

    .line 551
    iput v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleAlpha:I

    .line 553
    iput v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleScaleXY:I

    .line 555
    iput v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleAlpha:I

    .line 557
    iput v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mYellowDoubleScaleXY:I

    .line 559
    iput v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mYellowDoubleAlpha:I

    .line 561
    iput v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconScaleXY:I

    .line 563
    iput v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconAlpha:I

    .line 565
    iget-boolean p1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIsCarMode:Z

    .line 567
    if-eqz p1, :cond_b

    .line 569
    iput v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconScaleXY:I

    .line 571
    iput v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconAlpha:I

    .line 573
    goto :goto_5

    .line 575
    :cond_b
    iget p1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mChargeSpeed:I

    .line 576
    if-ne v2, p1, :cond_c

    .line 578
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    .line 580
    move-result p1

    .line 583
    if-nez p1, :cond_c

    .line 584
    iput v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleScaleXY:I

    .line 586
    iput v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleAlpha:I

    .line 588
    goto :goto_5

    .line 590
    :cond_c
    iget p1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mChargeSpeed:I

    .line 591
    if-ne v4, p1, :cond_d

    .line 593
    iput v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleScaleXY:I

    .line 595
    iput v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleAlpha:I

    .line 597
    goto :goto_5

    .line 599
    :cond_d
    if-ne v1, p1, :cond_e

    .line 600
    iput v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mYellowDoubleScaleXY:I

    .line 602
    iput v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mYellowDoubleAlpha:I

    .line 604
    goto :goto_5

    .line 606
    :cond_e
    if-nez p1, :cond_f

    .line 607
    sget-object p1, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 609
    iget p1, p1, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 611
    const/16 v0, 0xa

    .line 613
    if-ne p1, v0, :cond_f

    .line 615
    const-string/jumbo p1, "switchChargeIcon: mWireState=WIRELESS"

    .line 617
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iput v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleScaleXY:I

    .line 623
    iput v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleAlpha:I

    .line 625
    :cond_f
    :goto_5
    invoke-static {}, Lcom/miui/charge/container/MiuiChargeIconView;->isDoubleChargeShow()Z

    .line 627
    move-result p1

    .line 630
    if-eqz p1, :cond_10

    .line 631
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 633
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    .line 635
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 637
    goto :goto_6

    .line 640
    :cond_10
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 641
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    .line 643
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 645
    :goto_6
    sget-object p1, Landroid/widget/RelativeLayout;->SCALE_X:Landroid/util/Property;

    .line 648
    new-array p2, v4, [F

    .line 650
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 652
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    .line 654
    move-result v0

    .line 657
    aput v0, p2, v3

    .line 658
    iget v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleScaleXY:I

    .line 660
    int-to-float v0, v0

    .line 662
    aput v0, p2, v2

    .line 663
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 665
    move-result-object p1

    .line 668
    sget-object p2, Landroid/widget/RelativeLayout;->SCALE_Y:Landroid/util/Property;

    .line 669
    new-array v0, v4, [F

    .line 671
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 673
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleY()F

    .line 675
    move-result v1

    .line 678
    aput v1, v0, v3

    .line 679
    iget v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleScaleXY:I

    .line 681
    int-to-float v1, v1

    .line 683
    aput v1, v0, v2

    .line 684
    invoke-static {p2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 686
    move-result-object p2

    .line 689
    sget-object v0, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 690
    new-array v1, v4, [F

    .line 692
    iget-object v7, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 694
    invoke-virtual {v7}, Landroid/widget/ImageView;->getAlpha()F

    .line 696
    move-result v7

    .line 699
    aput v7, v1, v3

    .line 700
    iget v7, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleAlpha:I

    .line 702
    int-to-float v7, v7

    .line 704
    aput v7, v1, v2

    .line 705
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 707
    move-result-object v0

    .line 710
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    .line 711
    filled-new-array {p1, p2, v0}, [Landroid/animation/PropertyValuesHolder;

    .line 713
    move-result-object p1

    .line 716
    invoke-static {v1, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 717
    move-result-object p1

    .line 720
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 721
    move-result-object p1

    .line 724
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    .line 725
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 727
    sget-object p2, Landroid/widget/RelativeLayout;->SCALE_X:Landroid/util/Property;

    .line 730
    new-array v0, v4, [F

    .line 732
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    .line 734
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleX()F

    .line 736
    move-result v1

    .line 739
    aput v1, v0, v3

    .line 740
    iget v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleScaleXY:I

    .line 742
    int-to-float v1, v1

    .line 744
    aput v1, v0, v2

    .line 745
    invoke-static {p2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 747
    move-result-object p2

    .line 750
    sget-object v0, Landroid/widget/RelativeLayout;->SCALE_Y:Landroid/util/Property;

    .line 751
    new-array v1, v4, [F

    .line 753
    iget-object v7, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    .line 755
    invoke-virtual {v7}, Landroid/widget/ImageView;->getScaleY()F

    .line 757
    move-result v7

    .line 760
    aput v7, v1, v3

    .line 761
    iget v7, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleScaleXY:I

    .line 763
    int-to-float v7, v7

    .line 765
    aput v7, v1, v2

    .line 766
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 768
    move-result-object v0

    .line 771
    sget-object v1, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 772
    new-array v7, v4, [F

    .line 774
    iget-object v8, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    .line 776
    invoke-virtual {v8}, Landroid/widget/ImageView;->getAlpha()F

    .line 778
    move-result v8

    .line 781
    aput v8, v7, v3

    .line 782
    iget v8, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleAlpha:I

    .line 784
    int-to-float v8, v8

    .line 786
    aput v8, v7, v2

    .line 787
    invoke-static {v1, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 789
    move-result-object v1

    .line 792
    iget-object v7, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    .line 793
    filled-new-array {p2, v0, v1}, [Landroid/animation/PropertyValuesHolder;

    .line 795
    move-result-object p2

    .line 798
    invoke-static {v7, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 799
    move-result-object p2

    .line 802
    invoke-virtual {p2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 803
    move-result-object p2

    .line 806
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    .line 807
    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 809
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    .line 812
    const/high16 v1, 0x40400000    # 3.0f

    .line 814
    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 816
    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 819
    sget-object v0, Landroid/widget/RelativeLayout;->SCALE_X:Landroid/util/Property;

    .line 822
    new-array v7, v4, [F

    .line 824
    iget-object v8, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 826
    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleX()F

    .line 828
    move-result v8

    .line 831
    aput v8, v7, v3

    .line 832
    iget v8, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mYellowDoubleScaleXY:I

    .line 834
    int-to-float v8, v8

    .line 836
    aput v8, v7, v2

    .line 837
    invoke-static {v0, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 839
    move-result-object v0

    .line 842
    sget-object v7, Landroid/widget/RelativeLayout;->SCALE_Y:Landroid/util/Property;

    .line 843
    new-array v8, v4, [F

    .line 845
    iget-object v9, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 847
    invoke-virtual {v9}, Landroid/widget/ImageView;->getScaleY()F

    .line 849
    move-result v9

    .line 852
    aput v9, v8, v3

    .line 853
    iget v9, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mYellowDoubleScaleXY:I

    .line 855
    int-to-float v9, v9

    .line 857
    aput v9, v8, v2

    .line 858
    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 860
    move-result-object v7

    .line 863
    sget-object v8, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 864
    new-array v9, v4, [F

    .line 866
    iget-object v11, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 868
    invoke-virtual {v11}, Landroid/widget/ImageView;->getAlpha()F

    .line 870
    move-result v11

    .line 873
    aput v11, v9, v3

    .line 874
    iget v11, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mYellowDoubleAlpha:I

    .line 876
    int-to-float v11, v11

    .line 878
    aput v11, v9, v2

    .line 879
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 881
    move-result-object v8

    .line 884
    iget-object v9, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    .line 885
    filled-new-array {v0, v7, v8}, [Landroid/animation/PropertyValuesHolder;

    .line 887
    move-result-object v0

    .line 890
    invoke-static {v9, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 891
    move-result-object v0

    .line 894
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 895
    move-result-object v0

    .line 898
    iget-object v7, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    .line 899
    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 901
    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    .line 904
    invoke-direct {v7, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 906
    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 909
    sget-object v1, Landroid/widget/RelativeLayout;->SCALE_X:Landroid/util/Property;

    .line 912
    new-array v7, v4, [F

    .line 914
    iget-object v8, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    .line 916
    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleX()F

    .line 918
    move-result v8

    .line 921
    aput v8, v7, v3

    .line 922
    iget v8, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconScaleXY:I

    .line 924
    int-to-float v8, v8

    .line 926
    aput v8, v7, v2

    .line 927
    invoke-static {v1, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 929
    move-result-object v1

    .line 932
    sget-object v7, Landroid/widget/RelativeLayout;->SCALE_Y:Landroid/util/Property;

    .line 933
    new-array v8, v4, [F

    .line 935
    iget-object v9, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    .line 937
    invoke-virtual {v9}, Landroid/widget/ImageView;->getScaleY()F

    .line 939
    move-result v9

    .line 942
    aput v9, v8, v3

    .line 943
    iget v9, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconScaleXY:I

    .line 945
    int-to-float v9, v9

    .line 947
    aput v9, v8, v2

    .line 948
    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 950
    move-result-object v7

    .line 953
    sget-object v8, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 954
    new-array v4, v4, [F

    .line 956
    iget-object v9, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    .line 958
    invoke-virtual {v9}, Landroid/widget/ImageView;->getAlpha()F

    .line 960
    move-result v9

    .line 963
    aput v9, v4, v3

    .line 964
    iget v9, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconAlpha:I

    .line 966
    int-to-float v9, v9

    .line 968
    aput v9, v4, v2

    .line 969
    invoke-static {v8, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 971
    move-result-object v2

    .line 974
    iget-object v4, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    .line 975
    filled-new-array {v1, v7, v2}, [Landroid/animation/PropertyValuesHolder;

    .line 977
    move-result-object v1

    .line 980
    invoke-static {v4, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 981
    move-result-object v1

    .line 984
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 985
    move-result-object v1

    .line 988
    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    .line 989
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 991
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 994
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 996
    iput-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 999
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    .line 1001
    move-result v4

    .line 1004
    if-eqz v4, :cond_11

    .line 1005
    move v3, v10

    .line 1007
    :cond_11
    int-to-long v3, v3

    .line 1008
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1009
    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 1012
    filled-new-array {p1, p2, v0, v1}, [Landroid/animation/Animator;

    .line 1014
    move-result-object p1

    .line 1017
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1018
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 1021
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 1023
    :cond_12
    return-void
    .line 1026
.end method
