.class public final Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;->this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;->this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    .line 9
    iget-boolean v2, v0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->started:Z

    .line 11
    if-nez v2, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorManager:Landroid/hardware/SensorManager;

    .line 16
    iget-object v0, v0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorListener:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;

    .line 18
    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 20
    iget-object p0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;->this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    .line 23
    iput-boolean v1, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->started:Z

    .line 25
    :goto_0
    return-void

    .line 27
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;->this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    .line 28
    iget-boolean v0, v0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->started:Z

    .line 30
    if-eqz v0, :cond_1

    .line 32
    goto :goto_2

    .line 34
    :cond_1
    const-string v0, "HingeSensorAngleProvider#start"

    .line 35
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;->this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    .line 40
    iget-object v0, v0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorManager:Landroid/hardware/SensorManager;

    .line 42
    const/16 v2, 0x24

    .line 44
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 46
    move-result-object v0

    .line 49
    iget-object v2, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;->this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    .line 50
    iget-object v3, v2, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorManager:Landroid/hardware/SensorManager;

    .line 52
    iget-object v2, v2, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorListener:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;

    .line 54
    invoke-virtual {v3, v2, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 56
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 59
    iget-object p0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;->this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    .line 62
    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->started:Z

    .line 65
    :goto_2
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 68
.end method
