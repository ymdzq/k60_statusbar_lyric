.class public final Lcom/android/wm/shell/splitscreen/StageCoordinator$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic val$isEnteringSplit:Z

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->val$isEnteringSplit:Z

    .line 4
    iput p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->val$position:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    iget-boolean p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->val$isEnteringSplit:Z

    .line 4
    if-eqz p3, :cond_0

    .line 6
    iget-object p4, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 8
    invoke-virtual {p4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 10
    move-result p4

    .line 13
    if-nez p4, :cond_0

    .line 14
    new-instance p4, Lcom/android/wm/shell/splitscreen/StageCoordinator$2$$ExternalSyntheticLambda0;

    .line 16
    const/4 v0, 0x2

    .line 18
    invoke-direct {p4, v0, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$2$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 19
    iget-object v0, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 22
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 24
    invoke-virtual {v0, p4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 26
    iget-object p4, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    .line 29
    invoke-virtual {p4}, Landroid/widget/Toast;->show()V

    .line 31
    :cond_0
    if-eqz p2, :cond_2

    .line 34
    const/4 p4, 0x0

    .line 36
    :goto_0
    array-length v0, p2

    .line 37
    if-ge p4, v0, :cond_2

    .line 38
    aget-object v0, p2, p4

    .line 40
    iget v1, v0, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 42
    if-nez v1, :cond_1

    .line 44
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 46
    invoke-virtual {p6, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 48
    :cond_1
    add-int/lit8 p4, p4, 0x1

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 54
    if-eqz p5, :cond_3

    .line 57
    :try_start_0
    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_1

    .line 62
    :catch_0
    move-exception p4

    .line 63
    const-string p5, "StageCoordinator"

    .line 64
    const-string p6, "Error finishing legacy transition: "

    .line 66
    invoke-static {p5, p6, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_3
    :goto_1
    if-nez p3, :cond_5

    .line 71
    if-eqz p2, :cond_5

    .line 73
    new-instance p3, Landroid/window/WindowContainerTransaction;

    .line 75
    invoke-direct {p3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 77
    iget p4, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 80
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->val$position:I

    .line 82
    if-ne p0, p4, :cond_4

    .line 84
    iget-object p0, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 86
    invoke-virtual {p0, p2, p3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    .line 88
    goto :goto_2

    .line 91
    :cond_4
    iget-object p0, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 92
    invoke-virtual {p0, p2, p3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    .line 94
    :goto_2
    iget-object p0, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 97
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 99
    :cond_5
    return-void
    .line 102
.end method
