.class public abstract Lcom/android/systemui/util/sensors/SensorModule;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static createPostureToSensorMapping(Lcom/android/systemui/util/sensors/ThresholdSensorImpl$BuilderFactory;[Ljava/lang/String;II)[Lcom/android/systemui/util/sensors/ThresholdSensor;
    .locals 9

    .line 1
    iget-object v1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$BuilderFactory;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 2
    iget-object v3, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$BuilderFactory;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 4
    const/4 v6, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    cmpl-float v0, v5, v5

    .line 9
    if-gtz v0, :cond_8

    .line 11
    new-instance v7, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;

    .line 13
    move-object v0, v7

    .line 15
    move v4, v5

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;-><init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/util/concurrency/ExecutionImpl;FFI)V

    .line 17
    const/4 v0, 0x5

    .line 20
    new-array v0, v0, [Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 21
    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    array-length v3, p1

    .line 30
    if-nez v3, :cond_0

    .line 31
    goto :goto_1

    .line 33
    :cond_0
    array-length v3, p1

    .line 34
    move v4, v1

    .line 35
    :goto_0
    if-ge v4, v3, :cond_2

    .line 36
    aget-object v5, p1, v4

    .line 38
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    move-result v5

    .line 43
    if-nez v5, :cond_1

    .line 44
    move v3, v2

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    :goto_1
    move v3, v1

    .line 51
    :goto_2
    if-nez v3, :cond_3

    .line 52
    const-string p0, "SensorModule"

    .line 54
    const-string p1, "config doesn\'t support postures, but attempting to retrieve proxSensorMapping"

    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-object v0

    .line 61
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    .line 62
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 64
    :goto_3
    array-length v4, p1

    .line 67
    if-ge v1, v4, :cond_7

    .line 68
    :try_start_0
    aget-object v4, p1, v1

    .line 70
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 72
    move-result v5

    .line 75
    if-eqz v5, :cond_4

    .line 76
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v4

    .line 81
    check-cast v4, Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 82
    aput-object v4, v0, v1

    .line 84
    goto :goto_4

    .line 86
    :cond_4
    new-instance v5, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    .line 87
    iget-object v6, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$BuilderFactory;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 89
    iget-object v7, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$BuilderFactory;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 91
    iget-object v8, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$BuilderFactory;->mResources:Landroid/content/res/Resources;

    .line 93
    invoke-direct {v5, v8, v6, v7}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/util/concurrency/ExecutionImpl;)V

    .line 95
    aget-object v6, p1, v1

    .line 98
    invoke-virtual {v5, v6, v2}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->findSensorByType(Ljava/lang/String;Z)Landroid/hardware/Sensor;

    .line 100
    move-result-object v6

    .line 103
    if-eqz v6, :cond_5

    .line 104
    iput-object v6, v5, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensor:Landroid/hardware/Sensor;

    .line 106
    iput-boolean v2, v5, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorSet:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 108
    :cond_5
    :try_start_1
    invoke-virtual {v8, p2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 110
    move-result v6

    .line 113
    iput v6, v5, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdValue:F

    .line 114
    iput-boolean v2, v5, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdSet:Z

    .line 116
    iget-boolean v7, v5, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValueSet:Z

    .line 118
    if-nez v7, :cond_6

    .line 120
    iput v6, v5, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 122
    :catch_0
    :cond_6
    :try_start_2
    iget-object v6, v5, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mResources:Landroid/content/res/Resources;

    .line 124
    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 126
    move-result v6

    .line 129
    iput v6, v5, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F

    .line 130
    iput-boolean v2, v5, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValueSet:Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 132
    :catch_1
    :try_start_3
    invoke-virtual {v5}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->build()Lcom/android/systemui/util/sensors/ThresholdSensorImpl;

    .line 134
    move-result-object v5

    .line 137
    aput-object v5, v0, v1

    .line 138
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 140
    :catch_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 143
    goto :goto_3

    .line 145
    :cond_7
    return-object v0

    .line 146
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 147
    const-string p1, "Threshold must be less than or equal to Threshold Latch"

    .line 149
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 151
    throw p0
    .line 154
.end method
