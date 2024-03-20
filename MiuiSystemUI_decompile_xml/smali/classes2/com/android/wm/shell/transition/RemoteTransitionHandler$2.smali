.class public final Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;
.super Lcom/android/wm/shell/transition/MIUIRemoteTransitionFinishedCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

.field public final synthetic val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic val$mergeTarget:Landroid/os/IBinder;

.field public final synthetic val$t:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$mergeTarget:Landroid/os/IBinder;

    .line 6
    iput-object p4, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 8
    invoke-direct {p0}, Lcom/android/wm/shell/transition/MIUIRemoteTransitionFinishedCallback;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/MIUIRemoteTransitionFinishedCallback$1;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 2
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->clear()V

    .line 4
    iget-object p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 7
    iget-object p1, p1, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 9
    iget-object p3, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$mergeTarget:Landroid/os/IBinder;

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 13
    new-instance v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2$$ExternalSyntheticLambda0;

    .line 15
    invoke-direct {v1, p0, p3, v0, p2}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V

    .line 17
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 20
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 22
    return-void
    .line 25
.end method
