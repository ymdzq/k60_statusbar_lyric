.class public final synthetic Lcom/android/wm/shell/transition/RemoteTransitionHandler$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic f$3:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2$$ExternalSyntheticLambda0;->f$3:Landroid/window/WindowContainerTransaction;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2$$ExternalSyntheticLambda0;->f$3:Landroid/window/WindowContainerTransaction;

    .line 8
    iget-object v0, v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 10
    iget-object v0, v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    .line 12
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    const-string v0, "RemoteTransitionHandler"

    .line 20
    const-string v1, "Merged transition finished after it\'s mergeTarget (the transition it was supposed to merge into). This usually means that the mergeTarget\'s RemoteTransition impl erroneously accepted/ran the merge request after finishing the mergeTarget"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 27
    invoke-interface {v2, p0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 28
    return-void
    .line 31
.end method
