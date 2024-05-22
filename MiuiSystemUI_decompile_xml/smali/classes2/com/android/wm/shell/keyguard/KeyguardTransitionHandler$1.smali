.class public final Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;
.super Lcom/android/wm/shell/transition/MIUIRemoteTransitionFinishedCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

.field public final synthetic val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$transition:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$transition:Landroid/os/IBinder;

    .line 6
    iput-object p4, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 8
    invoke-direct {p0}, Lcom/android/wm/shell/transition/MIUIRemoteTransitionFinishedCallback;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/MIUIRemoteTransitionFinishedCallback$1;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 9
    iget-object p1, p1, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 11
    iget-object v2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$transition:Landroid/os/IBinder;

    .line 13
    iget-object v3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 15
    new-instance v7, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;

    .line 17
    const/4 v6, 0x0

    .line 19
    move-object v0, v7

    .line 20
    move-object v1, p0

    .line 21
    move-object v4, p2

    .line 22
    move-object v5, p3

    .line 23
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 24
    const-wide/16 p2, 0x0

    .line 27
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 29
    invoke-virtual {p1, v7, p2, p3}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 31
    return-void
    .line 34
.end method
