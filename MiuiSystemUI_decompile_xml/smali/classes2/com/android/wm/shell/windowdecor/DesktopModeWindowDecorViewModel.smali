.class public final Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCornersListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

.field public final mDesktopModeController:Ljava/util/Optional;

.field public final mDesktopModeWindowDecorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;

.field public final mDesktopTasksController:Ljava/util/Optional;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

.field public final mDragToDesktopAnimationStartBounds:Landroid/graphics/Rect;

.field public mDragToDesktopAnimationStarted:Z

.field public mDragToDesktopValueAnimator:Landroid/animation/ValueAnimator;

.field public final mEventReceiversByDisplay:Landroid/util/SparseArray;

.field public final mInputMonitorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;

.field public final mMainChoreographer:Landroid/view/Choreographer;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mSplitScreenController:Ljava/util/Optional;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTransactionFactory:Ljava/util/function/Supplier;

.field public mTransitionDragActive:Z

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field public final mWindowDecorByTaskId:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;Ljava/util/function/Supplier;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    .line 10
    new-instance v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mCornersListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 24
    new-instance v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    .line 26
    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)V

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    .line 33
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStartBounds:Landroid/graphics/Rect;

    .line 38
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    .line 42
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMainChoreographer:Landroid/view/Choreographer;

    .line 44
    const-class p2, Landroid/app/ActivityTaskManager;

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 51
    check-cast p1, Landroid/app/ActivityTaskManager;

    .line 52
    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 54
    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 56
    iput-object p10, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    .line 58
    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 60
    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 62
    iput-object p8, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeController:Ljava/util/Optional;

    .line 64
    iput-object p9, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Ljava/util/Optional;

    .line 66
    iput-object p11, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeWindowDecorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;

    .line 68
    iput-object p12, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mInputMonitorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;

    .line 70
    iput-object p13, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 72
    return-void
    .line 74
.end method


# virtual methods
.method public final calculateFreeformBounds(FI)Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 4
    move-result-object p0

    .line 7
    iget p2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 8
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    sub-float/2addr v0, p1

    .line 14
    const/high16 v1, 0x40000000    # 2.0f

    .line 15
    div-float/2addr v0, v1

    .line 17
    new-instance v1, Landroid/graphics/Rect;

    .line 18
    int-to-float p2, p2

    .line 20
    mul-float v2, p2, v0

    .line 21
    float-to-int v2, v2

    .line 23
    int-to-float p0, p0

    .line 24
    mul-float v3, p0, v0

    .line 25
    float-to-int v3, v3

    .line 27
    add-float/2addr v0, p1

    .line 28
    mul-float/2addr p2, v0

    .line 29
    float-to-int p1, p2

    .line 30
    mul-float/2addr p0, v0

    .line 31
    float-to-int p0, p0

    .line 32
    invoke-direct {v1, v2, v3, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 33
    return-object v1
    .line 36
.end method

.method public final createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v9, p1

    .line 4
    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 6
    iget v1, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 8
    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->close()V

    .line 18
    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 21
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 23
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 25
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    .line 27
    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMainChoreographer:Landroid/view/Choreographer;

    .line 29
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeWindowDecorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance v15, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 36
    move-object v1, v15

    .line 38
    move-object/from16 v5, p1

    .line 39
    move-object/from16 v6, p2

    .line 41
    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;)V

    .line 43
    iget v1, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 46
    invoke-virtual {v10, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    iget v1, v9, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 51
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 53
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 55
    move-result-object v1

    .line 58
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 59
    new-instance v3, Landroid/graphics/Rect;

    .line 61
    iget v4, v9, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 63
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 65
    move-result-object v2

    .line 68
    iget-object v2, v2, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 69
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 71
    const/4 v4, 0x0

    .line 73
    invoke-direct {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    sget-boolean v1, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_VEILED_RESIZE_ENABLED:Z

    .line 77
    if-nez v1, :cond_1

    .line 79
    new-instance v1, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;

    .line 81
    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 83
    iget-object v14, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 85
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    .line 87
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 89
    move-object v11, v1

    .line 91
    move-object v13, v15

    .line 92
    move-object v6, v15

    .line 93
    move-object v15, v3

    .line 94
    move-object/from16 v16, v2

    .line 95
    move-object/from16 v17, v5

    .line 97
    invoke-direct/range {v11 .. v17}, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Lcom/android/wm/shell/common/DisplayController;Landroid/graphics/Rect;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;Ljava/util/function/Supplier;)V

    .line 99
    goto :goto_0

    .line 102
    :cond_1
    move-object v6, v15

    .line 103
    new-instance v1, Lcom/android/wm/shell/windowdecor/ResizeVeil;

    .line 104
    iget-object v2, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 106
    iget-object v5, v6, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 108
    iget-object v7, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 110
    iget-object v8, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    .line 112
    iget-object v10, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 114
    iget-object v11, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    .line 116
    move-object v15, v1

    .line 118
    move-object/from16 v16, v2

    .line 119
    move-object/from16 v17, v5

    .line 121
    move-object/from16 v18, v7

    .line 123
    move-object/from16 v19, v8

    .line 125
    move-object/from16 v20, v10

    .line 127
    move-object/from16 v21, v11

    .line 129
    invoke-direct/range {v15 .. v21}, Lcom/android/wm/shell/windowdecor/ResizeVeil;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/function/Supplier;Landroid/view/Display;Ljava/util/function/Supplier;)V

    .line 131
    iput-object v1, v6, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    .line 134
    new-instance v1, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;

    .line 136
    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 138
    iget-object v14, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 140
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    .line 142
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 144
    move-object v11, v1

    .line 146
    move-object v13, v6

    .line 147
    move-object v15, v3

    .line 148
    move-object/from16 v16, v2

    .line 149
    move-object/from16 v17, v5

    .line 151
    invoke-direct/range {v11 .. v17}, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Lcom/android/wm/shell/common/DisplayController;Landroid/graphics/Rect;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;Lcom/android/wm/shell/transition/Transitions;)V

    .line 153
    :goto_0
    new-instance v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;

    .line 156
    invoke-direct {v2, v0, v9, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V

    .line 158
    iput-object v2, v6, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    .line 161
    iput-object v2, v6, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

    .line 163
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mCornersListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    .line 165
    iput-object v3, v6, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mCornersListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    .line 167
    iput-object v1, v6, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 169
    iget-object v1, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 171
    iput-object v1, v6, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 173
    iget-object v2, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 175
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 177
    move-result-object v2

    .line 180
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 181
    move-result v2

    .line 184
    iput v2, v1, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    .line 185
    move-object/from16 v1, p3

    .line 187
    move-object/from16 v2, p4

    .line 189
    invoke-virtual {v6, v9, v1, v2, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 191
    iget v1, v9, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 194
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->incrementEventReceiverTasks(I)V

    .line 196
    return-void
    .line 199
.end method

.method public final destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 10
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->close()V

    .line 15
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->removeTaskFromEventReceiver(I)V

    .line 28
    :cond_1
    return-void
    .line 31
.end method

.method public final incrementEventReceiverTasks(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;

    .line 14
    iget p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    .line 16
    add-int/lit8 p1, p1, 0x1

    .line 18
    iput p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const-class v1, Landroid/hardware/input/InputManager;

    .line 23
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Landroid/hardware/input/InputManager;

    .line 31
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mInputMonitorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;

    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    const-string v3, "caption-touch"

    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    .line 40
    move-result v2

    .line 43
    invoke-virtual {v1, v3, v2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    .line 44
    move-result-object v1

    .line 47
    new-instance v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;

    .line 48
    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    .line 50
    move-result-object v3

    .line 53
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 54
    move-result-object v4

    .line 57
    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/view/InputMonitor;Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 58
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    :goto_0
    return-void
    .line 64
.end method

.method public final onTaskChanging(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 12
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 20
    :cond_0
    return-void

    .line 23
    :cond_1
    if-nez v0, :cond_2

    .line 24
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 26
    goto :goto_0

    .line 29
    :cond_2
    const/4 p0, 0x0

    .line 30
    invoke-virtual {v0, p1, p3, p4, p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 31
    :goto_0
    return-void
    .line 34
.end method

.method public final onTaskClosing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 10
    if-nez p0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 16
    return-void
    .line 19
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 10
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 15
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 17
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 19
    if-eq v2, v1, :cond_1

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->removeTaskFromEventReceiver(I)V

    .line 23
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->incrementEventReceiverTasks(I)V

    .line 28
    :cond_1
    iget p0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutBlock:I

    .line 31
    if-lez p0, :cond_2

    .line 33
    goto :goto_0

    .line 35
    :cond_2
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    .line 36
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 38
    const/4 v1, 0x1

    .line 41
    invoke-virtual {v0, p1, p0, p0, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 42
    :goto_0
    return-void
    .line 45
.end method

.method public final onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 10
    const/4 p0, 0x1

    .line 13
    return p0
    .line 14
.end method

.method public final onTransitionFinished(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 15
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mTransitionsPausingRelayout:Ljava/util/Set;

    .line 17
    check-cast v2, Ljava/util/HashSet;

    .line 19
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 21
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    iget v2, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutBlock:I

    .line 27
    add-int/lit8 v2, v2, -0x1

    .line 29
    iput v2, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutBlock:I

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    return-void
    .line 36
.end method

.method public final onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 15
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mTransitionsPausingRelayout:Ljava/util/Set;

    .line 17
    check-cast v2, Ljava/util/HashSet;

    .line 19
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 21
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mTransitionsPausingRelayout:Ljava/util/Set;

    .line 27
    check-cast v1, Ljava/util/HashSet;

    .line 29
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    return-void
    .line 37
.end method

.method public final onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    .line 9
    move-result p2

    .line 12
    const/16 v0, 0x3f3

    .line 13
    if-ne p2, v0, :cond_0

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 19
    move-result-object p2

    .line 22
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 23
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mTransitionsPausingRelayout:Ljava/util/Set;

    .line 31
    check-cast p0, Ljava/util/HashSet;

    .line 33
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    return-void
    .line 38
.end method

.method public final removeTaskFromEventReceiver(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;

    .line 15
    if-nez v0, :cond_1

    .line 17
    return-void

    .line 19
    :cond_1
    iget v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 22
    iput v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    .line 24
    if-nez v1, :cond_2

    .line 26
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;

    .line 32
    if-eqz p0, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->dispose()V

    .line 36
    :cond_2
    return-void
    .line 39
.end method

.method public final setFreeformTaskTransitionStarter(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 4
    check-cast p1, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    .line 6
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 8
    invoke-direct {v0, p1, v2, v1}, Lcom/android/wm/shell/windowdecor/TaskOperations;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 13
    return-void
    .line 15
.end method

.method public final shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    return v2

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    .line 11
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 13
    move-result v1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 24
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskRootOrStageRoot(I)Z

    .line 28
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    return v3

    .line 34
    :cond_1
    sget-boolean v0, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_PROTO2_ENABLED:Z

    .line 35
    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 39
    move-result v0

    .line 42
    if-ne v0, v2, :cond_2

    .line 43
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 45
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 57
    move-result-object p0

    .line 60
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 61
    const/16 p1, 0x258

    .line 63
    if-lt p0, p1, :cond_2

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    move v2, v3

    .line 68
    :goto_0
    return v2
    .line 69
.end method
