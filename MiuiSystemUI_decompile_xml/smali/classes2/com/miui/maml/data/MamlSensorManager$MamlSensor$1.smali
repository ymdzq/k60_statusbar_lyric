.class Lcom/miui/maml/data/MamlSensorManager$MamlSensor$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/data/MamlSensorManager$MamlSensor;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor$1;->this$0:Lcom/miui/maml/data/MamlSensorManager$MamlSensor;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor$1;->this$0:Lcom/miui/maml/data/MamlSensorManager$MamlSensor;

    .line 2
    invoke-static {v0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->access$300(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor$1;->this$0:Lcom/miui/maml/data/MamlSensorManager$MamlSensor;

    .line 9
    invoke-static {p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->access$200(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)Ljava/util/WeakHashMap;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    .line 15
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 32
    check-cast v1, Landroid/hardware/SensorEventListener;

    .line 33
    invoke-interface {v1, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 35
    goto :goto_0

    .line 38
    :cond_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
    .line 43
.end method
