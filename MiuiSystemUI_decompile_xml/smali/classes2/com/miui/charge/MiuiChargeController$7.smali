.class public final Lcom/miui/charge/MiuiChargeController$7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/charge/MiuiChargeController;


# direct methods
.method public constructor <init>(Lcom/miui/charge/MiuiChargeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/MiuiChargeController$7;->this$0:Lcom/miui/charge/MiuiChargeController;

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
    .locals 2

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    const/4 v0, 0x0

    .line 4
    aget p1, p1, v0

    .line 5
    const/4 v1, 0x0

    .line 7
    cmpl-float p1, p1, v1

    .line 8
    if-eqz p1, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController$7;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 13
    iget-object p1, p1, Lcom/miui/charge/MiuiChargeController;->mFoldStatus:Ljava/lang/Boolean;

    .line 15
    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    move-result p1

    .line 22
    if-eq p1, v0, :cond_3

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController$7;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 25
    iget-object v1, p1, Lcom/miui/charge/MiuiChargeController;->mFoldStatus:Ljava/lang/Boolean;

    .line 27
    if-eqz v1, :cond_2

    .line 29
    const-string v1, "fold_state_changed"

    .line 31
    invoke-virtual {p1, v1}, Lcom/miui/charge/MiuiChargeController;->dismissChargeAnimation(Ljava/lang/String;)V

    .line 33
    :cond_2
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController$7;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 36
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mFoldStatus:Ljava/lang/Boolean;

    .line 42
    :cond_3
    return-void
    .line 44
.end method
