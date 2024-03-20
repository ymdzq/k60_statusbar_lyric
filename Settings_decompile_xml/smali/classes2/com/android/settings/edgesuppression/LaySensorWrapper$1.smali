.class Lcom/android/settings/edgesuppression/LaySensorWrapper$1;
.super Ljava/lang/Object;
.source "LaySensorWrapper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/edgesuppression/LaySensorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;


# direct methods
.method constructor <init>(Lcom/android/settings/edgesuppression/LaySensorWrapper;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 60
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v0

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    .line 61
    aget v0, v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {v0, v1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fputmAttitude(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V

    .line 64
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {v0, v4}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fputmAttitude(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V

    .line 67
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v6, 0x2

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {v0, v6}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fputmAttitude(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V

    .line 70
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v0, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    const/4 v7, 0x3

    invoke-static {v0, v7}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fputmAttitude(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V

    .line 73
    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v0, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v7, 0x4

    if-nez v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {v0, v7}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fputmAttitude(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V

    .line 78
    :cond_4
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_5

    .line 79
    iget-object v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {v0, v1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fputmPerspective(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V

    .line 81
    :cond_5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_6

    .line 82
    iget-object v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {v0, v4}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fputmPerspective(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V

    .line 84
    :cond_6
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v4

    invoke-static {p1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_7

    .line 85
    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1, v6}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fputmPerspective(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V

    .line 88
    :cond_7
    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fgetmAttitude(Lcom/android/settings/edgesuppression/LaySensorWrapper;)I

    move-result p1

    const-wide/16 v2, 0x3e8

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fgetmPerspective(Lcom/android/settings/edgesuppression/LaySensorWrapper;)I

    move-result p1

    if-ne p1, v4, :cond_9

    :cond_8
    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fgetmCurttenState(Lcom/android/settings/edgesuppression/LaySensorWrapper;)I

    move-result p1

    if-eqz p1, :cond_9

    .line 90
    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1, v1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fputmCurttenState(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V

    .line 91
    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fgetmHandler(Lcom/android/settings/edgesuppression/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fgetmHandler(Lcom/android/settings/edgesuppression/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    iget-object p0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p0}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fgetmHandler(Lcom/android/settings/edgesuppression/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 94
    :cond_9
    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fgetmAttitude(Lcom/android/settings/edgesuppression/LaySensorWrapper;)I

    move-result p1

    if-eq p1, v7, :cond_a

    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fgetmPerspective(Lcom/android/settings/edgesuppression/LaySensorWrapper;)I

    move-result p1

    if-ne p1, v6, :cond_b

    :cond_a
    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fgetmCurttenState(Lcom/android/settings/edgesuppression/LaySensorWrapper;)I

    move-result p1

    if-eq p1, v4, :cond_b

    .line 96
    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1, v4}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fputmCurttenState(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V

    .line 97
    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fgetmHandler(Lcom/android/settings/edgesuppression/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fgetmHandler(Lcom/android/settings/edgesuppression/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    iget-object p0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p0}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fgetmHandler(Lcom/android/settings/edgesuppression/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 100
    :cond_b
    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fgetmAttitude(Lcom/android/settings/edgesuppression/LaySensorWrapper;)I

    move-result p1

    if-ne p1, v4, :cond_c

    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fgetmCurttenState(Lcom/android/settings/edgesuppression/LaySensorWrapper;)I

    move-result p1

    if-eq p1, v6, :cond_c

    .line 101
    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1, v6}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fputmCurttenState(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V

    .line 102
    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fgetmHandler(Lcom/android/settings/edgesuppression/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fgetmHandler(Lcom/android/settings/edgesuppression/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object p0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;->this$0:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-static {p0}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->-$$Nest$fgetmHandler(Lcom/android/settings/edgesuppression/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c
    :goto_0
    return-void
.end method
