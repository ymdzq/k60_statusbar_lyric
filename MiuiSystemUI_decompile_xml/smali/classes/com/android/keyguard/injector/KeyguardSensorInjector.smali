.class public final Lcom/android/keyguard/injector/KeyguardSensorInjector;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final LARGE_AREA_TOUCH_SENSOR:I

.field public final SCREEN_OFF_REASON:Ljava/lang/String;

.field public final SCREEN_OPEN_REASON:Ljava/lang/String;

.field public final WAKEUP_AND_SLEEP_SENSOR_NAME1:Ljava/lang/String;

.field public final WAKEUP_AND_SLEEP_SENSOR_NAME2:Ljava/lang/String;

.field public final WAKEUP_AND_SLEEP_SENSOR_XIAOMI:I

.field public final configAntiMisTouchDisabled:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentLargeAreaTouchSensorRegistered:Z

.field public mCurrentPickupSensorRegistered:Z

.field public mDeviceInteractive:Z

.field public final mDisplay:Landroid/view/Display;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsDeviceSupportLargeAreaTouch:Z

.field public final mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

.field public mKeyguardShowing:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public mLargeAreaTouchSensor:Landroid/hardware/Sensor;

.field public final mLargeAreaTouchSensorListener:Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;

.field public final mPickupSensorListener:Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mProximitySensorChangeCallback:Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager$$ExternalSyntheticLambda1;

.field public final mProximitySensorListener:Lcom/android/keyguard/injector/KeyguardSensorInjector$mProximitySensorListener$1;

.field public mProximitySensorWrapper:Lcom/miui/systemui/util/ProximitySensorWrapper;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field public final mUnregisterProximitySensorRunnable:Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;

.field public mWakeupAndSleepSensor:Landroid/hardware/Sensor;

.field public mWakeupByPickUp:Z

.field public final sIsEllipticProximity:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/PowerManager;Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/os/Handler;Lcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/UiOffloadThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 7
    iput-object p3, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mPowerManager:Landroid/os/PowerManager;

    .line 9
    iput-object p6, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 11
    iput-object p7, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mHandler:Landroid/os/Handler;

    .line 13
    iput-object p8, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 15
    iput-object p9, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 17
    const-string/jumbo p2, "sensor"

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p2

    .line 25
    check-cast p2, Landroid/hardware/SensorManager;

    .line 26
    iput-object p2, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 28
    const/4 p3, 0x1

    .line 30
    iput-boolean p3, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mKeyguardShowing:Z

    .line 31
    iput-boolean p3, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mDeviceInteractive:Z

    .line 33
    const-string p6, "keyguard_screen_on_reason"

    .line 35
    iput-object p6, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->SCREEN_OPEN_REASON:Ljava/lang/String;

    .line 37
    const-string p6, "keyguard_screen_off_reason"

    .line 39
    iput-object p6, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->SCREEN_OFF_REASON:Ljava/lang/String;

    .line 41
    const p6, 0x1fa2657

    .line 43
    iput p6, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->LARGE_AREA_TOUCH_SENSOR:I

    .line 46
    const p7, 0x1fa265c

    .line 48
    iput p7, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->WAKEUP_AND_SLEEP_SENSOR_XIAOMI:I

    .line 51
    const-string p7, "oem7 Pick Up Gesture"

    .line 53
    iput-object p7, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->WAKEUP_AND_SLEEP_SENSOR_NAME1:Ljava/lang/String;

    .line 55
    const-string p7, "pickup  Wakeup"

    .line 57
    iput-object p7, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->WAKEUP_AND_SLEEP_SENSOR_NAME2:Ljava/lang/String;

    .line 59
    new-instance p7, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;

    .line 61
    invoke-direct {p7, p0, p3}, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;-><init>(Lcom/android/keyguard/injector/KeyguardSensorInjector;I)V

    .line 63
    iput-object p7, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mUnregisterProximitySensorRunnable:Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;

    .line 66
    new-instance p7, Lcom/android/keyguard/injector/KeyguardSensorInjector$mProximitySensorListener$1;

    .line 68
    invoke-direct {p7, p0}, Lcom/android/keyguard/injector/KeyguardSensorInjector$mProximitySensorListener$1;-><init>(Lcom/android/keyguard/injector/KeyguardSensorInjector;)V

    .line 70
    iput-object p7, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mProximitySensorListener:Lcom/android/keyguard/injector/KeyguardSensorInjector$mProximitySensorListener$1;

    .line 73
    new-instance p7, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;

    .line 75
    const/4 p8, 0x0

    .line 77
    invoke-direct {p7, p0, p8}, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;-><init>(Lcom/android/keyguard/injector/KeyguardSensorInjector;I)V

    .line 78
    iput-object p7, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mPickupSensorListener:Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;

    .line 81
    new-instance p7, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;

    .line 83
    invoke-direct {p7, p0, p3}, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;-><init>(Lcom/android/keyguard/injector/KeyguardSensorInjector;I)V

    .line 85
    iput-object p7, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mLargeAreaTouchSensorListener:Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;

    .line 88
    new-instance p7, Lcom/android/keyguard/injector/KeyguardSensorInjector$mKeyguardUpdateMonitorCallback$1;

    .line 90
    invoke-direct {p7, p0}, Lcom/android/keyguard/injector/KeyguardSensorInjector$mKeyguardUpdateMonitorCallback$1;-><init>(Lcom/android/keyguard/injector/KeyguardSensorInjector;)V

    .line 92
    iput-object p7, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 97
    move-result-object p1

    .line 100
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mDisplay:Landroid/view/Display;

    .line 101
    invoke-virtual {p2, p6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 103
    move-result-object p1

    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 112
    const-string p2, "Touch Sensor"

    .line 113
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    move-result p1

    .line 118
    if-eqz p1, :cond_0

    .line 119
    move p1, p3

    .line 121
    goto :goto_0

    .line 122
    :cond_0
    move p1, p8

    .line 123
    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mIsDeviceSupportLargeAreaTouch:Z

    .line 124
    invoke-virtual {p4, p7}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 126
    iget-object p1, p5, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    const-string/jumbo p1, "ro.vendor.audio.us.proximity"

    .line 134
    invoke-static {p1, p8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 137
    move-result p1

    .line 140
    if-nez p1, :cond_2

    .line 141
    const-string/jumbo p1, "ro.audio.us.proximity"

    .line 143
    invoke-static {p1, p8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 146
    move-result p1

    .line 149
    if-eqz p1, :cond_1

    .line 150
    goto :goto_1

    .line 152
    :cond_1
    move p3, p8

    .line 153
    :cond_2
    :goto_1
    iput-boolean p3, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->sIsEllipticProximity:Z

    .line 154
    const-string p1, "config_antiMistouchDisabled"

    .line 156
    invoke-static {p1, p8}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 158
    move-result p1

    .line 161
    iput-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->configAntiMisTouchDisabled:Z

    .line 162
    return-void
    .line 164
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardSensorInjector;->unregisterProximitySensor()V

    .line 2
    return-void
    .line 5
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mDeviceInteractive:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mWakeupByPickUp:Z

    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardSensorInjector;->updatePickupSensorRegistration()V

    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardSensorInjector;->updateLargeAreaTouchSensorRegistration()V

    .line 10
    return-void
    .line 13
.end method

.method public final onStartedWakingUp()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mDeviceInteractive:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardSensorInjector;->updatePickupSensorRegistration()V

    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardSensorInjector;->updateLargeAreaTouchSensorRegistration()V

    .line 8
    return-void
    .line 11
.end method

.method public final unregisterProximitySensor()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mProximitySensorWrapper:Lcom/miui/systemui/util/ProximitySensorWrapper;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mHandler:Landroid/os/Handler;

    .line 6
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mUnregisterProximitySensorRunnable:Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mProximitySensorWrapper:Lcom/miui/systemui/util/ProximitySensorWrapper;

    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    iget-object v1, v0, Lcom/miui/systemui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    .line 18
    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v2, v0, Lcom/miui/systemui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    .line 21
    check-cast v2, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 25
    iget-object v2, v0, Lcom/miui/systemui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    .line 28
    check-cast v2, Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    iget-object v2, v0, Lcom/miui/systemui/util/ProximitySensorWrapper;->mSensorListener:Lcom/miui/systemui/util/ProximitySensorWrapper$1;

    .line 38
    iget-object v3, v0, Lcom/miui/systemui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    .line 40
    iget-object v0, v0, Lcom/miui/systemui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 42
    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mProximitySensorWrapper:Lcom/miui/systemui/util/ProximitySensorWrapper;

    .line 49
    iput-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mProximitySensorChangeCallback:Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager$$ExternalSyntheticLambda1;

    .line 51
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p0

    .line 56
    :cond_1
    :goto_0
    return-void
    .line 57
.end method

.method public final updateLargeAreaTouchSensorRegistration()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mIsDeviceSupportLargeAreaTouch:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mDeviceInteractive:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mKeyguardShowing:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    iget-boolean v3, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mCurrentLargeAreaTouchSensorRegistered:Z

    .line 19
    iget-object v4, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 21
    if-eqz v3, :cond_1

    .line 23
    if-nez v0, :cond_1

    .line 25
    iput-boolean v2, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mCurrentLargeAreaTouchSensorRegistered:Z

    .line 27
    new-instance v0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;

    .line 29
    const/4 v1, 0x3

    .line 31
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;-><init>(Lcom/android/keyguard/injector/KeyguardSensorInjector;I)V

    .line 32
    invoke-virtual {v4, v0}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 35
    goto :goto_1

    .line 38
    :cond_1
    if-nez v3, :cond_2

    .line 39
    if-eqz v0, :cond_2

    .line 41
    iput-boolean v1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mCurrentLargeAreaTouchSensorRegistered:Z

    .line 43
    new-instance v0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;

    .line 45
    const/4 v1, 0x2

    .line 47
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;-><init>(Lcom/android/keyguard/injector/KeyguardSensorInjector;I)V

    .line 48
    invoke-virtual {v4, v0}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 51
    :cond_2
    :goto_1
    return-void
    .line 54
.end method

.method public final updatePickupSensorRegistration()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mDeviceInteractive:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mKeyguardShowing:Z

    .line 8
    if-eqz v0, :cond_1

    .line 10
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mWakeupByPickUp:Z

    .line 12
    if-eqz v0, :cond_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 16
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mPickupSensorSettingsOpened:Z

    .line 18
    if-eqz v0, :cond_1

    .line 20
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, v2

    .line 24
    :goto_0
    iget-boolean v3, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mCurrentPickupSensorRegistered:Z

    .line 25
    if-eqz v3, :cond_2

    .line 27
    if-nez v0, :cond_2

    .line 29
    iput-boolean v2, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mCurrentPickupSensorRegistered:Z

    .line 31
    new-instance v0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;

    .line 33
    const/4 v1, 0x4

    .line 35
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;-><init>(Lcom/android/keyguard/injector/KeyguardSensorInjector;I)V

    .line 36
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 41
    goto :goto_1

    .line 44
    :cond_2
    if-nez v3, :cond_3

    .line 45
    if-eqz v0, :cond_3

    .line 47
    iput-boolean v1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mCurrentPickupSensorRegistered:Z

    .line 49
    new-instance v0, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;

    .line 51
    invoke-direct {v0, p0, v2}, Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;-><init>(Lcom/android/keyguard/injector/KeyguardSensorInjector;I)V

    .line 53
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 58
    :cond_3
    :goto_1
    return-void
    .line 61
.end method
