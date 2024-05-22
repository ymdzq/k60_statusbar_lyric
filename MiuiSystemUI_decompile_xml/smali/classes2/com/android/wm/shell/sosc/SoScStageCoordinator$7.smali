.class Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field final synthetic val$dividerLeash:Landroid/view/SurfaceControl;

.field final synthetic val$transaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 18
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 21
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 26
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmTransactionPool(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Lcom/android/wm/shell/common/TransactionPool;

    .line 28
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 32
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 37
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fputmDividerFadeInAnimator(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)V

    .line 39
    return-void
    .line 42
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 2
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 13
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmSplitLayout(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Lcom/android/wm/shell/common/split/SplitLayout;

    .line 15
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 19
    invoke-static {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmTempRect1(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Landroid/graphics/Rect;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    .line 25
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 28
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 32
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 37
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 40
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 43
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 45
    const v1, 0x7fffffff

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 50
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 53
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 55
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 57
    invoke-static {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmTempRect1(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Landroid/graphics/Rect;

    .line 59
    move-result-object v1

    .line 62
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 63
    int-to-float v1, v1

    .line 65
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 66
    invoke-static {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmTempRect1(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Landroid/graphics/Rect;

    .line 68
    move-result-object v2

    .line 71
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 72
    int-to-float v2, v2

    .line 74
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 75
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 78
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 80
    return-void

    .line 83
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$7;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 84
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmDividerFadeInAnimator(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Landroid/animation/ValueAnimator;

    .line 86
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 90
    return-void
    .line 93
.end method
