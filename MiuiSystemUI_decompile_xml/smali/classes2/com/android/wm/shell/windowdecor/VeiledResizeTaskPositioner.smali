.class public final Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/DragPositioningCallback;
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public mCtrlType:I

.field public final mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

.field public final mDisallowedAreaForEndBounds:Landroid/graphics/Rect;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

.field public final mRepositionStartPoint:Landroid/graphics/PointF;

.field public final mRepositionTaskBounds:Landroid/graphics/Rect;

.field public final mStableBounds:Landroid/graphics/Rect;

.field public final mTaskBoundsAtDragStart:Landroid/graphics/Rect;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTransactionSupplier:Ljava/util/function/Supplier;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Lcom/android/wm/shell/common/DisplayController;Landroid/graphics/Rect;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;Lcom/android/wm/shell/transition/Transitions;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda2;

    .line 2
    invoke-direct {v0}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda2;-><init>()V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    .line 10
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    .line 15
    new-instance v1, Landroid/graphics/Rect;

    .line 17
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 22
    new-instance v1, Landroid/graphics/PointF;

    .line 24
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    .line 29
    new-instance v1, Landroid/graphics/Rect;

    .line 31
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 36
    new-instance v1, Landroid/graphics/Rect;

    .line 38
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDisallowedAreaForEndBounds:Landroid/graphics/Rect;

    .line 43
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 45
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 47
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 49
    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    .line 51
    invoke-virtual {v1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 53
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 56
    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 58
    return-void
    .line 60
.end method


# virtual methods
.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final isResizing()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mCtrlType:I

    .line 2
    and-int/lit8 v0, p0, 0x4

    .line 4
    if-nez v0, :cond_1

    .line 6
    and-int/lit8 v0, p0, 0x8

    .line 8
    if-nez v0, :cond_1

    .line 10
    and-int/lit8 v0, p0, 0x1

    .line 12
    if-nez v0, :cond_1

    .line 14
    and-int/lit8 p0, p0, 0x2

    .line 16
    if-eqz p0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    :goto_1
    return p0
    .line 24
.end method

.method public final onDragPositioningEnd(FF)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    .line 2
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 4
    sub-float v1, p1, v1

    .line 6
    iget v2, v0, Landroid/graphics/PointF;->y:F

    .line 8
    sub-float v2, p2, v2

    .line 10
    new-instance v7, Landroid/graphics/PointF;

    .line 12
    invoke-direct {v7, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 14
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->isResizing()Z

    .line 17
    move-result v1

    .line 20
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 21
    iget-object v10, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 23
    iget-object v11, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 25
    iget-object v12, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 27
    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {v10, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    iget v3, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mCtrlType:I

    .line 37
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 39
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 41
    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    .line 43
    iget-object v8, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 45
    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 47
    invoke-static/range {v3 .. v9}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->changeBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)Z

    .line 49
    iget-object p1, v11, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    .line 52
    iget-object p2, p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    .line 54
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 56
    move-result-object p2

    .line 59
    check-cast p2, Landroid/view/SurfaceControl$Transaction;

    .line 60
    invoke-virtual {p1, v12, p2}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->relayout(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    .line 62
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 65
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 67
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 71
    move-result-object p1

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 75
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 78
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 80
    iget-object p2, v11, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 83
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 85
    invoke-virtual {p1, p2, v12}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 87
    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 90
    if-eqz p2, :cond_0

    .line 92
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 94
    const/4 v1, 0x6

    .line 96
    invoke-virtual {p2, v1, p1, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 97
    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v2, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 101
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v11}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->hideResizeVeil()V

    .line 105
    goto :goto_0

    .line 108
    :cond_2
    float-to-int v1, p1

    .line 109
    float-to-int v3, p2

    .line 110
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDisallowedAreaForEndBounds:Landroid/graphics/Rect;

    .line 111
    invoke-virtual {v4, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    .line 113
    move-result v1

    .line 116
    if-nez v1, :cond_3

    .line 117
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 119
    sub-float/2addr p1, v1

    .line 121
    iget v1, v0, Landroid/graphics/PointF;->y:F

    .line 122
    sub-float/2addr p2, v1

    .line 124
    invoke-virtual {v12, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 125
    float-to-int p1, p1

    .line 128
    float-to-int p2, p2

    .line 129
    invoke-virtual {v12, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 130
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 133
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 135
    iget-object p2, v11, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 138
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 140
    invoke-virtual {p1, p2, v12}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 142
    invoke-virtual {v2, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 145
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 148
    iput p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mCtrlType:I

    .line 149
    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 151
    const/4 p0, 0x0

    .line 154
    invoke-virtual {v0, p0, p0}, Landroid/graphics/PointF;->set(FF)V

    .line 155
    return-void
    .line 158
.end method

.method public final onDragPositioningMove(FF)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    .line 2
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 4
    sub-float v1, p1, v1

    .line 6
    iget v2, v0, Landroid/graphics/PointF;->y:F

    .line 8
    sub-float v2, p2, v2

    .line 10
    new-instance v7, Landroid/graphics/PointF;

    .line 12
    invoke-direct {v7, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 14
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->isResizing()Z

    .line 17
    move-result v1

    .line 20
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 21
    iget-object v10, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 23
    if-eqz v1, :cond_0

    .line 25
    iget v3, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mCtrlType:I

    .line 27
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 29
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 31
    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    .line 33
    iget-object v8, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 35
    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 37
    invoke-static/range {v3 .. v9}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->changeBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)Z

    .line 39
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    iget-object p0, v10, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    .line 45
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    .line 47
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 52
    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    .line 53
    invoke-virtual {p0, v2, p1}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->relayout(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    .line 55
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 58
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 64
    move-result-object p0

    .line 67
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 68
    goto :goto_0

    .line 71
    :cond_0
    iget v1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mCtrlType:I

    .line 72
    if-nez v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 76
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 78
    move-result-object v1

    .line 81
    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 82
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 84
    sub-float/2addr p1, v3

    .line 86
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 87
    sub-float/2addr p2, v0

    .line 89
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 90
    invoke-virtual {v2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 92
    float-to-int p0, p1

    .line 95
    float-to-int p1, p2

    .line 96
    invoke-virtual {v2, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 97
    iget-object p0, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 100
    iget p1, v2, Landroid/graphics/Rect;->left:I

    .line 102
    int-to-float p1, p1

    .line 104
    iget p2, v2, Landroid/graphics/Rect;->top:I

    .line 105
    int-to-float p2, p2

    .line 107
    invoke-virtual {v1, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 108
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 111
    :cond_1
    :goto_0
    return-void
    .line 114
.end method

.method public final onDragPositioningStart(FFI)V
    .locals 5

    .line 1
    iput p3, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mCtrlType:I

    .line 2
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 4
    iget-object v0, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 8
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 10
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 12
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 16
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 23
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->isResizing()Z

    .line 26
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    iget-object p1, p3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    .line 32
    iget-object p2, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 34
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    .line 36
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 41
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 42
    iget-object v2, p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mParentSurface:Landroid/view/SurfaceControl;

    .line 44
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v2

    .line 49
    if-nez v2, :cond_0

    .line 50
    iget-object v2, p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    .line 52
    invoke-virtual {v0, v2, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 54
    iput-object p2, p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mParentSurface:Landroid/view/SurfaceControl;

    .line 57
    :cond_0
    iget-object p2, p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 65
    move-result-object v2

    .line 68
    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 69
    and-int/lit8 v2, v2, 0x30

    .line 71
    const/16 v3, 0x20

    .line 73
    if-ne v2, v3, :cond_1

    .line 75
    const v2, 0x7f060113    # @color/desktop_mode_resize_veil_dark '#1c1c17'

    .line 77
    goto :goto_0

    .line 80
    :cond_1
    const v2, 0x7f060114    # @color/desktop_mode_resize_veil_light '#eff1f2'

    .line 81
    :goto_0
    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 84
    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 86
    move-result-object v3

    .line 89
    invoke-virtual {p2, v2}, Landroid/content/Context;->getColor(I)I

    .line 90
    move-result v2

    .line 93
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 94
    new-instance v2, Landroid/animation/ValueAnimator;

    .line 97
    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    .line 99
    const/4 v3, 0x2

    .line 102
    new-array v3, v3, [F

    .line 103
    fill-array-data v3, :array_0

    .line 105
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 108
    const-wide/16 v3, 0x64

    .line 111
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 113
    new-instance v3, Lcom/android/wm/shell/windowdecor/ResizeVeil$$ExternalSyntheticLambda1;

    .line 116
    invoke-direct {v3, p1, v0, v2}, Lcom/android/wm/shell/windowdecor/ResizeVeil$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/windowdecor/ResizeVeil;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    .line 118
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 121
    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->relayout(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    .line 124
    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    .line 127
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 129
    move-result-object v3

    .line 132
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 133
    move-result-object p2

    .line 136
    new-instance v4, Lcom/android/wm/shell/windowdecor/ResizeVeil$$ExternalSyntheticLambda2;

    .line 137
    invoke-direct {v4, v2}, Lcom/android/wm/shell/windowdecor/ResizeVeil$$ExternalSyntheticLambda2;-><init>(Landroid/animation/ValueAnimator;)V

    .line 139
    invoke-virtual {v3, p2, v4}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 142
    move-result-object p2

    .line 145
    iget-object v2, p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    .line 146
    const/4 v3, 0x0

    .line 148
    invoke-virtual {p2, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 149
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 152
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 154
    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 158
    move-result-object p1

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 162
    iget-object p1, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 165
    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 167
    if-nez p1, :cond_2

    .line 169
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 171
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 173
    iget-object p2, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 176
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 178
    const/4 v0, 0x1

    .line 180
    invoke-virtual {p1, p2, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 181
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 184
    invoke-virtual {p2, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 186
    :cond_2
    iget-object p1, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 189
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 191
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    .line 193
    iget-object p2, p2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 195
    iget-object p2, p2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 197
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 199
    move-result-object p1

    .line 202
    check-cast p1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 203
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    .line 205
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 208
    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 210
    return-void

    .line 213
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 214
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mDesktopWindowDecoration:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 5
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->hideResizeVeil()V

    .line 7
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;->mCtrlType:I

    .line 11
    const/4 p0, 0x0

    .line 13
    invoke-interface {p5, p0, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 14
    const/4 p0, 0x1

    .line 17
    return p0
    .line 18
.end method
