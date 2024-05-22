.class public final Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;
.super Lcom/android/systemui/util/sensors/ProximitySensorImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDevicePostureCallback:Lcom/android/systemui/util/sensors/PostureDependentProximitySensor$$ExternalSyntheticLambda0;

.field public final mListenersRegisteredWhenProxUnavailable:Ljava/util/HashSet;

.field public final mPostureToPrimaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;

.field public final mPostureToSecondaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;


# direct methods
.method public constructor <init>([Lcom/android/systemui/util/sensors/ThresholdSensor;[Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/ExecutionImpl;Lcom/android/systemui/statusbar/policy/DevicePostureController;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    aget-object v0, p2, v0

    .line 5
    invoke-direct {p0, v1, v0, p3, p4}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;-><init>(Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/ExecutionImpl;)V

    .line 7
    new-instance p3, Ljava/util/HashSet;

    .line 10
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 12
    iput-object p3, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mListenersRegisteredWhenProxUnavailable:Ljava/util/HashSet;

    .line 15
    new-instance p3, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor$$ExternalSyntheticLambda0;

    .line 17
    invoke-direct {p3, p0}, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;)V

    .line 19
    iput-object p3, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mDevicePostureCallback:Lcom/android/systemui/util/sensors/PostureDependentProximitySensor$$ExternalSyntheticLambda0;

    .line 22
    iput-object p1, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mPostureToPrimaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mPostureToSecondaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 26
    check-cast p5, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    .line 28
    iget p1, p5, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mCurrentDevicePosture:I

    .line 30
    iput p1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    .line 32
    invoke-virtual {p5, p3}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->chooseSensors()V

    .line 37
    return-void
    .line 40
.end method


# virtual methods
.method public final chooseSensors()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mPostureToPrimaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 4
    array-length v2, v1

    .line 6
    if-ge v0, v2, :cond_5

    .line 7
    iget-object v2, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mPostureToSecondaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 9
    array-length v3, v2

    .line 11
    if-lt v0, v3, :cond_0

    .line 12
    goto :goto_1

    .line 14
    :cond_0
    aget-object v1, v1, v0

    .line 15
    aget-object v0, v2, v0

    .line 17
    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 19
    if-ne v1, v2, :cond_1

    .line 21
    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 23
    if-eq v0, v2, :cond_4

    .line 25
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    const-string v3, "Register new proximity sensors newPosture="

    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget v3, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    .line 34
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/DevicePostureController;->devicePostureToString(I)Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 46
    invoke-virtual {p0, v2}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->logDebug(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->unregisterInternal()V

    .line 50
    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 53
    if-eqz v2, :cond_2

    .line 55
    iget-object v3, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryEventListener:Lcom/android/systemui/util/sensors/ProximitySensorImpl$$ExternalSyntheticLambda0;

    .line 57
    invoke-interface {v2, v3}, Lcom/android/systemui/util/sensors/ThresholdSensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 59
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 62
    if-eqz v2, :cond_3

    .line 64
    iget-object v3, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryEventListener:Lcom/android/systemui/util/sensors/ProximitySensorImpl$1;

    .line 66
    invoke-interface {v2, v3}, Lcom/android/systemui/util/sensors/ThresholdSensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 68
    :cond_3
    iput-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 71
    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 73
    const/4 v0, 0x0

    .line 75
    new-array v1, v0, [Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    .line 76
    iget-object v2, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mListenersRegisteredWhenProxUnavailable:Ljava/util/HashSet;

    .line 78
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 80
    move-result-object v1

    .line 83
    check-cast v1, [Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    .line 84
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 86
    array-length v2, v1

    .line 89
    :goto_0
    if-ge v0, v2, :cond_4

    .line 90
    aget-object v3, v1, v0

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    const-string v5, "Re-register listener "

    .line 96
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v4

    .line 107
    invoke-virtual {p0, v4}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->logDebug(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, v3}, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    .line 114
    goto :goto_0

    .line 116
    :cond_4
    return-void

    .line 117
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v1, "unsupported devicePosture="

    .line 120
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    iget p0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 134
    const-string v0, "PostureDependProxSensor"

    .line 135
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
    .line 140
.end method

.method public final register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->isLoaded()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "No prox sensor when registering listener="

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->logDebug(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mListenersRegisteredWhenProxUnavailable:Ljava/util/HashSet;

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 30
    return-void
    .line 33
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    .line 2
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/DevicePostureController;->devicePostureToString(I)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-super {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->toString()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    const-string/jumbo v0, "{posture=%s, proximitySensor=%s}"

    .line 16
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method

.method public final unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mListenersRegisteredWhenProxUnavailable:Ljava/util/HashSet;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string v1, "Removing listener from mListenersRegisteredWhenProxUnavailable "

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->logDebug(Ljava/lang/String;)V

    .line 24
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 27
    return-void
    .line 30
.end method
