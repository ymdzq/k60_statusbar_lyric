.class public final synthetic Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public final synthetic f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

.field public final synthetic f$2:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda4;->f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda4;->f$2:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 9
    iget-object v2, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda4;->f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda4;->f$2:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;

    .line 13
    :goto_0
    iget-object v3, v0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mPlugins:Ljava/util/List;

    .line 15
    check-cast v3, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v3

    .line 22
    if-ge v1, v3, :cond_0

    .line 23
    iget-object v3, v0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mPlugins:Ljava/util/List;

    .line 25
    check-cast v3, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 32
    check-cast v3, Lcom/android/systemui/plugins/SensorManagerPlugin;

    .line 33
    invoke-interface {v3, v2, p0}, Lcom/android/systemui/plugins/SensorManagerPlugin;->registerListener(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_0
    return-void

    .line 41
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 42
    iget-object v2, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda4;->f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    .line 44
    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda4;->f$2:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;

    .line 46
    :goto_2
    iget-object v3, v0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mPlugins:Ljava/util/List;

    .line 48
    check-cast v3, Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 52
    move-result v3

    .line 55
    if-ge v1, v3, :cond_1

    .line 56
    iget-object v3, v0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mPlugins:Ljava/util/List;

    .line 58
    check-cast v3, Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 65
    check-cast v3, Lcom/android/systemui/plugins/SensorManagerPlugin;

    .line 66
    invoke-interface {v3, v2, p0}, Lcom/android/systemui/plugins/SensorManagerPlugin;->unregisterListener(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 71
    goto :goto_2

    .line 73
    :cond_1
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 76
.end method
