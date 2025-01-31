.class public final Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAllowGesture:Z

.field public mAngle:F

.field public final mContext:Landroid/content/Context;

.field public mCtrlType:I

.field public mDelta:I

.field public final mDisplayBounds:Landroid/graphics/Rect;

.field public final mDisplayId:I

.field public final mDownBounds:Landroid/graphics/Rect;

.field public final mDownPoint:Landroid/graphics/PointF;

.field public final mDownSecondPoint:Landroid/graphics/PointF;

.field public final mDragCornerSize:Landroid/graphics/Rect;

.field public mEnableDragCornerResize:Z

.field public mEnablePinchResize:Z

.field public mFirstIndex:I

.field public mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

.field public mInputMonitor:Landroid/view/InputMonitor;

.field public mIsAttached:Z

.field public mIsEnabled:Z

.field public mIsSysUiStateValid:Z

.field public final mLastPoint:Landroid/graphics/PointF;

.field public final mLastResizeBounds:Landroid/graphics/Rect;

.field public final mLastSecondPoint:Landroid/graphics/PointF;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMaxSize:Landroid/graphics/Point;

.field public final mMinSize:Landroid/graphics/Point;

.field public final mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

.field public final mMovementBoundsSupplier:Ljava/util/function/Function;

.field public mOhmOffset:I

.field public mOngoingPinchToResize:Z

.field public final mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field public final mPinchResizingAlgorithm:Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;

.field public final mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

.field public final mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

.field public final mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

.field public final mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field public final mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

.field public final mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

.field public mSecondIndex:I

.field public mThresholdCrossed:Z

.field public final mTmpBottomLeftCorner:Landroid/graphics/Rect;

.field public final mTmpBottomRightCorner:Landroid/graphics/Rect;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public final mTmpTopLeftCorner:Landroid/graphics/Rect;

.field public final mTmpTopRightCorner:Landroid/graphics/Rect;

.field public mTouchSlop:F

.field public final mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

.field public final mUpdateResizeBoundsCallback:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

.field public final mUserResizeBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/phone/PipTouchState;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda2;Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Region;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 17
    new-instance v0, Landroid/graphics/PointF;

    .line 19
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    .line 24
    new-instance v0, Landroid/graphics/PointF;

    .line 26
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    .line 31
    new-instance v0, Landroid/graphics/PointF;

    .line 33
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    .line 38
    new-instance v0, Landroid/graphics/Point;

    .line 40
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    .line 45
    new-instance v0, Landroid/graphics/Point;

    .line 47
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    .line 54
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    .line 61
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    .line 68
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    .line 75
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    .line 82
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    .line 89
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    .line 96
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    .line 103
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 105
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    .line 110
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 112
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    .line 115
    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    .line 118
    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    .line 121
    const/4 v0, -0x1

    .line 123
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 124
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 126
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 130
    move-result p1

    .line 133
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayId:I

    .line 134
    iput-object p12, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 136
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 138
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 140
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 142
    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 144
    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 146
    iput-object p7, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 148
    iput-object p8, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMovementBoundsSupplier:Ljava/util/function/Function;

    .line 150
    iput-object p9, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

    .line 152
    iput-object p11, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 154
    iput-object p10, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 156
    new-instance p1, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;

    .line 158
    invoke-direct {p1}, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPinchResizingAlgorithm:Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;

    .line 163
    new-instance p1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

    .line 165
    invoke-direct {p1, p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;)V

    .line 167
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUpdateResizeBoundsCallback:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

    .line 170
    return-void
    .line 172
.end method


# virtual methods
.method public final finishResize()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_6

    .line 9
    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    .line 11
    iget-object v10, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUpdateResizeBoundsCallback:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

    .line 13
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 15
    if-eqz v1, :cond_4

    .line 17
    new-instance v4, Landroid/graphics/Rect;

    .line 19
    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 21
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 24
    move-result v1

    .line 27
    int-to-float v1, v1

    .line 28
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    .line 29
    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 31
    int-to-float v6, v6

    .line 33
    const v7, 0x3f666666    # 0.9f

    .line 34
    mul-float/2addr v6, v7

    .line 37
    cmpl-float v1, v1, v6

    .line 38
    if-gez v1, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 42
    move-result v1

    .line 45
    int-to-float v1, v1

    .line 46
    iget v6, v5, Landroid/graphics/Point;->y:I

    .line 47
    int-to-float v6, v6

    .line 49
    mul-float/2addr v6, v7

    .line 50
    cmpl-float v1, v1, v6

    .line 51
    if-ltz v1, :cond_1

    .line 53
    :cond_0
    iget v1, v5, Landroid/graphics/Point;->x:I

    .line 55
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 59
    move-result v6

    .line 62
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 63
    move-result v7

    .line 66
    div-int/lit8 v8, v1, 0x2

    .line 67
    sub-int/2addr v6, v8

    .line 69
    add-int/2addr v1, v6

    .line 70
    div-int/lit8 v8, v5, 0x2

    .line 71
    sub-int/2addr v7, v8

    .line 73
    add-int/2addr v5, v7

    .line 74
    invoke-virtual {v0, v6, v7, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 78
    const/4 v5, 0x1

    .line 80
    invoke-virtual {v1, v0, v5}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 81
    move-result-object v6

    .line 84
    invoke-virtual {p0, v0, v6}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->snapToMovementBoundsEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 85
    iget-object v7, v1, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 88
    invoke-virtual {v7, v0, v6, v2}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    .line 90
    move-result v6

    .line 93
    invoke-virtual {v1, v0, v5}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 94
    move-result-object v1

    .line 97
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    invoke-static {v0, v6, v1}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 101
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 104
    iput-boolean v2, v1, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowInputEvents:Z

    .line 106
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 108
    const/16 v9, 0xfa

    .line 110
    iget v6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    .line 112
    new-instance v1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;

    .line 114
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;I)V

    .line 116
    iput-object v1, v3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipFinishResizeWCTRunnable:Ljava/lang/Runnable;

    .line 119
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 121
    if-eqz v1, :cond_2

    .line 123
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 125
    const v7, 0x4fcf77e5    # 6.9614822E9f

    .line 127
    const-string v8, "mPipFinishResizeWCTRunnable is set to be called once window updates"

    .line 130
    const/4 v11, 0x0

    .line 132
    invoke-static {v1, v7, v2, v8, v11}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :cond_2
    iget-boolean v1, v3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 136
    if-eqz v1, :cond_3

    .line 138
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 140
    if-eqz v1, :cond_5

    .line 142
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 144
    const-string v3, "PipTaskOrganizer"

    .line 146
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 148
    move-result-object v3

    .line 151
    const v4, -0xf8154b7

    .line 152
    const-string v5, "%s: skip scheduleAnimateResizePip, entering pip deferred"

    .line 155
    invoke-static {v1, v4, v2, v5, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 157
    goto :goto_0

    .line 160
    :cond_3
    const/4 v7, 0x0

    .line 161
    const/4 v8, 0x6

    .line 162
    invoke-virtual/range {v3 .. v10}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;)V

    .line 163
    goto :goto_0

    .line 166
    :cond_4
    const/4 v1, 0x7

    .line 167
    invoke-virtual {v3, v0, v1, v10}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    .line 168
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 171
    move-result v0

    .line 174
    int-to-float v0, v0

    .line 175
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    .line 176
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 178
    int-to-float v1, v1

    .line 180
    div-float/2addr v0, v1

    .line 181
    const/high16 v1, 0x40000000    # 2.0f

    .line 182
    div-float/2addr v0, v1

    .line 184
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 185
    iput v0, v1, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMagneticFieldRadiusPercent:F

    .line 187
    iget-object v2, v1, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 189
    iget v1, v1, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetSize:I

    .line 191
    int-to-float v1, v1

    .line 193
    mul-float/2addr v0, v1

    .line 194
    const/high16 v1, 0x3fa00000    # 1.25f

    .line 195
    mul-float/2addr v0, v1

    .line 197
    float-to-int v0, v0

    .line 198
    iput v0, v2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->magneticFieldRadiusPx:I

    .line 199
    sget-object v0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_RESIZE:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 201
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 205
    goto :goto_1

    .line 208
    :cond_6
    iput v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 209
    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    .line 212
    iput-boolean v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    .line 214
    iput-boolean v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 216
    iput-boolean v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 218
    :goto_1
    return-void
    .line 220
.end method

.method public getLastResizeBounds()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 2
    return-object p0
    .line 4
.end method

.method public final isWithinDragResizeRegion(II)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnableDragCornerResize:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 8
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 10
    move-result-object v0

    .line 13
    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 14
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    .line 16
    invoke-virtual {v3, v1, v1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    .line 21
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 23
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    .line 26
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 28
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 31
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 33
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 36
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 38
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 41
    iget v6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 43
    div-int/lit8 v7, v6, 0x2

    .line 45
    sub-int/2addr v3, v7

    .line 47
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 48
    div-int/lit8 v6, v6, 0x2

    .line 50
    sub-int/2addr v7, v6

    .line 52
    invoke-virtual {v1, v3, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 53
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 56
    iget v6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 58
    div-int/lit8 v7, v6, 0x2

    .line 60
    sub-int/2addr v3, v7

    .line 62
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 63
    div-int/lit8 v6, v6, 0x2

    .line 65
    sub-int/2addr v7, v6

    .line 67
    invoke-virtual {v2, v3, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 68
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 71
    iget v6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 73
    div-int/lit8 v7, v6, 0x2

    .line 75
    sub-int/2addr v3, v7

    .line 77
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 78
    div-int/lit8 v6, v6, 0x2

    .line 80
    sub-int/2addr v7, v6

    .line 82
    invoke-virtual {v4, v3, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 83
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 86
    iget v6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 88
    div-int/lit8 v7, v6, 0x2

    .line 90
    sub-int/2addr v3, v7

    .line 92
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 93
    div-int/lit8 v6, v6, 0x2

    .line 95
    sub-int/2addr v0, v6

    .line 97
    invoke-virtual {v5, v3, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 98
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    .line 101
    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    .line 103
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 106
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 108
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 111
    invoke-virtual {p0, v2, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 113
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 116
    invoke-virtual {p0, v4, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 118
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 121
    invoke-virtual {p0, v5, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 123
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    .line 126
    move-result p0

    .line 129
    return p0
    .line 130
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-boolean v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnableDragCornerResize:Z

    .line 6
    if-nez v2, :cond_0

    .line 8
    iget-boolean v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    .line 10
    if-nez v2, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 15
    iget-boolean v2, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowInputEvents:Z

    .line 17
    if-nez v2, :cond_1

    .line 19
    return-void

    .line 21
    :cond_1
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 22
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 24
    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 28
    return-void

    .line 30
    :cond_2
    instance-of v3, v1, Landroid/view/MotionEvent;

    .line 31
    if-eqz v3, :cond_12

    .line 33
    check-cast v1, Landroid/view/MotionEvent;

    .line 35
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 37
    move-result v3

    .line 40
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 41
    move-result-object v4

    .line 44
    const/4 v5, 0x3

    .line 45
    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 46
    const/4 v7, 0x1

    .line 48
    if-eq v3, v7, :cond_3

    .line 49
    if-ne v3, v5, :cond_4

    .line 51
    :cond_3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    .line 53
    move-result v3

    .line 56
    float-to-int v3, v3

    .line 57
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    .line 58
    move-result v8

    .line 61
    float-to-int v8, v8

    .line 62
    invoke-virtual {v4, v3, v8}, Landroid/graphics/Rect;->contains(II)Z

    .line 63
    move-result v3

    .line 66
    if-nez v3, :cond_4

    .line 67
    invoke-virtual {v6}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    .line 69
    move-result v3

    .line 72
    if-eqz v3, :cond_4

    .line 73
    invoke-virtual {v6}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    .line 75
    :cond_4
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    .line 78
    if-eqz v3, :cond_5

    .line 80
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    .line 82
    if-eqz v3, :cond_5

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->onPinchResize(Landroid/view/MotionEvent;)V

    .line 86
    goto/16 :goto_1

    .line 89
    :cond_5
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnableDragCornerResize:Z

    .line 91
    if-eqz v3, :cond_12

    .line 93
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 95
    move-result v3

    .line 98
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 99
    move-result v8

    .line 102
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 103
    move-result v1

    .line 106
    iget v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOhmOffset:I

    .line 107
    int-to-float v4, v4

    .line 109
    sub-float v9, v1, v4

    .line 110
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 112
    const/4 v4, 0x0

    .line 114
    const/4 v10, 0x2

    .line 115
    iget-object v15, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    .line 116
    iget-object v14, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 118
    if-nez v3, :cond_b

    .line 120
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 122
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsSysUiStateValid:Z

    .line 125
    if-eqz v3, :cond_6

    .line 127
    float-to-int v3, v8

    .line 129
    float-to-int v5, v9

    .line 130
    invoke-virtual {v0, v3, v5}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isWithinDragResizeRegion(II)Z

    .line 131
    move-result v3

    .line 134
    if-eqz v3, :cond_6

    .line 135
    move v4, v7

    .line 137
    :cond_6
    iput-boolean v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 138
    if-eqz v4, :cond_12

    .line 140
    float-to-int v3, v8

    .line 142
    float-to-int v4, v9

    .line 143
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 144
    move-result-object v5

    .line 147
    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMovementBoundsSupplier:Ljava/util/function/Function;

    .line 148
    invoke-interface {v6, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-result-object v6

    .line 153
    check-cast v6, Landroid/graphics/Rect;

    .line 154
    iget v11, v6, Landroid/graphics/Rect;->left:I

    .line 156
    iget v12, v6, Landroid/graphics/Rect;->top:I

    .line 158
    iget v13, v6, Landroid/graphics/Rect;->right:I

    .line 160
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 162
    move-result v14

    .line 165
    add-int/2addr v14, v13

    .line 166
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 167
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 169
    move-result v13

    .line 172
    add-int/2addr v13, v6

    .line 173
    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    .line 174
    invoke-virtual {v6, v11, v12, v14, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 176
    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    .line 179
    invoke-virtual {v11, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 181
    move-result v11

    .line 184
    if-eqz v11, :cond_7

    .line 185
    iget v11, v5, Landroid/graphics/Rect;->top:I

    .line 187
    iget v12, v6, Landroid/graphics/Rect;->top:I

    .line 189
    if-eq v11, v12, :cond_7

    .line 191
    iget v11, v5, Landroid/graphics/Rect;->left:I

    .line 193
    iget v12, v6, Landroid/graphics/Rect;->left:I

    .line 195
    if-eq v11, v12, :cond_7

    .line 197
    iget v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 199
    or-int/2addr v11, v7

    .line 201
    or-int/lit8 v11, v11, 0x4

    .line 202
    iput v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 204
    :cond_7
    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    .line 206
    invoke-virtual {v11, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 208
    move-result v11

    .line 211
    if-eqz v11, :cond_8

    .line 212
    iget v11, v5, Landroid/graphics/Rect;->top:I

    .line 214
    iget v12, v6, Landroid/graphics/Rect;->top:I

    .line 216
    if-eq v11, v12, :cond_8

    .line 218
    iget v11, v5, Landroid/graphics/Rect;->right:I

    .line 220
    iget v12, v6, Landroid/graphics/Rect;->right:I

    .line 222
    if-eq v11, v12, :cond_8

    .line 224
    iget v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 226
    or-int/2addr v11, v10

    .line 228
    or-int/lit8 v11, v11, 0x4

    .line 229
    iput v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 231
    :cond_8
    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 233
    invoke-virtual {v11, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 235
    move-result v11

    .line 238
    if-eqz v11, :cond_9

    .line 239
    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    .line 241
    iget v12, v6, Landroid/graphics/Rect;->bottom:I

    .line 243
    if-eq v11, v12, :cond_9

    .line 245
    iget v11, v5, Landroid/graphics/Rect;->right:I

    .line 247
    iget v12, v6, Landroid/graphics/Rect;->right:I

    .line 249
    if-eq v11, v12, :cond_9

    .line 251
    iget v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 253
    or-int/2addr v10, v11

    .line 255
    or-int/lit8 v10, v10, 0x8

    .line 256
    iput v10, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 258
    :cond_9
    iget-object v10, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 260
    invoke-virtual {v10, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 262
    move-result v3

    .line 265
    if-eqz v3, :cond_a

    .line 266
    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    .line 268
    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    .line 270
    if-eq v3, v4, :cond_a

    .line 272
    iget v3, v5, Landroid/graphics/Rect;->left:I

    .line 274
    iget v4, v6, Landroid/graphics/Rect;->left:I

    .line 276
    if-eq v3, v4, :cond_a

    .line 278
    iget v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 280
    or-int/2addr v3, v7

    .line 282
    or-int/lit8 v3, v3, 0x8

    .line 283
    iput v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 285
    :cond_a
    invoke-virtual {v1, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 287
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 290
    move-result-object v0

    .line 293
    invoke-virtual {v15, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 294
    goto/16 :goto_1

    .line 297
    :cond_b
    iget-boolean v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 299
    if-eqz v11, :cond_12

    .line 301
    if-eq v3, v7, :cond_11

    .line 303
    if-eq v3, v10, :cond_d

    .line 305
    if-eq v3, v5, :cond_11

    .line 307
    const/4 v1, 0x5

    .line 309
    if-eq v3, v1, :cond_c

    .line 310
    goto/16 :goto_1

    .line 312
    :cond_c
    iput-boolean v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 314
    goto/16 :goto_1

    .line 316
    :cond_d
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 318
    if-nez v3, :cond_e

    .line 320
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 322
    sub-float v3, v8, v3

    .line 324
    float-to-double v10, v3

    .line 326
    iget v3, v1, Landroid/graphics/PointF;->y:F

    .line 327
    sub-float v3, v9, v3

    .line 329
    float-to-double v12, v3

    .line 331
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    .line 332
    move-result-wide v10

    .line 335
    iget v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    .line 336
    float-to-double v12, v3

    .line 338
    cmpl-double v3, v10, v12

    .line 339
    if-lez v3, :cond_e

    .line 341
    iput-boolean v7, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 343
    invoke-virtual {v1, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 345
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 348
    invoke-virtual {v3}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 350
    :cond_e
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 353
    if-eqz v3, :cond_12

    .line 355
    invoke-virtual {v6}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    .line 357
    move-result v3

    .line 360
    if-eqz v3, :cond_f

    .line 361
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu(I)V

    .line 363
    :cond_f
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 366
    move-result-object v12

    .line 369
    iget v10, v1, Landroid/graphics/PointF;->x:F

    .line 370
    iget v11, v1, Landroid/graphics/PointF;->y:F

    .line 372
    iget v13, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 374
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    .line 376
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 378
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 380
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    .line 382
    const/16 v17, 0x1

    .line 384
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    .line 386
    move-result v6

    .line 389
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 390
    move-result v4

    .line 393
    if-le v6, v4, :cond_10

    .line 394
    move/from16 v18, v7

    .line 396
    goto :goto_0

    .line 398
    :cond_10
    const/16 v18, 0x0

    .line 399
    :goto_0
    move-object v4, v14

    .line 401
    move v14, v3

    .line 402
    move-object v3, v15

    .line 403
    move v15, v1

    .line 404
    move-object/from16 v16, v5

    .line 405
    invoke-static/range {v8 .. v18}, Lcom/android/internal/policy/TaskResizingAlgorithm;->resizeDrag(FFFFLandroid/graphics/Rect;IIILandroid/graphics/Point;ZZ)Landroid/graphics/Rect;

    .line 407
    move-result-object v1

    .line 410
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 411
    iget v1, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 414
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 416
    const/4 v6, 0x0

    .line 418
    invoke-virtual {v5, v4, v1, v6, v7}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V

    .line 419
    const/4 v1, 0x0

    .line 422
    const/4 v5, 0x0

    .line 423
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 424
    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;)V

    .line 426
    iput-boolean v7, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mHasUserResizedPip:Z

    .line 429
    goto :goto_1

    .line 431
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->finishResize()V

    .line 432
    :cond_12
    :goto_1
    return-void
    .line 435
.end method

.method public onPinchResize(Landroid/view/MotionEvent;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, -0x1

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eq v2, v5, :cond_0

    .line 13
    const/4 v6, 0x3

    .line 15
    if-ne v2, v6, :cond_1

    .line 16
    :cond_0
    iput v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 18
    iput v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 20
    iput-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->finishResize()V

    .line 24
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 27
    move-result v6

    .line 30
    const/4 v7, 0x2

    .line 31
    if-eq v6, v7, :cond_2

    .line 32
    return-void

    .line 34
    :cond_2
    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 35
    invoke-virtual {v6}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 37
    move-result-object v8

    .line 40
    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    .line 41
    iget-object v10, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 43
    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    .line 45
    iget-object v12, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    .line 47
    const/4 v13, 0x5

    .line 49
    iget-object v14, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 50
    iget-object v15, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    .line 52
    if-ne v2, v13, :cond_3

    .line 54
    iget v13, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 56
    if-ne v13, v4, :cond_3

    .line 58
    iget v13, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 60
    if-ne v13, v4, :cond_3

    .line 62
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 64
    move-result v13

    .line 67
    float-to-int v13, v13

    .line 68
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 69
    move-result v4

    .line 72
    float-to-int v4, v4

    .line 73
    invoke-virtual {v8, v13, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 74
    move-result v4

    .line 77
    if-eqz v4, :cond_3

    .line 78
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 80
    move-result v4

    .line 83
    float-to-int v4, v4

    .line 84
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 85
    move-result v13

    .line 88
    float-to-int v13, v13

    .line 89
    invoke-virtual {v8, v4, v13}, Landroid/graphics/Rect;->contains(II)Z

    .line 90
    move-result v4

    .line 93
    if-eqz v4, :cond_3

    .line 94
    iput-boolean v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 96
    iput v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 98
    iput v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 100
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 102
    move-result v3

    .line 105
    iget v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 106
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 108
    move-result v4

    .line 111
    invoke-virtual {v10, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 112
    iget v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 115
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 117
    move-result v3

    .line 120
    iget v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 121
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 123
    move-result v4

    .line 126
    invoke-virtual {v9, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 127
    invoke-virtual {v15, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 130
    invoke-virtual {v12, v10}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 133
    invoke-virtual {v11, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 136
    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 139
    :cond_3
    if-ne v2, v7, :cond_c

    .line 142
    iget v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 144
    const/4 v3, -0x1

    .line 146
    if-eq v2, v3, :cond_c

    .line 147
    iget v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 149
    if-ne v4, v3, :cond_4

    .line 151
    goto/16 :goto_3

    .line 153
    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 155
    move-result v2

    .line 158
    iget v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 159
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 161
    move-result v3

    .line 164
    iget v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 165
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 167
    move-result v4

    .line 170
    iget v7, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 171
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 173
    move-result v1

    .line 176
    invoke-virtual {v12, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 177
    invoke-virtual {v11, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 180
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 183
    if-nez v1, :cond_6

    .line 185
    iget v1, v11, Landroid/graphics/PointF;->x:F

    .line 187
    iget v2, v9, Landroid/graphics/PointF;->x:F

    .line 189
    sub-float/2addr v1, v2

    .line 191
    float-to-double v1, v1

    .line 192
    iget v3, v11, Landroid/graphics/PointF;->y:F

    .line 193
    iget v4, v9, Landroid/graphics/PointF;->y:F

    .line 195
    sub-float/2addr v3, v4

    .line 197
    float-to-double v3, v3

    .line 198
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 199
    move-result-wide v1

    .line 202
    double-to-float v1, v1

    .line 203
    iget v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    .line 204
    cmpl-float v1, v1, v2

    .line 206
    if-gtz v1, :cond_5

    .line 208
    iget v1, v12, Landroid/graphics/PointF;->x:F

    .line 210
    iget v2, v10, Landroid/graphics/PointF;->x:F

    .line 212
    sub-float/2addr v1, v2

    .line 214
    float-to-double v1, v1

    .line 215
    iget v3, v12, Landroid/graphics/PointF;->y:F

    .line 216
    iget v4, v10, Landroid/graphics/PointF;->y:F

    .line 218
    sub-float/2addr v3, v4

    .line 220
    float-to-double v3, v3

    .line 221
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 222
    move-result-wide v1

    .line 225
    double-to-float v1, v1

    .line 226
    iget v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    .line 227
    cmpl-float v1, v1, v2

    .line 229
    if-lez v1, :cond_6

    .line 231
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->pilferPointers()V

    .line 233
    iput-boolean v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 236
    invoke-virtual {v10, v12}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 238
    invoke-virtual {v9, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 241
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 244
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    .line 246
    move-result v2

    .line 249
    if-eqz v2, :cond_6

    .line 250
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    .line 252
    :cond_6
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 255
    if-eqz v1, :cond_c

    .line 257
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    .line 259
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    .line 261
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPinchResizingAlgorithm:Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;

    .line 263
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    iget v4, v9, Landroid/graphics/PointF;->x:F

    .line 268
    iget v7, v10, Landroid/graphics/PointF;->x:F

    .line 270
    sub-float/2addr v4, v7

    .line 272
    float-to-double v7, v4

    .line 273
    iget v4, v9, Landroid/graphics/PointF;->y:F

    .line 274
    iget v13, v10, Landroid/graphics/PointF;->y:F

    .line 276
    sub-float/2addr v4, v13

    .line 278
    move-object/from16 v16, v6

    .line 279
    float-to-double v5, v4

    .line 281
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    .line 282
    move-result-wide v4

    .line 285
    double-to-float v4, v4

    .line 286
    iget v5, v11, Landroid/graphics/PointF;->x:F

    .line 287
    iget v6, v12, Landroid/graphics/PointF;->x:F

    .line 289
    sub-float/2addr v5, v6

    .line 291
    float-to-double v5, v5

    .line 292
    iget v7, v11, Landroid/graphics/PointF;->y:F

    .line 293
    iget v8, v12, Landroid/graphics/PointF;->y:F

    .line 295
    sub-float/2addr v7, v8

    .line 297
    float-to-double v7, v7

    .line 298
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    .line 299
    move-result-wide v5

    .line 302
    double-to-float v5, v5

    .line 303
    iget v6, v1, Landroid/graphics/Point;->x:I

    .line 304
    int-to-float v6, v6

    .line 306
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    .line 307
    move-result v7

    .line 310
    int-to-float v7, v7

    .line 311
    div-float/2addr v6, v7

    .line 312
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 313
    int-to-float v1, v1

    .line 315
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 316
    move-result v7

    .line 319
    int-to-float v7, v7

    .line 320
    div-float/2addr v1, v7

    .line 321
    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    .line 322
    move-result v1

    .line 325
    iget v6, v2, Landroid/graphics/Point;->x:I

    .line 326
    int-to-float v6, v6

    .line 328
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    .line 329
    move-result v7

    .line 332
    int-to-float v7, v7

    .line 333
    div-float/2addr v6, v7

    .line 334
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 335
    int-to-float v2, v2

    .line 337
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 338
    move-result v7

    .line 341
    int-to-float v7, v7

    .line 342
    div-float/2addr v2, v7

    .line 343
    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    .line 344
    move-result v2

    .line 347
    div-float/2addr v5, v4

    .line 348
    sub-float v4, v1, v5

    .line 349
    const/4 v6, 0x0

    .line 351
    cmpl-float v7, v4, v6

    .line 352
    if-lez v7, :cond_7

    .line 354
    goto :goto_0

    .line 356
    :cond_7
    move v4, v6

    .line 357
    :goto_0
    sub-float v7, v5, v2

    .line 358
    cmpl-float v8, v7, v6

    .line 360
    if-lez v8, :cond_8

    .line 362
    goto :goto_1

    .line 364
    :cond_8
    move v7, v6

    .line 365
    :goto_1
    const/high16 v8, 0x3e800000    # 0.25f

    .line 366
    mul-float/2addr v4, v8

    .line 368
    sub-float/2addr v1, v4

    .line 369
    mul-float/2addr v7, v8

    .line 370
    add-float/2addr v7, v2

    .line 371
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    .line 372
    move-result v2

    .line 375
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 376
    move-result v1

    .line 379
    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 380
    const/high16 v2, 0x3f800000    # 1.0f

    .line 383
    cmpl-float v4, v1, v2

    .line 385
    if-eqz v4, :cond_9

    .line 387
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    .line 389
    move-result v4

    .line 392
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    .line 393
    move-result v5

    .line 396
    neg-int v7, v4

    .line 397
    neg-int v8, v5

    .line 398
    invoke-virtual {v14, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 399
    invoke-virtual {v14, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 402
    invoke-virtual {v14, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 405
    :cond_9
    iget-object v1, v3, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpDownCentroid:Landroid/graphics/PointF;

    .line 408
    iget v4, v9, Landroid/graphics/PointF;->x:F

    .line 410
    iget v5, v10, Landroid/graphics/PointF;->x:F

    .line 412
    add-float/2addr v4, v5

    .line 414
    const/high16 v5, 0x40000000    # 2.0f

    .line 415
    div-float/2addr v4, v5

    .line 417
    iget v7, v9, Landroid/graphics/PointF;->y:F

    .line 418
    iget v8, v10, Landroid/graphics/PointF;->y:F

    .line 420
    add-float/2addr v7, v8

    .line 422
    div-float/2addr v7, v5

    .line 423
    invoke-virtual {v1, v4, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 424
    iget-object v4, v3, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpLastCentroid:Landroid/graphics/PointF;

    .line 427
    iget v7, v11, Landroid/graphics/PointF;->x:F

    .line 429
    iget v8, v12, Landroid/graphics/PointF;->x:F

    .line 431
    add-float/2addr v7, v8

    .line 433
    div-float/2addr v7, v5

    .line 434
    iget v8, v11, Landroid/graphics/PointF;->y:F

    .line 435
    iget v13, v12, Landroid/graphics/PointF;->y:F

    .line 437
    add-float/2addr v8, v13

    .line 439
    div-float/2addr v8, v5

    .line 440
    invoke-virtual {v4, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 441
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 444
    iget v7, v1, Landroid/graphics/PointF;->x:F

    .line 446
    sub-float/2addr v5, v7

    .line 448
    float-to-int v5, v5

    .line 449
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 450
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 452
    sub-float/2addr v4, v1

    .line 454
    float-to-int v1, v4

    .line 455
    invoke-virtual {v14, v5, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 456
    iget-object v1, v3, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpDownVector:Landroid/graphics/PointF;

    .line 459
    iget v4, v9, Landroid/graphics/PointF;->x:F

    .line 461
    iget v5, v10, Landroid/graphics/PointF;->x:F

    .line 463
    sub-float/2addr v4, v5

    .line 465
    iget v5, v9, Landroid/graphics/PointF;->y:F

    .line 466
    iget v7, v10, Landroid/graphics/PointF;->y:F

    .line 468
    sub-float/2addr v5, v7

    .line 470
    invoke-virtual {v1, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 471
    iget-object v3, v3, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpLastVector:Landroid/graphics/PointF;

    .line 474
    iget v4, v11, Landroid/graphics/PointF;->x:F

    .line 476
    iget v5, v12, Landroid/graphics/PointF;->x:F

    .line 478
    sub-float/2addr v4, v5

    .line 480
    iget v5, v11, Landroid/graphics/PointF;->y:F

    .line 481
    iget v7, v12, Landroid/graphics/PointF;->y:F

    .line 483
    sub-float/2addr v5, v7

    .line 485
    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 486
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 489
    iget v5, v3, Landroid/graphics/PointF;->y:F

    .line 491
    mul-float v7, v4, v5

    .line 493
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 495
    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 497
    mul-float v8, v1, v3

    .line 499
    sub-float/2addr v7, v8

    .line 501
    float-to-double v7, v7

    .line 502
    mul-float/2addr v4, v3

    .line 503
    mul-float/2addr v1, v5

    .line 504
    add-float/2addr v1, v4

    .line 505
    float-to-double v3, v1

    .line 506
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    .line 507
    move-result-wide v3

    .line 510
    double-to-float v1, v3

    .line 511
    float-to-double v3, v1

    .line 512
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    .line 513
    move-result-wide v3

    .line 516
    double-to-float v1, v3

    .line 517
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 518
    move-result v3

    .line 521
    invoke-static {v1, v6}, Ljava/lang/Float;->compare(FF)I

    .line 522
    move-result v4

    .line 525
    if-nez v4, :cond_a

    .line 526
    move v7, v6

    .line 528
    goto :goto_2

    .line 529
    :cond_a
    const/high16 v4, 0x42340000    # 45.0f

    .line 530
    div-float/2addr v1, v4

    .line 532
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 533
    move-result v5

    .line 536
    div-float v5, v1, v5

    .line 537
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 539
    move-result v1

    .line 542
    sub-float/2addr v1, v2

    .line 543
    mul-float v7, v1, v1

    .line 544
    mul-float/2addr v7, v1

    .line 546
    add-float/2addr v7, v2

    .line 547
    mul-float/2addr v7, v5

    .line 548
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 549
    move-result v1

    .line 552
    cmpl-float v1, v1, v2

    .line 553
    if-ltz v1, :cond_b

    .line 555
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 557
    move-result v1

    .line 560
    div-float/2addr v7, v1

    .line 561
    :cond_b
    const v1, 0x3ecccccd    # 0.4f

    .line 562
    mul-float/2addr v7, v1

    .line 565
    mul-float/2addr v7, v4

    .line 566
    :goto_2
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 567
    move-result v1

    .line 570
    const/high16 v2, 0x40a00000    # 5.0f

    .line 571
    sub-float/2addr v1, v2

    .line 573
    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    .line 574
    move-result v1

    .line 577
    mul-float/2addr v1, v3

    .line 578
    iput v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    .line 579
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 581
    const/4 v2, 0x0

    .line 583
    invoke-virtual {v0, v15, v14, v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;)V

    .line 584
    move-object/from16 v1, v16

    .line 587
    const/4 v0, 0x1

    .line 589
    iput-boolean v0, v1, Lcom/android/wm/shell/pip/PipBoundsState;->mHasUserResizedPip:Z

    .line 590
    :cond_c
    :goto_3
    return-void
    .line 592
.end method

.method public pilferPointers()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 2
    invoke-virtual {p0}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 4
    return-void
    .line 7
.end method

.method public final reloadResources()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    const v2, 0x7f070e93    # @dimen/pip_resize_edge_size '48.0dp'

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v2

    .line 14
    iput v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 15
    const v2, 0x7f050043    # @bool/config_pipEnableDragCornerResize 'false'

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 20
    move-result v1

    .line 23
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnableDragCornerResize:Z

    .line 24
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 30
    move-result v0

    .line 33
    int-to-float v0, v0

    .line 34
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    .line 35
    return-void
    .line 37
.end method

.method public final snapToMovementBoundsEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 2
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 4
    sub-int v1, v0, v1

    .line 6
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 8
    move-result v1

    .line 11
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 12
    sub-int/2addr v2, v0

    .line 14
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 15
    move-result v0

    .line 18
    if-ge v1, v0, :cond_0

    .line 19
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 24
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 26
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 28
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 30
    return-void
    .line 33
.end method

.method public final updateIsEnabled()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    .line 2
    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

    .line 11
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 16
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 21
    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 25
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 28
    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    .line 30
    if-eqz v0, :cond_3

    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    .line 34
    const-class v1, Landroid/hardware/input/InputManager;

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 41
    check-cast v0, Landroid/hardware/input/InputManager;

    .line 42
    const-string v1, "pip-resize"

    .line 44
    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayId:I

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    .line 48
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 54
    new-instance v1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;

    .line 56
    const/4 v2, 0x1

    .line 58
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;I)V

    .line 59
    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 65
    :catch_0
    move-exception p0

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    .line 67
    const-string v1, "Failed to create input event receiver"

    .line 69
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    throw v0

    .line 74
    :cond_3
    :goto_0
    return-void
    .line 75
.end method

.method public updateMaxSize(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 4
    return-void
    .line 7
.end method

.method public updateMinSize(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 4
    return-void
    .line 7
.end method
