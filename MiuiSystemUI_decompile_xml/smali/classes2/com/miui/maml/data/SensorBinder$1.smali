.class Lcom/miui/maml/data/SensorBinder$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/data/SensorBinder;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/SensorBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/SensorBinder$1;->this$0:Lcom/miui/maml/data/SensorBinder;

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
    .locals 8

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    array-length v0, v0

    .line 4
    iget-object v1, p0, Lcom/miui/maml/data/SensorBinder$1;->this$0:Lcom/miui/maml/data/SensorBinder;

    .line 5
    iget-object v1, v1, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 23
    check-cast v3, Lcom/miui/maml/data/VariableBinder$Variable;

    .line 24
    check-cast v3, Lcom/miui/maml/data/SensorBinder$Variable;

    .line 26
    iget v4, v3, Lcom/miui/maml/data/SensorBinder$Variable;->mIndex:I

    .line 28
    if-ltz v4, :cond_0

    .line 30
    if-ge v4, v0, :cond_0

    .line 32
    invoke-virtual {v3}, Lcom/miui/maml/data/VariableBinder$Variable;->getNumber()D

    .line 34
    move-result-wide v4

    .line 37
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 38
    iget v7, v3, Lcom/miui/maml/data/SensorBinder$Variable;->mIndex:I

    .line 40
    aget v6, v6, v7

    .line 42
    float-to-double v6, v6

    .line 44
    sub-double/2addr v4, v6

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 46
    move-result-wide v4

    .line 49
    iget-object v6, p0, Lcom/miui/maml/data/SensorBinder$1;->this$0:Lcom/miui/maml/data/SensorBinder;

    .line 50
    invoke-static {v6}, Lcom/miui/maml/data/SensorBinder;->access$000(Lcom/miui/maml/data/SensorBinder;)F

    .line 52
    move-result v6

    .line 55
    float-to-double v6, v6

    .line 56
    cmpl-double v4, v4, v6

    .line 57
    if-lez v4, :cond_0

    .line 59
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 61
    iget v4, v3, Lcom/miui/maml/data/SensorBinder$Variable;->mIndex:I

    .line 63
    aget v2, v2, v4

    .line 65
    float-to-double v4, v2

    .line 67
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    .line 68
    const/4 v2, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    if-eqz v2, :cond_2

    .line 73
    iget-object p0, p0, Lcom/miui/maml/data/SensorBinder$1;->this$0:Lcom/miui/maml/data/SensorBinder;

    .line 75
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->onUpdateComplete()V

    .line 77
    :cond_2
    return-void
    .line 80
.end method
