.class Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;

.field final synthetic val$animInfo:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;

.field final synthetic val$leash:Landroid/view/SurfaceControl;

.field final synthetic val$onEnd:Ljava/lang/Runnable;

.field final synthetic val$t:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$leash:Landroid/view/SurfaceControl;

    .line 6
    iput-object p4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$animInfo:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;

    .line 8
    iput-object p5, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$onEnd:Ljava/lang/Runnable;

    .line 10
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->onComplete(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;

    .line 2
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->-$$Nest$fgetmTransactionPool(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;)Lcom/android/wm/shell/common/TransactionPool;

    .line 4
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$onEnd:Ljava/lang/Runnable;

    .line 13
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 15
    return-void
    .line 18
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 2
    iget-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$leash:Landroid/view/SurfaceControl;

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$animInfo:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;

    .line 6
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->getPosX()F

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$animInfo:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;

    .line 12
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->getPosY()F

    .line 14
    move-result v1

    .line 17
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 18
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 21
    iget-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$leash:Landroid/view/SurfaceControl;

    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$animInfo:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;

    .line 25
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->getScaleX()F

    .line 27
    move-result v0

    .line 30
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$animInfo:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;

    .line 31
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->getScaleY()F

    .line 33
    move-result v1

    .line 36
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 37
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 40
    iget-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$leash:Landroid/view/SurfaceControl;

    .line 42
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$animInfo:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;

    .line 44
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->getLeashAlpha()F

    .line 46
    move-result v0

    .line 49
    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 50
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 53
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 55
    return-void
    .line 58
.end method
