.class public final Lcom/android/wm/shell/windowdecor/DragDetector;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mDragPointerId:I

.field public final mEventHandler:Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;

.field public final mInputDownPoint:Landroid/graphics/PointF;

.field public mIsDragEvent:Z

.field public mResultOfDownAction:Z

.field public mTouchSlop:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    .line 5
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mInputDownPoint:Landroid/graphics/PointF;

    .line 10
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mIsDragEvent:Z

    .line 13
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 16
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mDragPointerId:I

    .line 20
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mResultOfDownAction:Z

    .line 22
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mEventHandler:Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;

    .line 24
    return-void
    .line 26
.end method


# virtual methods
.method public final onMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0x1002

    .line 6
    and-int/2addr v0, v1

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    move v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v3

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mEventHandler:Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;

    .line 16
    if-nez v0, :cond_1

    .line 18
    invoke-interface {v1, p1}, Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    .line 20
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 25
    move-result v0

    .line 28
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mInputDownPoint:Landroid/graphics/PointF;

    .line 29
    if-eqz v0, :cond_7

    .line 31
    if-eq v0, v2, :cond_6

    .line 33
    const/4 v5, 0x2

    .line 35
    if-eq v0, v5, :cond_2

    .line 36
    const/4 v2, 0x3

    .line 38
    if-eq v0, v2, :cond_6

    .line 39
    invoke-interface {v1, p1}, Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    .line 41
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mIsDragEvent:Z

    .line 46
    if-nez v0, :cond_4

    .line 48
    iget v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mDragPointerId:I

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 52
    move-result v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 56
    move-result v5

    .line 59
    iget v6, v4, Landroid/graphics/PointF;->x:F

    .line 60
    sub-float/2addr v5, v6

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 63
    move-result v0

    .line 66
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 67
    sub-float/2addr v0, v4

    .line 69
    float-to-double v4, v5

    .line 70
    float-to-double v6, v0

    .line 71
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    .line 72
    move-result-wide v4

    .line 75
    iget v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    .line 76
    int-to-double v6, v0

    .line 78
    cmpl-double v0, v4, v6

    .line 79
    if-lez v0, :cond_3

    .line 81
    goto :goto_1

    .line 83
    :cond_3
    move v2, v3

    .line 84
    :goto_1
    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mIsDragEvent:Z

    .line 85
    :cond_4
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mIsDragEvent:Z

    .line 87
    if-eqz v0, :cond_5

    .line 89
    invoke-interface {v1, p1}, Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    .line 91
    move-result p0

    .line 94
    return p0

    .line 95
    :cond_5
    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mResultOfDownAction:Z

    .line 96
    return p0

    .line 98
    :cond_6
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mIsDragEvent:Z

    .line 99
    const/4 v0, 0x0

    .line 101
    invoke-virtual {v4, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 102
    const/4 v0, -0x1

    .line 105
    iput v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mDragPointerId:I

    .line 106
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mResultOfDownAction:Z

    .line 108
    invoke-interface {v1, p1}, Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    .line 110
    move-result p0

    .line 113
    return p0

    .line 114
    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 115
    move-result v0

    .line 118
    iput v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mDragPointerId:I

    .line 119
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 121
    move-result v0

    .line 124
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 125
    move-result v2

    .line 128
    invoke-virtual {v4, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 129
    invoke-interface {v1, p1}, Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    .line 132
    move-result p1

    .line 135
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mResultOfDownAction:Z

    .line 136
    return p1
    .line 138
.end method
