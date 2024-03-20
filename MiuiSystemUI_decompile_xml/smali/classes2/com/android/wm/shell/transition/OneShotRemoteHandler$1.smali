.class public final Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;
.super Lcom/android/wm/shell/transition/MIUIRemoteTransitionFinishedCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

.field public final synthetic val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$remoteDied:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/OneShotRemoteHandler;Lcom/android/wm/shell/transition/OneShotRemoteHandler$$ExternalSyntheticLambda0;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;->this$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;->val$remoteDied:Landroid/os/IBinder$DeathRecipient;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 6
    iput-object p4, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 8
    invoke-direct {p0}, Lcom/android/wm/shell/transition/MIUIRemoteTransitionFinishedCallback;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/MIUIRemoteTransitionFinishedCallback$1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;->this$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    .line 4
    invoke-virtual {v0}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;->this$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 12
    iget-object v0, v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    .line 14
    invoke-virtual {v0}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    .line 16
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;->val$remoteDied:Landroid/os/IBinder$DeathRecipient;

    .line 20
    const/4 v2, 0x0

    .line 22
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 23
    :cond_0
    if-eqz p1, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 28
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;->this$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 33
    iget-object p1, p1, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 35
    iget-object p0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 37
    new-instance v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;

    .line 39
    invoke-direct {v0, p0, p2, p3}, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/MIUIRemoteTransitionFinishedCallback$1;)V

    .line 41
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 44
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 46
    return-void
    .line 49
.end method
