.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DOUBLE_TAP_TIMEOUT:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "MiuiFreeformModeTouchState"


# instance fields
.field private mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

.field private mAllowGesture:Z

.field private mCaptionHeight:I

.field private final mDownPoint:Landroid/graphics/PointF;

.field private mDownTouchTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mInMultiTouch:Z

.field private mIsDoubleTap:Z

.field private mIsDragging:Z

.field private mIsWaitingForDoubleTap:Z

.field private mLastActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

.field private mLastDownTouchTime:J

.field private mLastMotionEvent:Landroid/view/MotionEvent;

.field private mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

.field private final mMiuiFreeformModeMiniStateHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;

.field private final mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

.field private mPreviouslyDragging:Z

.field private mTouchSlop:I

.field private mUpTouchTime:J

.field private final mVelocityMonitor:Lcom/android/wm/shell/miuifreeform/VelocityMonitor;

.field private final mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/miuifreeform/VelocityMonitor;

    .line 5
    invoke-direct {v0}, Lcom/android/wm/shell/miuifreeform/VelocityMonitor;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mVelocityMonitor:Lcom/android/wm/shell/miuifreeform/VelocityMonitor;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mAllowGesture:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mInMultiTouch:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mIsDoubleTap:Z

    .line 17
    new-instance v1, Landroid/graphics/PointF;

    .line 19
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mDownPoint:Landroid/graphics/PointF;

    .line 24
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mIsWaitingForDoubleTap:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mIsDragging:Z

    .line 28
    const-wide/16 v1, 0x0

    .line 30
    iput-wide v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mDownTouchTime:J

    .line 32
    iput-wide v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mLastDownTouchTime:J

    .line 34
    iput-wide v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mUpTouchTime:J

    .line 36
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mPreviouslyDragging:Z

    .line 38
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 40
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 44
    move-result p1

    .line 47
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mTouchSlop:I

    .line 48
    new-instance p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState$H;

    .line 50
    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState$H;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;Landroid/os/Looper;)V

    .line 52
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mMiuiFreeformModeMiniStateHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;

    .line 57
    iput-object p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 59
    iput p5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mCaptionHeight:I

    .line 61
    iput-object p6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 63
    iput-object p7, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 65
    return-void
    .line 67
.end method

.method private getDoubleTapTimeoutCallbackDelay()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mIsWaitingForDoubleTap:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-wide v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mUpTouchTime:J

    .line 6
    iget-wide v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mDownTouchTime:J

    .line 8
    sub-long/2addr v0, v2

    .line 10
    const-wide/16 v2, 0xc8

    .line 11
    sub-long/2addr v2, v0

    .line 13
    const-wide/16 v0, 0x0

    .line 14
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 16
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    :cond_0
    const-wide/16 v0, -0x1

    .line 21
    return-wide v0
    .line 23
.end method


# virtual methods
.method public doubleTap(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "doubleTap: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "MiuiFreeformModeTouchState"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mMiuiFreeformModeMiniStateHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->doubleTap(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 29
    :cond_0
    return-void
.end method

.method public getDownPoint()Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mDownPoint:Landroid/graphics/PointF;

    .line 2
    return-object p0
    .line 4
.end method

.method public getLastMotionEvent()Landroid/view/MotionEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTouchSlop()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mTouchSlop:I

    .line 2
    return p0
    .line 4
.end method

.method public getVelocityMonitor()Lcom/android/wm/shell/miuifreeform/VelocityMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mVelocityMonitor:Lcom/android/wm/shell/miuifreeform/VelocityMonitor;

    .line 2
    return-object p0
    .line 4
.end method

.method public handleMotionEvents(Landroid/view/MotionEvent;Landroid/view/InputMonitor;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    move-result v2

    .line 13
    const-wide/16 v3, 0xc8

    .line 14
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x2

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x1

    .line 19
    if-eqz v2, :cond_5

    .line 20
    if-eq v2, v8, :cond_3

    .line 22
    if-eq v2, v6, :cond_1

    .line 24
    const/4 p2, 0x3

    .line 26
    if-eq v2, p2, :cond_3

    .line 27
    const/4 p2, 0x5

    .line 29
    if-eq v2, p2, :cond_0

    .line 30
    goto/16 :goto_2

    .line 32
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->setInMultiTouch(Z)V

    .line 34
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 37
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 41
    const-string p0, "MiuiFreeformModeTouchState"

    .line 43
    const-string p1, "handleMotionEvents ACTION_POINTER_DOWN"

    .line 45
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    goto/16 :goto_2

    .line 50
    :cond_1
    iget-boolean p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mIsDragging:Z

    .line 52
    if-nez p3, :cond_2

    .line 54
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mDownPoint:Landroid/graphics/PointF;

    .line 56
    iget v2, p3, Landroid/graphics/PointF;->x:F

    .line 58
    sub-float/2addr v0, v2

    .line 60
    float-to-double v2, v0

    .line 61
    iget p3, p3, Landroid/graphics/PointF;->y:F

    .line 62
    sub-float/2addr v1, p3

    .line 64
    float-to-double v0, v1

    .line 65
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 66
    move-result-wide v0

    .line 69
    iget p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mTouchSlop:I

    .line 70
    int-to-double v2, p3

    .line 72
    cmpl-double p3, v0, v2

    .line 73
    if-lez p3, :cond_2

    .line 75
    iput-boolean v8, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mIsDragging:Z

    .line 77
    invoke-virtual {p2}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 79
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mVelocityMonitor:Lcom/android/wm/shell/miuifreeform/VelocityMonitor;

    .line 82
    new-array p2, v6, [F

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 86
    move-result p3

    .line 89
    aput p3, p2, v7

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 92
    move-result p1

    .line 95
    aput p1, p2, v8

    .line 96
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuifreeform/VelocityMonitor;->update([F)V

    .line 98
    goto/16 :goto_2

    .line 101
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 103
    move-result-wide p2

    .line 106
    iput-wide p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mUpTouchTime:J

    .line 107
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mIsDragging:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mPreviouslyDragging:Z

    .line 111
    iget-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mIsDoubleTap:Z

    .line 113
    if-nez v1, :cond_4

    .line 115
    if-nez v0, :cond_4

    .line 117
    iget-wide v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mDownTouchTime:J

    .line 119
    sub-long/2addr p2, v0

    .line 121
    cmp-long p2, p2, v3

    .line 122
    if-gez p2, :cond_4

    .line 124
    move p2, v8

    .line 126
    goto :goto_0

    .line 127
    :cond_4
    move p2, v7

    .line 128
    :goto_0
    iput-boolean p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mIsWaitingForDoubleTap:Z

    .line 129
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mVelocityMonitor:Lcom/android/wm/shell/miuifreeform/VelocityMonitor;

    .line 131
    new-array p3, v6, [F

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 135
    move-result v0

    .line 138
    aput v0, p3, v7

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 141
    move-result p1

    .line 144
    aput p1, p3, v8

    .line 145
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/miuifreeform/VelocityMonitor;->update([F)V

    .line 147
    iput-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 150
    goto :goto_2

    .line 152
    :cond_5
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 153
    iput-boolean v8, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mAllowGesture:Z

    .line 155
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->setInMultiTouch(Z)V

    .line 157
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mDownPoint:Landroid/graphics/PointF;

    .line 160
    invoke-virtual {p2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 165
    move-result-wide v0

    .line 168
    iput-wide v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mDownTouchTime:J

    .line 169
    iput-boolean v7, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mIsWaitingForDoubleTap:Z

    .line 171
    iput-boolean v7, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mIsDragging:Z

    .line 173
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 175
    if-eqz p2, :cond_6

    .line 177
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    .line 179
    iput-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 182
    :cond_6
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mHandler:Landroid/os/Handler;

    .line 184
    invoke-virtual {p2, v8, p3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 186
    move-result p2

    .line 189
    if-eqz p2, :cond_7

    .line 190
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mHandler:Landroid/os/Handler;

    .line 192
    invoke-virtual {p2, v8, p3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 194
    :cond_7
    iget-boolean p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mPreviouslyDragging:Z

    .line 197
    if-nez p2, :cond_8

    .line 199
    iget-wide p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mDownTouchTime:J

    .line 201
    iget-wide v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mLastDownTouchTime:J

    .line 203
    sub-long/2addr p2, v0

    .line 205
    cmp-long p2, p2, v3

    .line 206
    if-gez p2, :cond_8

    .line 208
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 210
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mLastActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 212
    if-ne p2, p3, :cond_8

    .line 214
    move p2, v8

    .line 216
    goto :goto_1

    .line 217
    :cond_8
    move p2, v7

    .line 218
    :goto_1
    iput-boolean p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mIsDoubleTap:Z

    .line 219
    iget-wide p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mDownTouchTime:J

    .line 221
    iput-wide p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mLastDownTouchTime:J

    .line 223
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 225
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mLastActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 227
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mVelocityMonitor:Lcom/android/wm/shell/miuifreeform/VelocityMonitor;

    .line 229
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/VelocityMonitor;->clear()V

    .line 231
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mVelocityMonitor:Lcom/android/wm/shell/miuifreeform/VelocityMonitor;

    .line 234
    new-array p2, v6, [F

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 238
    move-result p3

    .line 241
    aput p3, p2, v7

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 244
    move-result p1

    .line 247
    aput p1, p2, v8

    .line 248
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuifreeform/VelocityMonitor;->update([F)V

    .line 250
    :goto_2
    return-void
    .line 253
.end method

.method public isAllowGesture()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mAllowGesture:Z

    .line 2
    return p0
    .line 4
.end method

.method public isDoubleTap()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mIsDoubleTap:Z

    .line 2
    return p0
    .line 4
.end method

.method public isDragging()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mIsDragging:Z

    .line 2
    return p0
    .line 4
.end method

.method public isGestureControlled(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mActiveMiuiFreeformTask:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTaskId()I

    .line 8
    move-result p0

    .line 11
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTaskId()I

    .line 12
    move-result p1

    .line 15
    if-ne p0, p1, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
    .line 21
.end method

.method public isInMultiTouch()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mInMultiTouch:Z

    .line 2
    return p0
    .line 4
.end method

.method public isWaitingForDoubleTap()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mIsWaitingForDoubleTap:Z

    .line 2
    return p0
    .line 4
.end method

.method public scheduleDoubleTapTimeoutCallback(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->getDoubleTapTimeoutCallbackDelay()J

    .line 2
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mHandler:Landroid/os/Handler;

    .line 6
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mHandler:Landroid/os/Handler;

    .line 12
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 18
    return-void
    .line 21
.end method

.method public setAllowGesture(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mAllowGesture:Z

    .line 2
    return-void
    .line 4
.end method

.method public setInMultiTouch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mInMultiTouch:Z

    .line 2
    return-void
    .line 4
.end method

.method public singleTap(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isHideStackFromFullScreen()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v1, "singleTap: "

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    const-string v1, "MiuiFreeformModeTouchState"

    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mMiuiFreeformModeMiniStateHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeMiniStateHandler;->singleTap(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 43
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 47
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 53
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getScaledAnimatingBounds()Landroid/graphics/Rect;

    .line 59
    move-result-object v0

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 64
    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 68
    move-result v2

    .line 71
    invoke-static {v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 72
    move-result-object v0

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mDownPoint:Landroid/graphics/PointF;

    .line 76
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 78
    float-to-int v3, v3

    .line 80
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 81
    float-to-int v2, v2

    .line 83
    iget v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mCaptionHeight:I

    .line 84
    invoke-virtual {p1, v0, v3, v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinTopCaptionTipRegion(Landroid/graphics/Rect;III)Z

    .line 86
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    const-string v2, " onFreeformCaptionClicked mDownPoint: "

    .line 94
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mDownPoint:Landroid/graphics/PointF;

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    const-string v2, " miuiFreeformModeTaskInfo: "

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string v2, " mCaptionHeight: "

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mCaptionHeight:I

    .line 117
    invoke-static {v0, v2, v1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 122
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 124
    move-result-object v1

    .line 127
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 128
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 130
    invoke-interface {v0, v1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onFreeformCaptionClicked(I)V

    .line 132
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTouchState;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 135
    const-string/jumbo v0, "top caption clicked"

    .line 137
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->onOtherUiTouch(Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 140
    :cond_3
    :goto_1
    return-void
    .line 143
.end method
