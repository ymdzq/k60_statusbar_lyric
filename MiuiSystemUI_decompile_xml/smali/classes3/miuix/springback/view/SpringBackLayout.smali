.class public Lmiuix/springback/view/SpringBackLayout;
.super Landroid/view/ViewGroup;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/core/view/NestedScrollingChild3;
.implements Lmiuix/core/view/NestedCurrentFling;


# instance fields
.field public consumeNestFlingCounter:I

.field public mActivePointerId:I

.field public final mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

.field public mInitialDownX:F

.field public mInitialDownY:F

.field public mInitialMotionX:F

.field public mInitialMotionY:F

.field public mIsBeingDragged:Z

.field public mNestedFlingInProgress:Z

.field public mNestedScrollAxes:I

.field public mNestedScrollInProgress:Z

.field public final mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field public final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field public final mNestedScrollingV2ConsumedCompat:[I

.field public final mOnScrollChangeListeners:Ljava/util/List;

.field public mOriginScrollOrientation:I

.field public final mParentOffsetInWindow:[I

.field public final mParentScrollConsumed:[I

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public mScrollByFling:Z

.field public mScrollOrientation:I

.field public mScrollState:I

.field public mSpringBackEnable:Z

.field public mSpringBackMode:I

.field public final mSpringScroller:Lmiuix/springback/view/SpringScroller;

.field public mTarget:Landroid/view/View;

.field public final mTargetId:I

.field public mTotalFlingUnconsumed:F

.field public mTotalScrollBottomUnconsumed:F

.field public mTotalScrollTopUnconsumed:F

.field public final mTouchSlop:I

.field public mVelocityX:F

.field public mVelocityY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 5
    iput-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mParentScrollConsumed:[I

    new-array v3, v2, [I

    .line 6
    iput-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mParentOffsetInWindow:[I

    new-array v3, v2, [I

    .line 7
    iput-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingV2ConsumedCompat:[I

    const/4 v3, 0x1

    .line 8
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollChangeListeners:Ljava/util/List;

    .line 10
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    .line 11
    new-instance v4, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v4}, Landroidx/core/view/NestedScrollingParentHelper;-><init>()V

    iput-object v4, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 12
    new-instance v4, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v4, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    .line 13
    iput-object v4, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 14
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    .line 15
    sget-object v4, Lmiuix/springback/R$styleable;->SpringBackLayout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 16
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTargetId:I

    .line 17
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    const/4 v0, 0x3

    .line 18
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    .line 19
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    new-instance p2, Lmiuix/springback/view/SpringScroller;

    invoke-direct {p2}, Lmiuix/springback/view/SpringScroller;-><init>()V

    iput-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 21
    new-instance p2, Lmiuix/springback/view/SpringBackLayoutHelper;

    invoke-direct {p2, p0}, Lmiuix/springback/view/SpringBackLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    .line 22
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->setNestedScrollingEnabled(Z)V

    .line 23
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 24
    iget p2, p1, Landroid/graphics/Point;->x:I

    iput p2, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWidth:I

    .line 25
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    .line 26
    sget-boolean p1, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    .line 27
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    :cond_0
    return-void
.end method

.method public static consumeDelta(II[I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 5
    aput p0, p2, p1

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    aput p0, p2, p1

    .line 10
    :goto_0
    return-void
    .line 12
.end method


# virtual methods
.method public final checkScrollStart(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    if-ne p1, v2, :cond_3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    .line 7
    move-result v3

    .line 10
    if-eqz v3, :cond_0

    .line 11
    move v3, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v0

    .line 15
    :goto_0
    if-eqz v3, :cond_2

    .line 16
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    .line 20
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 24
    move-result v0

    .line 27
    int-to-float v0, v0

    .line 28
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    .line 29
    move-result p1

    .line 32
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 33
    move-result p1

    .line 36
    invoke-virtual {p0, v0, p1, v2}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    .line 37
    move-result p1

    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    .line 41
    move-result v0

    .line 44
    if-gez v0, :cond_1

    .line 45
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 47
    sub-float/2addr v0, p1

    .line 49
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 50
    goto :goto_1

    .line 52
    :cond_1
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 53
    add-float/2addr v0, p1

    .line 55
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 56
    :goto_1
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 58
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 60
    goto :goto_4

    .line 62
    :cond_2
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 63
    goto :goto_4

    .line 65
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 66
    move-result v3

    .line 69
    if-eqz v3, :cond_4

    .line 70
    move v3, v1

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move v3, v0

    .line 74
    :goto_2
    if-eqz v3, :cond_6

    .line 75
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 77
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 79
    move-result v0

    .line 82
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 83
    move-result v0

    .line 86
    int-to-float v0, v0

    .line 87
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    .line 88
    move-result p1

    .line 91
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 92
    move-result p1

    .line 95
    invoke-virtual {p0, v0, p1, v2}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    .line 96
    move-result p1

    .line 99
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 100
    move-result v0

    .line 103
    if-gez v0, :cond_5

    .line 104
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 106
    sub-float/2addr v0, p1

    .line 108
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 109
    goto :goto_3

    .line 111
    :cond_5
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 112
    add-float/2addr v0, p1

    .line 114
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 115
    :goto_3
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 117
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 119
    goto :goto_4

    .line 121
    :cond_6
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 122
    :goto_4
    return-void
    .line 124
.end method

.method public final computeScroll()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 2
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 5
    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->computeScrollOffset()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 13
    iget-wide v1, v0, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    .line 15
    double-to-int v1, v1

    .line 17
    iget-wide v2, v0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    .line 18
    double-to-int v0, v2

    .line 20
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 21
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 24
    iget-boolean v0, v0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    .line 26
    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    .line 30
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 34
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-nez v0, :cond_1

    .line 39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    .line 41
    move-result v0

    .line 44
    if-eqz v0, :cond_4

    .line 45
    :cond_1
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    .line 47
    const/4 v2, 0x2

    .line 49
    if-eq v0, v2, :cond_4

    .line 50
    const-string v0, "SpringBackLayout"

    .line 52
    const-string v3, "Scroll stop but state is not correct."

    .line 54
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    .line 59
    const/4 v3, 0x1

    .line 61
    if-ne v0, v2, :cond_2

    .line 62
    move v1, v3

    .line 64
    :cond_2
    if-eqz v1, :cond_3

    .line 65
    goto :goto_0

    .line 67
    :cond_3
    move v2, v3

    .line 68
    :goto_0
    invoke-virtual {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    .line 69
    goto :goto_1

    .line 72
    :cond_4
    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 73
    :cond_5
    :goto_1
    return-void
    .line 76
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    const/4 v3, 0x0

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(III[I[I)Z

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method public final dispatchScrollState(I)V
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    .line 6
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollChangeListeners:Ljava/util/List;

    .line 8
    check-cast p1, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 26
    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 27
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 30
    iget-boolean p0, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    .line 32
    const/4 p0, 0x0

    .line 34
    throw p0

    .line 35
    :cond_1
    :goto_0
    return-void
    .line 36
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    .line 11
    if-ne v0, v2, :cond_1

    .line 13
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 20
    move-result v4

    .line 23
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 24
    move-result v4

    .line 27
    if-ltz v4, :cond_0

    .line 28
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 30
    move-result v5

    .line 33
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 34
    move-result v4

    .line 37
    filled-new-array {v1, v1}, [I

    .line 38
    move-result-object v6

    .line 41
    iget-object v0, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    .line 42
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 44
    aget v7, v6, v1

    .line 47
    aget v6, v6, v3

    .line 49
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    .line 51
    move-result v8

    .line 54
    add-int/2addr v8, v6

    .line 55
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    .line 56
    move-result v0

    .line 59
    add-int/2addr v0, v7

    .line 60
    new-instance v9, Landroid/graphics/Rect;

    .line 61
    invoke-direct {v9, v7, v6, v0, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 63
    float-to-int v0, v4

    .line 66
    float-to-int v4, v5

    .line 67
    invoke-virtual {v9, v0, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 68
    move-result v0

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move v0, v1

    .line 73
    :goto_0
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 76
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 79
    move-result v0

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 83
    move-result p1

    .line 86
    if-ne p1, v3, :cond_2

    .line 87
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    .line 89
    if-eq p1, v2, :cond_2

    .line 91
    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 93
    :cond_2
    return v0
    .line 96
.end method

.method public getSpringBackMode()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    .line 2
    return p0
    .line 4
.end method

.method public getTarget()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    iget-boolean p0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 4
    return p0
    .line 6
.end method

.method public final isTargetScrollOrientation(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public final isTargetScrollToBottom(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 6
    instance-of p1, p0, Landroid/widget/ListView;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    check-cast p0, Landroid/widget/ListView;

    .line 12
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->canScrollList(I)Z

    .line 14
    move-result p0

    .line 17
    xor-int/2addr p0, v1

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 20
    move-result p0

    .line 23
    xor-int/2addr p0, v1

    .line 24
    return p0

    .line 25
    :cond_1
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 26
    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 28
    move-result p0

    .line 31
    xor-int/2addr p0, v1

    .line 32
    return p0
    .line 33
.end method

.method public final isTargetScrollToTop(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, -0x1

    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 6
    instance-of p1, p0, Landroid/widget/ListView;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    check-cast p0, Landroid/widget/ListView;

    .line 12
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->canScrollList(I)Z

    .line 14
    move-result p0

    .line 17
    xor-int/lit8 p0, p0, 0x1

    .line 18
    return p0

    .line 20
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 21
    move-result p0

    .line 24
    xor-int/lit8 p0, p0, 0x1

    .line 25
    return p0

    .line 27
    :cond_1
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 28
    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 30
    move-result p0

    .line 33
    xor-int/lit8 p0, p0, 0x1

    .line 34
    return p0
    .line 36
.end method

.method public final moveTarget(FI)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    neg-float p1, p1

    .line 6
    float-to-int p1, p1

    .line 7
    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    neg-float p1, p1

    .line 12
    float-to-int p1, p1

    .line 13
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 14
    :goto_0
    return-void
    .line 17
.end method

.method public final obtainMaxSpringBackDistance(I)F
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWidth:I

    .line 8
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 10
    invoke-static {p1, p1}, Ljava/lang/Math;->min(FF)F

    .line 12
    move-result p1

    .line 15
    float-to-double v0, p1

    .line 16
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 17
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 19
    move-result-wide v4

    .line 22
    div-double/2addr v4, v2

    .line 23
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 24
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 26
    move-result-wide v2

    .line 29
    sub-double/2addr v4, v2

    .line 30
    add-double/2addr v4, v0

    .line 31
    double-to-float p1, v4

    .line 32
    int-to-float p0, p0

    .line 33
    mul-float/2addr p1, p0

    .line 34
    return p1
    .line 35
.end method

.method public final obtainSpringBackDistance(FI)F
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWidth:I

    .line 8
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 10
    move-result p1

    .line 13
    int-to-float p0, p0

    .line 14
    div-float/2addr p1, p0

    .line 15
    const/high16 p2, 0x3f800000    # 1.0f

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 18
    move-result p1

    .line 21
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 22
    move-result p1

    .line 25
    float-to-double p1, p1

    .line 26
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 27
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 29
    move-result-wide v2

    .line 32
    div-double/2addr v2, v0

    .line 33
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 34
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 36
    move-result-wide v0

    .line 39
    sub-double/2addr v2, v0

    .line 40
    add-double/2addr v2, p1

    .line 41
    double-to-float p1, v2

    .line 42
    mul-float/2addr p1, p0

    .line 43
    return p1
    .line 44
.end method

.method public final obtainTouchDistance(FFI)F
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p3, v0, :cond_0

    .line 3
    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWidth:I

    .line 8
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 10
    move-result p3

    .line 13
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 14
    move-result v0

    .line 17
    cmpg-float p3, p3, v0

    .line 18
    if-gez p3, :cond_1

    .line 20
    goto :goto_1

    .line 22
    :cond_1
    move p1, p2

    .line 23
    :goto_1
    int-to-double p2, p0

    .line 24
    const-wide v0, 0x3fe5555555555555L    # 0.6666666666666666

    .line 25
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 30
    move-result-wide v0

    .line 33
    int-to-float p0, p0

    .line 34
    const/high16 v2, 0x40400000    # 3.0f

    .line 35
    mul-float/2addr p1, v2

    .line 37
    sub-float/2addr p0, p1

    .line 38
    float-to-double p0, p0

    .line 39
    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    .line 40
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 45
    move-result-wide p0

    .line 48
    mul-double/2addr p0, v0

    .line 49
    sub-double/2addr p2, p0

    .line 50
    double-to-float p0, p2

    .line 51
    return p0
    .line 52
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 5
    move-result-object p1

    .line 8
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 9
    move-result-object p1

    .line 12
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 13
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWidth:I

    .line 15
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 17
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    .line 19
    return-void
    .line 21
.end method

.method public final onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 5
    return-void
    .line 8
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_44

    .line 12
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    .line 14
    if-nez v0, :cond_44

    .line 16
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    .line 18
    if-eqz v0, :cond_1

    .line 20
    goto/16 :goto_e

    .line 22
    :cond_1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    return v1

    .line 32
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 33
    move-result v0

    .line 36
    iget-object v2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 37
    iget-boolean v3, v2, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    .line 39
    const/4 v4, 0x1

    .line 41
    if-nez v3, :cond_3

    .line 42
    if-nez v0, :cond_3

    .line 44
    iput-boolean v4, v2, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    .line 46
    iput v1, v2, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    .line 48
    :cond_3
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    .line 50
    and-int/lit8 v2, v0, 0x1

    .line 52
    if-eqz v2, :cond_4

    .line 54
    move v2, v4

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    move v2, v1

    .line 58
    :goto_0
    const/4 v3, 0x2

    .line 59
    if-nez v2, :cond_6

    .line 60
    and-int/2addr v0, v3

    .line 62
    if-eqz v0, :cond_5

    .line 63
    move v0, v4

    .line 65
    goto :goto_1

    .line 66
    :cond_5
    move v0, v1

    .line 67
    :goto_1
    if-nez v0, :cond_6

    .line 68
    return v1

    .line 70
    :cond_6
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    .line 71
    and-int/lit8 v2, v0, 0x4

    .line 73
    const/4 v5, 0x6

    .line 75
    const/4 v6, -0x1

    .line 76
    const/4 v7, 0x3

    .line 77
    if-eqz v2, :cond_1d

    .line 78
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 85
    move-result v2

    .line 88
    if-eqz v2, :cond_d

    .line 89
    if-eq v2, v4, :cond_c

    .line 91
    if-eq v2, v3, :cond_7

    .line 93
    if-eq v2, v7, :cond_c

    .line 95
    goto :goto_3

    .line 97
    :cond_7
    iget v2, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    .line 98
    if-ne v2, v6, :cond_8

    .line 100
    goto :goto_3

    .line 102
    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 103
    move-result v2

    .line 106
    if-gez v2, :cond_9

    .line 107
    goto :goto_3

    .line 109
    :cond_9
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 110
    move-result v8

    .line 113
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 114
    move-result v2

    .line 117
    iget v9, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownY:F

    .line 118
    sub-float/2addr v8, v9

    .line 120
    iget v9, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownX:F

    .line 121
    sub-float/2addr v2, v9

    .line 123
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 124
    move-result v9

    .line 127
    iget v10, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTouchSlop:I

    .line 128
    int-to-float v10, v10

    .line 130
    cmpl-float v9, v9, v10

    .line 131
    if-gtz v9, :cond_a

    .line 133
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 135
    move-result v9

    .line 138
    cmpl-float v9, v9, v10

    .line 139
    if-lez v9, :cond_f

    .line 141
    :cond_a
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 143
    move-result v2

    .line 146
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 147
    move-result v8

    .line 150
    cmpl-float v2, v2, v8

    .line 151
    if-lez v2, :cond_b

    .line 153
    move v2, v4

    .line 155
    goto :goto_2

    .line 156
    :cond_b
    move v2, v3

    .line 157
    :goto_2
    iput v2, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    .line 158
    goto :goto_3

    .line 160
    :cond_c
    iput v1, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    .line 161
    iget-object v0, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 165
    goto :goto_3

    .line 168
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 169
    move-result v2

    .line 172
    iput v2, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    .line 173
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 175
    move-result v2

    .line 178
    if-gez v2, :cond_e

    .line 179
    goto :goto_3

    .line 181
    :cond_e
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 182
    move-result v8

    .line 185
    iput v8, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownY:F

    .line 186
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 188
    move-result v2

    .line 191
    iput v2, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownX:F

    .line 192
    iput v1, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    .line 194
    :cond_f
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 196
    move-result v0

    .line 199
    if-eqz v0, :cond_15

    .line 200
    if-eq v0, v4, :cond_12

    .line 202
    if-eq v0, v3, :cond_11

    .line 204
    if-eq v0, v7, :cond_12

    .line 206
    if-eq v0, v5, :cond_10

    .line 208
    goto :goto_5

    .line 210
    :cond_10
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 211
    goto :goto_5

    .line 214
    :cond_11
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 215
    if-nez v0, :cond_19

    .line 217
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    .line 219
    iget v0, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    .line 221
    if-eqz v0, :cond_19

    .line 223
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 225
    goto :goto_5

    .line 227
    :cond_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 228
    move-result-object v0

    .line 231
    if-eqz v0, :cond_13

    .line 232
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 234
    :cond_13
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    .line 237
    and-int/2addr v0, v3

    .line 239
    if-eqz v0, :cond_14

    .line 240
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    .line 242
    goto :goto_5

    .line 245
    :cond_14
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    .line 246
    goto :goto_5

    .line 249
    :cond_15
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    .line 250
    iget v2, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownY:F

    .line 252
    iput v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 254
    iget v2, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownX:F

    .line 256
    iput v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 258
    iget v0, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    .line 260
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 262
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    .line 264
    move-result v0

    .line 267
    if-eqz v0, :cond_16

    .line 268
    iput v3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 270
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent()V

    .line 272
    goto :goto_4

    .line 275
    :cond_16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 276
    move-result v0

    .line 279
    if-eqz v0, :cond_17

    .line 280
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 282
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent()V

    .line 284
    goto :goto_4

    .line 287
    :cond_17
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 288
    :goto_4
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    .line 290
    and-int/2addr v0, v3

    .line 292
    if-eqz v0, :cond_18

    .line 293
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    .line 295
    goto :goto_5

    .line 298
    :cond_18
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    .line 299
    :cond_19
    :goto_5
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    .line 302
    move-result v0

    .line 305
    const/4 v2, 0x0

    .line 306
    if-eqz v0, :cond_1a

    .line 307
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    .line 309
    and-int/2addr v0, v4

    .line 311
    if-eqz v0, :cond_1a

    .line 312
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 314
    move-result v0

    .line 317
    int-to-float v0, v0

    .line 318
    cmpl-float v0, v0, v2

    .line 319
    if-nez v0, :cond_1a

    .line 321
    return v1

    .line 323
    :cond_1a
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    .line 324
    move-result v0

    .line 327
    if-eqz v0, :cond_1b

    .line 328
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    .line 330
    and-int/2addr v0, v3

    .line 332
    if-eqz v0, :cond_1b

    .line 333
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    .line 335
    move-result v0

    .line 338
    int-to-float v0, v0

    .line 339
    cmpl-float v0, v0, v2

    .line 340
    if-nez v0, :cond_1b

    .line 342
    return v1

    .line 344
    :cond_1b
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    .line 345
    move-result v0

    .line 348
    if-nez v0, :cond_1c

    .line 349
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    .line 351
    move-result v0

    .line 354
    if-eqz v0, :cond_1e

    .line 355
    :cond_1c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 357
    move-result-object v0

    .line 360
    if-eqz v0, :cond_1e

    .line 361
    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 363
    goto :goto_6

    .line 366
    :cond_1d
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 367
    :cond_1e
    :goto_6
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    .line 369
    move-result v0

    .line 372
    const-string v2, "Got ACTION_MOVE event but have an invalid active pointer id."

    .line 373
    const-string v8, "Got ACTION_MOVE event but don\'t have an active pointer id."

    .line 375
    const-string v9, "SpringBackLayout"

    .line 377
    if-eqz v0, :cond_31

    .line 379
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 381
    move-result v0

    .line 384
    if-nez v0, :cond_1f

    .line 385
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 387
    move-result v0

    .line 390
    if-nez v0, :cond_1f

    .line 391
    goto/16 :goto_a

    .line 393
    :cond_1f
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 395
    move-result v0

    .line 398
    if-eqz v0, :cond_21

    .line 399
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    .line 401
    and-int/2addr v0, v4

    .line 403
    if-eqz v0, :cond_20

    .line 404
    move v0, v4

    .line 406
    goto :goto_7

    .line 407
    :cond_20
    move v0, v1

    .line 408
    :goto_7
    if-nez v0, :cond_21

    .line 409
    goto/16 :goto_a

    .line 411
    :cond_21
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 413
    move-result v0

    .line 416
    if-eqz v0, :cond_23

    .line 417
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    .line 419
    and-int/2addr v0, v3

    .line 421
    if-eqz v0, :cond_22

    .line 422
    move v0, v4

    .line 424
    goto :goto_8

    .line 425
    :cond_22
    move v0, v1

    .line 426
    :goto_8
    if-nez v0, :cond_23

    .line 427
    goto/16 :goto_a

    .line 429
    :cond_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 431
    move-result v0

    .line 434
    if-eqz v0, :cond_2d

    .line 435
    if-eq v0, v4, :cond_2c

    .line 437
    if-eq v0, v3, :cond_25

    .line 439
    if-eq v0, v7, :cond_2c

    .line 441
    if-eq v0, v5, :cond_24

    .line 443
    goto/16 :goto_9

    .line 445
    :cond_24
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 447
    goto/16 :goto_9

    .line 450
    :cond_25
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 452
    if-ne v0, v6, :cond_26

    .line 454
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    goto/16 :goto_a

    .line 459
    :cond_26
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 461
    move-result v0

    .line 464
    if-gez v0, :cond_27

    .line 465
    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    goto/16 :goto_a

    .line 470
    :cond_27
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 472
    move-result p1

    .line 475
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 476
    move-result v0

    .line 479
    if-eqz v0, :cond_28

    .line 480
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 482
    move-result v0

    .line 485
    if-eqz v0, :cond_28

    .line 486
    move v1, v4

    .line 488
    :cond_28
    if-nez v1, :cond_29

    .line 489
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 491
    move-result v0

    .line 494
    if-nez v0, :cond_2a

    .line 495
    :cond_29
    if-eqz v1, :cond_2b

    .line 497
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 499
    cmpl-float v0, p1, v0

    .line 501
    if-lez v0, :cond_2b

    .line 503
    :cond_2a
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 505
    sub-float v0, p1, v0

    .line 507
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    .line 509
    int-to-float v1, v1

    .line 511
    cmpl-float v0, v0, v1

    .line 512
    if-lez v0, :cond_30

    .line 514
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 516
    if-nez v0, :cond_30

    .line 518
    iput-boolean v4, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 520
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 522
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 525
    goto :goto_9

    .line 527
    :cond_2b
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 528
    sub-float/2addr v0, p1

    .line 530
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    .line 531
    int-to-float v1, v1

    .line 533
    cmpl-float v0, v0, v1

    .line 534
    if-lez v0, :cond_30

    .line 536
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 538
    if-nez v0, :cond_30

    .line 540
    iput-boolean v4, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 542
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 544
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 547
    goto :goto_9

    .line 549
    :cond_2c
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 550
    iput v6, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 552
    goto :goto_9

    .line 554
    :cond_2d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 555
    move-result v0

    .line 558
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 559
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 561
    move-result v0

    .line 564
    if-gez v0, :cond_2e

    .line 565
    goto :goto_a

    .line 567
    :cond_2e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 568
    move-result p1

    .line 571
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 572
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    .line 574
    move-result p1

    .line 577
    if-eqz p1, :cond_2f

    .line 578
    iput-boolean v4, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 580
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 582
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 584
    goto :goto_9

    .line 586
    :cond_2f
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 587
    :cond_30
    :goto_9
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 589
    :goto_a
    return v1

    .line 591
    :cond_31
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    .line 592
    move-result v0

    .line 595
    if-eqz v0, :cond_44

    .line 596
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 598
    move-result v0

    .line 601
    if-nez v0, :cond_32

    .line 602
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 604
    move-result v0

    .line 607
    if-nez v0, :cond_32

    .line 608
    goto/16 :goto_e

    .line 610
    :cond_32
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 612
    move-result v0

    .line 615
    if-eqz v0, :cond_34

    .line 616
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    .line 618
    and-int/2addr v0, v4

    .line 620
    if-eqz v0, :cond_33

    .line 621
    move v0, v4

    .line 623
    goto :goto_b

    .line 624
    :cond_33
    move v0, v1

    .line 625
    :goto_b
    if-nez v0, :cond_34

    .line 626
    goto/16 :goto_e

    .line 628
    :cond_34
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 630
    move-result v0

    .line 633
    if-eqz v0, :cond_36

    .line 634
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    .line 636
    and-int/2addr v0, v3

    .line 638
    if-eqz v0, :cond_35

    .line 639
    move v0, v4

    .line 641
    goto :goto_c

    .line 642
    :cond_35
    move v0, v1

    .line 643
    :goto_c
    if-nez v0, :cond_36

    .line 644
    goto/16 :goto_e

    .line 646
    :cond_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 648
    move-result v0

    .line 651
    if-eqz v0, :cond_40

    .line 652
    if-eq v0, v4, :cond_3f

    .line 654
    if-eq v0, v3, :cond_38

    .line 656
    if-eq v0, v7, :cond_3f

    .line 658
    if-eq v0, v5, :cond_37

    .line 660
    goto/16 :goto_d

    .line 662
    :cond_37
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 664
    goto/16 :goto_d

    .line 667
    :cond_38
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 669
    if-ne v0, v6, :cond_39

    .line 671
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    goto/16 :goto_e

    .line 676
    :cond_39
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 678
    move-result v0

    .line 681
    if-gez v0, :cond_3a

    .line 682
    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    goto/16 :goto_e

    .line 687
    :cond_3a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 689
    move-result p1

    .line 692
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 693
    move-result v0

    .line 696
    if-eqz v0, :cond_3b

    .line 697
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 699
    move-result v0

    .line 702
    if-eqz v0, :cond_3b

    .line 703
    move v1, v4

    .line 705
    :cond_3b
    if-nez v1, :cond_3c

    .line 706
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 708
    move-result v0

    .line 711
    if-nez v0, :cond_3d

    .line 712
    :cond_3c
    if-eqz v1, :cond_3e

    .line 714
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 716
    cmpl-float v0, p1, v0

    .line 718
    if-lez v0, :cond_3e

    .line 720
    :cond_3d
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 722
    sub-float v0, p1, v0

    .line 724
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    .line 726
    int-to-float v1, v1

    .line 728
    cmpl-float v0, v0, v1

    .line 729
    if-lez v0, :cond_43

    .line 731
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 733
    if-nez v0, :cond_43

    .line 735
    iput-boolean v4, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 737
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 739
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 742
    goto :goto_d

    .line 744
    :cond_3e
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 745
    sub-float/2addr v0, p1

    .line 747
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    .line 748
    int-to-float v1, v1

    .line 750
    cmpl-float v0, v0, v1

    .line 751
    if-lez v0, :cond_43

    .line 753
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 755
    if-nez v0, :cond_43

    .line 757
    iput-boolean v4, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 759
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 761
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 764
    goto :goto_d

    .line 766
    :cond_3f
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 767
    iput v6, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 769
    goto :goto_d

    .line 771
    :cond_40
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 772
    move-result v0

    .line 775
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 776
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 778
    move-result v0

    .line 781
    if-gez v0, :cond_41

    .line 782
    goto :goto_e

    .line 784
    :cond_41
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 785
    move-result p1

    .line 788
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 789
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 791
    move-result p1

    .line 794
    if-eqz p1, :cond_42

    .line 795
    iput-boolean v4, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 797
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 799
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 801
    goto :goto_d

    .line 803
    :cond_42
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 804
    :cond_43
    :goto_d
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 806
    :cond_44
    :goto_e
    return v1
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result p1

    .line 7
    const/16 p2, 0x8

    .line 8
    if-eq p1, p2, :cond_0

    .line 10
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 14
    move-result p1

    .line 17
    iget-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    move-result p2

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 24
    move-result p3

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 28
    move-result p4

    .line 31
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 32
    add-int/2addr p1, p3

    .line 34
    add-int/2addr p2, p4

    .line 35
    invoke-virtual {p0, p3, p4, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 36
    :cond_0
    return-void
    .line 39
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTargetId:I

    .line 6
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 14
    iput-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    const-string p1, "invalid target Id"

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0

    .line 25
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 26
    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 36
    instance-of v1, v0, Landroidx/core/view/NestedScrollingChild3;

    .line 38
    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 42
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 48
    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 51
    :cond_2
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    .line 56
    move-result v0

    .line 59
    const/4 v1, 0x2

    .line 60
    if-eq v0, v1, :cond_3

    .line 61
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 65
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 68
    move-result v0

    .line 71
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 72
    move-result v1

    .line 75
    iget-object v2, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 76
    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 78
    const/high16 v2, 0x40000000    # 2.0f

    .line 81
    if-nez v0, :cond_4

    .line 83
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 87
    move-result p1

    .line 90
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 91
    move-result v0

    .line 94
    add-int/2addr v0, p1

    .line 95
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 96
    move-result p1

    .line 99
    add-int/2addr p1, v0

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    if-ne v0, v2, :cond_5

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 104
    move-result p1

    .line 107
    goto :goto_1

    .line 108
    :cond_5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 109
    move-result p1

    .line 112
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 115
    move-result v0

    .line 118
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 119
    move-result v3

    .line 122
    add-int/2addr v3, v0

    .line 123
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 124
    move-result v0

    .line 127
    add-int/2addr v0, v3

    .line 128
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 129
    move-result p1

    .line 132
    :goto_1
    if-nez v1, :cond_6

    .line 133
    iget-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 135
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 137
    move-result p2

    .line 140
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 141
    move-result v0

    .line 144
    add-int/2addr v0, p2

    .line 145
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 146
    move-result p2

    .line 149
    add-int/2addr p2, v0

    .line 150
    goto :goto_2

    .line 151
    :cond_6
    if-ne v1, v2, :cond_7

    .line 152
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 154
    move-result p2

    .line 157
    goto :goto_2

    .line 158
    :cond_7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 159
    move-result p2

    .line 162
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 165
    move-result v0

    .line 168
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 169
    move-result v1

    .line 172
    add-int/2addr v1, v0

    .line 173
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 174
    move-result v0

    .line 177
    add-int/2addr v0, v1

    .line 178
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 179
    move-result p2

    .line 182
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 183
    return-void

    .line 186
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 187
    const-string p1, "fail to get target"

    .line 189
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 191
    throw p0
    .line 194
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3, p4}, Lmiuix/springback/view/SpringBackLayout;->dispatchNestedFling(FFZ)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Lmiuix/springback/view/SpringBackLayout;->dispatchNestedPreFling(FF)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onNestedPreScroll(II[I)V
    .locals 7

    .line 10
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 12
    :goto_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v5, 0x0

    if-nez p2, :cond_6

    if-lez p1, :cond_4

    .line 13
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float v0, p2, v5

    if-lez v0, :cond_4

    int-to-float v0, p1

    cmpl-float v1, v0, p2

    if-lez v1, :cond_3

    float-to-int p1, p2

    .line 14
    invoke-static {p1, v4, p3}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(II[I)V

    .line 15
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    goto :goto_3

    :cond_3
    sub-float/2addr p2, v0

    .line 16
    iput p2, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 17
    invoke-static {p1, v4, p3}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(II[I)V

    .line 18
    :goto_3
    invoke-virtual {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 19
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-virtual {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    invoke-virtual {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto/16 :goto_a

    :cond_4
    if-gez p1, :cond_13

    .line 20
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    neg-float v0, p2

    cmpg-float v1, v0, v5

    if-gez v1, :cond_13

    int-to-float v1, p1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_5

    float-to-int p1, p2

    .line 21
    invoke-static {p1, v4, p3}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(II[I)V

    .line 22
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_4

    :cond_5
    add-float/2addr p2, v1

    .line 23
    iput p2, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 24
    invoke-static {p1, v4, p3}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(II[I)V

    .line 25
    :goto_4
    invoke-virtual {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 26
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    invoke-virtual {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto/16 :goto_a

    :cond_6
    if-ne v4, v3, :cond_7

    .line 27
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    goto :goto_5

    :cond_7
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    :goto_5
    if-lez p1, :cond_c

    .line 28
    iget v3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float v6, v3, v5

    if-lez v6, :cond_c

    const/high16 v6, 0x44fa0000    # 2000.0f

    cmpl-float v6, p2, v6

    if-lez v6, :cond_9

    .line 29
    invoke-virtual {p0, v3, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p2

    int-to-float v0, p1

    cmpl-float v1, v0, p2

    if-lez v1, :cond_8

    float-to-int p1, p2

    .line 30
    invoke-static {p1, v4, p3}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(II[I)V

    .line 31
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    goto :goto_6

    .line 32
    :cond_8
    invoke-static {p1, v4, p3}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(II[I)V

    sub-float v5, p2, v0

    .line 33
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    .line 34
    invoke-virtual {p0, v5, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 35
    :goto_6
    invoke-virtual {p0, v5, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 36
    invoke-virtual {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto/16 :goto_a

    .line 37
    :cond_9
    iget-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-nez v3, :cond_a

    .line 38
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    .line 39
    invoke-virtual {p0, v4, p2, v1}, Lmiuix/springback/view/SpringBackLayout;->springBack(IFZ)V

    .line 40
    :cond_a
    iget-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p2}, Lmiuix/springback/view/SpringScroller;->computeScrollOffset()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 41
    iget-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 42
    iget-wide v1, p2, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    double-to-int v1, v1

    .line 43
    iget-wide v2, p2, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    double-to-int p2, v2

    .line 44
    invoke-virtual {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    int-to-float p2, v0

    .line 45
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p2, v0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p2

    iput p2, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    goto :goto_7

    .line 46
    :cond_b
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 47
    :goto_7
    invoke-static {p1, v4, p3}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(II[I)V

    goto/16 :goto_a

    :cond_c
    if-gez p1, :cond_11

    .line 48
    iget v3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    neg-float v6, v3

    cmpg-float v6, v6, v5

    if-gez v6, :cond_11

    const/high16 v6, -0x3b060000    # -2000.0f

    cmpg-float v6, p2, v6

    if-gez v6, :cond_e

    .line 49
    invoke-virtual {p0, v3, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p2

    int-to-float v0, p1

    neg-float v1, p2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_d

    float-to-int p1, p2

    .line 50
    invoke-static {p1, v4, p3}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(II[I)V

    .line 51
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_8

    .line 52
    :cond_d
    invoke-static {p1, v4, p3}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(II[I)V

    add-float v5, p2, v0

    .line 53
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    .line 54
    invoke-virtual {p0, v5, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 55
    :goto_8
    invoke-virtual {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    neg-float p1, v5

    .line 56
    invoke-virtual {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto :goto_a

    .line 57
    :cond_e
    iget-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-nez v3, :cond_f

    .line 58
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    .line 59
    invoke-virtual {p0, v4, p2, v1}, Lmiuix/springback/view/SpringBackLayout;->springBack(IFZ)V

    .line 60
    :cond_f
    iget-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p2}, Lmiuix/springback/view/SpringScroller;->computeScrollOffset()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 61
    iget-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 62
    iget-wide v1, p2, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    double-to-int v1, v1

    .line 63
    iget-wide v2, p2, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    double-to-int p2, v2

    .line 64
    invoke-virtual {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    int-to-float p2, v0

    .line 65
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p2, v0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p2

    iput p2, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_9

    .line 66
    :cond_10
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 67
    :goto_9
    invoke-static {p1, v4, p3}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(II[I)V

    goto :goto_a

    :cond_11
    if-eqz p1, :cond_13

    .line 68
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    cmpl-float p2, p2, v5

    if-eqz p2, :cond_12

    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float p2, p2, v5

    if-nez p2, :cond_13

    :cond_12
    iget-boolean p2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz p2, :cond_13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p0

    if-nez p0, :cond_13

    .line 69
    invoke-static {p1, v4, p3}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(II[I)V

    :cond_13
    :goto_a
    return-void
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 7

    .line 1
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, p3, p5, p4}, Lmiuix/springback/view/SpringBackLayout;->onNestedPreScroll(II[I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p2, p5, p4}, Lmiuix/springback/view/SpringBackLayout;->onNestedPreScroll(II[I)V

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mParentScrollConsumed:[I

    const/4 v0, 0x0

    .line 6
    aget v1, p4, v0

    sub-int v2, p2, v1

    const/4 p2, 0x1

    aget v1, p4, p2

    sub-int v3, p3, v1

    const/4 v6, 0x0

    .line 7
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v4, p5

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(III[I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    aget p0, p4, v0

    aget p3, p1, v0

    add-int/2addr p0, p3

    aput p0, p4, v0

    .line 9
    aget p0, p4, p2

    aget p1, p1, p2

    add-int/2addr p0, p1

    aput p0, p4, p2

    :cond_2
    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .locals 8

    const/4 v6, 0x0

    .line 59
    iget-object v7, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingV2ConsumedCompat:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lmiuix/springback/view/SpringBackLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII)V
    .locals 8

    .line 58
    iget-object v7, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingV2ConsumedCompat:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lmiuix/springback/view/SpringBackLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 15

    move-object v0, p0

    .line 1
    iget v1, v0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-ne v1, v11, :cond_0

    move v12, v10

    goto :goto_0

    :cond_0
    move v12, v9

    :goto_0
    if-eqz v12, :cond_1

    move/from16 v13, p3

    goto :goto_1

    :cond_1
    move/from16 v13, p2

    :goto_1
    if-eqz v12, :cond_2

    .line 2
    aget v1, p7, v10

    goto :goto_2

    :cond_2
    aget v1, p7, v9

    :goto_2
    move v14, v1

    .line 3
    iget-object v6, v0, Lmiuix/springback/view/SpringBackLayout;->mParentOffsetInWindow:[I

    .line 4
    iget-object v1, v0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 5
    invoke-virtual/range {v1 .. v8}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    .line 6
    iget-boolean v1, v0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-nez v1, :cond_3

    return-void

    :cond_3
    if-eqz v12, :cond_4

    .line 7
    aget v1, p7, v10

    goto :goto_3

    :cond_4
    aget v1, p7, v9

    :goto_3
    sub-int/2addr v1, v14

    if-eqz v12, :cond_5

    sub-int v1, p5, v1

    goto :goto_4

    :cond_5
    sub-int v1, p4, v1

    :goto_4
    if-eqz v1, :cond_6

    move v2, v1

    goto :goto_5

    :cond_6
    move v2, v9

    :goto_5
    if-eqz v12, :cond_7

    move v3, v11

    goto :goto_6

    :cond_7
    move v3, v10

    :goto_6
    const/4 v4, 0x4

    const/4 v5, 0x0

    if-gez v2, :cond_f

    .line 8
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 9
    iget v6, v0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    and-int/2addr v6, v10

    if-eqz v6, :cond_8

    move v6, v10

    goto :goto_7

    :cond_8
    move v6, v9

    :goto_7
    if-eqz v6, :cond_f

    if-eqz p6, :cond_e

    .line 10
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v6

    .line 11
    iget v7, v0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    cmpl-float v7, v7, v5

    if-nez v7, :cond_c

    iget v7, v0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    cmpl-float v7, v7, v5

    if-eqz v7, :cond_9

    goto :goto_9

    .line 12
    :cond_9
    iget v7, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float v5, v7, v5

    if-eqz v5, :cond_a

    return-void

    .line 13
    :cond_a
    iget v5, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    sub-float/2addr v6, v5

    .line 14
    iget v5, v0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    if-ge v5, v4, :cond_17

    .line 15
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v6, v4

    if-gtz v4, :cond_b

    .line 16
    iget v1, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    add-float/2addr v1, v6

    iput v1, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 17
    aget v1, p7, v10

    int-to-float v1, v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    aput v1, p7, v10

    goto :goto_8

    .line 18
    :cond_b
    iget v4, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    iput v4, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 19
    aget v2, p7, v10

    add-int/2addr v2, v1

    aput v2, p7, v10

    .line 20
    :goto_8
    invoke-virtual {p0, v11}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 21
    iget v1, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-virtual {p0, v1, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v1

    invoke-virtual {p0, v1, v3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 22
    iget v1, v0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    add-int/2addr v1, v10

    iput v1, v0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    goto/16 :goto_c

    .line 23
    :cond_c
    :goto_9
    iput-boolean v10, v0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz v13, :cond_d

    neg-int v1, v2

    int-to-float v1, v1

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_d

    .line 24
    iget-object v1, v0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 25
    iput v2, v1, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    .line 26
    :cond_d
    invoke-virtual {p0, v11}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto/16 :goto_c

    .line 27
    :cond_e
    iget-object v4, v0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 28
    iget-boolean v4, v4, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    if-eqz v4, :cond_17

    .line 29
    iget v4, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    iput v4, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 30
    invoke-virtual {p0, v10}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 31
    iget v2, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-virtual {p0, v2, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v2

    invoke-virtual {p0, v2, v3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 32
    aget v0, p7, v10

    add-int/2addr v0, v1

    aput v0, p7, v10

    goto/16 :goto_c

    :cond_f
    if-lez v2, :cond_17

    .line 33
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 34
    iget v6, v0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    and-int/2addr v6, v11

    if-eqz v6, :cond_10

    move v9, v10

    :cond_10
    if-eqz v9, :cond_17

    if-eqz p6, :cond_16

    .line 35
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v6

    .line 36
    iget v7, v0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    cmpl-float v7, v7, v5

    if-nez v7, :cond_14

    iget v7, v0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    cmpl-float v7, v7, v5

    if-eqz v7, :cond_11

    goto :goto_b

    .line 37
    :cond_11
    iget v7, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    cmpl-float v5, v7, v5

    if-eqz v5, :cond_12

    return-void

    .line 38
    :cond_12
    iget v5, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    sub-float/2addr v6, v5

    .line 39
    iget v5, v0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    if-ge v5, v4, :cond_17

    .line 40
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v6, v4

    if-gtz v4, :cond_13

    .line 41
    iget v1, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    add-float/2addr v1, v6

    iput v1, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 42
    aget v1, p7, v10

    int-to-float v1, v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    aput v1, p7, v10

    goto :goto_a

    .line 43
    :cond_13
    iget v4, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    iput v4, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 44
    aget v2, p7, v10

    add-int/2addr v2, v1

    aput v2, p7, v10

    .line 45
    :goto_a
    invoke-virtual {p0, v11}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 46
    iget v1, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-virtual {p0, v1, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0, v1, v3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 47
    iget v1, v0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    add-int/2addr v1, v10

    iput v1, v0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    goto :goto_c

    .line 48
    :cond_14
    :goto_b
    iput-boolean v10, v0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz v13, :cond_15

    int-to-float v1, v2

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_15

    .line 49
    iget-object v1, v0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 50
    iput v2, v1, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    .line 51
    :cond_15
    invoke-virtual {p0, v11}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto :goto_c

    .line 52
    :cond_16
    iget-object v4, v0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 53
    iget-boolean v4, v4, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    if-eqz v4, :cond_17

    .line 54
    iget v4, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    iput v4, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 55
    invoke-virtual {p0, v10}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 56
    iget v2, v0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    invoke-virtual {p0, v2, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p0, v2, v3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 57
    aget v0, p7, v10

    add-int/2addr v0, v1

    aput v0, p7, v10

    :cond_17
    :goto_c
    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 22
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    const/4 p2, 0x0

    .line 23
    invoke-virtual {p1, p3, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(II)V

    and-int/lit8 p1, p3, 0x2

    .line 24
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->startNestedScroll(I)Z

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz v0, :cond_7

    .line 2
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    :goto_2
    int-to-float v0, v0

    const/4 v4, 0x0

    if-eqz p4, :cond_4

    cmpl-float p4, v0, v4

    if-nez p4, :cond_3

    .line 4
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    goto :goto_3

    .line 5
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p4, v0, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p4

    iput p4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 6
    :goto_3
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    .line 7
    iput v2, p0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    goto :goto_5

    :cond_4
    cmpl-float p4, v0, v4

    if-nez p4, :cond_5

    .line 8
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 9
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_4

    :cond_5
    cmpg-float p4, v0, v4

    if-gez p4, :cond_6

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p4, v0, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p4

    iput p4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 11
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_4

    .line 12
    :cond_6
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p4, v0, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p4

    iput p4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 14
    :goto_4
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    .line 15
    :goto_5
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    .line 16
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    .line 17
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    .line 18
    iget-object p4, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 19
    iput-boolean v1, p4, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    .line 20
    iput v2, p4, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    .line 21
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/springback/view/SpringBackLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public final onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 2
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollChangeListeners:Ljava/util/List;

    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    return-void

    .line 19
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 24
    const/4 p0, 0x0

    .line 27
    throw p0
    .line 28
.end method

.method public final onScrollDownEvent(IILandroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_d

    .line 4
    const-string v2, "SpringBackLayout"

    .line 6
    if-eq p1, v0, :cond_a

    .line 8
    const/4 v3, 0x2

    .line 10
    if-eq p1, v3, :cond_6

    .line 11
    const/4 v4, 0x3

    .line 13
    if-eq p1, v4, :cond_a

    .line 14
    const/4 v4, 0x5

    .line 16
    if-eq p1, v4, :cond_1

    .line 17
    const/4 p2, 0x6

    .line 19
    if-eq p1, p2, :cond_0

    .line 20
    goto/16 :goto_2

    .line 22
    :cond_0
    invoke-virtual {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 24
    goto/16 :goto_2

    .line 27
    :cond_1
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 29
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 31
    move-result p1

    .line 34
    if-gez p1, :cond_2

    .line 35
    const-string p0, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    .line 37
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v1

    .line 42
    :cond_2
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    .line 43
    if-ne p2, v3, :cond_4

    .line 45
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 47
    move-result p1

    .line 50
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 51
    sub-float/2addr p1, p2

    .line 53
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 54
    move-result p2

    .line 57
    if-gez p2, :cond_3

    .line 58
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v1

    .line 63
    :cond_3
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 64
    move-result v1

    .line 67
    sub-float/2addr v1, p1

    .line 68
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 69
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 71
    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 74
    move-result p1

    .line 77
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 78
    sub-float/2addr p1, p2

    .line 80
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 81
    move-result p2

    .line 84
    if-gez p2, :cond_5

    .line 85
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v1

    .line 90
    :cond_5
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 91
    move-result v1

    .line 94
    sub-float/2addr v1, p1

    .line 95
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 96
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 98
    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 100
    move-result p1

    .line 103
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 104
    goto :goto_2

    .line 106
    :cond_6
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 107
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 109
    move-result p1

    .line 112
    if-gez p1, :cond_7

    .line 113
    const-string p0, "Got ACTION_MOVE event but have an invalid active pointer id."

    .line 115
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v1

    .line 120
    :cond_7
    iget-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 121
    if-eqz v2, :cond_e

    .line 123
    if-ne p2, v3, :cond_8

    .line 125
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 127
    move-result p1

    .line 130
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 131
    sub-float p3, p1, p3

    .line 133
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    .line 135
    move-result p3

    .line 138
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 139
    sub-float/2addr p1, v2

    .line 141
    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    .line 142
    move-result p1

    .line 145
    goto :goto_1

    .line 146
    :cond_8
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 147
    move-result p1

    .line 150
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 151
    sub-float p3, p1, p3

    .line 153
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    .line 155
    move-result p3

    .line 158
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 159
    sub-float/2addr p1, v2

    .line 161
    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    .line 162
    move-result p1

    .line 165
    :goto_1
    mul-float/2addr p1, p3

    .line 166
    const/4 p3, 0x0

    .line 167
    cmpl-float v2, p1, p3

    .line 168
    if-lez v2, :cond_9

    .line 170
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent()V

    .line 172
    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 175
    goto :goto_2

    .line 178
    :cond_9
    invoke-virtual {p0, p3, p2}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 179
    return v1

    .line 182
    :cond_a
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 183
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 185
    move-result p1

    .line 188
    if-gez p1, :cond_b

    .line 189
    const-string p0, "Got ACTION_UP event but don\'t have an active pointer id."

    .line 191
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return v1

    .line 196
    :cond_b
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 197
    if-eqz p1, :cond_c

    .line 199
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 201
    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    .line 203
    :cond_c
    const/4 p1, -0x1

    .line 206
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 207
    return v1

    .line 209
    :cond_d
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 210
    move-result p1

    .line 213
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 214
    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    .line 216
    :cond_e
    :goto_2
    return v0
    .line 219
.end method

.method public final onScrollEvent(IILandroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_d

    .line 4
    const-string v2, "SpringBackLayout"

    .line 6
    if-eq p1, v0, :cond_a

    .line 8
    const/4 v3, 0x2

    .line 10
    if-eq p1, v3, :cond_7

    .line 11
    const/4 v4, 0x3

    .line 13
    if-eq p1, v4, :cond_6

    .line 14
    const/4 v4, 0x5

    .line 16
    if-eq p1, v4, :cond_1

    .line 17
    const/4 p2, 0x6

    .line 19
    if-eq p1, p2, :cond_0

    .line 20
    goto/16 :goto_2

    .line 22
    :cond_0
    invoke-virtual {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 24
    goto/16 :goto_2

    .line 27
    :cond_1
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 29
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 31
    move-result p1

    .line 34
    if-gez p1, :cond_2

    .line 35
    const-string p0, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    .line 37
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v1

    .line 42
    :cond_2
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    .line 43
    if-ne p2, v3, :cond_4

    .line 45
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 47
    move-result p1

    .line 50
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 51
    sub-float/2addr p1, p2

    .line 53
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 54
    move-result p2

    .line 57
    if-gez p2, :cond_3

    .line 58
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v1

    .line 63
    :cond_3
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 64
    move-result v1

    .line 67
    sub-float/2addr v1, p1

    .line 68
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 69
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 71
    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 74
    move-result p1

    .line 77
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 78
    sub-float/2addr p1, p2

    .line 80
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 81
    move-result p2

    .line 84
    if-gez p2, :cond_5

    .line 85
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v1

    .line 90
    :cond_5
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 91
    move-result v1

    .line 94
    sub-float/2addr v1, p1

    .line 95
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 96
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 98
    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 100
    move-result p1

    .line 103
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 104
    goto :goto_2

    .line 106
    :cond_6
    return v1

    .line 107
    :cond_7
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 108
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 110
    move-result p1

    .line 113
    if-gez p1, :cond_8

    .line 114
    const-string p0, "Got ACTION_MOVE event but have an invalid active pointer id."

    .line 116
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v1

    .line 121
    :cond_8
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 122
    if-eqz v1, :cond_e

    .line 124
    if-ne p2, v3, :cond_9

    .line 126
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 128
    move-result p1

    .line 131
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 132
    sub-float p3, p1, p3

    .line 134
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    .line 136
    move-result p3

    .line 139
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 140
    sub-float/2addr p1, v1

    .line 142
    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    .line 143
    move-result p1

    .line 146
    goto :goto_1

    .line 147
    :cond_9
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 148
    move-result p1

    .line 151
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 152
    sub-float p3, p1, p3

    .line 154
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    .line 156
    move-result p3

    .line 159
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 160
    sub-float/2addr p1, v1

    .line 162
    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    .line 163
    move-result p1

    .line 166
    :goto_1
    mul-float/2addr p1, p3

    .line 167
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent()V

    .line 168
    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 171
    goto :goto_2

    .line 174
    :cond_a
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 175
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 177
    move-result p1

    .line 180
    if-gez p1, :cond_b

    .line 181
    const-string p0, "Got ACTION_UP event but don\'t have an active pointer id."

    .line 183
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v1

    .line 188
    :cond_b
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 189
    if-eqz p1, :cond_c

    .line 191
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 193
    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    .line 195
    :cond_c
    const/4 p1, -0x1

    .line 198
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 199
    return v1

    .line 201
    :cond_d
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 202
    move-result p1

    .line 205
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 206
    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    .line 208
    :cond_e
    :goto_2
    return v0
    .line 211
.end method

.method public final onScrollUpEvent(IILandroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_d

    .line 4
    const-string v2, "SpringBackLayout"

    .line 6
    if-eq p1, v0, :cond_a

    .line 8
    const/4 v3, 0x2

    .line 10
    if-eq p1, v3, :cond_6

    .line 11
    const/4 v4, 0x3

    .line 13
    if-eq p1, v4, :cond_a

    .line 14
    const/4 v4, 0x5

    .line 16
    if-eq p1, v4, :cond_1

    .line 17
    const/4 p2, 0x6

    .line 19
    if-eq p1, p2, :cond_0

    .line 20
    goto/16 :goto_2

    .line 22
    :cond_0
    invoke-virtual {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 24
    goto/16 :goto_2

    .line 27
    :cond_1
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 29
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 31
    move-result p1

    .line 34
    if-gez p1, :cond_2

    .line 35
    const-string p0, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    .line 37
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v1

    .line 42
    :cond_2
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    .line 43
    if-ne p2, v3, :cond_4

    .line 45
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 47
    move-result p1

    .line 50
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 51
    sub-float/2addr p1, p2

    .line 53
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 54
    move-result p2

    .line 57
    if-gez p2, :cond_3

    .line 58
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v1

    .line 63
    :cond_3
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 64
    move-result v1

    .line 67
    sub-float/2addr v1, p1

    .line 68
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 69
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 71
    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 74
    move-result p1

    .line 77
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 78
    sub-float/2addr p1, p2

    .line 80
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 81
    move-result p2

    .line 84
    if-gez p2, :cond_5

    .line 85
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v1

    .line 90
    :cond_5
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 91
    move-result v1

    .line 94
    sub-float/2addr v1, p1

    .line 95
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 96
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 98
    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 100
    move-result p1

    .line 103
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 104
    goto :goto_2

    .line 106
    :cond_6
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 107
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 109
    move-result p1

    .line 112
    if-gez p1, :cond_7

    .line 113
    const-string p0, "Got ACTION_MOVE event but have an invalid active pointer id."

    .line 115
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v1

    .line 120
    :cond_7
    iget-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 121
    if-eqz v2, :cond_e

    .line 123
    if-ne p2, v3, :cond_8

    .line 125
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 127
    move-result p1

    .line 130
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 131
    sub-float/2addr p3, p1

    .line 133
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    .line 134
    move-result p3

    .line 137
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    .line 138
    sub-float/2addr v2, p1

    .line 140
    invoke-virtual {p0, v2, p2}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    .line 141
    move-result p1

    .line 144
    goto :goto_1

    .line 145
    :cond_8
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 146
    move-result p1

    .line 149
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 150
    sub-float/2addr p3, p1

    .line 152
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    .line 153
    move-result p3

    .line 156
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 157
    sub-float/2addr v2, p1

    .line 159
    invoke-virtual {p0, v2, p2}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    .line 160
    move-result p1

    .line 163
    :goto_1
    mul-float/2addr p1, p3

    .line 164
    const/4 p3, 0x0

    .line 165
    cmpl-float v2, p1, p3

    .line 166
    if-lez v2, :cond_9

    .line 168
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent()V

    .line 170
    neg-float p1, p1

    .line 173
    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 174
    goto :goto_2

    .line 177
    :cond_9
    invoke-virtual {p0, p3, p2}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 178
    return v1

    .line 181
    :cond_a
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 182
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 184
    move-result p1

    .line 187
    if-gez p1, :cond_b

    .line 188
    const-string p0, "Got ACTION_UP event but don\'t have an active pointer id."

    .line 190
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return v1

    .line 195
    :cond_b
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 196
    if-eqz p1, :cond_c

    .line 198
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 200
    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    .line 202
    :cond_c
    const/4 p1, -0x1

    .line 205
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 206
    return v1

    .line 208
    :cond_d
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 209
    move-result p1

    .line 212
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 213
    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    .line 215
    :cond_e
    :goto_2
    return v0
    .line 218
.end method

.method public final onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 6
    move-result v1

    .line 9
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 10
    if-ne v1, v2, :cond_1

    .line 12
    if-nez v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 19
    move-result p1

    .line 22
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 23
    :cond_1
    return-void
    .line 25
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 4

    .line 1
    iget-boolean p2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    .line 2
    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 p2, 0x2

    const/4 v1, 0x0

    if-ne p3, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    .line 3
    :goto_1
    iget v3, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr p2, v3

    if-nez p2, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p0, p1, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    if-eqz v2, :cond_4

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    :goto_2
    int-to-float p1, p1

    if-eqz p4, :cond_5

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_5

    .line 6
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of p1, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_5

    return v1

    .line 7
    :cond_5
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    return v0
.end method

.method public final onStopNestedScroll(ILandroid/view/View;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 2
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    iput v0, p2, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesNonTouch:I

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iput v0, p2, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesTouch:I

    .line 11
    :goto_0
    iget-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 13
    invoke-virtual {p2, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    .line 15
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    .line 18
    if-nez p1, :cond_1

    .line 20
    return-void

    .line 22
    :cond_1
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    .line 23
    const/4 p2, 0x2

    .line 25
    if-ne p1, p2, :cond_2

    .line 26
    move p1, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    move p1, v0

    .line 30
    :goto_1
    if-eqz p1, :cond_3

    .line 31
    move v1, p2

    .line 33
    :cond_3
    iget-boolean p2, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    .line 34
    if-eqz p2, :cond_6

    .line 36
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    .line 38
    if-eqz p1, :cond_4

    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    .line 42
    move-result p1

    .line 45
    goto :goto_2

    .line 46
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 47
    move-result p1

    .line 50
    :goto_2
    int-to-float p1, p1

    .line 51
    iget-boolean p2, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    .line 52
    const/4 v0, 0x0

    .line 54
    if-nez p2, :cond_5

    .line 55
    cmpl-float p2, p1, v0

    .line 57
    if-eqz p2, :cond_5

    .line 59
    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    .line 61
    goto :goto_3

    .line 64
    :cond_5
    cmpl-float p1, p1, v0

    .line 65
    if-eqz p1, :cond_7

    .line 67
    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->stopNestedFlingScroll(I)V

    .line 69
    goto :goto_3

    .line 72
    :cond_6
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    .line 73
    if-eqz p1, :cond_7

    .line 75
    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->stopNestedFlingScroll(I)V

    .line 77
    :cond_7
    :goto_3
    return-void
    .line 80
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_8

    .line 11
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    .line 13
    if-nez v1, :cond_8

    .line 15
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    .line 17
    if-eqz v1, :cond_0

    .line 19
    goto/16 :goto_2

    .line 21
    :cond_0
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    return v2

    .line 31
    :cond_1
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 32
    iget-boolean v3, v1, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    .line 34
    const/4 v4, 0x1

    .line 36
    if-nez v3, :cond_2

    .line 37
    if-nez v0, :cond_2

    .line 39
    iput-boolean v4, v1, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    .line 41
    iput v2, v1, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    .line 43
    :cond_2
    const/4 v0, 0x2

    .line 45
    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    .line 46
    move-result v1

    .line 49
    if-eqz v1, :cond_5

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 52
    move-result v1

    .line 55
    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 56
    move-result v2

    .line 59
    if-nez v2, :cond_3

    .line 60
    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 62
    move-result v2

    .line 65
    if-nez v2, :cond_3

    .line 66
    invoke-virtual {p0, v1, v0, p1}, Lmiuix/springback/view/SpringBackLayout;->onScrollEvent(IILandroid/view/MotionEvent;)Z

    .line 68
    move-result p0

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 73
    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 77
    invoke-virtual {p0, v1, v0, p1}, Lmiuix/springback/view/SpringBackLayout;->onScrollUpEvent(IILandroid/view/MotionEvent;)Z

    .line 79
    move-result p0

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    invoke-virtual {p0, v1, v0, p1}, Lmiuix/springback/view/SpringBackLayout;->onScrollDownEvent(IILandroid/view/MotionEvent;)Z

    .line 84
    move-result p0

    .line 87
    :goto_0
    return p0

    .line 88
    :cond_5
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    .line 89
    move-result v0

    .line 92
    if-eqz v0, :cond_8

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 95
    move-result v0

    .line 98
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    .line 99
    move-result v1

    .line 102
    if-nez v1, :cond_6

    .line 103
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 105
    move-result v1

    .line 108
    if-nez v1, :cond_6

    .line 109
    invoke-virtual {p0, v0, v4, p1}, Lmiuix/springback/view/SpringBackLayout;->onScrollEvent(IILandroid/view/MotionEvent;)Z

    .line 111
    move-result p0

    .line 114
    goto :goto_1

    .line 115
    :cond_6
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    .line 116
    move-result v1

    .line 119
    if-eqz v1, :cond_7

    .line 120
    invoke-virtual {p0, v0, v4, p1}, Lmiuix/springback/view/SpringBackLayout;->onScrollUpEvent(IILandroid/view/MotionEvent;)Z

    .line 122
    move-result p0

    .line 125
    goto :goto_1

    .line 126
    :cond_7
    invoke-virtual {p0, v0, v4, p1}, Lmiuix/springback/view/SpringBackLayout;->onScrollDownEvent(IILandroid/view/MotionEvent;)Z

    .line 127
    move-result p0

    .line 130
    :goto_1
    return p0

    .line 131
    :cond_8
    :goto_2
    return v2
    .line 132
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    .line 8
    if-nez v0, :cond_1

    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 12
    :cond_1
    return-void
    .line 15
.end method

.method public final requestDisallowParentInterceptTouchEvent()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7
    :goto_0
    if-eqz p0, :cond_1

    .line 10
    instance-of v1, p0, Lmiuix/springback/view/SpringBackLayout;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    move-object v1, p0

    .line 16
    check-cast v1, Lmiuix/springback/view/SpringBackLayout;

    .line 17
    invoke-super {v1, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 19
    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 22
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
    .line 27
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    instance-of v1, v0, Landroidx/core/view/NestedScrollingChild3;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 13
    move-result v0

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 21
    :cond_0
    return-void
    .line 24
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public setOnSpringListener(Lmiuix/springback/view/SpringBackLayout$OnSpringListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setScrollOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    .line 2
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    return-void
    .line 9
.end method

.method public setSpringBackEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    .line 2
    return-void
    .line 4
.end method

.method public setSpringBackMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    .line 2
    return-void
    .line 4
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 2
    instance-of v0, p1, Landroidx/core/view/NestedScrollingChild3;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 8
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 14
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public final springBack(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->springBack(IFZ)V

    return-void
.end method

.method public final springBack(IFZ)V
    .locals 10

    .line 2
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    .line 7
    iget-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    int-to-float v4, v0

    int-to-float v5, v2

    .line 8
    iput-boolean v1, v3, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    .line 9
    iput-boolean v1, v3, Lmiuix/springback/view/SpringScroller;->mLastStep:Z

    float-to-double v6, v4

    .line 10
    iput-wide v6, v3, Lmiuix/springback/view/SpringScroller;->mStartX:D

    .line 11
    iput-wide v6, v3, Lmiuix/springback/view/SpringScroller;->mOriginStartX:D

    const/4 v4, 0x0

    float-to-double v6, v4

    .line 12
    iput-wide v6, v3, Lmiuix/springback/view/SpringScroller;->mEndX:D

    float-to-double v8, v5

    .line 13
    iput-wide v8, v3, Lmiuix/springback/view/SpringScroller;->mStartY:D

    .line 14
    iput-wide v8, v3, Lmiuix/springback/view/SpringScroller;->mOriginStartY:D

    double-to-int v5, v8

    int-to-double v8, v5

    .line 15
    iput-wide v8, v3, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    .line 16
    iput-wide v6, v3, Lmiuix/springback/view/SpringScroller;->mEndY:D

    float-to-double v5, p2

    .line 17
    iput-wide v5, v3, Lmiuix/springback/view/SpringScroller;->mOriginVelocity:D

    .line 18
    iput-wide v5, v3, Lmiuix/springback/view/SpringScroller;->mVelocity:D

    .line 19
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x40b3880000000000L    # 5000.0

    cmpg-double v5, v5, v7

    if-lez v5, :cond_0

    .line 20
    new-instance v5, Lmiuix/springback/view/SpringOperator;

    const v6, 0x3f0ccccd    # 0.55f

    invoke-direct {v5, v6}, Lmiuix/springback/view/SpringOperator;-><init>(F)V

    iput-object v5, v3, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    goto :goto_0

    .line 21
    :cond_0
    new-instance v5, Lmiuix/springback/view/SpringOperator;

    const v6, 0x3ecccccd    # 0.4f

    invoke-direct {v5, v6}, Lmiuix/springback/view/SpringOperator;-><init>(F)V

    iput-object v5, v3, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    .line 22
    :goto_0
    iput p1, v3, Lmiuix/springback/view/SpringScroller;->mOrientation:I

    .line 23
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, v3, Lmiuix/springback/view/SpringScroller;->mStartTime:J

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    cmpl-float p1, p2, v4

    if-nez p1, :cond_1

    .line 24
    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    .line 25
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    :goto_1
    if-eqz p3, :cond_2

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method public final startNestedScroll(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public final stopNestedFlingScroll(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    .line 3
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    .line 5
    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 9
    iget-boolean v1, v1, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    .line 11
    if-eqz v1, :cond_1

    .line 13
    const/4 v1, 0x2

    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    .line 21
    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lmiuix/springback/view/SpringBackLayout;->springBack(IFZ)V

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    .line 26
    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    .line 30
    :goto_1
    return-void
    .line 33
.end method

.method public final stopNestedScroll()V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    .line 5
    return-void
    .line 8
.end method
