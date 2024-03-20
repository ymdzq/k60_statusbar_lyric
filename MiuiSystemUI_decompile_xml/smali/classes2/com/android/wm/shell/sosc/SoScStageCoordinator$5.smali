.class Lcom/android/wm/shell/sosc/SoScStageCoordinator$5;
.super Landroid/view/IRemoteAnimationFinishedCallback$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field final synthetic val$apps:[Landroid/view/RemoteAnimationTarget;

.field final synthetic val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$5;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$5;->val$apps:[Landroid/view/RemoteAnimationTarget;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$5;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 6
    invoke-direct {p0}, Landroid/view/IRemoteAnimationFinishedCallback$Stub;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$5;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$5;->val$apps:[Landroid/view/RemoteAnimationTarget;

    .line 4
    invoke-static {v0, v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$monRemoteAnimationFinished(Lcom/android/wm/shell/sosc/SoScStageCoordinator;[Landroid/view/RemoteAnimationTarget;)V

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$5;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 9
    invoke-interface {p0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    .line 11
    return-void
    .line 14
.end method
