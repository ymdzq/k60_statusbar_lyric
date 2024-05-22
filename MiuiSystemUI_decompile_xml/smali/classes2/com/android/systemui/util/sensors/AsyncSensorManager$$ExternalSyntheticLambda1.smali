.class public final synthetic Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 10
    check-cast v1, Landroid/hardware/Sensor;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 14
    check-cast p0, Landroid/hardware/SensorEventListener;

    .line 16
    if-nez v1, :cond_0

    .line 18
    iget-object v0, v0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    .line 20
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    .line 26
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 28
    :goto_0
    return-void

    .line 31
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 32
    iget-object v1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 34
    check-cast v1, Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 36
    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 38
    check-cast p0, Landroid/os/Handler;

    .line 40
    iget-object v0, v0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    .line 42
    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    .line 44
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 48
.end method
