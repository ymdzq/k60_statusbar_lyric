.class Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

.field final synthetic val$animCount:[I

.field final synthetic val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

.field final synthetic val$finalFreeformScale:F

.field final synthetic val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field final synthetic val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

.field final synthetic val$finishWct:Landroid/window/WindowContainerTransaction;

.field final synthetic val$info:Landroid/window/TransitionInfo;

.field final synthetic val$leash:Landroid/view/SurfaceControl;

.field final synthetic val$targetBounds:Landroid/graphics/Rect;

.field final synthetic val$taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;FLandroid/app/ActivityManager$RunningTaskInfo;[ILandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$leash:Landroid/view/SurfaceControl;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 6
    iput-object p4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$targetBounds:Landroid/graphics/Rect;

    .line 8
    iput p5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$finalFreeformScale:F

    .line 10
    iput-object p6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    iput-object p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$animCount:[I

    .line 14
    iput-object p8, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$info:Landroid/window/TransitionInfo;

    .line 16
    iput-object p9, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 18
    iput-object p10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 20
    iput-object p11, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$finishWct:Landroid/window/WindowContainerTransaction;

    .line 22
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 24
    return-void
    .line 27
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->onComplete(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

    .line 2
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$targetBounds:Landroid/graphics/Rect;

    .line 8
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$finalFreeformScale:F

    .line 10
    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->onEnterFreeformMode(Landroid/content/Context;Landroid/graphics/Rect;F)V

    .line 12
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 15
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

    .line 21
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->-$$Nest$fgetmWindowDecorViewModel(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 23
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 27
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 31
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 33
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->showOtherFreeform(I)V

    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 38
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 40
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->autoLayoutIfNeed(I)V

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$animCount:[I

    .line 45
    const/4 v0, 0x0

    .line 47
    aget v1, p1, v0

    .line 48
    add-int/lit8 v1, v1, -0x1

    .line 50
    aput v1, p1, v0

    .line 52
    if-nez v1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

    .line 56
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$info:Landroid/window/TransitionInfo;

    .line 58
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getType()I

    .line 60
    move-result v0

    .line 63
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 64
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 66
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$finishWct:Landroid/window/WindowContainerTransaction;

    .line 68
    invoke-static {v0, v2, p0, p1, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->-$$Nest$mfinishTransition(ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 70
    :cond_1
    return-void
    .line 73
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$leash:Landroid/view/SurfaceControl;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

    .line 12
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->-$$Nest$fgetmTransactionPool(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)Lcom/android/wm/shell/common/TransactionPool;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 18
    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$leash:Landroid/view/SurfaceControl;

    .line 22
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 24
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 26
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 30
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 32
    move-result v1

    .line 35
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 36
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$leash:Landroid/view/SurfaceControl;

    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 41
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 43
    move-result v0

    .line 46
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 47
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 49
    move-result v1

    .line 52
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 53
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$leash:Landroid/view/SurfaceControl;

    .line 56
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 58
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 60
    move-result v0

    .line 63
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 64
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 66
    move-result v1

    .line 69
    div-float/2addr v0, v1

    .line 70
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 71
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 73
    move-result v1

    .line 76
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 77
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 79
    move-result v2

    .line 82
    div-float/2addr v1, v2

    .line 83
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 84
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 87
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

    .line 90
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->-$$Nest$fgetmTransactionPool(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)Lcom/android/wm/shell/common/TransactionPool;

    .line 92
    move-result-object p0

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 96
    :cond_0
    return-void
    .line 99
.end method
