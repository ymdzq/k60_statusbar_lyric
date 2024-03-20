.class public final Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

.field public final mResources:Landroid/content/res/Resources;

.field public mSensor:Landroid/hardware/Sensor;

.field public mSensorDelay:I

.field public final mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public mSensorSet:Z

.field public mThresholdLatchValue:F

.field public mThresholdLatchValueSet:Z

.field public mThresholdSet:Z

.field public mThresholdValue:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/util/concurrency/ExecutionImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorDelay:I

    .line 6
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mResources:Landroid/content/res/Resources;

    .line 8
    iput-object p2, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 10
    iput-object p3, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final build()Lcom/android/systemui/util/sensors/ThresholdSensorImpl;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorSet:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdSet:Z

    .line 6
    if-eqz v0, :cond_1

    .line 8
    iget v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdValue:F

    .line 10
    iget v1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F

    .line 12
    cmpl-float v0, v0, v1

    .line 14
    if-gtz v0, :cond_0

    .line 16
    new-instance v0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;

    .line 18
    iget-object v2, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 20
    iget-object v3, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensor:Landroid/hardware/Sensor;

    .line 22
    iget-object v4, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 24
    iget v5, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdValue:F

    .line 26
    iget v6, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F

    .line 28
    iget v7, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorDelay:I

    .line 30
    move-object v1, v0

    .line 32
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;-><init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/util/concurrency/ExecutionImpl;FFI)V

    .line 33
    return-object v0

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 37
    const-string v0, "Threshold must be less than or equal to Threshold Latch"

    .line 39
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p0

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 45
    const-string v0, "A threshold was not successfully set."

    .line 47
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0

    .line 52
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    const-string v0, "A sensor was not successfully set."

    .line 55
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0
    .line 60
.end method

.method public findSensorByType(Ljava/lang/String;Z)Landroid/hardware/Sensor;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object v1

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 10
    const/4 v0, -0x1

    .line 12
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    .line 13
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_4

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Landroid/hardware/Sensor;

    .line 31
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 36
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    if-eqz p2, :cond_3

    .line 43
    invoke-virtual {v0}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    .line 45
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    goto :goto_1

    .line 51
    :cond_2
    move-object v1, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    :goto_1
    move-object v1, v0

    .line 54
    :cond_4
    return-object v1
    .line 55
.end method
