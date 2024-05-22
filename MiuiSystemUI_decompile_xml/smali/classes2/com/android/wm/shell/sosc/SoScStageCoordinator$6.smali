.class Lcom/android/wm/shell/sosc/SoScStageCoordinator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field final synthetic val$bottomRightScreenshot:Landroid/view/SurfaceControl;

.field final synthetic val$t:Landroid/view/SurfaceControl$Transaction;

.field final synthetic val$topLeftScreenshot:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$6;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$6;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$6;->val$topLeftScreenshot:Landroid/view/SurfaceControl;

    .line 6
    iput-object p4, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$6;->val$bottomRightScreenshot:Landroid/view/SurfaceControl;

    .line 8
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$6;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$6;->val$topLeftScreenshot:Landroid/view/SurfaceControl;

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 6
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$6;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$6;->val$bottomRightScreenshot:Landroid/view/SurfaceControl;

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 13
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$6;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 16
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 18
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$6;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 21
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmTransactionPool(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Lcom/android/wm/shell/common/TransactionPool;

    .line 23
    move-result-object p1

    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$6;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 27
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 29
    return-void
.end method
