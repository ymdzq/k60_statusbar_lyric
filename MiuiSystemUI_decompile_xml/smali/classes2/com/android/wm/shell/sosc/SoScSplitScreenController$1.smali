.class Lcom/android/wm/shell/sosc/SoScSplitScreenController$1;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

.field final synthetic val$position:I

.field final synthetic val$result:[I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController;[II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$1;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$1;->val$result:[I

    .line 4
    iput p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$1;->val$position:I

    .line 6
    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 2

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$1;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 7
    iget-object v1, v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 9
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->prepareEvictInvisibleChildTasks(Landroid/window/WindowContainerTransaction;)V

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$1;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 14
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->-$$Nest$fgetmSyncQueue(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 20
    return-void
    .line 23
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 7
    move-result-object p3

    .line 10
    const-string p4, "Failed to invoke onAnimationFinished"

    .line 11
    invoke-static {p3, p4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$1;->val$result:[I

    .line 16
    const/4 p3, 0x0

    .line 18
    aget p1, p1, p3

    .line 19
    if-eqz p1, :cond_0

    .line 21
    const/4 p3, 0x2

    .line 23
    if-ne p1, p3, :cond_1

    .line 24
    :cond_0
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 26
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 28
    iget-object p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$1;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 31
    iget-object p3, p3, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 33
    iget p4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$1;->val$position:I

    .line 35
    invoke-virtual {p3, p4, p2, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->prepareEvictNonOpeningChildTasks(I[Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$1;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 40
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->-$$Nest$fgetmSyncQueue(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 42
    move-result-object p0

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 46
    :cond_1
    return-void
    .line 49
.end method
