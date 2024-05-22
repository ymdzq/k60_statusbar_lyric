.class public final Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;->$r8$classId:I

    .line 2
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->COMMITTED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 4
    sget-object v2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->GONE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 6
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    goto/16 :goto_1

    .line 13
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 17
    check-cast p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 19
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scalePivotX:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 21
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 23
    iget v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 25
    const/4 v2, 0x2

    .line 27
    int-to-float v2, v2

    .line 28
    div-float/2addr v1, v2

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    .line 30
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 33
    const/high16 v0, 0x40000000    # 2.0f

    .line 35
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    move-result-object v0

    .line 40
    const/4 v1, 0x4

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-static {p0, v2, v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchTo$default(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;FLjava/lang/Float;I)V

    .line 43
    return-void

    .line 46
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    .line 47
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 49
    sget-object v0, Lcom/android/systemui/navigationbar/gestural/BackPanelControllerKt;->VIBRATE_ACTIVATED_EFFECT:Landroid/os/VibrationEffect;

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 53
    return-void

    .line 56
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    .line 57
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 59
    return-void

    .line 62
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    .line 63
    sget-object v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->FLUNG:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 65
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 67
    return-void

    .line 70
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    .line 71
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 73
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    .line 75
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 77
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    .line 80
    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 82
    return-void

    .line 85
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    .line 86
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 88
    return-void

    .line 91
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    .line 92
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    .line 97
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 99
    check-cast v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 101
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->getBackgroundAlpha()Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 103
    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    .line 107
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 109
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 111
    iget-boolean v2, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 113
    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 117
    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    .line 121
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 123
    move v3, v4

    .line 126
    :goto_0
    if-nez v3, :cond_1

    .line 127
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    .line 129
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    .line 131
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 133
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    const-wide/16 v1, 0x15e

    .line 138
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    :cond_1
    return-void

    .line 143
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    .line 144
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 146
    return-void

    .line 149
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    .line 150
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/VibratorHelper;->hasVibrator()Z

    .line 154
    move-result v0

    .line 157
    if-nez v0, :cond_2

    .line 158
    goto :goto_2

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    .line 161
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v1, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda2;

    .line 166
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda2;-><init>(Landroid/os/Vibrator;)V

    .line 168
    iget-object p0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 171
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 173
    :goto_2
    return-void

    .line 176
    nop

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 178
.end method
