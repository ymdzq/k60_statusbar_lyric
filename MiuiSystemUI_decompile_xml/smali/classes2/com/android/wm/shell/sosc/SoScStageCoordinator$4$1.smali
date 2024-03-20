.class Lcom/android/wm/shell/sosc/SoScStageCoordinator$4$1;
.super Landroid/view/IRemoteAnimationFinishedCallback$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$1:Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;

.field final synthetic val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4$1;->this$1:Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4$1;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 4
    invoke-direct {p0}, Landroid/view/IRemoteAnimationFinishedCallback$Stub;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4$1;->this$1:Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 4
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4;->val$evictWct:Landroid/window/WindowContainerTransaction;

    .line 6
    invoke-static {v1, v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$monRemoteAnimationFinishedOrCancelled(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/window/WindowContainerTransaction;)V

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$4$1;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 11
    invoke-interface {p0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    .line 13
    return-void
    .line 16
.end method
