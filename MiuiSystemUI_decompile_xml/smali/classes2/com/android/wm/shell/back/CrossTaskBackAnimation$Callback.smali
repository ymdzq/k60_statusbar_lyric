.class public final Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;
.super Landroid/window/IOnBackInvokedCallback$Default;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    .line 2
    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$Default;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    .line 4
    new-instance v1, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback$$ExternalSyntheticLambda1;

    .line 6
    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/window/BackProgressAnimator;->onBackCancelled(Ljava/lang/Runnable;)V

    .line 11
    return-void
    .line 14
.end method

.method public final onBackInvoked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    .line 4
    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->reset()V

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 15
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    .line 20
    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 24
    const/4 v0, 0x2

    .line 27
    new-array v0, v0, [F

    .line 28
    fill-array-data v0, :array_0

    .line 30
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 33
    move-result-object v0

    .line 36
    const-wide/16 v1, 0x12c

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 39
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 43
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 45
    new-instance v1, Lcom/android/wm/shell/back/CrossTaskBackAnimation$$ExternalSyntheticLambda0;

    .line 48
    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 53
    new-instance v1, Lcom/android/wm/shell/back/CrossTaskBackAnimation$1;

    .line 56
    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$1;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 61
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 64
    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->finishAnimation()V

    .line 68
    :goto_1
    return-void

    .line 71
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 72
.end method

.method public final onBackProgressed(Landroid/window/BackMotionEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    .line 4
    invoke-virtual {p0, p1}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    .line 6
    return-void
    .line 9
.end method

.method public final onBackStarted(Landroid/window/BackMotionEvent;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    .line 4
    new-instance v1, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback$$ExternalSyntheticLambda0;

    .line 6
    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/window/BackProgressAnimator;->onBackStarted(Landroid/window/BackMotionEvent;Landroid/window/BackProgressAnimator$ProgressCallback;)V

    .line 11
    return-void
    .line 14
.end method
