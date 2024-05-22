.class public final Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;
.super Lcom/android/wm/shell/transition/MIUIRemoteTransitionFinishedCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

.field public final synthetic val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$remote:Landroid/window/RemoteTransition;

.field public final synthetic val$transition:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$remote:Landroid/window/RemoteTransition;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 6
    iput-object p4, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 8
    iput-object p5, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$transition:Landroid/os/IBinder;

    .line 10
    invoke-direct {p0}, Lcom/android/wm/shell/transition/MIUIRemoteTransitionFinishedCallback;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/MIUIRemoteTransitionFinishedCallback$1;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$remote:Landroid/window/RemoteTransition;

    .line 4
    invoke-virtual {v1}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    .line 6
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->unhandleDeath(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 12
    if-eqz p1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 17
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 19
    :cond_0
    invoke-static {}, Lmiui/smartpower/SmartPowerManagerStub;->getInstance()Lmiui/smartpower/SmartPowerManagerStub;

    .line 22
    move-result-object p1

    .line 25
    const/16 v0, 0x65

    .line 26
    invoke-interface {p1, v0}, Lmiui/smartpower/SmartPowerManagerStub;->onTransitionAnimateEnd(I)V

    .line 28
    iget-object p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 31
    iget-object p1, p1, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 33
    iget-object v2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$transition:Landroid/os/IBinder;

    .line 35
    iget-object v3, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 37
    new-instance v6, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1$$ExternalSyntheticLambda0;

    .line 39
    move-object v0, v6

    .line 41
    move-object v1, p0

    .line 42
    move-object v4, p2

    .line 43
    move-object v5, p3

    .line 44
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/MIUIRemoteTransitionFinishedCallback$1;)V

    .line 45
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 48
    invoke-virtual {p1, v6}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void
    .line 53
.end method
