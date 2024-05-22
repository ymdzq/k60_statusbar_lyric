.class public abstract Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProximitySensorFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideSecondaryProximitySensor(Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;)Lcom/android/systemui/util/sensors/ThresholdSensorImpl;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mResources:Landroid/content/res/Resources;

    .line 3
    const v2, 0x7f130929    # @string/proximity_sensor_secondary_type ''

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->findSensorByType(Ljava/lang/String;Z)Landroid/hardware/Sensor;

    .line 12
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    iput-object v1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensor:Landroid/hardware/Sensor;

    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorSet:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mResources:Landroid/content/res/Resources;

    .line 22
    const v2, 0x7f070ec0    # @dimen/proximity_sensor_secondary_threshold '@null'

    .line 24
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 27
    move-result v2

    .line 30
    iput v2, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdValue:F

    .line 31
    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdSet:Z

    .line 33
    iget-boolean v3, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValueSet:Z

    .line 35
    if-nez v3, :cond_1

    .line 37
    iput v2, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 39
    :catch_0
    :cond_1
    const v2, 0x7f070ec1    # @dimen/proximity_sensor_secondary_threshold_latch '@null'

    .line 41
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 44
    move-result v1

    .line 47
    iput v1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValueSet:Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 50
    :catch_1
    :try_start_3
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->build()Lcom/android/systemui/util/sensors/ThresholdSensorImpl;

    .line 52
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 55
    goto :goto_0

    .line 56
    :catch_2
    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensor:Landroid/hardware/Sensor;

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorSet:Z

    .line 60
    const/4 v1, 0x0

    .line 62
    iput v1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdValue:F

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdSet:Z

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValueSet:Z

    .line 67
    if-nez v0, :cond_2

    .line 69
    iput v1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->build()Lcom/android/systemui/util/sensors/ThresholdSensorImpl;

    .line 73
    move-result-object p0

    .line 76
    :goto_0
    return-object p0
    .line 77
.end method
