.class public final Lcom/android/systemui/fsgesture/GesturesBackController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public final mCallback:Lcom/android/systemui/fsgesture/GestureStubView$2;

.field public mContinuousBackFinishTime:J

.field public mDownX:F

.field public mDownY:F

.field public mDragDirection:I

.field public mGestureEdgeLeft:I

.field public mGestureEdgeRight:I

.field public mSwipeStatus:I

.field public mWithoutAnimatingDownX:F

.field public mWithoutAnimatingDragDirection:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/GestureStubView$2;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDragDirection:I

    .line 6
    const/4 v1, 0x4

    .line 8
    iput v1, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    .line 9
    iput v0, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mWithoutAnimatingDragDirection:I

    .line 11
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mCallback:Lcom/android/systemui/fsgesture/GestureStubView$2;

    .line 13
    iput p2, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeLeft:I

    .line 15
    iput p3, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeRight:I

    .line 17
    return-void
    .line 19
.end method

.method public static convertOffset(F)F
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p0, v0

    .line 3
    if-gez v1, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    const/high16 v0, 0x43b40000    # 360.0f

    .line 8
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    .line 10
    move-result p0

    .line 13
    const/high16 v0, 0x40000000    # 2.0f

    .line 14
    div-float/2addr p0, v0

    .line 16
    const/high16 v0, 0x42b40000    # 90.0f

    .line 17
    add-float/2addr p0, v0

    .line 19
    float-to-double v0, p0

    .line 20
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 21
    mul-double/2addr v0, v2

    .line 26
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 27
    div-double/2addr v0, v2

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 33
    move-result-wide v0

    .line 36
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 37
    mul-double/2addr v0, v2

    .line 39
    sub-double/2addr v2, v0

    .line 40
    double-to-float p0, v2

    .line 41
    return p0
    .line 42
.end method

.method public static isFinished(FI)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p0, v0

    .line 3
    if-ltz v0, :cond_1

    .line 5
    const/high16 v0, 0x43b40000    # 360.0f

    .line 7
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    .line 9
    move-result p0

    .line 12
    const/high16 v0, 0x40000000    # 2.0f

    .line 13
    div-float/2addr p0, v0

    .line 15
    const/high16 v0, 0x42b40000    # 90.0f

    .line 16
    add-float/2addr p0, v0

    .line 18
    const/high16 v0, 0x43340000    # 180.0f

    .line 19
    cmpl-float p0, p0, v0

    .line 21
    if-gtz p0, :cond_0

    .line 23
    const/4 p0, 0x2

    .line 25
    if-le p1, p0, :cond_1

    .line 26
    :cond_0
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
    .line 31
.end method


# virtual methods
.method public final onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onPointerEvent swipeStatus:"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    .line 9
    const-string v2, "GesturesBackController"

    .line 11
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    iget v0, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    .line 16
    const/16 v1, 0x10

    .line 18
    if-ne v0, v1, :cond_8

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 22
    move-result-wide v0

    .line 25
    iget-wide v3, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mContinuousBackFinishTime:J

    .line 26
    sub-long/2addr v0, v3

    .line 28
    const-wide/16 v3, 0x12c

    .line 29
    cmp-long v0, v0, v3

    .line 31
    if-ltz v0, :cond_0

    .line 33
    const/4 v0, 0x4

    .line 35
    iput v0, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 38
    move-result v0

    .line 41
    if-nez v0, :cond_9

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/fsgesture/GesturesBackController;->processPointerEvent(Landroid/view/MotionEvent;)V

    .line 44
    const-string p0, "mSwipeStatus == SWIPE_STATUS_ANIMATING, processPointerEvent"

    .line 47
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    goto/16 :goto_2

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 54
    move-result v0

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 58
    move-result v1

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 62
    move-result-wide v3

    .line 65
    iput-wide v3, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mContinuousBackFinishTime:J

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    const-string v4, "processPointerEventWithoutAnimating currX:"

    .line 70
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 75
    const-string v4, " currY:"

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, " mDragDirection:"

    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v1, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDragDirection:I

    .line 91
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 99
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 103
    move-result v1

    .line 106
    const/4 v3, 0x1

    .line 107
    if-eqz v1, :cond_5

    .line 108
    if-eq v1, v3, :cond_1

    .line 110
    const/4 v4, 0x3

    .line 112
    if-eq v1, v4, :cond_1

    .line 113
    goto :goto_1

    .line 115
    :cond_1
    iget v1, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mWithoutAnimatingDragDirection:I

    .line 116
    const/4 v4, -0x1

    .line 118
    if-ne v1, v4, :cond_2

    .line 119
    goto :goto_1

    .line 121
    :cond_2
    if-ne v1, v3, :cond_3

    .line 122
    iget v1, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mWithoutAnimatingDownX:F

    .line 124
    sub-float/2addr v0, v1

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    iget v1, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mWithoutAnimatingDownX:F

    .line 128
    sub-float v0, v1, v0

    .line 130
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 132
    move-result-wide v5

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 136
    move-result-wide v7

    .line 139
    sub-long/2addr v5, v7

    .line 140
    long-to-int p1, v5

    .line 141
    int-to-float v1, p1

    .line 142
    div-float v1, v0, v1

    .line 143
    float-to-int v3, v1

    .line 145
    const/high16 v5, 0x40000000    # 2.0f

    .line 146
    cmpl-float v1, v1, v5

    .line 148
    if-lez v1, :cond_4

    .line 150
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mCallback:Lcom/android/systemui/fsgesture/GestureStubView$2;

    .line 152
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    const-string v5, "GestureStubView"

    .line 157
    const-string v6, "onSwipeStopDirect"

    .line 159
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, v1, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 164
    const/4 v5, 0x0

    .line 166
    iput-boolean v5, v1, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    .line 167
    invoke-static {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-$$Nest$minjectKeyEvent(Lcom/android/systemui/fsgesture/GestureStubView;)V

    .line 169
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    const-string v5, "processPointerEventWithoutAnimating MotionEvent.ACTION_UP offsetX:"

    .line 174
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 179
    const-string v0, " diffTime:"

    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    const-string p1, " speed:"

    .line 190
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {v1, v3, v2}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 195
    iput v4, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mWithoutAnimatingDragDirection:I

    .line 198
    goto :goto_1

    .line 200
    :cond_5
    iput v0, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mWithoutAnimatingDownX:F

    .line 201
    iget p1, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeLeft:I

    .line 203
    int-to-float p1, p1

    .line 205
    cmpg-float p1, v0, p1

    .line 206
    if-gtz p1, :cond_6

    .line 208
    iput v3, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mWithoutAnimatingDragDirection:I

    .line 210
    goto :goto_1

    .line 212
    :cond_6
    iget p1, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeRight:I

    .line 213
    int-to-float p1, p1

    .line 215
    cmpl-float p1, v0, p1

    .line 216
    if-ltz p1, :cond_7

    .line 218
    const/4 p1, 0x2

    .line 220
    iput p1, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mWithoutAnimatingDragDirection:I

    .line 221
    :cond_7
    :goto_1
    const-string p0, "mSwipeStatus == SWIPE_STATUS_ANIMATING, processPointerEventWithoutAnimating"

    .line 223
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    goto :goto_2

    .line 228
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/systemui/fsgesture/GesturesBackController;->processPointerEvent(Landroid/view/MotionEvent;)V

    .line 229
    const-string p0, "mSwipeStatus != SWIPE_STATUS_ANIMATING, processPointerEvent"

    .line 232
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_9
    :goto_2
    return-void
    .line 237
.end method

.method public final processPointerEvent(Landroid/view/MotionEvent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 4
    move-result v1

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 8
    move-result v2

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 12
    move-result v3

    .line 15
    const/16 v4, 0x8

    .line 16
    const/4 v5, 0x2

    .line 18
    const/4 v6, 0x1

    .line 19
    if-eqz v3, :cond_19

    .line 20
    sget-object v7, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 22
    const/4 v9, 0x0

    .line 24
    const-string v10, "GesturesBackController"

    .line 25
    const-string v11, "GestureStubView"

    .line 27
    const/4 v12, -0x1

    .line 29
    if-eq v3, v6, :cond_10

    .line 30
    const/4 v13, 0x3

    .line 32
    if-eq v3, v5, :cond_0

    .line 33
    if-eq v3, v13, :cond_10

    .line 35
    goto/16 :goto_a

    .line 37
    :cond_0
    iget v3, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    .line 39
    if-ne v3, v6, :cond_1

    .line 41
    goto/16 :goto_a

    .line 43
    :cond_1
    iget v3, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDragDirection:I

    .line 45
    if-ne v3, v6, :cond_2

    .line 47
    iget v3, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDownX:F

    .line 49
    sub-float/2addr v1, v3

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget v3, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDownX:F

    .line 53
    sub-float v1, v3, v1

    .line 55
    :goto_0
    iget v3, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDownY:F

    .line 57
    sub-float v3, v2, v3

    .line 59
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 61
    move-result v3

    .line 64
    iget v14, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    .line 65
    if-ne v14, v4, :cond_e

    .line 67
    const/high16 v4, 0x41a00000    # 20.0f

    .line 69
    cmpl-float v4, v1, v4

    .line 71
    if-ltz v4, :cond_e

    .line 73
    const/high16 v4, 0x40000000    # 2.0f

    .line 75
    div-float/2addr v3, v4

    .line 77
    cmpl-float v3, v1, v3

    .line 78
    if-ltz v3, :cond_e

    .line 80
    iput v5, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    .line 82
    iget-object v3, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mCallback:Lcom/android/systemui/fsgesture/GestureStubView$2;

    .line 84
    iget-object v3, v3, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 86
    iput-boolean v6, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    .line 88
    iget-object v4, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 90
    const/16 v14, 0x100

    .line 92
    invoke-virtual {v4, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    iget-object v4, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 97
    const/16 v14, 0xff

    .line 99
    invoke-virtual {v4, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    const-string v4, "onSwipeStart: needAnimation: true"

    .line 104
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v4, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 109
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-static {v3}, Lcom/android/systemui/fsgesture/GestureStubView;->-$$Nest$mrenderView(Lcom/android/systemui/fsgesture/GestureStubView;)V

    .line 114
    iget-boolean v4, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedAdjustArrowPosition:Z

    .line 117
    if-eqz v4, :cond_d

    .line 119
    iget v4, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mEarWidth:I

    .line 121
    int-to-float v11, v4

    .line 123
    cmpg-float v11, v2, v11

    .line 124
    sget-object v14, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->UPON_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    .line 126
    if-gez v11, :cond_3

    .line 128
    goto :goto_1

    .line 130
    :cond_3
    iget v11, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    .line 131
    sub-int/2addr v11, v4

    .line 133
    int-to-float v4, v11

    .line 134
    cmpl-float v2, v2, v4

    .line 135
    if-lez v2, :cond_4

    .line 137
    sget-object v14, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->BELOW_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    .line 139
    goto :goto_1

    .line 141
    :cond_4
    iget v2, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchWidth:I

    .line 142
    int-to-float v2, v2

    .line 144
    const/high16 v4, 0x43240000    # 164.0f

    .line 145
    iget v11, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mDensity:F

    .line 147
    mul-float/2addr v11, v4

    .line 149
    cmpl-float v2, v2, v11

    .line 150
    if-lez v2, :cond_5

    .line 152
    sget-object v14, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->ALIGN_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    .line 154
    :cond_5
    :goto_1
    iget v2, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mBesideNotchArrowXStart:I

    .line 156
    if-lez v2, :cond_8

    .line 158
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 160
    move-result-object v4

    .line 163
    new-array v11, v9, [Ljava/lang/Object;

    .line 164
    const-string v15, "isFocusWindowAdaptNotch"

    .line 166
    const-class v8, Ljava/lang/Boolean;

    .line 168
    invoke-static {v4, v15, v8, v11}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 170
    move-result-object v4

    .line 173
    if-eqz v4, :cond_6

    .line 174
    invoke-virtual {v4}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    .line 176
    move-result-object v4

    .line 179
    check-cast v4, Ljava/lang/Boolean;

    .line 180
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 182
    move-result v4

    .line 185
    goto :goto_2

    .line 186
    :cond_6
    move v4, v9

    .line 187
    :goto_2
    if-nez v4, :cond_7

    .line 188
    iget-boolean v4, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mHideNotch:Z

    .line 190
    if-eqz v4, :cond_8

    .line 192
    :cond_7
    move v2, v9

    .line 194
    :cond_8
    new-array v4, v13, [I

    .line 195
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 197
    move-result v8

    .line 200
    const/high16 v11, 0x42100000    # 36.0f

    .line 201
    const/high16 v13, 0x3f000000    # 0.5f

    .line 203
    if-eqz v8, :cond_c

    .line 205
    if-eq v8, v6, :cond_b

    .line 207
    if-eq v8, v5, :cond_9

    .line 209
    goto :goto_3

    .line 211
    :cond_9
    iget v2, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    .line 212
    div-int/2addr v2, v5

    .line 214
    aput v2, v4, v9

    .line 215
    iget v2, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchHeight:I

    .line 217
    add-int/2addr v2, v12

    .line 219
    iget-boolean v8, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mHideNotch:Z

    .line 220
    if-eqz v8, :cond_a

    .line 222
    move v2, v9

    .line 224
    :cond_a
    aput v2, v4, v6

    .line 225
    iget v2, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchWidth:I

    .line 227
    int-to-float v2, v2

    .line 229
    iget v8, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mDensity:F

    .line 230
    const/high16 v11, 0x42580000    # 54.0f

    .line 232
    mul-float/2addr v8, v11

    .line 234
    sub-float/2addr v2, v8

    .line 235
    add-float/2addr v2, v13

    .line 236
    float-to-int v2, v2

    .line 237
    aput v2, v4, v5

    .line 238
    goto :goto_3

    .line 240
    :cond_b
    iget v8, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    .line 241
    iget v12, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mEarWidth:I

    .line 243
    div-int/lit8 v14, v12, 0x3

    .line 245
    mul-int/2addr v14, v5

    .line 247
    sub-int/2addr v8, v14

    .line 248
    aput v8, v4, v9

    .line 249
    aput v2, v4, v6

    .line 251
    int-to-float v2, v12

    .line 253
    iget v8, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mDensity:F

    .line 254
    mul-float/2addr v8, v11

    .line 256
    add-float/2addr v8, v2

    .line 257
    add-float/2addr v8, v13

    .line 258
    float-to-int v2, v8

    .line 259
    aput v2, v4, v5

    .line 260
    goto :goto_3

    .line 262
    :cond_c
    iget v8, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mEarWidth:I

    .line 263
    div-int/lit8 v12, v8, 0x3

    .line 265
    mul-int/2addr v12, v5

    .line 267
    aput v12, v4, v9

    .line 268
    aput v2, v4, v6

    .line 270
    int-to-float v2, v8

    .line 272
    iget v8, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mDensity:F

    .line 273
    mul-float/2addr v8, v11

    .line 275
    add-float/2addr v8, v2

    .line 276
    add-float/2addr v8, v13

    .line 277
    float-to-int v2, v8

    .line 278
    aput v2, v4, v5

    .line 279
    :goto_3
    iget-object v2, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 281
    aget v3, v4, v9

    .line 283
    int-to-float v3, v3

    .line 285
    aget v6, v4, v6

    .line 286
    int-to-float v6, v6

    .line 288
    aget v4, v4, v5

    .line 289
    int-to-float v4, v4

    .line 291
    invoke-virtual {v2, v3, v6, v4}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionDown(FFF)V

    .line 292
    goto :goto_4

    .line 295
    :cond_d
    iget-object v3, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 296
    const/4 v4, 0x0

    .line 298
    const/high16 v6, -0x40800000    # -1.0f

    .line 299
    invoke-virtual {v3, v2, v4, v6}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionDown(FFF)V

    .line 301
    :cond_e
    :goto_4
    iget v2, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    .line 304
    if-ne v2, v5, :cond_1c

    .line 306
    const-string v2, "onPointerEvent MotionEvent.ACTION_MOVE processMiuiGestures"

    .line 308
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 313
    move-result-wide v2

    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 317
    move-result-wide v4

    .line 320
    sub-long/2addr v2, v4

    .line 321
    long-to-int v2, v2

    .line 322
    int-to-float v2, v2

    .line 323
    div-float v2, v1, v2

    .line 324
    float-to-int v2, v2

    .line 326
    iget-object v0, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mCallback:Lcom/android/systemui/fsgesture/GestureStubView$2;

    .line 327
    invoke-static {v1, v2}, Lcom/android/systemui/fsgesture/GesturesBackController;->isFinished(FI)Z

    .line 329
    move-result v2

    .line 332
    iget-object v0, v0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 333
    if-eqz v2, :cond_f

    .line 335
    iget-object v2, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 337
    const/16 v3, 0x105

    .line 339
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    iget-object v2, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 344
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 346
    goto :goto_5

    .line 349
    :cond_f
    iget-object v2, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 350
    invoke-virtual {v2, v7}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    .line 352
    :goto_5
    iget-object v0, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 355
    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionMove(F)V

    .line 357
    goto/16 :goto_a

    .line 360
    :cond_10
    iget v2, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    .line 362
    if-ne v2, v5, :cond_18

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 366
    move-result-wide v2

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 370
    move-result-wide v13

    .line 373
    sub-long/2addr v2, v13

    .line 374
    long-to-int v2, v2

    .line 375
    iget v3, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDragDirection:I

    .line 376
    if-ne v3, v6, :cond_11

    .line 378
    iget v3, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDownX:F

    .line 380
    sub-float/2addr v1, v3

    .line 382
    goto :goto_6

    .line 383
    :cond_11
    iget v3, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDownX:F

    .line 384
    sub-float v1, v3, v1

    .line 386
    :goto_6
    int-to-float v2, v2

    .line 388
    div-float v2, v1, v2

    .line 389
    float-to-int v2, v2

    .line 391
    invoke-static {v1, v2}, Lcom/android/systemui/fsgesture/GesturesBackController;->isFinished(FI)Z

    .line 392
    move-result v3

    .line 395
    const/16 v4, 0x10

    .line 396
    iput v4, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    .line 398
    iget-object v4, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mCallback:Lcom/android/systemui/fsgesture/GestureStubView$2;

    .line 400
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    const-string v8, "onSwipeStop"

    .line 405
    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v4, v4, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 410
    iput-boolean v9, v4, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    .line 412
    iget-object v8, v4, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 414
    const/16 v11, 0x102

    .line 416
    invoke-virtual {v8, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 418
    move-result-object v11

    .line 421
    const-wide/16 v13, 0x1f4

    .line 422
    invoke-virtual {v8, v11, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 424
    invoke-static {v4}, Lcom/android/systemui/fsgesture/GestureStubView;->-$$Nest$misInSpeedLimit(Lcom/android/systemui/fsgesture/GestureStubView;)Z

    .line 427
    move-result v8

    .line 430
    if-nez v8, :cond_13

    .line 431
    invoke-static {v4}, Lcom/android/systemui/fsgesture/GestureStubView;->-$$Nest$misSwipeRightInDirection(Lcom/android/systemui/fsgesture/GestureStubView;)Z

    .line 433
    move-result v8

    .line 436
    if-eqz v8, :cond_12

    .line 437
    iget-object v7, v4, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 439
    sget-object v8, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 441
    invoke-virtual {v7, v8}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    .line 443
    goto :goto_7

    .line 446
    :cond_12
    iget-object v8, v4, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 447
    invoke-virtual {v8, v7}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    .line 449
    :cond_13
    :goto_7
    if-eqz v3, :cond_17

    .line 452
    iget-object v7, v4, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 454
    invoke-virtual {v7}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->getCurrentState()Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 456
    move-result-object v7

    .line 459
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 460
    move-result v7

    .line 463
    if-eq v7, v6, :cond_16

    .line 464
    if-eq v7, v5, :cond_14

    .line 466
    goto :goto_9

    .line 468
    :cond_14
    iget-object v5, v4, Lcom/android/systemui/fsgesture/GestureStubView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 469
    iget-object v7, v4, Lcom/android/systemui/fsgesture/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    .line 471
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 473
    move-result v5

    .line 476
    if-nez v5, :cond_15

    .line 477
    invoke-static {v7}, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp(Landroid/content/ContentResolver;)Z

    .line 479
    move-result v5

    .line 482
    if-eqz v5, :cond_15

    .line 483
    goto :goto_8

    .line 485
    :cond_15
    move v6, v9

    .line 486
    :goto_8
    if-nez v6, :cond_17

    .line 487
    iget-object v5, v4, Lcom/android/systemui/fsgesture/GestureStubView;->mVibrator:Landroid/os/Vibrator;

    .line 489
    const-wide/16 v6, 0x64

    .line 491
    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 493
    goto :goto_9

    .line 496
    :cond_16
    invoke-static {v4}, Lcom/android/systemui/fsgesture/GestureStubView;->-$$Nest$minjectKeyEvent(Lcom/android/systemui/fsgesture/GestureStubView;)V

    .line 497
    :cond_17
    :goto_9
    iget-object v5, v4, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 500
    const/16 v6, 0x105

    .line 502
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 504
    iget-object v5, v4, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 507
    invoke-static {v1}, Lcom/android/systemui/fsgesture/GesturesBackController;->convertOffset(F)F

    .line 509
    move-result v1

    .line 512
    iget-object v4, v4, Lcom/android/systemui/fsgesture/GestureStubView;->mAnimatorListener:Lcom/android/systemui/fsgesture/GestureStubView$1;

    .line 513
    invoke-virtual {v5, v1, v4}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionUp(FLcom/android/systemui/fsgesture/GestureStubView$1;)V

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 518
    move-result-wide v4

    .line 521
    iput-wide v4, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mContinuousBackFinishTime:J

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    .line 524
    const-string v4, "onPointerEvent MotionEvent.ACTION_UP stopGestures isFinish:"

    .line 526
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 531
    const-string v3, " speed:"

    .line 534
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    move-result-object v1

    .line 545
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_18
    iput v12, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDragDirection:I

    .line 549
    goto :goto_a

    .line 551
    :cond_19
    iput v1, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDownX:F

    .line 552
    iput v2, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDownY:F

    .line 554
    iget v2, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeLeft:I

    .line 556
    int-to-float v2, v2

    .line 558
    cmpg-float v2, v1, v2

    .line 559
    if-gtz v2, :cond_1a

    .line 561
    iput v4, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    .line 563
    iput v6, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDragDirection:I

    .line 565
    goto :goto_a

    .line 567
    :cond_1a
    iget v2, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeRight:I

    .line 568
    int-to-float v2, v2

    .line 570
    cmpl-float v1, v1, v2

    .line 571
    if-ltz v1, :cond_1b

    .line 573
    iput v4, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    .line 575
    iput v5, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDragDirection:I

    .line 577
    goto :goto_a

    .line 579
    :cond_1b
    iput v6, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    .line 580
    :cond_1c
    :goto_a
    return-void
    .line 582
.end method
