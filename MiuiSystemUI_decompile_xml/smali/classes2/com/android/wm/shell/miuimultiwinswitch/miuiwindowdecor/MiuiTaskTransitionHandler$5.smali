.class Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

.field final synthetic val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

.field final synthetic val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field final synthetic val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

.field final synthetic val$info:Landroid/window/TransitionInfo;

.field final synthetic val$leash:Landroid/view/SurfaceControl;

.field final synthetic val$targetBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$leash:Landroid/view/SurfaceControl;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 6
    iput-object p4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$targetBounds:Landroid/graphics/Rect;

    .line 8
    iput-object p5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$info:Landroid/window/TransitionInfo;

    .line 10
    iput-object p6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 12
    iput-object p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 14
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 16
    return-void
    .line 19
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->onComplete(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

    .line 2
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->-$$Nest$fgetmSplitToFullTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->-$$Nest$fputmSplitToFullTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;I)V

    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

    .line 13
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->-$$Nest$fgetmSplitToFullTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)I

    .line 15
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$info:Landroid/window/TransitionInfo;

    .line 23
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getType()I

    .line 25
    move-result v0

    .line 28
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 31
    invoke-static {p1, v0, v1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->-$$Nest$mfinishTransition(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 33
    :cond_0
    return-void
    .line 36
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$leash:Landroid/view/SurfaceControl;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

    .line 12
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->-$$Nest$fgetmTransactionPool(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)Lcom/android/wm/shell/common/TransactionPool;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 18
    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 22
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 24
    move-result p2

    .line 27
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$targetBounds:Landroid/graphics/Rect;

    .line 28
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 30
    move-result v0

    .line 33
    int-to-float v0, v0

    .line 34
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 35
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 37
    move-result v1

    .line 40
    mul-float/2addr v1, v0

    .line 41
    const/high16 v0, 0x40000000    # 2.0f

    .line 42
    div-float/2addr v1, v0

    .line 44
    sub-float/2addr p2, v1

    .line 45
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 46
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 48
    move-result v1

    .line 51
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$targetBounds:Landroid/graphics/Rect;

    .line 52
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 54
    move-result v2

    .line 57
    int-to-float v2, v2

    .line 58
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 59
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 61
    move-result v3

    .line 64
    mul-float/2addr v3, v2

    .line 65
    div-float/2addr v3, v0

    .line 66
    sub-float/2addr v1, v3

    .line 67
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$leash:Landroid/view/SurfaceControl;

    .line 68
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 70
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$leash:Landroid/view/SurfaceControl;

    .line 73
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 75
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 77
    move-result v0

    .line 80
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->val$animInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 81
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 83
    move-result v1

    .line 86
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 87
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 90
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

    .line 93
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->-$$Nest$fgetmTransactionPool(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)Lcom/android/wm/shell/common/TransactionPool;

    .line 95
    move-result-object p0

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 99
    :cond_0
    return-void
    .line 102
.end method
