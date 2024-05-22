.class Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;

.field final synthetic val$end:F

.field final synthetic val$leash:Landroid/view/SurfaceControl;

.field final synthetic val$transaction:Landroid/view/SurfaceControl$Transaction;

.field final synthetic val$va:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$xW8MjQ5kdlvcPCcxTRzg3rJJLaA(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;->lambda$onAnimationEnd$0(Landroid/animation/ValueAnimator;)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;FLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;->val$leash:Landroid/view/SurfaceControl;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 6
    iput p4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;->val$end:F

    .line 8
    iput-object p5, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;->val$va:Landroid/animation/ValueAnimator;

    .line 10
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 12
    return-void
    .line 15
.end method

.method private synthetic lambda$onAnimationEnd$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->-$$Nest$fgetmAnimations(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;)Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;

    .line 11
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;->val$leash:Landroid/view/SurfaceControl;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;->val$leash:Landroid/view/SurfaceControl;

    .line 14
    iget v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;->val$end:F

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 18
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 21
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;

    .line 26
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->-$$Nest$fgetmTransitions(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;)Lcom/android/wm/shell/transition/Transitions;

    .line 28
    move-result-object p1

    .line 31
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;->val$va:Landroid/animation/ValueAnimator;

    .line 34
    new-instance v1, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda5;

    .line 36
    const/4 v2, 0x1

    .line 38
    invoke-direct {v1, p0, v0, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Cloneable;I)V

    .line 39
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 42
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 44
    return-void
    .line 47
.end method
