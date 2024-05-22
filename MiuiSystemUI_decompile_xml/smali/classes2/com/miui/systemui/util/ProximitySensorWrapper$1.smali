.class public final Lcom/miui/systemui/util/ProximitySensorWrapper$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/util/ProximitySensorWrapper;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/util/ProximitySensorWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/util/ProximitySensorWrapper$1;->this$0:Lcom/miui/systemui/util/ProximitySensorWrapper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    const/4 v0, 0x0

    .line 4
    aget p1, p1, v0

    .line 5
    float-to-double v1, p1

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    cmpl-double v1, v1, v3

    .line 10
    const/4 v2, 0x1

    .line 12
    if-ltz v1, :cond_0

    .line 13
    const/high16 v1, 0x40800000    # 4.0f

    .line 15
    cmpg-float v1, p1, v1

    .line 17
    if-gez v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/miui/systemui/util/ProximitySensorWrapper$1;->this$0:Lcom/miui/systemui/util/ProximitySensorWrapper;

    .line 21
    iget-object v1, v1, Lcom/miui/systemui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    .line 23
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    .line 25
    move-result v1

    .line 28
    cmpg-float v1, p1, v1

    .line 29
    if-gez v1, :cond_0

    .line 31
    move v1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v1, v0

    .line 35
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    const-string v4, "proximity distance: "

    .line 38
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 49
    const-string v3, "ProximitySensorWrapper"

    .line 50
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-wide/16 v3, 0x12c

    .line 55
    if-eqz v1, :cond_1

    .line 57
    iget-object p1, p0, Lcom/miui/systemui/util/ProximitySensorWrapper$1;->this$0:Lcom/miui/systemui/util/ProximitySensorWrapper;

    .line 59
    iget v1, p1, Lcom/miui/systemui/util/ProximitySensorWrapper;->mProximitySensorState:I

    .line 61
    if-eq v1, v2, :cond_2

    .line 63
    iput v2, p1, Lcom/miui/systemui/util/ProximitySensorWrapper;->mProximitySensorState:I

    .line 65
    iget-object p1, p1, Lcom/miui/systemui/util/ProximitySensorWrapper;->mHandler:Lcom/miui/systemui/util/ProximitySensorWrapper$2;

    .line 67
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    iget-object p0, p0, Lcom/miui/systemui/util/ProximitySensorWrapper$1;->this$0:Lcom/miui/systemui/util/ProximitySensorWrapper;

    .line 72
    iget-object p0, p0, Lcom/miui/systemui/util/ProximitySensorWrapper;->mHandler:Lcom/miui/systemui/util/ProximitySensorWrapper$2;

    .line 74
    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 76
    goto :goto_1

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/miui/systemui/util/ProximitySensorWrapper$1;->this$0:Lcom/miui/systemui/util/ProximitySensorWrapper;

    .line 80
    iget v1, p1, Lcom/miui/systemui/util/ProximitySensorWrapper;->mProximitySensorState:I

    .line 82
    if-eqz v1, :cond_2

    .line 84
    iput v0, p1, Lcom/miui/systemui/util/ProximitySensorWrapper;->mProximitySensorState:I

    .line 86
    iget-object p1, p1, Lcom/miui/systemui/util/ProximitySensorWrapper;->mHandler:Lcom/miui/systemui/util/ProximitySensorWrapper$2;

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    iget-object p0, p0, Lcom/miui/systemui/util/ProximitySensorWrapper$1;->this$0:Lcom/miui/systemui/util/ProximitySensorWrapper;

    .line 93
    iget-object p0, p0, Lcom/miui/systemui/util/ProximitySensorWrapper;->mHandler:Lcom/miui/systemui/util/ProximitySensorWrapper$2;

    .line 95
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    :cond_2
    :goto_1
    return-void
    .line 100
.end method
