.class public final synthetic Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/DefaultMixedHandler;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

.field public final synthetic f$2:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda3;->f$1:Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda3;->f$2:Landroid/view/SurfaceControl$Transaction;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda3;->f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda3;->f$1:Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 7
    const/4 v2, 0x0

    .line 9
    iput v2, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 10
    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    if-eqz p1, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 20
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 22
    :goto_0
    iget v1, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mAnimType:I

    .line 25
    const/4 v3, 0x1

    .line 27
    if-eq v1, v3, :cond_1

    .line 28
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 30
    iget-object v2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda3;->f$2:Landroid/view/SurfaceControl$Transaction;

    .line 32
    invoke-virtual {v1, p1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRecentsInSplitAnimationFinish(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 34
    goto :goto_2

    .line 37
    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 38
    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v4

    .line 45
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 46
    if-ltz v4, :cond_4

    .line 48
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v5

    .line 53
    check-cast v5, Ljava/lang/Integer;

    .line 54
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 56
    move-result v5

    .line 59
    iget-object v6, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 60
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 62
    move-result v7

    .line 65
    const/4 v8, 0x0

    .line 66
    if-eqz v7, :cond_3

    .line 67
    iget-object v6, v6, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 69
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v5

    .line 74
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 75
    if-eqz v5, :cond_2

    .line 77
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 79
    invoke-virtual {p1, v5, v8, v2}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 81
    goto :goto_1

    .line 84
    :cond_3
    iget-object v6, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 85
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 87
    move-result v7

    .line 90
    if-eqz v7, :cond_2

    .line 91
    iget-object v6, v6, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 93
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 95
    move-result-object v5

    .line 98
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 99
    if-eqz v5, :cond_2

    .line 101
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 103
    invoke-virtual {p1, v5, v8, v2}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 105
    goto :goto_1

    .line 108
    :cond_4
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 109
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 111
    if-nez v2, :cond_5

    .line 113
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 115
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateRecentTasksSplitPair()V

    .line 118
    :cond_5
    :goto_2
    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 121
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onTransitionAnimationComplete()V

    .line 123
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda3;->f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 126
    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 128
    return-void
    .line 131
.end method
