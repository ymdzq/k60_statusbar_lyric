.class public abstract Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProximitySensorFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providePrimaryProximitySensor(Landroid/hardware/SensorManager;Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;)Lcom/android/systemui/util/sensors/ThresholdSensorImpl;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    :try_start_0
    iput v1, p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorDelay:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    iget-object v1, p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mResources:Landroid/content/res/Resources;

    .line 6
    const v2, 0x7f13092a    # @string/proximity_sensor_type ''

    .line 8
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 14
    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->findSensorByType(Ljava/lang/String;Z)Landroid/hardware/Sensor;

    .line 15
    move-result-object v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    iput-object v2, p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensor:Landroid/hardware/Sensor;

    .line 21
    iput-boolean v0, p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorSet:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 23
    :cond_0
    const v2, 0x7f070ec2    # @dimen/proximity_sensor_threshold '@null'

    .line 25
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 28
    move-result v2

    .line 31
    iput v2, p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdValue:F

    .line 32
    iput-boolean v0, p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdSet:Z

    .line 34
    iget-boolean v3, p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValueSet:Z

    .line 36
    if-nez v3, :cond_1

    .line 38
    iput v2, p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 40
    :catch_0
    :cond_1
    const v2, 0x7f070ec3    # @dimen/proximity_sensor_threshold_latch '@null'

    .line 42
    :try_start_3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 45
    move-result v1

    .line 48
    iput v1, p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F

    .line 49
    iput-boolean v0, p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValueSet:Z
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 51
    :catch_1
    :try_start_4
    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->build()Lcom/android/systemui/util/sensors/ThresholdSensorImpl;

    .line 53
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    .line 56
    goto :goto_1

    .line 57
    :catch_2
    const/16 v1, 0x8

    .line 58
    invoke-virtual {p0, v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    .line 60
    move-result-object p0

    .line 63
    iput-object p0, p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensor:Landroid/hardware/Sensor;

    .line 64
    iput-boolean v0, p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorSet:Z

    .line 66
    if-eqz p0, :cond_2

    .line 68
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getMaximumRange()F

    .line 70
    move-result p0

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const/4 p0, 0x0

    .line 75
    :goto_0
    iput p0, p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdValue:F

    .line 76
    iput-boolean v0, p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdSet:Z

    .line 78
    iget-boolean v0, p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValueSet:Z

    .line 80
    if-nez v0, :cond_3

    .line 82
    iput p0, p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F

    .line 84
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->build()Lcom/android/systemui/util/sensors/ThresholdSensorImpl;

    .line 86
    move-result-object p0

    .line 89
    :goto_1
    return-object p0
    .line 90
.end method
