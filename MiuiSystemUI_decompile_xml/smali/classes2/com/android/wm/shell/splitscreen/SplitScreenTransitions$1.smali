.class public final Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

.field public final synthetic val$end:F

.field public final synthetic val$leash:Landroid/view/SurfaceControl;

.field public final synthetic val$transaction:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$va:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;FLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$leash:Landroid/view/SurfaceControl;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 6
    iput p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$end:F

    .line 8
    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$va:Landroid/animation/ValueAnimator;

    .line 10
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$leash:Landroid/view/SurfaceControl;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$leash:Landroid/view/SurfaceControl;

    .line 14
    iget v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$end:F

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 22
    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$leash:Landroid/view/SurfaceControl;

    .line 26
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 32
    const-string v1, "SplitScreenTransitions"

    .line 34
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 39
    const v1, -0x59f9241e

    .line 40
    const/4 v2, 0x0

    .line 43
    const-string v3, "%s: Invalid leash on startFadeAnimation: %s"

    .line 44
    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 49
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 51
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 54
    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 56
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 58
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 60
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 63
    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 65
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 67
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$va:Landroid/animation/ValueAnimator;

    .line 69
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1$$ExternalSyntheticLambda0;

    .line 71
    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;Landroid/animation/ValueAnimator;)V

    .line 73
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 76
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 78
    return-void
    .line 81
.end method
