.class public final Lcom/miui/charge/container/MiuiChargeAnimationView$6;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/charge/container/MiuiChargeAnimationView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$6;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$6;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$6;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$6;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 8
    const-string v0, "dismiss_for_timeout"

    .line 10
    invoke-virtual {p0, v0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->startDismiss(Ljava/lang/String;)V

    .line 12
    return-void

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$6;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 16
    iget-object v0, v0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargePercentView:Lcom/miui/charge/view/MiuiChargePercentCountView;

    .line 18
    iget-object v0, v0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$6;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 27
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 30
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$6;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 33
    const-string v1, "dismiss"

    .line 35
    invoke-virtual {v0, v1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->removeChargeView(Ljava/lang/String;)V

    .line 37
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$6;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 40
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->animationListener:Lcom/miui/charge/view/IChargeAnimationListener;

    .line 42
    if-eqz v0, :cond_3

    .line 44
    iget v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWireState:I

    .line 46
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissReason:Ljava/lang/String;

    .line 48
    check-cast v0, Lcom/miui/charge/MiuiChargeController;

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    const-string v3, " onChargeAnimationDismiss: wireState "

    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v3, " reason :"

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 73
    const-string v2, "MiuiChargeController"

    .line 74
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 p0, 0x0

    .line 79
    iput-boolean p0, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    .line 80
    iget-boolean v3, v0, Lcom/miui/charge/MiuiChargeController;->mIsFoldChargeVideo:Z

    .line 82
    if-eqz v3, :cond_1

    .line 84
    iget-object v3, v0, Lcom/miui/charge/MiuiChargeController;->mAngleSensor:Landroid/hardware/Sensor;

    .line 86
    if-eqz v3, :cond_1

    .line 88
    const/4 v4, 0x0

    .line 90
    iput-object v4, v0, Lcom/miui/charge/MiuiChargeController;->mFoldStatus:Ljava/lang/Boolean;

    .line 91
    iget-object v4, v0, Lcom/miui/charge/MiuiChargeController;->mSensorEventListener:Lcom/miui/charge/MiuiChargeController$7;

    .line 93
    iget-object v5, v0, Lcom/miui/charge/MiuiChargeController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 95
    invoke-virtual {v5, v4, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 97
    :cond_1
    invoke-static {}, Lcom/miui/charge/MiuiChargeController;->shouldShowChargeAnim()Z

    .line 100
    move-result v3

    .line 103
    if-eqz v3, :cond_2

    .line 104
    iget-boolean v3, v0, Lcom/miui/charge/MiuiChargeController;->mPendingChargeAnimation:Z

    .line 106
    if-eqz v3, :cond_2

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    const-string v4, " onChargeAnimationDismiss: \u5207\u6362\u52a8\u753b mWireState="

    .line 112
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    iget v4, v0, Lcom/miui/charge/MiuiChargeController;->mWireState:I

    .line 117
    invoke-static {v3, v4, v2}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 119
    iput-boolean p0, v0, Lcom/miui/charge/MiuiChargeController;->mPendingChargeAnimation:Z

    .line 122
    iget p0, v0, Lcom/miui/charge/MiuiChargeController;->mWireState:I

    .line 124
    if-eq p0, v1, :cond_3

    .line 126
    invoke-virtual {v0, p0}, Lcom/miui/charge/MiuiChargeController;->showChargeAnimation(I)V

    .line 128
    goto :goto_1

    .line 131
    :cond_2
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    .line 132
    move-result-object p0

    .line 135
    const/16 v0, 0x14

    .line 136
    invoke-virtual {p0, v0}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 138
    :cond_3
    :goto_1
    return-void

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 142
.end method
