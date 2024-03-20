.class public final synthetic Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic f$1:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;->f$1:Landroid/window/WindowContainerTransaction;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;->f$1:Landroid/window/WindowContainerTransaction;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, p0, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 7
    return-void
    .line 10
.end method
