.class Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field final synthetic val$adapter:Landroid/view/RemoteAnimationAdapter;

.field final synthetic val$evictWct:Landroid/window/WindowContainerTransaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/window/WindowContainerTransaction;Landroid/view/RemoteAnimationAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;->val$evictWct:Landroid/window/WindowContainerTransaction;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;->val$adapter:Landroid/view/RemoteAnimationAdapter;

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
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;->val$evictWct:Landroid/window/WindowContainerTransaction;

    .line 4
    invoke-static {v0, v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$monRemoteAnimationFinishedOrCancelled(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/window/WindowContainerTransaction;)V

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 9
    invoke-static {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$msetDividerVisibility(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)V

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;->val$adapter:Landroid/view/RemoteAnimationAdapter;

    .line 14
    invoke-virtual {p0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    .line 16
    move-result-object p0

    .line 19
    invoke-interface {p0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    const-string v1, "Error starting remote animation"

    .line 29
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    :goto_0
    return-void
    .line 34
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4$1;

    .line 2
    invoke-direct {v5, p0, p5}, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4$1;-><init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 4
    iget-object p5, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;->val$adapter:Landroid/view/RemoteAnimationAdapter;

    .line 7
    invoke-virtual {p5}, Landroid/view/RemoteAnimationAdapter;->getCallingApplication()Landroid/app/IApplicationThread;

    .line 9
    move-result-object p5

    .line 12
    invoke-static {p5}, Lcom/android/wm/shell/transition/Transitions;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    .line 13
    :try_start_0
    iget-object p5, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;->val$adapter:Landroid/view/RemoteAnimationAdapter;

    .line 16
    invoke-virtual {p5}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    .line 18
    move-result-object v0

    .line 21
    const-class p5, Landroid/view/RemoteAnimationTarget;

    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 24
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;

    .line 26
    move-result-object p0

    .line 29
    invoke-static {p5, p4, p0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 33
    move-object v4, p0

    .line 34
    check-cast v4, [Landroid/view/RemoteAnimationTarget;

    .line 35
    move v1, p1

    .line 37
    move-object v2, p2

    .line 38
    move-object v3, p3

    .line 39
    invoke-interface/range {v0 .. v5}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 48
    const-string p2, "Error starting remote animation"

    .line 49
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    :goto_0
    return-void
    .line 54
.end method
