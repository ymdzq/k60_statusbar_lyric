.class public final Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/DragPositioningCallback;


# instance fields
.field public mCtrlType:I

.field public final mDisallowedAreaForEndBounds:Landroid/graphics/Rect;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

.field public mHasDragResized:Z

.field public final mRepositionStartPoint:Landroid/graphics/PointF;

.field public final mRepositionTaskBounds:Landroid/graphics/Rect;

.field public final mStableBounds:Landroid/graphics/Rect;

.field public final mTaskBoundsAtDragStart:Landroid/graphics/Rect;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTransactionSupplier:Ljava/util/function/Supplier;

.field public final mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Lcom/android/wm/shell/common/DisplayController;Landroid/graphics/Rect;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;Ljava/util/function/Supplier;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 17
    new-instance v0, Landroid/graphics/PointF;

    .line 19
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    .line 26
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 31
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 33
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 35
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 37
    new-instance p1, Landroid/graphics/Rect;

    .line 39
    invoke-direct {p1, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 41
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDisallowedAreaForEndBounds:Landroid/graphics/Rect;

    .line 44
    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    .line 46
    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 48
    return-void
    .line 50
.end method


# virtual methods
.method public final onDragPositioningEnd(FF)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    iget v3, v0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mCtrlType:I

    .line 8
    and-int/lit8 v4, v3, 0x4

    .line 10
    const/4 v5, 0x0

    .line 12
    if-nez v4, :cond_1

    .line 13
    and-int/lit8 v4, v3, 0x8

    .line 15
    if-nez v4, :cond_1

    .line 17
    and-int/lit8 v4, v3, 0x1

    .line 19
    if-nez v4, :cond_1

    .line 21
    and-int/lit8 v4, v3, 0x2

    .line 23
    if-eqz v4, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    move v4, v5

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 30
    :goto_1
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    .line 31
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 33
    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 35
    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 37
    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 39
    if-eqz v4, :cond_3

    .line 41
    iget-boolean v4, v0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mHasDragResized:Z

    .line 43
    if-eqz v4, :cond_3

    .line 45
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 47
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 49
    iget-object v4, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 52
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 54
    invoke-virtual {v3, v4, v5}, Landroid/window/WindowContainerTransaction;->setDragResizing(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 56
    iget v4, v6, Landroid/graphics/PointF;->x:F

    .line 59
    sub-float/2addr v1, v4

    .line 61
    iget v4, v6, Landroid/graphics/PointF;->y:F

    .line 62
    sub-float/2addr v2, v4

    .line 64
    new-instance v15, Landroid/graphics/PointF;

    .line 65
    invoke-direct {v15, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 67
    iget v11, v0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mCtrlType:I

    .line 70
    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 72
    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 74
    iget-object v14, v0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    .line 76
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 78
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 80
    move-object/from16 v16, v1

    .line 82
    move-object/from16 v17, v2

    .line 84
    invoke-static/range {v11 .. v17}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->changeBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)Z

    .line 86
    move-result v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 92
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 94
    invoke-virtual {v3, v1, v9}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 96
    :cond_2
    invoke-virtual {v7, v3}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 99
    goto :goto_2

    .line 102
    :cond_3
    if-nez v3, :cond_4

    .line 103
    float-to-int v3, v1

    .line 105
    float-to-int v4, v2

    .line 106
    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDisallowedAreaForEndBounds:Landroid/graphics/Rect;

    .line 107
    invoke-virtual {v11, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 109
    move-result v3

    .line 112
    if-nez v3, :cond_4

    .line 113
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 115
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 117
    iget v4, v6, Landroid/graphics/PointF;->x:F

    .line 120
    sub-float/2addr v1, v4

    .line 122
    iget v4, v6, Landroid/graphics/PointF;->y:F

    .line 123
    sub-float/2addr v2, v4

    .line 125
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 126
    float-to-int v1, v1

    .line 129
    float-to-int v2, v2

    .line 130
    invoke-virtual {v9, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 131
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 134
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 136
    invoke-virtual {v3, v1, v9}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 138
    invoke-virtual {v7, v3}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 141
    :cond_4
    :goto_2
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 144
    const/4 v1, 0x0

    .line 147
    invoke-virtual {v6, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 148
    iput v5, v0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mCtrlType:I

    .line 151
    iput-boolean v5, v0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mHasDragResized:Z

    .line 153
    return-void
    .line 155
.end method

.method public final onDragPositioningMove(FF)V
    .locals 13

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    .line 7
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 9
    sub-float v2, p1, v2

    .line 11
    iget v3, v1, Landroid/graphics/PointF;->y:F

    .line 13
    sub-float v3, p2, v3

    .line 15
    new-instance v8, Landroid/graphics/PointF;

    .line 17
    invoke-direct {v8, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 19
    iget v4, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mCtrlType:I

    .line 22
    and-int/lit8 v2, v4, 0x4

    .line 24
    const/4 v3, 0x1

    .line 26
    if-nez v2, :cond_1

    .line 27
    and-int/lit8 v2, v4, 0x8

    .line 29
    if-nez v2, :cond_1

    .line 31
    and-int/lit8 v2, v4, 0x1

    .line 33
    if-nez v2, :cond_1

    .line 35
    and-int/lit8 v2, v4, 0x2

    .line 37
    if-eqz v2, :cond_0

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    move v2, v3

    .line 44
    :goto_1
    iget-object v11, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 45
    iget-object v12, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 47
    if-eqz v2, :cond_3

    .line 49
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 51
    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 53
    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mStableBounds:Landroid/graphics/Rect;

    .line 55
    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 57
    iget-object v10, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 59
    invoke-static/range {v4 .. v10}, Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;->changeBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)Z

    .line 61
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mHasDragResized:Z

    .line 67
    if-nez p1, :cond_2

    .line 69
    iget-object p1, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 71
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 73
    invoke-virtual {v0, p1, v3}, Landroid/window/WindowContainerTransaction;->setDragResizing(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 75
    :cond_2
    iget-object p1, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 78
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 80
    invoke-virtual {v0, p1, v11}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 82
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 85
    invoke-virtual {p1, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 87
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mHasDragResized:Z

    .line 90
    goto :goto_2

    .line 92
    :cond_3
    iget v0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mCtrlType:I

    .line 93
    if-nez v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 97
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 102
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 103
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 105
    sub-float/2addr p1, v2

    .line 107
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 108
    sub-float/2addr p2, v1

    .line 110
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 111
    invoke-virtual {v11, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 113
    float-to-int p0, p1

    .line 116
    float-to-int p1, p2

    .line 117
    invoke-virtual {v11, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 118
    iget-object p0, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 121
    iget p1, v11, Landroid/graphics/Rect;->left:I

    .line 123
    int-to-float p1, p1

    .line 125
    iget p2, v11, Landroid/graphics/Rect;->top:I

    .line 126
    int-to-float p2, p2

    .line 128
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 129
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 132
    :cond_4
    :goto_2
    return-void
    .line 135
.end method

.method public final onDragPositioningStart(FFI)V
    .locals 2

    .line 1
    iput p3, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mCtrlType:I

    .line 2
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

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
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 16
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 23
    iget-object p1, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 26
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 28
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    .line 30
    iget-object p2, p2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 32
    iget-object p2, p2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 34
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 39
    check-cast p1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 40
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    .line 42
    iget p1, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mCtrlType:I

    .line 45
    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 49
    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 51
    if-nez p1, :cond_0

    .line 53
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 55
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 57
    iget-object p2, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 60
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 62
    const/4 p3, 0x1

    .line 64
    invoke-virtual {p1, p2, p3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 65
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 68
    invoke-virtual {p2, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 70
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 73
    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 75
    return-void
    .line 78
.end method
