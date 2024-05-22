.class Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;
.super Landroid/window/WindowContainerTransactionCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final bounds:Landroid/graphics/Rect;

.field final scale:F

.field final taskId:I

.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;


# direct methods
.method public static synthetic $r8$lambda$lDjhinHcTpmHjdDrbNXSLMew8jA(Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;->lambda$onTransactionReady$0(Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;->this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;

    invoke-direct {p0}, Landroid/window/WindowContainerTransactionCallback;-><init>()V

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;->bounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;->taskId:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;->scale:F

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;ILandroid/graphics/Rect;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;->this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;

    invoke-direct {p0}, Landroid/window/WindowContainerTransactionCallback;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;->bounds:Landroid/graphics/Rect;

    .line 3
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;->taskId:I

    .line 4
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5
    iput p4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;->scale:F

    return-void
.end method

.method private synthetic lambda$onTransactionReady$0(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;->this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;->-$$Nest$fgetmObservers(Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;)Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$TransitionObserver;

    .line 22
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;->taskId:I

    .line 24
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;->bounds:Landroid/graphics/Rect;

    .line 26
    iget v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;->scale:F

    .line 28
    invoke-interface {v1, v2, v3, v4, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$TransitionObserver;->onTransitionMergeByBoundsChange(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;)V

    .line 30
    goto :goto_0

    .line 33
    :cond_0
    return-void
    .line 34
.end method


# virtual methods
.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "ResizingWCTCallback onTransactionReady :"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;->this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;

    .line 23
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;->-$$Nest$fgetmShellExecutor(Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 25
    move-result-object p1

    .line 28
    new-instance v0, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback$$ExternalSyntheticLambda0;

    .line 29
    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 31
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 34
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 36
    return-void
    .line 39
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "ResizingWCTCallback{taskId="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;->taskId:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", bounds="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;->bounds:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", scale="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$ResizingWCTCallback;->scale:F

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    const/16 p0, 0x7d

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    return-object p0
    .line 43
.end method
