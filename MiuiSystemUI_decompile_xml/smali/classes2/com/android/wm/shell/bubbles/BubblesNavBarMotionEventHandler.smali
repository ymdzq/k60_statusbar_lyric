.class public final Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mInterceptingTouches:Z

.field public final mMotionEventListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

.field public final mOnInterceptTouch:Ljava/lang/Runnable;

.field public final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public final mTouchDown:Landroid/graphics/PointF;

.field public final mTouchSlop:I

.field public mTrackingTouches:Z

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker$$ExternalSyntheticLambda0;Lcom/android/wm/shell/bubbles/BubbleStackView$4;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    .line 5
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchDown:Landroid/graphics/PointF;

    .line 10
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 12
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 16
    move-result p1

    .line 19
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchSlop:I

    .line 20
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 22
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mOnInterceptTouch:Ljava/lang/Runnable;

    .line 24
    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mMotionEventListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    .line 26
    return-void
    .line 28
.end method


# virtual methods
.method public final getVelocityTracker()Landroid/view/VelocityTracker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 6
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 12
    return-object p0
    .line 14
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchDown:Landroid/graphics/PointF;

    .line 6
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 8
    sub-float/2addr v0, v2

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 11
    move-result v2

    .line 14
    iget v3, v1, Landroid/graphics/PointF;->y:F

    .line 15
    sub-float/2addr v2, v3

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 18
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mMotionEventListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    .line 23
    const/4 v6, 0x1

    .line 25
    if-eqz v3, :cond_8

    .line 26
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    if-eq v3, v6, :cond_5

    .line 30
    const/4 v9, 0x2

    .line 32
    if-eq v3, v9, :cond_2

    .line 33
    const/4 p1, 0x3

    .line 35
    if-eq v3, p1, :cond_0

    .line 36
    goto/16 :goto_0

    .line 38
    :cond_0
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTrackingTouches:Z

    .line 40
    if-eqz p1, :cond_9

    .line 42
    iget-object p1, v5, Lcom/android/wm/shell/bubbles/BubbleStackView$4;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 44
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    .line 46
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->animateBackToExpanded()V

    .line 48
    invoke-virtual {v1, v8, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 51
    iput-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTrackingTouches:Z

    .line 54
    iput-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mInterceptingTouches:Z

    .line 56
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 58
    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 62
    iput-object v7, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 65
    :cond_1
    return v6

    .line 67
    :cond_2
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTrackingTouches:Z

    .line 68
    if-eqz v1, :cond_9

    .line 70
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mInterceptingTouches:Z

    .line 72
    if-nez v1, :cond_3

    .line 74
    float-to-double v0, v0

    .line 76
    float-to-double v3, v2

    .line 77
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 78
    move-result-wide v0

    .line 81
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchSlop:I

    .line 82
    int-to-double v3, v3

    .line 84
    cmpl-double v0, v0, v3

    .line 85
    if-lez v0, :cond_3

    .line 87
    iput-boolean v6, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mInterceptingTouches:Z

    .line 89
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mOnInterceptTouch:Ljava/lang/Runnable;

    .line 91
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 93
    :cond_3
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mInterceptingTouches:Z

    .line 96
    if-eqz v0, :cond_4

    .line 98
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    .line 100
    move-result-object p0

    .line 103
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 104
    invoke-virtual {v5, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$4;->onMove(F)V

    .line 107
    :cond_4
    return v6

    .line 110
    :cond_5
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTrackingTouches:Z

    .line 111
    if-eqz p1, :cond_9

    .line 113
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mInterceptingTouches:Z

    .line 115
    if-eqz p1, :cond_6

    .line 117
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    .line 119
    move-result-object p1

    .line 122
    const/16 v0, 0x3e8

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    .line 128
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 132
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    .line 135
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 139
    move-result p1

    .line 142
    invoke-virtual {v5, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView$4;->onUp(F)V

    .line 143
    :cond_6
    invoke-virtual {v1, v8, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 146
    iput-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTrackingTouches:Z

    .line 149
    iput-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mInterceptingTouches:Z

    .line 151
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 153
    if-eqz p1, :cond_7

    .line 155
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 157
    iput-object v7, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 160
    :cond_7
    return v6

    .line 162
    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 163
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    .line 165
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 167
    move-result-object v2

    .line 170
    const v3, 0x10501f4    # @android:dimen/notification_alerted_size

    .line 171
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 174
    move-result v2

    .line 177
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    .line 178
    new-instance v3, Landroid/graphics/Rect;

    .line 180
    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 182
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 184
    sub-int v2, v8, v2

    .line 186
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 188
    invoke-direct {v3, v7, v2, v0, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 193
    move-result v0

    .line 196
    float-to-int v0, v0

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 198
    move-result v2

    .line 201
    float-to-int v2, v2

    .line 202
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    .line 203
    move-result v0

    .line 206
    if-eqz v0, :cond_9

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 209
    move-result v0

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 213
    move-result v2

    .line 216
    invoke-virtual {v1, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 223
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    iput-boolean v6, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTrackingTouches:Z

    .line 229
    return v6

    .line 231
    :cond_9
    :goto_0
    return v4
    .line 232
.end method
