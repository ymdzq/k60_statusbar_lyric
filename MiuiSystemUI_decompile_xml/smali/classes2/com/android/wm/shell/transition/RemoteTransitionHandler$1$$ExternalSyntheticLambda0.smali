.class public final synthetic Lcom/android/wm/shell/transition/RemoteTransitionHandler$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic f$3:Landroid/window/WindowContainerTransaction;

.field public final synthetic f$4:Landroid/window/WindowContainerTransactionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/MIUIRemoteTransitionFinishedCallback$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1$$ExternalSyntheticLambda0;->f$3:Landroid/window/WindowContainerTransaction;

    .line 11
    iput-object p5, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1$$ExternalSyntheticLambda0;->f$4:Landroid/window/WindowContainerTransactionCallback;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1$$ExternalSyntheticLambda0;->f$3:Landroid/window/WindowContainerTransaction;

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1$$ExternalSyntheticLambda0;->f$4:Landroid/window/WindowContainerTransactionCallback;

    .line 10
    iget-object v0, v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 12
    iget-object v0, v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {v2, v3, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 19
    return-void
    .line 22
.end method
