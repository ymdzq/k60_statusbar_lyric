.class Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field final synthetic val$isEnteringSplit:Z

.field final synthetic val$position:I


# direct methods
.method public static synthetic $r8$lambda$giGfTdSO_rJ6ulWMRnh8h3As1IY(Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;->lambda$onAnimationStart$0()V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    iput-boolean p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;->val$isEnteringSplit:Z

    .line 4
    iput p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;->val$position:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method

.method private synthetic lambda$onAnimationStart$0()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

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
.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;->val$isEnteringSplit:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

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
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 18
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 20
    move-result-object p1

    .line 23
    new-instance p3, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda18;

    .line 24
    const/4 p4, 0x1

    .line 26
    invoke-direct {p3, p4, p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda18;-><init>(ILjava/lang/Object;)V

    .line 27
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 30
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 32
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 35
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmSplitUnsupportedToast(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Landroid/widget/Toast;

    .line 37
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 41
    :cond_0
    if-eqz p2, :cond_2

    .line 44
    const/4 p1, 0x0

    .line 46
    :goto_0
    array-length p3, p2

    .line 47
    if-ge p1, p3, :cond_2

    .line 48
    aget-object p3, p2, p1

    .line 50
    iget p4, p3, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 52
    if-nez p4, :cond_1

    .line 54
    iget-object p3, p3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 56
    invoke-virtual {p6, p3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 58
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 61
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 64
    if-eqz p5, :cond_3

    .line 67
    :try_start_0
    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_1

    .line 72
    :catch_0
    move-exception p1

    .line 73
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 74
    move-result-object p3

    .line 77
    const-string p4, "Error finishing legacy transition: "

    .line 78
    invoke-static {p3, p4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;->val$isEnteringSplit:Z

    .line 83
    if-nez p1, :cond_4

    .line 85
    if-eqz p2, :cond_4

    .line 87
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 89
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 91
    iget-object p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 94
    iget p4, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;->val$position:I

    .line 96
    invoke-virtual {p3, p4, p2, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->prepareEvictNonOpeningChildTasks(I[Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    .line 98
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 101
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmSyncQueue(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 103
    move-result-object p0

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 107
    :cond_4
    return-void
    .line 110
.end method
