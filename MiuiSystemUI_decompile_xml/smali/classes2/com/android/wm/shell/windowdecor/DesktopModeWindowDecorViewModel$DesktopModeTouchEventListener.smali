.class public final Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;


# instance fields
.field public final mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field public mDragPointerId:I

.field public final mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field public mIsDragging:Z

.field public final mTaskId:I

.field public final mTaskToken:Landroid/window/WindowContainerToken;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPointerId:I

    .line 8
    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 10
    iput p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    .line 12
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 14
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 16
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 18
    new-instance p1, Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 20
    invoke-direct {p1, p0}, Lcom/android/wm/shell/windowdecor/DragDetector;-><init>(Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;)V

    .line 22
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 4
    iget v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    move-result-object v0

    .line 11
    sget-boolean v1, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_PROTO2_ENABLED:Z

    .line 12
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 18
    move-result v1

    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    return v3

    .line 24
    :cond_0
    sget-boolean v1, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_SUPPORTED:Z

    .line 25
    if-eqz v1, :cond_1

    .line 27
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 29
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeController:Ljava/util/Optional;

    .line 31
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 33
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 39
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeController:Ljava/util/Optional;

    .line 41
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 46
    check-cast v1, Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 47
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 49
    iget-object v1, v1, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 51
    iget-object v1, v1, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 58
    check-cast v1, Landroid/window/DisplayAreaInfo;

    .line 59
    iget-object v1, v1, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    .line 61
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 63
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 65
    move-result v1

    .line 68
    if-ne v1, v2, :cond_1

    .line 69
    return v3

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 72
    move-result v1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    const/4 v4, 0x3

    .line 78
    if-eq v1, v2, :cond_3

    .line 79
    const/4 v5, 0x2

    .line 81
    if-eq v1, v5, :cond_2

    .line 82
    if-eq v1, v4, :cond_3

    .line 84
    return v2

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 87
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 89
    iget v3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    .line 91
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object v1

    .line 96
    check-cast v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 97
    iget v3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPointerId:I

    .line 99
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 101
    move-result v3

    .line 104
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 105
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Ljava/util/Optional;

    .line 107
    new-instance v5, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda2;

    .line 109
    invoke-direct {v5, v0, v1, p1, v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda2;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;I)V

    .line 111
    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 114
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 117
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 119
    move-result v1

    .line 122
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 123
    move-result p1

    .line 126
    invoke-interface {v0, v1, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningMove(FF)V

    .line 127
    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mIsDragging:Z

    .line 130
    return v2

    .line 132
    :cond_3
    iget v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPointerId:I

    .line 133
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 135
    move-result v1

    .line 138
    new-instance v2, Landroid/graphics/Point;

    .line 139
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 141
    move-result v5

    .line 144
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 145
    move-result v6

    .line 148
    sub-float/2addr v5, v6

    .line 149
    float-to-int v5, v5

    .line 150
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 151
    move-result v6

    .line 154
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 155
    move-result v7

    .line 158
    sub-float/2addr v6, v7

    .line 159
    float-to-int v6, v6

    .line 160
    invoke-direct {v2, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 161
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 164
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 166
    move-result v6

    .line 169
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 170
    move-result p1

    .line 173
    invoke-interface {v5, v6, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)V

    .line 174
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 177
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Ljava/util/Optional;

    .line 179
    new-instance v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;

    .line 181
    invoke-direct {v1, v0, v2, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Landroid/os/Parcelable;I)V

    .line 183
    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 186
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mIsDragging:Z

    .line 189
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mIsDragging:Z

    .line 191
    return p1

    .line 193
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 194
    move-result v0

    .line 197
    iput v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPointerId:I

    .line 198
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 200
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 202
    move-result v1

    .line 205
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 206
    move-result p1

    .line 209
    invoke-interface {v0, v1, p1, v3}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningStart(FFI)V

    .line 210
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mIsDragging:Z

    .line 213
    return v3
    .line 215
.end method

.method public final moveTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 6
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Ljava/util/Optional;

    .line 8
    new-instance v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda1;

    .line 10
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p1, v2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda1;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeController:Ljava/util/Optional;

    .line 21
    new-instance v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda1;

    .line 23
    const/4 v1, 0x1

    .line 25
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda1;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 26
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 4
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 6
    iget v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    .line 8
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 16
    move-result v2

    .line 19
    const v3, 0x7f0a0206    # @id/close_window

    .line 20
    const/4 v4, 0x0

    .line 23
    const/4 v12, 0x2

    .line 24
    const/4 v13, 0x1

    .line 25
    if-eq v2, v3, :cond_e

    .line 26
    const v14, 0x7f0a0205    # @id/close_button

    .line 28
    if-ne v2, v14, :cond_0

    .line 31
    goto/16 :goto_5

    .line 33
    :cond_0
    const v3, 0x7f0a00fc    # @id/back_button

    .line 35
    if-ne v2, v3, :cond_1

    .line 38
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 40
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 42
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/windowdecor/TaskOperations;->sendBackEvent(I)V

    .line 44
    invoke-virtual {v0, v13}, Lcom/android/wm/shell/windowdecor/TaskOperations;->sendBackEvent(I)V

    .line 47
    goto/16 :goto_7

    .line 50
    :cond_1
    const v3, 0x7f0a01c2    # @id/caption_handle

    .line 52
    const v15, 0x7f0a02b0    # @id/desktop_button

    .line 55
    const v11, 0x7f0a03a0    # @id/fullscreen_button

    .line 58
    const v10, 0x7f0a0853    # @id/select_button

    .line 61
    const v9, 0x7f0a020b    # @id/collapse_menu_button

    .line 64
    if-eq v2, v3, :cond_6

    .line 67
    const v3, 0x7f0a06ce    # @id/open_menu_button

    .line 69
    if-ne v2, v3, :cond_2

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    if-ne v2, v15, :cond_3

    .line 75
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 77
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeController:Ljava/util/Optional;

    .line 79
    new-instance v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0;

    .line 81
    invoke-direct {v3, v13}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 83
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 86
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 89
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Ljava/util/Optional;

    .line 91
    new-instance v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda0;

    .line 93
    invoke-direct {v3, v0, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;I)V

    .line 95
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 98
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    .line 101
    goto/16 :goto_7

    .line 104
    :cond_3
    if-ne v2, v11, :cond_4

    .line 106
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 108
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeController:Ljava/util/Optional;

    .line 110
    new-instance v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0;

    .line 112
    invoke-direct {v3, v12}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 114
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 117
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 120
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Ljava/util/Optional;

    .line 122
    new-instance v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda0;

    .line 124
    invoke-direct {v3, v0, v13}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;I)V

    .line 126
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 129
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    .line 132
    goto/16 :goto_7

    .line 135
    :cond_4
    if-ne v2, v9, :cond_5

    .line 137
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    .line 139
    goto/16 :goto_7

    .line 142
    :cond_5
    if-ne v2, v10, :cond_11

    .line 144
    sget-boolean v2, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_DISPLAY_CHANGE_ENABLED:Z

    .line 146
    if-eqz v2, :cond_11

    .line 148
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 150
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Ljava/util/Optional;

    .line 152
    new-instance v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda0;

    .line 154
    invoke-direct {v3, v0, v12}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;I)V

    .line 156
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 159
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    .line 162
    goto/16 :goto_7

    .line 165
    :cond_6
    :goto_0
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    .line 167
    move-result v2

    .line 170
    if-nez v2, :cond_d

    .line 171
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 173
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 175
    iget v3, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    .line 177
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 179
    move-result-object v2

    .line 182
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->moveTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 183
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 186
    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppName:Ljava/lang/CharSequence;

    .line 188
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    .line 190
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

    .line 192
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 194
    iget v4, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    .line 196
    const/4 v5, 0x0

    .line 198
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    const/16 v16, 0x0

    .line 202
    sget-boolean v17, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_PROTO2_ENABLED:Z

    .line 204
    new-instance v3, Lcom/android/wm/shell/windowdecor/HandleMenu;

    .line 206
    move-object v2, v3

    .line 208
    move-object v14, v3

    .line 209
    move-object v3, v1

    .line 210
    move-object/from16 v18, v6

    .line 211
    move/from16 v6, v16

    .line 213
    move-object/from16 v16, v8

    .line 215
    move-object/from16 v8, v18

    .line 217
    move v12, v9

    .line 219
    move-object v9, v0

    .line 220
    move v0, v10

    .line 221
    move-object/from16 v10, v16

    .line 222
    move v0, v11

    .line 224
    move/from16 v11, v17

    .line 225
    invoke-direct/range {v2 .. v11}, Lcom/android/wm/shell/windowdecor/HandleMenu;-><init>(Lcom/android/wm/shell/windowdecor/WindowDecoration;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V

    .line 227
    iput-object v14, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    .line 230
    new-instance v1, Landroid/window/SurfaceSyncGroup;

    .line 232
    const-string v2, "HandleMenu"

    .line 234
    invoke-direct {v1, v2}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    .line 236
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    .line 239
    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 241
    iget-object v3, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillPosition:Landroid/graphics/PointF;

    .line 244
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 246
    float-to-int v4, v4

    .line 248
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 249
    float-to-int v3, v3

    .line 251
    iget-object v5, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mParentDecor:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 252
    const v20, 0x7f0d00a3    # @layout/desktop_mode_window_decor_handle_menu_app_info_pill 'res/layout/desktop_mode_window_decor_handle_menu_app_info_pill.xml'

    .line 254
    const-string v21, "Menu\'s app info pill"

    .line 257
    iget v6, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    .line 259
    iget v7, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillHeight:I

    .line 261
    iget v8, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShadowRadius:I

    .line 263
    iget v9, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCornerRadius:I

    .line 265
    move-object/from16 v19, v5

    .line 267
    move-object/from16 v22, v2

    .line 269
    move-object/from16 v23, v1

    .line 271
    move/from16 v24, v4

    .line 273
    move/from16 v25, v3

    .line 275
    move/from16 v26, v6

    .line 277
    move/from16 v27, v7

    .line 279
    move/from16 v28, v8

    .line 281
    move/from16 v29, v9

    .line 283
    invoke-virtual/range {v19 .. v29}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;IIIIII)Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 285
    move-result-object v3

    .line 288
    iput-object v3, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 289
    iget-boolean v3, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShouldShowWindowingPill:Z

    .line 291
    if-eqz v3, :cond_7

    .line 293
    iget-object v4, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillPosition:Landroid/graphics/PointF;

    .line 295
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 297
    float-to-int v5, v5

    .line 299
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 300
    float-to-int v4, v4

    .line 302
    iget-object v6, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mParentDecor:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 303
    const v20, 0x7f0d00a5    # @layout/desktop_mode_window_decor_handle_menu_windowing_pill 'res/layout/desktop_mode_window_decor_handle_menu_windowing_pill.xml'

    .line 305
    const-string v21, "Menu\'s windowing pill"

    .line 308
    iget v7, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    .line 310
    iget v8, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillHeight:I

    .line 312
    iget v9, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShadowRadius:I

    .line 314
    iget v10, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCornerRadius:I

    .line 316
    move-object/from16 v19, v6

    .line 318
    move-object/from16 v22, v2

    .line 320
    move-object/from16 v23, v1

    .line 322
    move/from16 v24, v5

    .line 324
    move/from16 v25, v4

    .line 326
    move/from16 v26, v7

    .line 328
    move/from16 v27, v8

    .line 330
    move/from16 v28, v9

    .line 332
    move/from16 v29, v10

    .line 334
    invoke-virtual/range {v19 .. v29}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;IIIIII)Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 336
    move-result-object v4

    .line 339
    iput-object v4, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 340
    :cond_7
    iget-object v4, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillPosition:Landroid/graphics/PointF;

    .line 342
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 344
    float-to-int v5, v5

    .line 346
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 347
    float-to-int v4, v4

    .line 349
    iget-object v6, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mParentDecor:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 350
    const v20, 0x7f0d00a4    # @layout/desktop_mode_window_decor_handle_menu_more_actions_pill 'res/layout/desktop_mode_window_decor_handle_menu_more_actions_pill.xml'

    .line 352
    const-string v21, "Menu\'s more actions pill"

    .line 355
    iget v7, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    .line 357
    iget v8, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillHeight:I

    .line 359
    iget v9, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShadowRadius:I

    .line 361
    iget v10, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCornerRadius:I

    .line 363
    move-object/from16 v19, v6

    .line 365
    move-object/from16 v22, v2

    .line 367
    move-object/from16 v23, v1

    .line 369
    move/from16 v24, v5

    .line 371
    move/from16 v25, v4

    .line 373
    move/from16 v26, v7

    .line 375
    move/from16 v27, v8

    .line 377
    move/from16 v28, v9

    .line 379
    move/from16 v29, v10

    .line 381
    invoke-virtual/range {v19 .. v29}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;IIIIII)Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 383
    move-result-object v4

    .line 386
    iput-object v4, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 387
    invoke-virtual {v1, v2}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 389
    invoke-virtual {v1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 392
    iget-object v1, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 395
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 397
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 399
    move-result-object v1

    .line 402
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 403
    move-result-object v2

    .line 406
    check-cast v2, Landroid/widget/ImageButton;

    .line 407
    const v4, 0x7f0a00d9    # @id/application_icon

    .line 409
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 412
    move-result-object v4

    .line 415
    check-cast v4, Landroid/widget/ImageView;

    .line 416
    const v5, 0x7f0a00da    # @id/application_name

    .line 418
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 421
    move-result-object v5

    .line 424
    check-cast v5, Landroid/widget/TextView;

    .line 425
    iget-object v6, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 427
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v2, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 432
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 434
    iget-object v1, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 437
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 439
    iget-object v1, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppName:Ljava/lang/CharSequence;

    .line 442
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    if-eqz v3, :cond_c

    .line 447
    iget-object v1, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 449
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 451
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 453
    move-result-object v1

    .line 456
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 457
    move-result-object v0

    .line 460
    check-cast v0, Landroid/widget/ImageButton;

    .line 461
    const v2, 0x7f0a08b9    # @id/split_screen_button

    .line 463
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 466
    move-result-object v2

    .line 469
    check-cast v2, Landroid/widget/ImageButton;

    .line 470
    const v3, 0x7f0a0371    # @id/floating_button

    .line 472
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 475
    move-result-object v3

    .line 478
    check-cast v3, Landroid/widget/ImageButton;

    .line 479
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 481
    move-result-object v1

    .line 484
    check-cast v1, Landroid/widget/ImageButton;

    .line 485
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object v4, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mContext:Landroid/content/Context;

    .line 499
    const v5, 0x7f060110    # @color/desktop_mode_caption_menu_buttons_color_active '#00677e'

    .line 501
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    .line 504
    move-result v5

    .line 507
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 508
    move-result-object v5

    .line 511
    const v7, 0x7f060111    # @color/desktop_mode_caption_menu_buttons_color_inactive '#191c1d'

    .line 512
    invoke-virtual {v4, v7}, Landroid/content/Context;->getColor(I)I

    .line 515
    move-result v4

    .line 518
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 519
    move-result-object v4

    .line 522
    iget-object v7, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 523
    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 525
    move-result v8

    .line 528
    if-ne v8, v13, :cond_8

    .line 529
    move-object v8, v5

    .line 531
    goto :goto_1

    .line 532
    :cond_8
    move-object v8, v4

    .line 533
    :goto_1
    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 534
    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 537
    move-result v0

    .line 540
    const/4 v8, 0x6

    .line 541
    if-ne v0, v8, :cond_9

    .line 542
    move-object v0, v5

    .line 544
    goto :goto_2

    .line 545
    :cond_9
    move-object v0, v4

    .line 546
    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 547
    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 550
    move-result v0

    .line 553
    const/4 v2, 0x2

    .line 554
    if-ne v0, v2, :cond_a

    .line 555
    move-object v0, v5

    .line 557
    goto :goto_3

    .line 558
    :cond_a
    move-object v0, v4

    .line 559
    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 560
    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 563
    move-result v0

    .line 566
    const/4 v2, 0x5

    .line 567
    if-ne v0, v2, :cond_b

    .line 568
    goto :goto_4

    .line 570
    :cond_b
    move-object v5, v4

    .line 571
    :goto_4
    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 572
    :cond_c
    iget-object v0, v14, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 575
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 577
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 579
    move-result-object v0

    .line 582
    const v1, 0x7f0a0205    # @id/close_button

    .line 583
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 586
    move-result-object v1

    .line 589
    check-cast v1, Landroid/widget/Button;

    .line 590
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    const v1, 0x7f0a0853    # @id/select_button

    .line 595
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 598
    move-result-object v0

    .line 601
    check-cast v0, Landroid/widget/Button;

    .line 602
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    goto/16 :goto_7

    .line 607
    :cond_d
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    .line 609
    goto/16 :goto_7

    .line 612
    :cond_e
    :goto_5
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 614
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 616
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 618
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 620
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 623
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 625
    invoke-virtual {v3, v2}, Landroid/window/WindowContainerTransaction;->removeTask(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 628
    sget-boolean v2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 631
    if-eqz v2, :cond_f

    .line 633
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskOperations;->mTransitionStarter:Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;

    .line 635
    check-cast v1, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    .line 637
    iget-object v2, v1, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    .line 639
    iget-object v5, v1, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 641
    const/4 v6, 0x2

    .line 643
    invoke-virtual {v5, v6, v3, v1}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 644
    move-result-object v1

    .line 647
    check-cast v2, Ljava/util/ArrayList;

    .line 648
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    goto :goto_6

    .line 653
    :cond_f
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 654
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 656
    :goto_6
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 659
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    .line 661
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 663
    move-result v1

    .line 666
    if-eqz v1, :cond_11

    .line 667
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 669
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    .line 671
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 673
    move-result-object v1

    .line 676
    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 677
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 679
    move-result v1

    .line 682
    if-eqz v1, :cond_11

    .line 683
    iget v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    .line 685
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 687
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    .line 689
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 691
    move-result-object v2

    .line 694
    check-cast v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 695
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 697
    move-result-object v2

    .line 700
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 701
    if-ne v1, v2, :cond_10

    .line 703
    move v4, v13

    .line 705
    :cond_10
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 706
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    .line 708
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 710
    move-result-object v1

    .line 713
    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 714
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 716
    move-result-object v1

    .line 719
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 720
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    .line 722
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 724
    move-result-object v0

    .line 727
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 728
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 730
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveTaskToFullscreen(I)V

    .line 732
    :cond_11
    :goto_7
    return-void
    .line 735
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    move-result p1

    .line 5
    const v0, 0x7f0a01c2    # @id/caption_handle

    .line 6
    if-eq p1, v0, :cond_0

    .line 9
    const v0, 0x7f0a02b1    # @id/desktop_mode_caption

    .line 11
    if-eq p1, v0, :cond_0

    .line 14
    const v0, 0x7f0a06ce    # @id/open_menu_button

    .line 16
    if-eq p1, v0, :cond_0

    .line 19
    const v0, 0x7f0a0206    # @id/close_window

    .line 21
    if-eq p1, v0, :cond_0

    .line 24
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 28
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 30
    iget v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    .line 32
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 34
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->moveTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 38
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 41
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/windowdecor/DragDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    .line 43
    move-result p0

    .line 46
    return p0
    .line 47
.end method
