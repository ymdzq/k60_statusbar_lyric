.class Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field final synthetic val$isEnteringSplit:Z

.field final synthetic val$position:I


# direct methods
.method public static synthetic $r8$lambda$6Cj49J6JLC7BVSiyVfOvNjptRpk(Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->lambda$onAnimationStart$0()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$kE0uDoUPTGn4S5SgsbDNLdJxTG0(Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->lambda$onAnimationCancelled$1()V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    iput-boolean p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->val$isEnteringSplit:Z

    .line 4
    iput p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->val$position:I

    .line 6
    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    .line 8
    return-void
    .line 11
.end method

.method private synthetic lambda$onAnimationCancelled$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmSideStage(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Lcom/android/wm/shell/sosc/SoScSideStage;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->getChildCount()I

    .line 8
    move-result v1

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 12
    if-nez v1, :cond_0

    .line 14
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmMainStage(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Lcom/android/wm/shell/sosc/SoScMainStage;

    .line 16
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmSideStage(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Lcom/android/wm/shell/sosc/SoScSideStage;

    .line 21
    move-result-object p0

    .line 24
    :goto_0
    const/4 v1, 0x0

    .line 25
    invoke-static {v0, p0, v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$mexitSplitScreen(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Lcom/android/wm/shell/sosc/SoScStageTaskListener;I)V

    .line 26
    return-void
    .line 29
.end method

.method private synthetic lambda$onAnimationStart$0()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0, v0, v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$mexitSplitScreen(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Lcom/android/wm/shell/sosc/SoScStageTaskListener;I)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->val$isEnteringSplit:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 6
    invoke-static {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 8
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2$$ExternalSyntheticLambda0;

    .line 12
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;I)V

    .line 15
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->val$isEnteringSplit:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 6
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmSideStage(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Lcom/android/wm/shell/sosc/SoScSideStage;

    .line 8
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->getChildCount()I

    .line 12
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 18
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 20
    move-result-object p1

    .line 23
    new-instance p3, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2$$ExternalSyntheticLambda0;

    .line 24
    const/4 p4, 0x1

    .line 26
    invoke-direct {p3, p0, p4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;I)V

    .line 27
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 30
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 32
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 35
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmSplitUnsupportedToast(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Landroid/widget/Toast;

    .line 37
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 41
    :cond_0
    if-eqz p5, :cond_1

    .line 44
    :try_start_0
    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 51
    move-result-object p3

    .line 54
    const-string p4, "Error finishing legacy transition: "

    .line 55
    invoke-static {p3, p4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->val$isEnteringSplit:Z

    .line 60
    if-nez p1, :cond_2

    .line 62
    if-eqz p2, :cond_2

    .line 64
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 66
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 68
    iget-object p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 71
    iget p4, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->val$position:I

    .line 73
    invoke-virtual {p3, p4, p2, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->prepareEvictNonOpeningChildTasks(I[Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    .line 75
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$2;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 78
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmSyncQueue(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 80
    move-result-object p0

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 84
    :cond_2
    return-void
    .line 87
.end method
