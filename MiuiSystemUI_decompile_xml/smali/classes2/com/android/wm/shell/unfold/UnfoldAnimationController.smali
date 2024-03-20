.class public final Lcom/android/wm/shell/unfold/UnfoldAnimationController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;


# instance fields
.field public final mAnimators:Ljava/util/List;

.field public final mAnimatorsByTaskId:Landroid/util/SparseArray;

.field public final mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mIsInStageChange:Z

.field public final mTaskSurfaces:Landroid/util/SparseArray;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public final mUnfoldProgressProvider:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

.field public final mUnfoldTransitionHandler:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;Ljava/util/List;Ldagger/Lazy;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTaskSurfaces:Landroid/util/SparseArray;

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimatorsByTaskId:Landroid/util/SparseArray;

    .line 17
    iput-object p3, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mUnfoldProgressProvider:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    .line 19
    iput-object p5, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mUnfoldTransitionHandler:Ldagger/Lazy;

    .line 21
    iput-object p2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 23
    iput-object p6, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 25
    iput-object p4, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    .line 27
    sget-object p2, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;->NO_PROVIDER:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$1;

    .line 29
    if-eq p3, p2, :cond_0

    .line 31
    new-instance p2, Lcom/android/wm/shell/unfold/UnfoldAnimationController$$ExternalSyntheticLambda0;

    .line 33
    const/4 p3, 0x0

    .line 35
    invoke-direct {p2, p3, p0}, Lcom/android/wm/shell/unfold/UnfoldAnimationController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 36
    invoke-virtual {p1, p0, p2}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 39
    :cond_0
    return-void
    .line 42
.end method


# virtual methods
.method public final onStateChangeFinished()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mUnfoldTransitionHandler:Ldagger/Lazy;

    .line 2
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Optional;

    .line 8
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 14
    iget-object v0, v0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransition:Landroid/os/IBinder;

    .line 16
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 27
    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 29
    move-result-object v2

    .line 32
    move v3, v1

    .line 33
    :goto_1
    iget-object v4, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    .line 34
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 36
    move-result v5

    .line 39
    if-ge v3, v5, :cond_2

    .line 40
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 45
    check-cast v4, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    .line 46
    invoke-interface {v4, v2}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->resetAllSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    .line 48
    invoke-interface {v4, v2}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->prepareFinishTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 54
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 57
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 60
    iput-boolean v1, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mIsInStageChange:Z

    .line 63
    return-void
    .line 65
.end method

.method public final onStateChangeProgress(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mUnfoldTransitionHandler:Ldagger/Lazy;

    .line 2
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Optional;

    .line 8
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 14
    iget-object v0, v0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransition:Landroid/os/IBinder;

    .line 16
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    return-void

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 30
    move-result v3

    .line 33
    iget-object v4, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 34
    if-ge v1, v3, :cond_4

    .line 36
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    .line 42
    invoke-interface {v2}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->hasActiveTasks()Z

    .line 44
    move-result v3

    .line 47
    if-eqz v3, :cond_3

    .line 48
    if-nez v0, :cond_2

    .line 50
    invoke-virtual {v4}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 52
    move-result-object v0

    .line 55
    :cond_2
    invoke-interface {v2, v0, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->applyAnimationProgress(Landroid/view/SurfaceControl$Transaction;F)V

    .line 56
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_1

    .line 61
    :cond_4
    if-eqz v0, :cond_5

    .line 62
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 64
    invoke-virtual {v4, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 67
    :cond_5
    return-void
    .line 70
.end method

.method public final onStateChangeStarted()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mUnfoldTransitionHandler:Ldagger/Lazy;

    .line 2
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Optional;

    .line 8
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 14
    iget-object v0, v0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransition:Landroid/os/IBinder;

    .line 16
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v0, :cond_0

    .line 20
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    return-void

    .line 27
    :cond_1
    iput-boolean v2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mIsInStageChange:Z

    .line 28
    const/4 v0, 0x0

    .line 30
    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 33
    move-result v3

    .line 36
    iget-object v4, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 37
    if-ge v1, v3, :cond_4

    .line 39
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 44
    check-cast v2, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    .line 45
    invoke-interface {v2}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->hasActiveTasks()Z

    .line 47
    move-result v3

    .line 50
    if-eqz v3, :cond_3

    .line 51
    if-nez v0, :cond_2

    .line 53
    invoke-virtual {v4}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 55
    move-result-object v0

    .line 58
    :cond_2
    invoke-interface {v2, v0}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->prepareStartTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 59
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 62
    goto :goto_1

    .line 64
    :cond_4
    if-eqz v0, :cond_5

    .line 65
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 67
    invoke-virtual {v4, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 70
    :cond_5
    return-void
    .line 73
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimatorsByTaskId:Landroid/util/SparseArray;

    .line 2
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    .line 10
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    const/4 v3, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v2

    .line 17
    :goto_0
    if-eqz v3, :cond_3

    .line 18
    invoke-interface {v1, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->isApplicableTask(Landroid/app/TaskInfo;)Z

    .line 20
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    invoke-interface {v1, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->onTaskChanged(Landroid/app/TaskInfo;)V

    .line 26
    goto :goto_3

    .line 29
    :cond_1
    iget-boolean v2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mIsInStageChange:Z

    .line 30
    if-nez v2, :cond_2

    .line 32
    goto :goto_1

    .line 34
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 35
    invoke-virtual {p0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 37
    move-result-object v2

    .line 40
    invoke-interface {v1, p1, v2}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->resetSurface(Landroid/app/TaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 41
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 44
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 47
    :goto_1
    invoke-interface {v1, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->onTaskVanished(Landroid/app/TaskInfo;)V

    .line 50
    iget p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 53
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 55
    goto :goto_3

    .line 58
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    .line 59
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 61
    move-result v3

    .line 64
    if-ge v2, v3, :cond_5

    .line 65
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 70
    check-cast v1, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    .line 71
    invoke-interface {v1, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->isApplicableTask(Landroid/app/TaskInfo;)Z

    .line 73
    move-result v3

    .line 76
    if-eqz v3, :cond_4

    .line 77
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 79
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    iget-object p0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTaskSurfaces:Landroid/util/SparseArray;

    .line 84
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 86
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object p0

    .line 91
    check-cast p0, Landroid/view/SurfaceControl;

    .line 92
    invoke-interface {v1, p1, p0}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->onTaskAppeared(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;)V

    .line 94
    goto :goto_3

    .line 97
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 98
    goto :goto_2

    .line 100
    :cond_5
    :goto_3
    return-void
    .line 101
.end method
