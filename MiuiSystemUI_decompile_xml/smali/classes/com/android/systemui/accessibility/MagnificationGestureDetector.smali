.class public final Lcom/android/systemui/accessibility/MagnificationGestureDetector;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCancelTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;

.field public mDetectSingleTap:Z

.field public mDraggingDetected:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

.field public final mPointerDown:Landroid/graphics/PointF;

.field public final mPointerLocation:Landroid/graphics/PointF;

.field public final mTouchSlopSquare:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    .line 5
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 14
    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 16
    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerLocation:Landroid/graphics/PointF;

    .line 19
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    .line 22
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    .line 25
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 27
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 31
    move-result p1

    .line 34
    mul-int/2addr p1, p1

    .line 35
    iput p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mTouchSlopSquare:I

    .line 36
    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mHandler:Landroid/os/Handler;

    .line 38
    iput-object p3, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

    .line 40
    new-instance p1, Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;

    .line 42
    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/MagnificationGestureDetector;)V

    .line 44
    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mCancelTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;

    .line 47
    return-void
    .line 49
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    move-result v2

    .line 13
    iget-object v3, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    .line 14
    const/4 v4, 0x1

    .line 16
    iget-object v5, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mHandler:Landroid/os/Handler;

    .line 17
    iget-object v6, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mCancelTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;

    .line 19
    iget-object v7, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

    .line 21
    const/4 v8, 0x0

    .line 23
    if-eqz v2, :cond_7

    .line 24
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerLocation:Landroid/graphics/PointF;

    .line 26
    if-eq v2, v4, :cond_5

    .line 28
    const/4 v9, 0x2

    .line 30
    if-eq v2, v9, :cond_1

    .line 31
    const/4 p1, 0x3

    .line 33
    if-eq v2, p1, :cond_6

    .line 34
    const/4 p1, 0x5

    .line 36
    if-eq v2, p1, :cond_0

    .line 37
    goto/16 :goto_3

    .line 39
    :cond_0
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    iput-boolean v8, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    .line 44
    goto/16 :goto_3

    .line 46
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->stopSingleTapDetectionIfNeeded(FF)V

    .line 48
    iget-boolean p0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    .line 51
    if-nez p0, :cond_2

    .line 53
    move v4, v8

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 57
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 59
    move-result p0

    .line 62
    if-nez p0, :cond_3

    .line 63
    iget p0, p2, Landroid/graphics/PointF;->y:F

    .line 65
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 67
    move-result p0

    .line 70
    if-nez p0, :cond_3

    .line 71
    goto :goto_0

    .line 73
    :cond_3
    move v4, v8

    .line 74
    :goto_0
    if-nez v4, :cond_4

    .line 75
    invoke-virtual {p2, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 77
    :cond_4
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 80
    sub-float p0, v0, p0

    .line 82
    iget v2, p2, Landroid/graphics/PointF;->y:F

    .line 84
    sub-float v2, v1, v2

    .line 86
    invoke-virtual {p2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 88
    invoke-interface {v7, p1, p0, v2}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onDrag(Landroid/view/View;FF)Z

    .line 91
    move-result v4

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->stopSingleTapDetectionIfNeeded(FF)V

    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    .line 99
    if-eqz v0, :cond_6

    .line 101
    invoke-interface {v7, p1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onSingleTap(Landroid/view/View;)V

    .line 103
    move p1, v4

    .line 106
    goto :goto_1

    .line 107
    :cond_6
    move p1, v8

    .line 108
    :goto_1
    invoke-interface {v7}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onFinish()Z

    .line 109
    move-result v0

    .line 112
    or-int/2addr p1, v0

    .line 113
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 114
    iput v0, v3, Landroid/graphics/PointF;->x:F

    .line 116
    iput v0, v3, Landroid/graphics/PointF;->y:F

    .line 118
    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 120
    iput v0, p2, Landroid/graphics/PointF;->y:F

    .line 122
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    iput-boolean v4, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    .line 127
    iput-boolean v8, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    .line 129
    move v8, p1

    .line 131
    goto :goto_3

    .line 132
    :cond_7
    invoke-virtual {v3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    .line 136
    move-result-wide p0

    .line 139
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 140
    move-result p2

    .line 143
    int-to-long v0, p2

    .line 144
    add-long/2addr p0, v0

    .line 145
    invoke-virtual {v5, v6, p0, p1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 146
    invoke-interface {v7}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onStart()V

    .line 149
    :goto_2
    or-int/2addr v8, v4

    .line 152
    :goto_3
    return v8
    .line 153
.end method

.method public final stopSingleTapDetectionIfNeeded(FF)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    .line 7
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 9
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 11
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v1, :cond_1

    .line 17
    iget v1, v0, Landroid/graphics/PointF;->y:F

    .line 19
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 21
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    move v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v1, v3

    .line 29
    :goto_0
    if-nez v1, :cond_2

    .line 30
    return-void

    .line 32
    :cond_2
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 33
    sub-float/2addr v1, p1

    .line 35
    float-to-int p1, v1

    .line 36
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 37
    sub-float/2addr v0, p2

    .line 39
    float-to-int p2, v0

    .line 40
    mul-int/2addr p1, p1

    .line 41
    mul-int/2addr p2, p2

    .line 42
    add-int/2addr p2, p1

    .line 43
    iget p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mTouchSlopSquare:I

    .line 44
    if-le p2, p1, :cond_3

    .line 46
    iput-boolean v2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    .line 48
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mCancelTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;

    .line 50
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mHandler:Landroid/os/Handler;

    .line 52
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    iput-boolean v3, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    .line 57
    :cond_3
    return-void
    .line 59
.end method
