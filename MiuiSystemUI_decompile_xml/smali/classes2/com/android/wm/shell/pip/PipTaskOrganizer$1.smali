.class public final Lcom/android/wm/shell/pip/PipTaskOrganizer$1;
.super Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mIsCancelled:Z

.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 2
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPipAnimationCancel(Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->mIsCancelled:Z

    .line 7
    invoke-static {v0}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    .line 9
    move-result v2

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 13
    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getContentOverlayLeash()Landroid/view/SurfaceControl;

    .line 17
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getContentOverlayLeash()Landroid/view/SurfaceControl;

    .line 23
    move-result-object v2

    .line 26
    new-instance v3, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda1;

    .line 27
    invoke-direct {v3, v1, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 29
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->fadeOutAndRemoveOverlay(Landroid/view/SurfaceControl;Ljava/lang/Runnable;Z)V

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionCancelled(I)V

    .line 37
    return-void
    .line 40
.end method

.method public final onPipAnimationEnd(Landroid/app/TaskInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V
    .locals 9

    .line 1
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    .line 2
    move-result v4

    .line 5
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->mIsCancelled:Z

    .line 6
    const/4 v6, 0x0

    .line 8
    iget-object v7, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 9
    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {v7, v4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    .line 13
    iget-object p0, v7, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipFinishResizeWCTRunnable:Ljava/lang/Runnable;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 20
    iput-object v6, v7, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipFinishResizeWCTRunnable:Ljava/lang/Runnable;

    .line 23
    :cond_0
    return-void

    .line 25
    :cond_1
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getAnimationType()I

    .line 26
    move-result v5

    .line 29
    iget-object v3, p3, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    .line 30
    invoke-static {v4}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    .line 32
    move-result p1

    .line 35
    const/4 v0, 0x1

    .line 36
    const/4 v1, 0x2

    .line 37
    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getContentOverlayLeash()Landroid/view/SurfaceControl;

    .line 40
    move-result-object p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getContentOverlayLeash()Landroid/view/SurfaceControl;

    .line 46
    move-result-object p1

    .line 49
    new-instance v2, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda1;

    .line 50
    invoke-direct {v2, v1, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 52
    invoke-virtual {v7, p1, v2, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->fadeOutAndRemoveOverlay(Landroid/view/SurfaceControl;Ljava/lang/Runnable;Z)V

    .line 55
    :cond_2
    iget-boolean p1, v7, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 58
    if-eqz p1, :cond_3

    .line 60
    if-nez v5, :cond_3

    .line 62
    if-ne v4, v1, :cond_3

    .line 64
    new-instance p0, Landroid/window/WindowContainerTransaction;

    .line 66
    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 68
    iget-object p1, v7, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 71
    invoke-virtual {p0, p1, v3}, Landroid/window/WindowContainerTransaction;->scheduleFinishEnterPip(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 73
    iget-object p1, v7, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 76
    invoke-virtual {p1, p0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 78
    iget-object p0, v7, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 81
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    .line 83
    move-result p1

    .line 86
    iget-object p3, v7, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 87
    invoke-virtual {p3, p2, p0, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 89
    iput-object p2, v7, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 92
    return-void

    .line 94
    :cond_3
    invoke-static {v4}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    .line 95
    move-result p1

    .line 98
    const/4 p3, 0x5

    .line 99
    const/4 v8, 0x0

    .line 100
    if-nez p1, :cond_6

    .line 101
    if-ne v4, p3, :cond_4

    .line 103
    move p1, v0

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    move p1, v8

    .line 107
    :goto_0
    if-eqz p1, :cond_5

    .line 108
    goto :goto_1

    .line 110
    :cond_5
    move v0, v8

    .line 111
    :cond_6
    :goto_1
    iget-object p1, v7, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 112
    iget p1, p1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 114
    if-ne p1, p3, :cond_7

    .line 116
    if-eqz v0, :cond_9

    .line 118
    :cond_7
    new-instance p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda0;

    .line 120
    invoke-direct {p1, v7}, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    .line 122
    iget-object p3, v7, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 125
    invoke-virtual {p2, p3, p1}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 127
    new-instance p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda1;

    .line 130
    move-object v0, p1

    .line 132
    move-object v1, p0

    .line 133
    move-object v2, p2

    .line 134
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer$1;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    .line 135
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldSyncPipTransactionWithMenu()Z

    .line 138
    move-result p0

    .line 141
    if-nez p0, :cond_8

    .line 142
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda1;->run()V

    .line 144
    goto :goto_2

    .line 147
    :cond_8
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 148
    move-result-object p0

    .line 151
    new-instance p2, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda8;

    .line 152
    invoke-direct {p2, v7, p1, v8}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Ljava/lang/Object;I)V

    .line 154
    const/4 p1, 0x4

    .line 157
    invoke-virtual {p0, p1, p2, v6}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 158
    :cond_9
    :goto_2
    return-void
    .line 161
.end method

.method public final onPipAnimationStart(Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    .line 2
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->mIsCancelled:Z

    .line 7
    const/4 v0, 0x2

    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 10
    if-ne p1, v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 14
    const/4 v1, 0x3

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionStarted(I)V

    .line 22
    return-void
    .line 25
.end method
