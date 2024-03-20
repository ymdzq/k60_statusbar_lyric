.class public Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;
.super Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mActivePointerId:I

.field public mFlinging:Z

.field public mInitialMotionY:I

.field public mInitialMotionYSet:Z

.field public mIsBeingDragged:Z

.field public mIsSpringBackEnabled:Z

.field public mLastMotionX:F

.field public mLastMotionY:F

.field public final mMaximumVelocity:I

.field public final mMinimumVelocity:I

.field public mMotionY:I

.field public mOverScrollDistance:I

.field public mScrollRange:I

.field public mScrollStart:I

.field public final mScroller:Landroid/widget/OverScroller;

.field public mTabScrollView:Landroid/view/View;

.field public mTabViewVisibility:I

.field public final mTouchSlop:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 6
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 8
    const/16 v1, 0x8

    .line 10
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    .line 12
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    .line 15
    sget-object v2, Lmiuix/appcompat/R$styleable;->ActionBarMovableLayout:[I

    .line 17
    const v3, 0x7f04001c    # @attr/actionBarMovableLayoutStyle

    .line 19
    const/4 v4, 0x0

    .line 22
    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 23
    move-result-object p2

    .line 26
    invoke-virtual {p2, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 27
    move-result v2

    .line 30
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    .line 31
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 33
    move-result v1

    .line 36
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 37
    const/4 v1, 0x2

    .line 39
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 40
    move-result v0

    .line 43
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 44
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 46
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 50
    move-result v1

    .line 53
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTouchSlop:I

    .line 54
    new-instance v1, Landroid/widget/OverScroller;

    .line 56
    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 61
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 63
    move-result p1

    .line 66
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMinimumVelocity:I

    .line 67
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 69
    move-result p1

    .line 72
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMaximumVelocity:I

    .line 73
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 75
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
    .line 81
.end method


# virtual methods
.method public final applyTranslationY(F)V
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    .line 2
    neg-int v0, v0

    .line 4
    int-to-float v0, v0

    .line 5
    add-float/2addr v0, p1

    .line 6
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 7
    int-to-float p1, p1

    .line 9
    sub-float/2addr v0, p1

    .line 10
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollStart:I

    .line 11
    int-to-float p1, p1

    .line 13
    sub-float/2addr v0, p1

    .line 14
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 15
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    .line 17
    move-result-object p1

    .line 20
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    .line 21
    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 25
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 33
    move-result p1

    .line 36
    int-to-float p1, p1

    .line 37
    sub-float/2addr v0, p1

    .line 38
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 41
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 44
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    .line 46
    move-result-object p1

    .line 49
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    .line 50
    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 54
    :cond_1
    return-void
    .line 57
.end method

.method public final computeScroll()V
    .locals 12

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 12
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 14
    move-result v1

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    .line 20
    move-result v8

    .line 23
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    .line 24
    move-result v10

    .line 27
    const/4 v3, 0x0

    .line 28
    sub-int v4, v1, v0

    .line 29
    const/4 v5, 0x0

    .line 31
    iget v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 32
    const/4 v7, 0x0

    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v11, 0x1

    .line 36
    move-object v2, p0

    .line 37
    invoke-virtual/range {v2 .. v11}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    .line 41
    goto :goto_0

    .line 44
    :cond_1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mFlinging:Z

    .line 45
    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->springBack()V

    .line 49
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mFlinging:Z

    .line 53
    :cond_2
    :goto_0
    return-void
    .line 55
.end method

.method public final computeVerticalScrollExtent()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final computeVerticalScrollRange()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getOverScrollDistance()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    .line 2
    return p0
    .line 4
.end method

.method public getScrollRange()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 2
    return p0
    .line 4
.end method

.method public getScrollStart()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollStart:I

    .line 2
    return p0
    .line 4
.end method

.method public final inChild(Landroid/view/View;II)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 6
    move-result v1

    .line 9
    float-to-int v1, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 11
    move-result v2

    .line 14
    float-to-int v2, v2

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 16
    move-result v3

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 20
    move-result v4

    .line 23
    int-to-float v4, v4

    .line 24
    add-float/2addr v3, v4

    .line 25
    float-to-int v3, v3

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 27
    move-result v4

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 31
    move-result v5

    .line 34
    int-to-float v5, v5

    .line 35
    add-float/2addr v4, v5

    .line 36
    float-to-int v4, v4

    .line 37
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    .line 38
    if-ne p1, v5, :cond_1

    .line 40
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 42
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    .line 44
    move-result p0

    .line 47
    add-int/2addr v1, p0

    .line 48
    add-int/2addr v3, p0

    .line 49
    :cond_1
    if-lt p3, v1, :cond_2

    .line 50
    if-ge p3, v3, :cond_2

    .line 52
    if-lt p2, v2, :cond_2

    .line 54
    if-ge p2, v4, :cond_2

    .line 56
    const/4 v0, 0x1

    .line 58
    :cond_2
    return v0
    .line 59
.end method

.method public final measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 6
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    move-result-object p5

    .line 13
    check-cast p5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 16
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 24
    move-result v1

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 28
    move-result v2

    .line 31
    add-int/2addr v2, v1

    .line 32
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 33
    add-int/2addr v2, v1

    .line 35
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 36
    add-int/2addr v2, v1

    .line 38
    add-int/2addr v2, p3

    .line 39
    iget p3, p5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 40
    invoke-static {p2, v2, p3}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    .line 42
    move-result p2

    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 46
    move-result p3

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 50
    move-result v1

    .line 53
    add-int/2addr v1, p3

    .line 54
    iget p3, p5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 55
    add-int/2addr v1, p3

    .line 57
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 58
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 60
    move-result p3

    .line 63
    add-int/2addr p3, v1

    .line 64
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 65
    add-int/2addr p3, v0

    .line 67
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    .line 68
    move-result v0

    .line 71
    sub-int/2addr p3, v0

    .line 72
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    .line 73
    move-result v0

    .line 76
    sub-int/2addr p3, v0

    .line 77
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollStart:I

    .line 78
    sub-int/2addr p3, p0

    .line 80
    iget p0, p5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 81
    invoke-static {p4, p3, p0}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    .line 83
    move-result p0

    .line 86
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    .line 87
    return-void
    .line 90
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentMask()Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    return v1

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    move-result v0

    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    iget-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 24
    if-eqz v4, :cond_1

    .line 26
    return v3

    .line 28
    :cond_1
    and-int/lit16 v0, v0, 0xff

    .line 29
    if-eqz v0, :cond_6

    .line 31
    if-eq v0, v3, :cond_5

    .line 33
    if-eq v0, v2, :cond_3

    .line 35
    const/4 v2, 0x3

    .line 37
    if-eq v0, v2, :cond_5

    .line 38
    const/4 v1, 0x6

    .line 40
    if-eq v0, v1, :cond_2

    .line 41
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 44
    goto :goto_1

    .line 47
    :cond_3
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    .line 48
    move-result v0

    .line 51
    if-eqz v0, :cond_8

    .line 52
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 54
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 56
    if-nez v0, :cond_4

    .line 58
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 60
    move-result-object v0

    .line 63
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 64
    :cond_4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 66
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 68
    goto :goto_1

    .line 71
    :cond_5
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 72
    const/4 p1, -0x1

    .line 74
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 75
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 77
    if-eqz p1, :cond_8

    .line 79
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 81
    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 85
    goto :goto_1

    .line 87
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 88
    move-result v0

    .line 91
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 94
    move-result v0

    .line 97
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionX:F

    .line 98
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 100
    move-result v0

    .line 103
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 104
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 106
    if-nez v0, :cond_7

    .line 108
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 110
    move-result-object v0

    .line 113
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 114
    goto :goto_0

    .line 116
    :cond_7
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 117
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 120
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 122
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 125
    invoke-virtual {p1, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 127
    :cond_8
    :goto_1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 130
    return p0
    .line 132
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onLayout(ZIIII)V

    .line 2
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    .line 5
    const/4 p2, 0x1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 10
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    .line 12
    move-result-object p1

    .line 15
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    .line 16
    const/4 p3, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 21
    move-result p1

    .line 24
    iget p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    .line 25
    if-eq p1, p4, :cond_0

    .line 27
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    .line 29
    move p1, p2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move p1, p3

    .line 33
    :goto_0
    if-eqz p1, :cond_2

    .line 34
    :cond_1
    move p3, p2

    .line 36
    :cond_2
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    .line 37
    if-nez p1, :cond_4

    .line 39
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 41
    if-gez p1, :cond_3

    .line 43
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 45
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 47
    :cond_3
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 49
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 51
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    .line 53
    :cond_4
    if-eqz p3, :cond_5

    .line 55
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 57
    int-to-float p1, p1

    .line 59
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->applyTranslationY(F)V

    .line 60
    :cond_5
    return-void
    .line 63
.end method

.method public final onOverScrolled(IIZZ)V
    .locals 0

    .line 1
    int-to-float p1, p2

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->applyTranslationY(F)V

    .line 3
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 6
    if-nez p2, :cond_0

    .line 8
    if-eqz p4, :cond_0

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 12
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMaximumVelocity:I

    .line 14
    int-to-float p2, p2

    .line 16
    const/16 p3, 0x3e8

    .line 17
    invoke-virtual {p1, p3, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 19
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 22
    invoke-virtual {p1, p0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 24
    move-result p0

    .line 27
    float-to-int p0, p0

    .line 28
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 29
    :cond_0
    return-void
    .line 32
.end method

.method public final onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    const v1, 0xff00

    .line 6
    and-int/2addr v0, v1

    .line 9
    shr-int/lit8 v0, v0, 0x8

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 12
    move-result v1

    .line 15
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 16
    if-ne v1, v2, :cond_1

    .line 18
    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 25
    move-result v1

    .line 28
    float-to-int v1, v1

    .line 29
    int-to-float v1, v1

    .line 30
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 33
    move-result p1

    .line 36
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 37
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 39
    if-eqz p0, :cond_1

    .line 41
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    .line 43
    :cond_1
    return-void
    .line 46
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    .line 1
    move-object/from16 v10, p0

    .line 2
    move-object/from16 v11, p1

    .line 4
    iget-object v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6
    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 10
    move-result-object v0

    .line 13
    iput-object v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 14
    :cond_0
    iget-object v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 16
    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 21
    move-result v0

    .line 24
    and-int/lit16 v0, v0, 0xff

    .line 25
    const/4 v12, 0x1

    .line 27
    const/4 v13, 0x0

    .line 28
    if-eqz v0, :cond_b

    .line 29
    const/4 v14, -0x1

    .line 31
    if-eq v0, v12, :cond_8

    .line 32
    const/4 v1, 0x2

    .line 34
    if-eq v0, v1, :cond_3

    .line 35
    const/4 v1, 0x3

    .line 37
    if-eq v0, v1, :cond_8

    .line 38
    const/4 v1, 0x5

    .line 40
    if-eq v0, v1, :cond_2

    .line 41
    const/4 v1, 0x6

    .line 43
    if-eq v0, v1, :cond_1

    .line 44
    goto/16 :goto_0

    .line 46
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 48
    iget v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 51
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 53
    move-result v0

    .line 56
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 57
    move-result v0

    .line 60
    float-to-int v0, v0

    .line 61
    int-to-float v0, v0

    .line 62
    iput v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 63
    goto/16 :goto_0

    .line 65
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 67
    move-result v0

    .line 70
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 71
    move-result v1

    .line 74
    float-to-int v1, v1

    .line 75
    int-to-float v1, v1

    .line 76
    iput v1, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 77
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 79
    move-result v0

    .line 82
    iput v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 83
    goto/16 :goto_0

    .line 85
    :cond_3
    iget-boolean v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 87
    if-eqz v0, :cond_6

    .line 89
    iget v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 91
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 93
    move-result v0

    .line 96
    if-ne v0, v14, :cond_4

    .line 97
    return v13

    .line 99
    :cond_4
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 100
    move-result v15

    .line 103
    iget v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 104
    sub-float v0, v15, v0

    .line 106
    float-to-int v2, v0

    .line 108
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    .line 109
    move-result v6

    .line 112
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    .line 113
    move-result v8

    .line 116
    const/4 v1, 0x0

    .line 117
    const/4 v3, 0x0

    .line 118
    iget v4, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 119
    const/4 v5, 0x0

    .line 121
    const/4 v7, 0x0

    .line 122
    const/4 v9, 0x1

    .line 123
    move-object/from16 v0, p0

    .line 124
    invoke-virtual/range {v0 .. v9}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 126
    move-result v0

    .line 129
    iput v15, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 130
    if-eqz v0, :cond_c

    .line 132
    iget v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 134
    if-nez v0, :cond_5

    .line 136
    iput-boolean v13, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 138
    iput v14, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 140
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->setAction(I)V

    .line 142
    invoke-virtual/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 145
    :cond_5
    iget-object v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 148
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 150
    goto/16 :goto_0

    .line 153
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    .line 155
    move-result v0

    .line 158
    if-eqz v0, :cond_c

    .line 159
    iput-boolean v12, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 161
    iget-object v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 163
    if-nez v0, :cond_7

    .line 165
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 167
    move-result-object v0

    .line 170
    iput-object v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 171
    :cond_7
    iget-object v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 173
    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 175
    goto :goto_0

    .line 178
    :cond_8
    iget-boolean v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 179
    if-eqz v0, :cond_c

    .line 181
    iput-boolean v13, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 183
    iput v14, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 185
    iget-object v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 187
    iget v1, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMaximumVelocity:I

    .line 189
    int-to-float v1, v1

    .line 191
    const/16 v2, 0x3e8

    .line 192
    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 194
    iget v1, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 199
    move-result v0

    .line 202
    float-to-int v0, v0

    .line 203
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 204
    move-result v1

    .line 207
    iget v2, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMinimumVelocity:I

    .line 208
    if-le v1, v2, :cond_9

    .line 210
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    .line 212
    move-result v23

    .line 215
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    .line 216
    move-result v21

    .line 219
    iget-object v13, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 220
    const/4 v14, 0x0

    .line 222
    iget v15, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 223
    const/16 v16, 0x0

    .line 225
    const/16 v18, 0x0

    .line 227
    const/16 v19, 0x0

    .line 229
    const/16 v20, 0x0

    .line 231
    const/16 v22, 0x0

    .line 233
    move/from16 v17, v0

    .line 235
    invoke-virtual/range {v13 .. v23}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 237
    iput-boolean v12, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mFlinging:Z

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 242
    goto :goto_0

    .line 245
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    .line 246
    move-result v7

    .line 249
    iget-object v1, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 250
    const/4 v2, 0x0

    .line 252
    iget v3, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 253
    const/4 v4, 0x0

    .line 255
    const/4 v5, 0x0

    .line 256
    const/4 v6, 0x0

    .line 257
    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 258
    move-result v0

    .line 261
    if-eqz v0, :cond_a

    .line 262
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 264
    goto :goto_0

    .line 267
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->springBack()V

    .line 268
    goto :goto_0

    .line 271
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 272
    move-result v0

    .line 275
    iput v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 276
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 278
    move-result v0

    .line 281
    iput v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 282
    :cond_c
    :goto_0
    return v12
    .line 284
.end method

.method public final overScrollBy(IIIIIIIIZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    .line 2
    move-result p1

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->computeVerticalScrollRange()I

    .line 6
    move-result p3

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->computeVerticalScrollExtent()I

    .line 10
    move-result p5

    .line 13
    const/4 p7, 0x1

    .line 14
    const/4 p9, 0x0

    .line 15
    if-le p3, p5, :cond_0

    .line 16
    move p3, p7

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p3, p9

    .line 20
    :goto_0
    if-eqz p1, :cond_2

    .line 21
    if-ne p1, p7, :cond_1

    .line 23
    if-eqz p3, :cond_1

    .line 25
    goto :goto_1

    .line 27
    :cond_1
    move p1, p9

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    :goto_1
    move p1, p7

    .line 30
    :goto_2
    add-int/2addr p4, p2

    .line 31
    if-nez p1, :cond_3

    .line 32
    move p8, p9

    .line 34
    :cond_3
    add-int/2addr p8, p6

    .line 35
    if-le p4, p8, :cond_4

    .line 36
    move p4, p8

    .line 38
    goto :goto_3

    .line 39
    :cond_4
    if-gez p4, :cond_5

    .line 40
    move p4, p9

    .line 42
    goto :goto_3

    .line 43
    :cond_5
    move p7, p9

    .line 44
    :goto_3
    invoke-virtual {p0, p9, p4, p9, p7}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onOverScrolled(IIZZ)V

    .line 45
    return p7
    .line 48
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setInitialMotionY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 2
    return-void
    .line 4
.end method

.method public setMotionY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 2
    int-to-float p1, p1

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->applyTranslationY(F)V

    .line 5
    return-void
    .line 8
.end method

.method public setOnScrollListener(Lmiuix/appcompat/app/ActionBar$OnScrollListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setOverScrollDistance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    .line 2
    return-void
    .line 4
.end method

.method public setScrollRange(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 2
    return-void
    .line 4
.end method

.method public setScrollStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollStart:I

    .line 2
    return-void
    .line 4
.end method

.method public setSpringBackEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    .line 2
    return-void
    .line 4
.end method

.method public final shouldStartScroll(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    return v1

    .line 8
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 9
    move-result v0

    .line 12
    if-ne v0, v2, :cond_1

    .line 13
    const-string p0, "ActionBarMovableLayout"

    .line 15
    const-string p1, "invalid pointer index"

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return v1

    .line 22
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 23
    move-result v2

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 27
    move-result p1

    .line 30
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 31
    sub-float v0, p1, v0

    .line 33
    float-to-int v0, v0

    .line 35
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 36
    move-result v3

    .line 39
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionX:F

    .line 40
    sub-float v4, v2, v4

    .line 42
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 44
    move-result v4

    .line 47
    float-to-int v4, v4

    .line 48
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 49
    float-to-int v6, v2

    .line 51
    float-to-int v7, p1

    .line 52
    invoke-virtual {p0, v5, v6, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->inChild(Landroid/view/View;II)Z

    .line 53
    move-result v5

    .line 56
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    .line 57
    invoke-virtual {p0, v8, v6, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->inChild(Landroid/view/View;II)Z

    .line 59
    move-result v6

    .line 62
    const/4 v7, 0x1

    .line 63
    if-nez v5, :cond_3

    .line 64
    if-eqz v6, :cond_2

    .line 66
    goto :goto_0

    .line 68
    :cond_2
    move v5, v1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    :goto_0
    move v5, v7

    .line 71
    :goto_1
    if-eqz v5, :cond_6

    .line 72
    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTouchSlop:I

    .line 74
    if-le v3, v5, :cond_6

    .line 76
    if-le v3, v4, :cond_6

    .line 78
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 80
    if-nez v3, :cond_4

    .line 82
    if-gez v0, :cond_5

    .line 84
    goto :goto_2

    .line 86
    :cond_4
    if-lez v0, :cond_5

    .line 87
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    .line 89
    :cond_5
    move v1, v7

    .line 92
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 93
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 95
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionX:F

    .line 97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 99
    move-result-object p0

    .line 102
    if-eqz p0, :cond_7

    .line 103
    invoke-interface {p0, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 105
    :cond_7
    return v1
    .line 108
.end method

.method public final springBack()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    .line 6
    move-result v0

    .line 9
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 10
    div-int/lit8 v1, v0, 0x2

    .line 12
    if-le v3, v1, :cond_0

    .line 14
    sub-int/2addr v0, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    neg-int v0, v3

    .line 18
    :goto_0
    move v5, v0

    .line 19
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 20
    const/4 v2, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/16 v6, 0x320

    .line 24
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    .line 29
    :cond_1
    return-void
    .line 32
.end method
