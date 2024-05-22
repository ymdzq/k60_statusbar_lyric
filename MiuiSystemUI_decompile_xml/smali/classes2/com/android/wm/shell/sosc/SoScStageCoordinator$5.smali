.class Lcom/android/wm/shell/sosc/SoScStageCoordinator$5;
.super Landroid/view/IRemoteAnimationFinishedCallback$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
