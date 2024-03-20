.class public final Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/unfold/FoldAodAnimationController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/systemui/unfold/FoldAodAnimationController;->setAnimationState(Z)V

    .line 11
    return-void

    .line 14
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 15
    invoke-virtual {p0, v1}, Lcom/android/systemui/unfold/FoldAodAnimationController;->setAnimationState(Z)V

    .line 17
    return-void

    .line 20
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 21
    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->foldToAodLatencyTracker:Lcom/android/systemui/unfold/FoldAodAnimationController$FoldToAodLatencyTracker;

    .line 23
    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldToAodLatencyTracker;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 25
    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 27
    const/16 v0, 0x12

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 31
    return-void

    .line 34
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 35
    iget-boolean v2, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldPlayAnimation:Z

    .line 37
    if-eqz v2, :cond_1

    .line 39
    iget-object v0, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->cancelAnimation:Ljava/lang/Runnable;

    .line 41
    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 48
    iget-object v2, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 50
    iget-object v3, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->startAnimationRunnable:Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;

    .line 52
    const-wide/16 v4, 0x0

    .line 54
    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 56
    move-result-object v2

    .line 59
    iput-object v2, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->cancelAnimation:Ljava/lang/Runnable;

    .line 60
    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 62
    iput-boolean v1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldPlayAnimation:Z

    .line 64
    :cond_1
    return-void

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 67
    invoke-virtual {v0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->getShadeFoldAnimator()Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 69
    move-result-object v0

    .line 72
    new-instance v1, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;

    .line 73
    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 75
    const/4 v2, 0x1

    .line 77
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;I)V

    .line 78
    new-instance v2, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;

    .line 81
    const/4 v3, 0x2

    .line 83
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;I)V

    .line 84
    new-instance v4, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;

    .line 87
    const/4 v5, 0x3

    .line 89
    invoke-direct {v4, p0, v5}, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;I)V

    .line 90
    iget-object p0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$11;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 93
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 95
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 97
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 101
    const/4 v5, 0x0

    .line 104
    invoke-virtual {p0, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 105
    move-result-object v5

    .line 108
    const/high16 v6, 0x3f800000    # 1.0f

    .line 109
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 111
    move-result-object v5

    .line 114
    const-wide/16 v6, 0x258

    .line 115
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 117
    move-result-object v5

    .line 120
    sget-object v6, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    .line 121
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 123
    move-result-object v5

    .line 126
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl$1;

    .line 127
    invoke-direct {v6, v1, v4, v2, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl$1;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;Landroid/view/ViewPropertyAnimator;)V

    .line 129
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 132
    move-result-object p0

    .line 135
    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda15;

    .line 136
    invoke-direct {v1, v3, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda15;-><init>(ILjava/lang/Object;)V

    .line 138
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 141
    move-result-object p0

    .line 144
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 145
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 150
.end method
