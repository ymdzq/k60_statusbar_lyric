.class public final Lcom/android/systemui/doze/DozeScreenBrightness;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public mDebugBrightnessBucket:I

.field public final mDefaultDozeBrightness:I

.field public mDevicePosture:I

.field public final mDevicePostureCallback:Lcom/android/systemui/doze/DozeScreenBrightness$1;

.field public final mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

.field public final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

.field public final mHandler:Landroid/os/Handler;

.field public mLastSensorValue:I

.field public final mLightSensorOptional:[Ljava/util/Optional;

.field public mPaused:Z

.field public mRegistered:Z

.field public final mScreenBrightnessDim:I

.field public final mScreenBrightnessMinimumDimAmountFloat:F

.field public mScreenOff:Z

.field public final mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public final mSensorToBrightness:[I

.field public final mSensorToScrimOpacity:[I

.field public mState:Lcom/android/systemui/doze/DozeMachine$State;

.field public final mSystemSettings:Lcom/android/systemui/util/settings/SystemSettingsImpl;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "debug.aod_brightness"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    return-void
    .line 8
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/util/sensors/AsyncSensorManager;[Ljava/util/Optional;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/settings/SystemSettingsImpl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mPaused:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenOff:Z

    .line 8
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    .line 11
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 13
    iput-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 15
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebugBrightnessBucket:I

    .line 17
    new-instance v0, Lcom/android/systemui/doze/DozeScreenBrightness$1;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeScreenBrightness$1;-><init>(Lcom/android/systemui/doze/DozeScreenBrightness;)V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePostureCallback:Lcom/android/systemui/doze/DozeScreenBrightness$1;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 26
    iput-object p3, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 28
    iput-object p4, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensorOptional:[Ljava/util/Optional;

    .line 30
    iput-object p10, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 32
    check-cast p10, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    .line 34
    iget p2, p10, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mCurrentDevicePosture:I

    .line 36
    iput p2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    .line 38
    iput-object p8, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 40
    iput-object p9, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 42
    iput-object p5, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 44
    iput-object p6, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mHandler:Landroid/os/Handler;

    .line 46
    iput-object p11, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 48
    iput-object p12, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSystemSettings:Lcom/android/systemui/util/settings/SystemSettingsImpl;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object p1

    .line 55
    const p2, 0x10500e1    # @android:dimen/config_viewConfigurationHandwritingSlop

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 59
    move-result p1

    .line 62
    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenBrightnessMinimumDimAmountFloat:F

    .line 63
    iget p1, p7, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->defaultDozeBrightness:I

    .line 65
    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDefaultDozeBrightness:I

    .line 67
    iget p1, p7, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->dimBrightness:I

    .line 69
    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenBrightnessDim:I

    .line 71
    iget-object p1, p7, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->screenBrightnessArray:[I

    .line 73
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToBrightness:[I

    .line 75
    iget-object p1, p7, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->dimmingScrimArray:[I

    .line 77
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToScrimOpacity:[I

    .line 79
    invoke-virtual {p10, v0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 81
    return-void
    .line 84
.end method


# virtual methods
.method public final clampToDimBrightnessForScreenOff(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    .line 6
    instance-of v1, v0, Ljava/util/Collection;

    .line 8
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    move-object v1, v0

    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 29
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 39
    check-cast v1, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    .line 40
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->shouldPlayAnimation()Z

    .line 42
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    move v0, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    move v0, v3

    .line 50
    :goto_1
    if-nez v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 53
    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 55
    const/4 v1, 0x3

    .line 57
    if-ne v0, v1, :cond_4

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 60
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 62
    if-ne v0, v1, :cond_4

    .line 64
    goto :goto_2

    .line 66
    :cond_4
    move v2, v3

    .line 67
    :goto_2
    if-eqz v2, :cond_5

    .line 68
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 70
    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    .line 72
    const/4 v1, 0x2

    .line 74
    if-ne v0, v1, :cond_5

    .line 75
    iget v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenBrightnessMinimumDimAmountFloat:F

    .line 77
    const/high16 v1, 0x437f0000    # 255.0f

    .line 79
    mul-float/2addr v0, v1

    .line 81
    float-to-double v0, v0

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 83
    move-result-wide v0

    .line 86
    double-to-int v0, v0

    .line 87
    sub-int/2addr p1, v0

    .line 88
    iget p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenBrightnessDim:I

    .line 89
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 91
    move-result p0

    .line 94
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    .line 95
    move-result p0

    .line 98
    return p0

    .line 99
    :cond_5
    return p1
    .line 100
.end method

.method public final isLightSensorPresent()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensorOptional:[Ljava/util/Optional;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget v3, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    .line 8
    array-length v4, v0

    .line 10
    if-ge v3, v4, :cond_0

    .line 11
    move v3, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v2

    .line 15
    :goto_0
    if-nez v3, :cond_2

    .line 16
    if-eqz v0, :cond_1

    .line 18
    aget-object p0, v0, v2

    .line 20
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    .line 22
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    goto :goto_1

    .line 28
    :cond_1
    move v1, v2

    .line 29
    :goto_1
    return v1

    .line 30
    :cond_2
    iget p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    .line 31
    aget-object p0, v0, p0

    .line 33
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    .line 35
    move-result p0

    .line 38
    return p0
    .line 39
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string p1, "brightness_bucket"

    .line 2
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    move-result p1

    .line 8
    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebugBrightnessBucket:I

    .line 9
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V

    .line 12
    return-void
    .line 15
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "DozeScreenBrightness.onSensorChanged"

    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 16
    aget v2, v2, v1

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 26
    const-wide/16 v2, 0x1000

    .line 27
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 29
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    .line 32
    if-eqz v0, :cond_1

    .line 34
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 36
    aget p1, p1, v1

    .line 38
    float-to-int p1, p1

    .line 40
    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    .line 41
    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 46
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 51
    throw p0
    .line 54
.end method

.method public final setLightSensorEnabled(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    if-eqz p1, :cond_2

    .line 4
    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    .line 6
    if-nez v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeScreenBrightness;->isLightSensorPresent()Z

    .line 10
    move-result v2

    .line 13
    if-eqz v2, :cond_2

    .line 14
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 16
    iget-object v2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensorOptional:[Ljava/util/Optional;

    .line 18
    if-eqz v2, :cond_0

    .line 20
    iget v3, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    .line 22
    array-length v4, v2

    .line 24
    if-ge v3, v4, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 27
    :cond_0
    if-nez v0, :cond_1

    .line 28
    const/4 v0, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    .line 32
    aget-object v0, v2, v0

    .line 34
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 39
    check-cast v0, Landroid/hardware/Sensor;

    .line 40
    :goto_0
    const/4 v2, 0x3

    .line 42
    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mHandler:Landroid/os/Handler;

    .line 43
    invoke-virtual {p1, p0, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 45
    move-result p1

    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    .line 49
    iput v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    .line 51
    goto :goto_1

    .line 53
    :cond_2
    if-nez p1, :cond_3

    .line 54
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    .line 56
    if-eqz p1, :cond_3

    .line 58
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 60
    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 62
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    .line 65
    iput v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    .line 67
    :cond_3
    :goto_1
    return-void
    .line 69
.end method

.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 8

    .line 1
    iput-object p2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    const v1, 0x7fffffff

    .line 9
    const-string/jumbo v2, "screen_brightness"

    .line 12
    const/4 v3, -0x2

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eq p1, v4, :cond_4

    .line 18
    const/4 v6, 0x2

    .line 20
    if-eq p1, v6, :cond_3

    .line 21
    const/4 v6, 0x3

    .line 23
    if-eq p1, v6, :cond_3

    .line 24
    const/4 v0, 0x4

    .line 26
    if-eq p1, v0, :cond_2

    .line 27
    const/4 v0, 0x5

    .line 29
    if-eq p1, v0, :cond_2

    .line 30
    const/16 v0, 0x9

    .line 32
    if-eq p1, v0, :cond_1

    .line 34
    const/16 v0, 0xa

    .line 36
    if-eq p1, v0, :cond_0

    .line 38
    const/16 v0, 0xc

    .line 40
    if-eq p1, v0, :cond_2

    .line 42
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    .line 49
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePostureCallback:Lcom/android/systemui/doze/DozeScreenBrightness$1;

    .line 54
    check-cast p1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    .line 56
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 58
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    .line 62
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    .line 66
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 69
    iget v6, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDefaultDozeBrightness:I

    .line 71
    iget-object v7, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSystemSettings:Lcom/android/systemui/util/settings/SystemSettingsImpl;

    .line 73
    invoke-interface {v7, v1, v3, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 75
    move-result v1

    .line 78
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    .line 79
    move-result v1

    .line 82
    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeScreenBrightness;->clampToDimBrightnessForScreenOff(I)I

    .line 83
    move-result v1

    .line 86
    invoke-interface {p1, v1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    .line 87
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 90
    check-cast p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 92
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setAodDimmingScrim(F)V

    .line 94
    goto :goto_0

    .line 97
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 98
    iget v6, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDefaultDozeBrightness:I

    .line 100
    iget-object v7, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSystemSettings:Lcom/android/systemui/util/settings/SystemSettingsImpl;

    .line 102
    invoke-interface {v7, v1, v3, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 104
    move-result v1

    .line 107
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    .line 108
    move-result v1

    .line 111
    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeScreenBrightness;->clampToDimBrightnessForScreenOff(I)I

    .line 112
    move-result v1

    .line 115
    invoke-interface {p1, v1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    .line 116
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 119
    check-cast p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 121
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setAodDimmingScrim(F)V

    .line 123
    :goto_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    .line 126
    if-eq p2, p1, :cond_8

    .line 128
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 130
    if-ne p2, p1, :cond_5

    .line 132
    move p1, v4

    .line 134
    goto :goto_1

    .line 135
    :cond_5
    move p1, v5

    .line 136
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenOff:Z

    .line 137
    if-eq v0, p1, :cond_6

    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenOff:Z

    .line 141
    invoke-virtual {p0, v4}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V

    .line 143
    :cond_6
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 146
    if-ne p2, p1, :cond_7

    .line 148
    goto :goto_2

    .line 150
    :cond_7
    move v4, v5

    .line 151
    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mPaused:Z

    .line 152
    if-eq p1, v4, :cond_8

    .line 154
    iput-boolean v4, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mPaused:Z

    .line 156
    invoke-virtual {p0, v5}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V

    .line 158
    :cond_8
    return-void
    .line 161
.end method

.method public final updateBrightnessAndReady(Z)V
    .locals 9

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    .line 5
    if-nez p1, :cond_0

    .line 7
    iget p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebugBrightnessBucket:I

    .line 9
    if-eq p1, v0, :cond_9

    .line 11
    :cond_0
    iget p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebugBrightnessBucket:I

    .line 13
    if-ne p1, v0, :cond_1

    .line 15
    iget p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    .line 17
    :cond_1
    if-ltz p1, :cond_3

    .line 19
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToBrightness:[I

    .line 21
    array-length v2, v1

    .line 23
    if-lt p1, v2, :cond_2

    .line 24
    goto :goto_0

    .line 26
    :cond_2
    aget v1, v1, p1

    .line 27
    goto :goto_1

    .line 29
    :cond_3
    :goto_0
    move v1, v0

    .line 30
    :goto_1
    const/4 v2, 0x0

    .line 31
    if-lez v1, :cond_4

    .line 32
    const/4 v3, 0x1

    .line 34
    goto :goto_2

    .line 35
    :cond_4
    move v3, v2

    .line 36
    :goto_2
    if-eqz v3, :cond_5

    .line 37
    iget-object v4, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 39
    iget-object v5, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSystemSettings:Lcom/android/systemui/util/settings/SystemSettingsImpl;

    .line 41
    const/4 v6, -0x2

    .line 43
    const-string/jumbo v7, "screen_brightness"

    .line 44
    const v8, 0x7fffffff

    .line 47
    invoke-interface {v5, v8, v6, v7}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 50
    move-result v5

    .line 53
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 54
    move-result v1

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeScreenBrightness;->clampToDimBrightnessForScreenOff(I)I

    .line 58
    move-result v1

    .line 61
    invoke-interface {v4, v1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    .line 62
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeScreenBrightness;->isLightSensorPresent()Z

    .line 65
    move-result v1

    .line 68
    if-nez v1, :cond_6

    .line 69
    move v0, v2

    .line 71
    goto :goto_3

    .line 72
    :cond_6
    if-eqz v3, :cond_8

    .line 73
    if-ltz p1, :cond_8

    .line 75
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToScrimOpacity:[I

    .line 77
    array-length v2, v1

    .line 79
    if-lt p1, v2, :cond_7

    .line 80
    goto :goto_3

    .line 82
    :cond_7
    aget v0, v1, p1

    .line 83
    :cond_8
    :goto_3
    if-ltz v0, :cond_9

    .line 85
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 87
    int-to-float p1, v0

    .line 89
    const/high16 v0, 0x437f0000    # 255.0f

    .line 90
    div-float/2addr p1, v0

    .line 92
    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setAodDimmingScrim(F)V

    .line 95
    :cond_9
    return-void
    .line 98
.end method
