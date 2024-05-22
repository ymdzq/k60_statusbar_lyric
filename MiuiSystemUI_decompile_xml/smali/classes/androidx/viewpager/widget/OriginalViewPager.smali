.class public Landroidx/viewpager/widget/OriginalViewPager;
.super Landroid/view/ViewGroup;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final COMPARATOR:Landroidx/viewpager/widget/OriginalViewPager$1;

.field public static final LAYOUT_ATTRS:[I

.field public static final sPositionComparator:Landroidx/viewpager/widget/OriginalViewPager$1;


# instance fields
.field public mActivePointerId:I

.field public mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field public mBottomPageBounds:I

.field public mCalledSuper:Z

.field public mChildHeightMeasureSpec:I

.field public mCloseEnough:I

.field public mCurItem:I

.field public mDecorChildCount:I

.field public mDefaultGutterSize:I

.field public mDrawingOrder:I

.field public mDrawingOrderedChildren:Ljava/util/ArrayList;

.field public final mEndScrollRunnable:Landroidx/viewpager/widget/OriginalViewPager$3;

.field public mExpectedAdapterCount:I

.field public mFirstLayout:Z

.field public mFirstOffset:F

.field public mFlingDistance:I

.field public mGutterSize:I

.field public mInLayout:Z

.field public mInitialMotionX:F

.field public mInitialMotionY:F

.field public mIsBeingDragged:Z

.field public mIsScrollStarted:Z

.field public mIsUnableToDrag:Z

.field public final mItems:Ljava/util/ArrayList;

.field public mLastMotionX:F

.field public mLastMotionY:F

.field public mLastOffset:F

.field public mLeftEdge:Landroid/widget/EdgeEffect;

.field public mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field public mMaximumVelocity:I

.field public mMinimumVelocity:I

.field public mObserver:Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;

.field public mOffscreenPageLimit:I

.field public mPageMargin:I

.field public mPopulatePending:Z

.field public mRestoredCurIsRTL:Z

.field public mRestoredCurItem:I

.field public mRightEdge:Landroid/widget/EdgeEffect;

.field public mScrollState:I

.field public mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

.field public mScrollingCacheEnabled:Z

.field public final mTempItem:Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

.field public final mTempRect:Landroid/graphics/Rect;

.field public mTopPageBounds:I

.field public mTouchSlop:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x10100b3    # @android:attr/layout_gravity

    .line 2
    filled-new-array {v0}, [I

    .line 5
    move-result-object v0

    .line 8
    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->LAYOUT_ATTRS:[I

    .line 9
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$1;

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Landroidx/viewpager/widget/OriginalViewPager$1;-><init>(I)V

    .line 14
    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->COMPARATOR:Landroidx/viewpager/widget/OriginalViewPager$1;

    .line 17
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$1;

    .line 19
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1}, Landroidx/viewpager/widget/OriginalViewPager$1;-><init>(I)V

    .line 22
    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->sPositionComparator:Landroidx/viewpager/widget/OriginalViewPager$1;

    .line 25
    return-void
    .line 27
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    invoke-direct {p1}, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempItem:Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurIsRTL:Z

    const v1, -0x800001

    .line 7
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 8
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    const/4 v1, 0x2

    .line 9
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 10
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 12
    new-instance p1, Landroidx/viewpager/widget/OriginalViewPager$3;

    invoke-direct {p1, p0}, Landroidx/viewpager/widget/OriginalViewPager$3;-><init>(Landroidx/viewpager/widget/OriginalViewPager;)V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Landroidx/viewpager/widget/OriginalViewPager$3;

    .line 13
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    .line 14
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 17
    new-instance p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    invoke-direct {p1}, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempItem:Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 19
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurIsRTL:Z

    const v0, -0x800001

    .line 21
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 22
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    const/4 v0, 0x2

    .line 23
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 24
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 26
    new-instance p1, Landroidx/viewpager/widget/OriginalViewPager$3;

    invoke-direct {p1, p0}, Landroidx/viewpager/widget/OriginalViewPager$3;-><init>(Landroidx/viewpager/widget/OriginalViewPager;)V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Landroidx/viewpager/widget/OriginalViewPager$3;

    .line 27
    iput p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    .line 28
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->initViewPager()V

    return-void
.end method

.method public static canScroll(IIILandroid/view/View;Z)Z
    .locals 9

    .line 1
    instance-of v0, p3, Landroid/view/ViewGroup;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    move-object v0, p3

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    .line 10
    move-result v2

    .line 13
    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    .line 14
    move-result v3

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v4

    .line 21
    sub-int/2addr v4, v1

    .line 22
    :goto_0
    if-ltz v4, :cond_1

    .line 23
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v5

    .line 28
    add-int v6, p1, v2

    .line 29
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 31
    move-result v7

    .line 34
    if-lt v6, v7, :cond_0

    .line 35
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 37
    move-result v7

    .line 40
    if-ge v6, v7, :cond_0

    .line 41
    add-int v7, p2, v3

    .line 43
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 45
    move-result v8

    .line 48
    if-lt v7, v8, :cond_0

    .line 49
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 51
    move-result v8

    .line 54
    if-ge v7, v8, :cond_0

    .line 55
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 57
    move-result v8

    .line 60
    sub-int/2addr v6, v8

    .line 61
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 62
    move-result v8

    .line 65
    sub-int/2addr v7, v8

    .line 66
    invoke-static {p0, v6, v7, v5, v1}, Landroidx/viewpager/widget/OriginalViewPager;->canScroll(IIILandroid/view/View;Z)Z

    .line 67
    move-result v5

    .line 70
    if-eqz v5, :cond_0

    .line 71
    return v1

    .line 73
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 74
    goto :goto_0

    .line 76
    :cond_1
    if-eqz p4, :cond_2

    .line 77
    neg-int p0, p0

    .line 79
    invoke-virtual {p3, p0}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 80
    move-result p0

    .line 83
    if-eqz p0, :cond_2

    .line 84
    goto :goto_1

    .line 86
    :cond_2
    const/4 v1, 0x0

    .line 87
    :goto_1
    return v1
    .line 88
.end method

.method private getClientWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 6
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 11
    move-result p0

    .line 14
    sub-int/2addr v0, p0

    .line 15
    return v0
    .line 16
.end method


# virtual methods
.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 6
    move-result v1

    .line 9
    const/high16 v2, 0x60000

    .line 10
    if-eq v1, v2, :cond_1

    .line 12
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    move-result v3

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 25
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 31
    move-result-object v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    iget v4, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 37
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 39
    if-ne v4, v5, :cond_0

    .line 41
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 43
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    const/high16 p2, 0x40000

    .line 49
    if-ne v1, p2, :cond_2

    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result p2

    .line 56
    if-ne v0, p2, :cond_5

    .line 57
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    .line 59
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 63
    return-void

    .line 65
    :cond_3
    const/4 p2, 0x1

    .line 66
    and-int/2addr p3, p2

    .line 67
    if-ne p3, p2, :cond_4

    .line 68
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    .line 70
    move-result p2

    .line 73
    if-eqz p2, :cond_4

    .line 74
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    .line 76
    move-result p2

    .line 79
    if-nez p2, :cond_4

    .line 80
    return-void

    .line 82
    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_5
    return-void
    .line 86
.end method

.method public final addNewItem(II)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    .locals 2

    .line 1
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 2
    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;-><init>()V

    .line 4
    iput p1, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 7
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 9
    invoke-virtual {v1, p1, p0}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(ILandroid/view/ViewGroup;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 14
    iput-object p1, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    iput p1, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    .line 24
    if-ltz p2, :cond_1

    .line 26
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result p1

    .line 33
    if-lt p2, p1, :cond_0

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p0, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 39
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :goto_1
    return-object v0
    .line 48
.end method

.method public final addTouchables(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 13
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 19
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    iget v2, v2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 25
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 27
    if-ne v2, v3, :cond_0

    .line 29
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

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

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/OriginalViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/OriginalViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object p3

    .line 11
    :cond_0
    move-object v0, p3

    .line 12
    check-cast v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 13
    iget-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    move-result-object v2

    .line 20
    const-class v3, Landroidx/viewpager/widget/OriginalViewPager$DecorView;

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 23
    move-result-object v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v2, :cond_1

    .line 28
    move v2, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    :goto_0
    or-int/2addr v1, v2

    .line 33
    iput-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    .line 34
    iget-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    .line 36
    if-eqz v2, :cond_3

    .line 38
    if-nez v1, :cond_2

    .line 40
    iput-boolean v3, v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->needsMeasure:Z

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 44
    goto :goto_1

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    const-string p1, "Cannot add pager decor view during layout"

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0

    .line 55
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 56
    :goto_1
    return-void
    .line 59
.end method

.method public final arrowScroll(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, p0, :cond_0

    .line 8
    goto :goto_3

    .line 10
    :cond_0
    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    move-result-object v3

    .line 16
    :goto_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    .line 17
    if-eqz v4, :cond_2

    .line 19
    if-ne v3, p0, :cond_1

    .line 21
    move v3, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object v3

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move v3, v2

    .line 30
    :goto_1
    if-nez v3, :cond_4

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 49
    move-result-object v0

    .line 52
    :goto_2
    instance-of v4, v0, Landroid/view/ViewGroup;

    .line 53
    if-eqz v4, :cond_3

    .line 55
    const-string v4, " => "

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    move-result-object v4

    .line 65
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 66
    move-result-object v4

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 73
    move-result-object v0

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    const-string v4, "arrowScroll tried to find focus based on non-child current focused view "

    .line 80
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 95
    const-string v3, "ViewPager"

    .line 96
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_3
    const/4 v0, 0x0

    .line 101
    :cond_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 102
    move-result-object v3

    .line 105
    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 106
    move-result-object v3

    .line 109
    const/16 v4, 0x42

    .line 110
    const/16 v5, 0x11

    .line 112
    if-eqz v3, :cond_8

    .line 114
    if-eq v3, v0, :cond_8

    .line 116
    if-ne p1, v5, :cond_6

    .line 118
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 120
    invoke-virtual {p0, v4, v3}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 122
    move-result-object v4

    .line 125
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 126
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 128
    invoke-virtual {p0, v5, v0}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 130
    move-result-object v5

    .line 133
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 134
    if-eqz v0, :cond_5

    .line 136
    if-lt v4, v5, :cond_5

    .line 138
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 140
    if-lez v0, :cond_c

    .line 142
    sub-int/2addr v0, v1

    .line 144
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(IZ)V

    .line 145
    goto :goto_6

    .line 148
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 149
    move-result v0

    .line 152
    :goto_4
    move v2, v0

    .line 153
    goto :goto_7

    .line 154
    :cond_6
    if-ne p1, v4, :cond_d

    .line 155
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 157
    invoke-virtual {p0, v1, v3}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 159
    move-result-object v1

    .line 162
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 163
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 165
    invoke-virtual {p0, v2, v0}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 167
    move-result-object v2

    .line 170
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 171
    if-eqz v0, :cond_7

    .line 173
    if-gt v1, v2, :cond_7

    .line 175
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageRight()Z

    .line 177
    move-result v0

    .line 180
    goto :goto_4

    .line 181
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 182
    move-result v0

    .line 185
    goto :goto_4

    .line 186
    :cond_8
    if-eq p1, v5, :cond_b

    .line 187
    if-ne p1, v1, :cond_9

    .line 189
    goto :goto_5

    .line 191
    :cond_9
    if-eq p1, v4, :cond_a

    .line 192
    const/4 v0, 0x2

    .line 194
    if-ne p1, v0, :cond_d

    .line 195
    :cond_a
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageRight()Z

    .line 197
    move-result v2

    .line 200
    goto :goto_7

    .line 201
    :cond_b
    :goto_5
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 202
    if-lez v0, :cond_c

    .line 204
    sub-int/2addr v0, v1

    .line 206
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(IZ)V

    .line 207
    goto :goto_6

    .line 210
    :cond_c
    move v1, v2

    .line 211
    :goto_6
    move v2, v1

    .line 212
    :cond_d
    :goto_7
    if-eqz v2, :cond_e

    .line 213
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    .line 215
    move-result p1

    .line 218
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    .line 219
    :cond_e
    return v2
    .line 222
.end method

.method public final canScrollHorizontally(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 8
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 12
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-gez p1, :cond_2

    .line 17
    int-to-float p1, v0

    .line 19
    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    .line 20
    mul-float/2addr p1, p0

    .line 22
    float-to-int p0, p1

    .line 23
    if-le v2, p0, :cond_1

    .line 24
    move v1, v3

    .line 26
    :cond_1
    return v1

    .line 27
    :cond_2
    if-lez p1, :cond_3

    .line 28
    int-to-float p1, v0

    .line 30
    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 31
    mul-float/2addr p1, p0

    .line 33
    float-to-int p0, p1

    .line 34
    if-ge v2, p0, :cond_3

    .line 35
    move v1, v3

    .line 37
    :cond_3
    return v1
    .line 38
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final completeScroll(Z)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    .line 2
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v3

    .line 11
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    .line 14
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 17
    iget-boolean v4, v1, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 19
    xor-int/2addr v4, v2

    .line 21
    if-eqz v4, :cond_2

    .line 22
    iput-boolean v2, v1, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 26
    move-result v1

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    .line 30
    move-result v4

    .line 33
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 34
    iget-wide v6, v5, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrX:D

    .line 36
    double-to-int v6, v6

    .line 38
    iget-wide v7, v5, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrY:D

    .line 39
    double-to-int v5, v7

    .line 41
    if-ne v1, v6, :cond_1

    .line 42
    if-eq v4, v5, :cond_2

    .line 44
    :cond_1
    invoke-virtual {p0, v6, v5}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 46
    if-eq v6, v1, :cond_2

    .line 49
    invoke-virtual {p0, v6}, Landroidx/viewpager/widget/OriginalViewPager;->pageScrolled(I)Z

    .line 51
    :cond_2
    iput-boolean v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 54
    move v1, v3

    .line 56
    :goto_1
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 59
    move-result v4

    .line 62
    if-ge v1, v4, :cond_4

    .line 63
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 70
    check-cast v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 71
    iget-boolean v5, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->scrolling:Z

    .line 73
    if-eqz v5, :cond_3

    .line 75
    iput-boolean v3, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->scrolling:Z

    .line 77
    move v0, v2

    .line 79
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 80
    goto :goto_1

    .line 82
    :cond_4
    if-eqz v0, :cond_6

    .line 83
    if-eqz p1, :cond_5

    .line 85
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Landroidx/viewpager/widget/OriginalViewPager$3;

    .line 87
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 89
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 91
    goto :goto_2

    .line 94
    :cond_5
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Landroidx/viewpager/widget/OriginalViewPager$3;

    .line 95
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager$3;->run()V

    .line 97
    :cond_6
    :goto_2
    return-void
    .line 100
.end method

.method public final computeScroll()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    .line 3
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 5
    iget-boolean v2, v1, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 7
    if-nez v2, :cond_2

    .line 9
    invoke-virtual {v1}, Lmiuix/androidbasewidget/widget/SpringScroller;->computeScrollOffset()Z

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 17
    move-result v1

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    .line 21
    move-result v2

    .line 24
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 25
    iget-wide v4, v3, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrX:D

    .line 27
    double-to-int v4, v4

    .line 29
    iget-wide v5, v3, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrY:D

    .line 30
    double-to-int v3, v5

    .line 32
    if-ne v1, v4, :cond_0

    .line 33
    if-eq v2, v3, :cond_1

    .line 35
    :cond_0
    invoke-virtual {p0, v4, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 37
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/OriginalViewPager;->pageScrolled(I)Z

    .line 40
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 46
    iput-boolean v0, v1, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 48
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 51
    :cond_1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 54
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 56
    return-void

    .line 59
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 60
    return-void
    .line 63
.end method

.method public final dataSetChanged()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 4
    move-result v0

    .line 7
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    .line 8
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v1

    .line 15
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 16
    mul-int/lit8 v2, v2, 0x2

    .line 18
    const/4 v3, 0x1

    .line 20
    add-int/2addr v2, v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v1

    .line 30
    if-ge v1, v0, :cond_0

    .line 31
    move v0, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v4

    .line 35
    :goto_0
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 36
    move v2, v4

    .line 38
    :goto_1
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 41
    move-result v5

    .line 44
    if-ge v2, v5, :cond_1

    .line 45
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 52
    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 53
    iget-object v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 55
    iget-object v5, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 57
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 62
    goto :goto_1

    .line 64
    :cond_1
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 65
    sget-object v5, Landroidx/viewpager/widget/OriginalViewPager;->COMPARATOR:Landroidx/viewpager/widget/OriginalViewPager$1;

    .line 67
    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    if-eqz v0, :cond_4

    .line 72
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 74
    move-result v0

    .line 77
    move v2, v4

    .line 78
    :goto_2
    if-ge v2, v0, :cond_3

    .line 79
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 81
    move-result-object v5

    .line 84
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 85
    move-result-object v5

    .line 88
    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 89
    iget-boolean v6, v5, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    .line 91
    if-nez v6, :cond_2

    .line 93
    const/4 v6, 0x0

    .line 95
    iput v6, v5, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->widthFactor:F

    .line 96
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 98
    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {p0, v1, v4, v4, v3}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IIZZ)V

    .line 101
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 104
    :cond_4
    return-void
    .line 107
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_8

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_6

    .line 14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 16
    move-result v0

    .line 19
    const/16 v3, 0x15

    .line 20
    const/4 v4, 0x2

    .line 22
    if-eq v0, v3, :cond_4

    .line 23
    const/16 v3, 0x16

    .line 25
    if-eq v0, v3, :cond_2

    .line 27
    const/16 v3, 0x3d

    .line 29
    if-eq v0, v3, :cond_0

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    .line 40
    move-result p0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 45
    move-result p1

    .line 48
    if-eqz p1, :cond_6

    .line 49
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    .line 51
    move-result p0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 56
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageRight()Z

    .line 62
    move-result p0

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/16 p1, 0x42

    .line 67
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    .line 69
    move-result p0

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 74
    move-result p1

    .line 77
    if-eqz p1, :cond_5

    .line 78
    iget p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 80
    if-lez p1, :cond_6

    .line 82
    sub-int/2addr p1, v1

    .line 84
    invoke-virtual {p0, p1, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(IZ)V

    .line 85
    move p0, v1

    .line 88
    goto :goto_1

    .line 89
    :cond_5
    const/16 p1, 0x11

    .line 90
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    .line 92
    move-result p0

    .line 95
    goto :goto_1

    .line 96
    :cond_6
    :goto_0
    move p0, v2

    .line 97
    :goto_1
    if-eqz p0, :cond_7

    .line 98
    goto :goto_2

    .line 100
    :cond_7
    move v1, v2

    .line 101
    :cond_8
    :goto_2
    return v1
    .line 102
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0x1000

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, v0, :cond_2

    .line 21
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 27
    move-result v4

    .line 30
    if-nez v4, :cond_1

    .line 31
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 33
    move-result-object v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    iget v4, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 39
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 41
    if-ne v4, v5, :cond_1

    .line 43
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 45
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    return v1
    .line 56
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    .line 5
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    const/4 v2, 0x1

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 19
    move-result v0

    .line 22
    if-le v0, v2, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 26
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 28
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 31
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 33
    goto/16 :goto_1

    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 38
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 40
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 46
    move-result v0

    .line 49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 50
    move-result v2

    .line 53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 54
    move-result v3

    .line 57
    sub-int/2addr v2, v3

    .line 58
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 59
    move-result v3

    .line 62
    sub-int/2addr v2, v3

    .line 63
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 64
    move-result v3

    .line 67
    const/high16 v4, 0x43870000    # 270.0f

    .line 68
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 70
    neg-int v4, v2

    .line 73
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 74
    move-result v5

    .line 77
    add-int/2addr v5, v4

    .line 78
    int-to-float v4, v5

    .line 79
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    .line 80
    int-to-float v6, v3

    .line 82
    mul-float/2addr v5, v6

    .line 83
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 84
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 87
    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 89
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 92
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 94
    move-result v2

    .line 97
    or-int/2addr v1, v2

    .line 98
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 99
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 102
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 104
    move-result v0

    .line 107
    if-nez v0, :cond_3

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    move-result v0

    .line 113
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 114
    move-result v2

    .line 117
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 118
    move-result v3

    .line 121
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 122
    move-result v4

    .line 125
    sub-int/2addr v3, v4

    .line 126
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 127
    move-result v4

    .line 130
    sub-int/2addr v3, v4

    .line 131
    const/high16 v4, 0x42b40000    # 90.0f

    .line 132
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 134
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 137
    move-result v4

    .line 140
    neg-int v4, v4

    .line 141
    int-to-float v4, v4

    .line 142
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 143
    const/high16 v6, 0x3f800000    # 1.0f

    .line 145
    add-float/2addr v5, v6

    .line 147
    neg-float v5, v5

    .line 148
    int-to-float v6, v2

    .line 149
    mul-float/2addr v5, v6

    .line 150
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 154
    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 156
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 159
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 161
    move-result v2

    .line 164
    or-int/2addr v1, v2

    .line 165
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 166
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 169
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 171
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 173
    :cond_4
    return-void
    .line 176
.end method

.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 9
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    new-instance p0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 2
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getChildDrawingOrder(II)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrder:I

    .line 2
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    add-int/lit8 p1, p1, -0x1

    .line 7
    sub-int p2, p1, p2

    .line 9
    :cond_0
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 16
    check-cast p0, Landroid/view/View;

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    move-result-object p0

    .line 22
    check-cast p0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 23
    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->childIndex:I

    .line 25
    return p0
    .line 27
.end method

.method public final getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    .line 4
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 9
    const/4 p0, 0x0

    .line 11
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    return-object p1

    .line 15
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 16
    move-result v0

    .line 19
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 22
    move-result v0

    .line 25
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 28
    move-result v0

    .line 31
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 34
    move-result v0

    .line 37
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 38
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 40
    move-result-object p2

    .line 43
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 44
    if-eqz v0, :cond_2

    .line 46
    if-eq p2, p0, :cond_2

    .line 48
    check-cast p2, Landroid/view/ViewGroup;

    .line 50
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 52
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    .line 54
    move-result v1

    .line 57
    add-int/2addr v1, v0

    .line 58
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 59
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 61
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    .line 63
    move-result v1

    .line 66
    add-int/2addr v1, v0

    .line 67
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 68
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 70
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    .line 72
    move-result v1

    .line 75
    add-int/2addr v1, v0

    .line 76
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 77
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 79
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    .line 81
    move-result v1

    .line 84
    add-int/2addr v1, v0

    .line 85
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 86
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 88
    move-result-object p2

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    return-object p1
    .line 93
.end method

.method public getCurrentItem()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 2
    return p0
    .line 4
.end method

.method public getOffscreenPageLimit()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 2
    return p0
    .line 4
.end method

.method public getPageMargin()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 2
    return p0
    .line 4
.end method

.method public final infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 17
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 19
    iget-object v3, v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 21
    invoke-virtual {v2, p1, v3}, Landroidx/viewpager/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    .line 23
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
    .line 34
.end method

.method public final infoForCurrentScrollPosition()Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    .locals 13

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 9
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    int-to-float v3, v0

    .line 14
    div-float/2addr v2, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v1

    .line 17
    :goto_0
    if-lez v0, :cond_1

    .line 18
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 20
    int-to-float v3, v3

    .line 22
    int-to-float v0, v0

    .line 23
    div-float/2addr v3, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v3, v1

    .line 26
    :goto_1
    const/4 v0, 0x0

    .line 27
    const/4 v4, -0x1

    .line 28
    const/4 v5, 0x1

    .line 29
    const/4 v6, 0x0

    .line 30
    move v8, v0

    .line 31
    move v9, v5

    .line 32
    move-object v7, v6

    .line 33
    move v6, v4

    .line 34
    move v4, v1

    .line 35
    :goto_2
    iget-object v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 38
    move-result v10

    .line 41
    if-ge v8, v10, :cond_7

    .line 42
    iget-object v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v10

    .line 49
    check-cast v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 50
    if-nez v9, :cond_2

    .line 52
    iget v11, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 54
    add-int/2addr v6, v5

    .line 56
    if-eq v11, v6, :cond_2

    .line 57
    iget-object v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempItem:Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 59
    add-float/2addr v1, v4

    .line 61
    add-float/2addr v1, v3

    .line 62
    iput v1, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 63
    iput v6, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 65
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    const/high16 v1, 0x3f800000    # 1.0f

    .line 72
    iput v1, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    .line 74
    add-int/lit8 v8, v8, -0x1

    .line 76
    :cond_2
    move-object v6, v10

    .line 78
    iget v1, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 79
    iget v4, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    .line 81
    add-float/2addr v4, v1

    .line 83
    add-float/2addr v4, v3

    .line 84
    if-nez v9, :cond_4

    .line 85
    cmpl-float v9, v2, v1

    .line 87
    if-ltz v9, :cond_3

    .line 89
    goto :goto_3

    .line 91
    :cond_3
    return-object v7

    .line 92
    :cond_4
    :goto_3
    cmpg-float v4, v2, v4

    .line 93
    if-ltz v4, :cond_6

    .line 95
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 99
    move-result v4

    .line 102
    sub-int/2addr v4, v5

    .line 103
    if-ne v8, v4, :cond_5

    .line 104
    goto :goto_4

    .line 106
    :cond_5
    iget v4, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 107
    iget v7, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    .line 109
    add-int/lit8 v8, v8, 0x1

    .line 111
    move v9, v0

    .line 113
    move-object v12, v6

    .line 114
    move v6, v4

    .line 115
    move v4, v7

    .line 116
    move-object v7, v12

    .line 117
    goto :goto_2

    .line 118
    :cond_6
    :goto_4
    return-object v6

    .line 119
    :cond_7
    return-object v7
    .line 120
.end method

.method public final infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 17
    iget v2, v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 19
    if-ne v2, p1, :cond_0

    .line 21
    return-object v1

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
    .line 28
.end method

.method public final initViewPager()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 3
    const/high16 v0, 0x40000

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 8
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 18
    new-instance v2, Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 19
    invoke-direct {v2}, Lmiuix/androidbasewidget/widget/SpringScroller;-><init>()V

    .line 21
    iput-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 24
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 26
    move-result-object v2

    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 34
    move-result-object v3

    .line 37
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 38
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 40
    move-result v4

    .line 43
    iput v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    .line 44
    const/high16 v4, 0x43c80000    # 400.0f

    .line 46
    mul-float/2addr v4, v3

    .line 48
    float-to-int v4, v4

    .line 49
    iput v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMinimumVelocity:I

    .line 50
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 52
    move-result v2

    .line 55
    iput v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMaximumVelocity:I

    .line 56
    new-instance v2, Landroid/widget/EdgeEffect;

    .line 58
    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 63
    new-instance v2, Landroid/widget/EdgeEffect;

    .line 65
    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 67
    iput-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 70
    const/high16 v1, 0x41c80000    # 25.0f

    .line 72
    mul-float/2addr v1, v3

    .line 74
    float-to-int v1, v1

    .line 75
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFlingDistance:I

    .line 76
    const/high16 v1, 0x40000000    # 2.0f

    .line 78
    mul-float/2addr v1, v3

    .line 80
    float-to-int v1, v1

    .line 81
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCloseEnough:I

    .line 82
    const/high16 v1, 0x41800000    # 16.0f

    .line 84
    mul-float/2addr v3, v1

    .line 86
    float-to-int v1, v3

    .line 87
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDefaultGutterSize:I

    .line 88
    new-instance v1, Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;

    .line 90
    invoke-direct {v1, p0}, Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;-><init>(Landroidx/viewpager/widget/OriginalViewPager;)V

    .line 92
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 95
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getImportantForAccessibility(Landroid/view/View;)I

    .line 98
    move-result v1

    .line 101
    if-nez v1, :cond_0

    .line 102
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 104
    :cond_0
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$4;

    .line 107
    invoke-direct {v0, p0}, Landroidx/viewpager/widget/OriginalViewPager$4;-><init>(Landroidx/viewpager/widget/OriginalViewPager;)V

    .line 109
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 112
    return-void
    .line 115
.end method

.method public final isRTL()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 14
    move-result p0

    .line 17
    const/4 v0, 0x1

    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
    .line 23
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 6
    return-void
    .line 8
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Landroidx/viewpager/widget/OriginalViewPager$3;

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-boolean v1, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 11
    if-nez v1, :cond_0

    .line 13
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 16
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 18
    return-void
    .line 21
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 7
    if-lez v1, :cond_4

    .line 9
    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    if-eqz v1, :cond_4

    .line 13
    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v1

    .line 20
    if-lez v1, :cond_4

    .line 21
    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 23
    if-eqz v1, :cond_4

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 27
    move-result v1

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 31
    move-result v2

    .line 34
    iget v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 35
    int-to-float v3, v3

    .line 37
    int-to-float v4, v2

    .line 38
    div-float/2addr v3, v4

    .line 39
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 40
    const/4 v6, 0x0

    .line 42
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v5

    .line 46
    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 47
    iget v7, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 49
    iget-object v8, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result v8

    .line 56
    iget v9, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 57
    iget-object v10, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 59
    add-int/lit8 v11, v8, -0x1

    .line 61
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v10

    .line 66
    check-cast v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 67
    iget v10, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 69
    :goto_0
    if-ge v9, v10, :cond_4

    .line 71
    :goto_1
    iget v11, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 73
    if-le v9, v11, :cond_0

    .line 75
    if-ge v6, v8, :cond_0

    .line 77
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 79
    add-int/lit8 v6, v6, 0x1

    .line 81
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v5

    .line 86
    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 87
    goto :goto_1

    .line 89
    :cond_0
    if-ne v9, v11, :cond_1

    .line 90
    iget v7, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 92
    iget v11, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    .line 94
    add-float v12, v7, v11

    .line 96
    mul-float/2addr v12, v4

    .line 98
    add-float/2addr v7, v11

    .line 99
    add-float/2addr v7, v3

    .line 100
    goto :goto_2

    .line 101
    :cond_1
    iget-object v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 102
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    const/high16 v11, 0x3f800000    # 1.0f

    .line 107
    add-float v12, v7, v11

    .line 109
    mul-float/2addr v12, v4

    .line 111
    add-float/2addr v11, v3

    .line 112
    add-float/2addr v11, v7

    .line 113
    move v7, v11

    .line 114
    :goto_2
    iget v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 115
    int-to-float v11, v11

    .line 117
    add-float/2addr v11, v12

    .line 118
    int-to-float v13, v1

    .line 119
    cmpl-float v11, v11, v13

    .line 120
    if-lez v11, :cond_2

    .line 122
    iget-object v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 124
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 126
    move-result v13

    .line 129
    iget v14, v0, Landroidx/viewpager/widget/OriginalViewPager;->mTopPageBounds:I

    .line 130
    iget v15, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 132
    int-to-float v15, v15

    .line 134
    add-float/2addr v15, v12

    .line 135
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 136
    move-result v15

    .line 139
    move/from16 v16, v3

    .line 140
    iget v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mBottomPageBounds:I

    .line 142
    invoke-virtual {v11, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    iget-object v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 147
    move-object/from16 v11, p1

    .line 149
    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    goto :goto_3

    .line 154
    :cond_2
    move-object/from16 v11, p1

    .line 155
    move/from16 v16, v3

    .line 157
    :goto_3
    add-int v3, v1, v2

    .line 159
    int-to-float v3, v3

    .line 161
    cmpl-float v3, v12, v3

    .line 162
    if-lez v3, :cond_3

    .line 164
    goto :goto_4

    .line 166
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 167
    move/from16 v3, v16

    .line 169
    goto :goto_0

    .line 171
    :cond_4
    :goto_4
    return-void
    .line 172
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_14

    .line 10
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    goto/16 :goto_4

    .line 15
    :cond_0
    if-eqz v0, :cond_2

    .line 17
    iget-boolean v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 19
    if-eqz v3, :cond_1

    .line 21
    return v1

    .line 23
    :cond_1
    iget-boolean v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 24
    if-eqz v3, :cond_2

    .line 26
    return v2

    .line 28
    :cond_2
    const/4 v3, 0x2

    .line 29
    if-eqz v0, :cond_f

    .line 30
    if-eq v0, v3, :cond_4

    .line 32
    const/4 v1, 0x6

    .line 34
    if-eq v0, v1, :cond_3

    .line 35
    goto/16 :goto_3

    .line 37
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 39
    goto/16 :goto_3

    .line 42
    :cond_4
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 44
    const/4 v3, -0x1

    .line 46
    if-ne v0, v3, :cond_5

    .line 47
    goto/16 :goto_3

    .line 49
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 51
    move-result v0

    .line 54
    if-ltz v0, :cond_12

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 57
    move-result v3

    .line 60
    if-lt v0, v3, :cond_6

    .line 61
    goto/16 :goto_3

    .line 63
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 65
    move-result v3

    .line 68
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 69
    sub-float v4, v3, v4

    .line 71
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 73
    move-result v5

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 77
    move-result v0

    .line 80
    iget v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionY:F

    .line 81
    sub-float v6, v0, v6

    .line 83
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 85
    move-result v6

    .line 88
    const/4 v7, 0x0

    .line 89
    cmpl-float v8, v4, v7

    .line 90
    if-eqz v8, :cond_a

    .line 92
    iget v9, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 94
    iget v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mGutterSize:I

    .line 96
    int-to-float v10, v10

    .line 98
    cmpg-float v10, v9, v10

    .line 99
    if-gez v10, :cond_7

    .line 101
    if-gtz v8, :cond_8

    .line 103
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 105
    move-result v10

    .line 108
    iget v11, p0, Landroidx/viewpager/widget/OriginalViewPager;->mGutterSize:I

    .line 109
    sub-int/2addr v10, v11

    .line 111
    int-to-float v10, v10

    .line 112
    cmpl-float v9, v9, v10

    .line 113
    if-lez v9, :cond_9

    .line 115
    cmpg-float v7, v4, v7

    .line 117
    if-gez v7, :cond_9

    .line 119
    :cond_8
    move v7, v1

    .line 121
    goto :goto_0

    .line 122
    :cond_9
    move v7, v2

    .line 123
    :goto_0
    if-nez v7, :cond_a

    .line 124
    float-to-int v4, v4

    .line 126
    float-to-int v7, v3

    .line 127
    float-to-int v9, v0

    .line 128
    invoke-static {v4, v7, v9, p0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->canScroll(IIILandroid/view/View;Z)Z

    .line 129
    move-result v4

    .line 132
    if-eqz v4, :cond_a

    .line 133
    iput v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 135
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 137
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 139
    return v2

    .line 141
    :cond_a
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    .line 142
    int-to-float v2, v2

    .line 144
    cmpl-float v4, v5, v2

    .line 145
    if-lez v4, :cond_d

    .line 147
    const/high16 v4, 0x3f000000    # 0.5f

    .line 149
    mul-float/2addr v5, v4

    .line 151
    cmpl-float v4, v5, v6

    .line 152
    if-lez v4, :cond_d

    .line 154
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 156
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 158
    move-result-object v2

    .line 161
    if-eqz v2, :cond_b

    .line 162
    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 164
    :cond_b
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    .line 167
    if-lez v8, :cond_c

    .line 170
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    .line 172
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    .line 174
    int-to-float v4, v4

    .line 176
    add-float/2addr v2, v4

    .line 177
    goto :goto_1

    .line 178
    :cond_c
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    .line 179
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    .line 181
    int-to-float v4, v4

    .line 183
    sub-float/2addr v2, v4

    .line 184
    :goto_1
    iput v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 185
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 187
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    .line 189
    goto :goto_2

    .line 192
    :cond_d
    cmpl-float v0, v6, v2

    .line 193
    if-lez v0, :cond_e

    .line 195
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 197
    :cond_e
    :goto_2
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 199
    if-eqz v0, :cond_12

    .line 201
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/OriginalViewPager;->performDrag(F)Z

    .line 203
    move-result v0

    .line 206
    if-eqz v0, :cond_12

    .line 207
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 209
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 211
    goto :goto_3

    .line 214
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 215
    move-result v0

    .line 218
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    .line 219
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 223
    move-result v0

    .line 226
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionY:F

    .line 227
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 229
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 231
    move-result v0

    .line 234
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 235
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 237
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    .line 239
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 241
    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->computeScrollOffset()Z

    .line 243
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    .line 246
    if-ne v0, v3, :cond_11

    .line 248
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 250
    iget-wide v3, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndX:D

    .line 252
    double-to-int v3, v3

    .line 254
    iget-wide v4, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrX:D

    .line 255
    double-to-int v0, v4

    .line 257
    sub-int/2addr v3, v0

    .line 258
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 259
    move-result v0

    .line 262
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCloseEnough:I

    .line 263
    if-le v0, v3, :cond_11

    .line 265
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 267
    iput-boolean v1, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 269
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 271
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 273
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 276
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 278
    move-result-object v0

    .line 281
    if-eqz v0, :cond_10

    .line 282
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 284
    :cond_10
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    .line 287
    goto :goto_3

    .line 290
    :cond_11
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 291
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 294
    :cond_12
    :goto_3
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 296
    if-nez v0, :cond_13

    .line 298
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 300
    move-result-object v0

    .line 303
    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 304
    :cond_13
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 306
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 308
    iget-boolean p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 311
    return p0

    .line 313
    :cond_14
    :goto_4
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->resetTouch()Z

    .line 314
    return v2
    .line 317
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v1

    .line 7
    sub-int v2, p4, p2

    .line 8
    sub-int v3, p5, p3

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 12
    move-result v4

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 16
    move-result v5

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 20
    move-result v6

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 24
    move-result v7

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 28
    move-result v8

    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x0

    .line 33
    :goto_0
    const/16 v12, 0x8

    .line 34
    if-ge v10, v1, :cond_7

    .line 36
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    move-result-object v13

    .line 41
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 42
    move-result v14

    .line 45
    if-eq v14, v12, :cond_6

    .line 46
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    move-result-object v12

    .line 51
    check-cast v12, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 52
    iget-boolean v14, v12, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    .line 54
    if-eqz v14, :cond_6

    .line 56
    iget v12, v12, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->gravity:I

    .line 58
    and-int/lit8 v14, v12, 0x7

    .line 60
    and-int/lit8 v12, v12, 0x70

    .line 62
    const/4 v15, 0x1

    .line 64
    if-eq v14, v15, :cond_2

    .line 65
    const/4 v15, 0x3

    .line 67
    if-eq v14, v15, :cond_1

    .line 68
    const/4 v15, 0x5

    .line 70
    if-eq v14, v15, :cond_0

    .line 71
    move v14, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    sub-int v14, v2, v6

    .line 75
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 77
    move-result v15

    .line 80
    sub-int/2addr v14, v15

    .line 81
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 82
    move-result v15

    .line 85
    add-int/2addr v6, v15

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 88
    move-result v14

    .line 91
    add-int/2addr v14, v4

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 94
    move-result v14

    .line 97
    sub-int v14, v2, v14

    .line 98
    div-int/lit8 v14, v14, 0x2

    .line 100
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    .line 102
    move-result v14

    .line 105
    :goto_1
    move/from16 v17, v14

    .line 106
    move v14, v4

    .line 108
    move/from16 v4, v17

    .line 109
    :goto_2
    const/16 v15, 0x10

    .line 111
    if-eq v12, v15, :cond_5

    .line 113
    const/16 v15, 0x30

    .line 115
    if-eq v12, v15, :cond_4

    .line 117
    const/16 v15, 0x50

    .line 119
    if-eq v12, v15, :cond_3

    .line 121
    move v12, v5

    .line 123
    goto :goto_4

    .line 124
    :cond_3
    sub-int v12, v3, v7

    .line 125
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 127
    move-result v15

    .line 130
    sub-int/2addr v12, v15

    .line 131
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 132
    move-result v15

    .line 135
    add-int/2addr v7, v15

    .line 136
    goto :goto_3

    .line 137
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 138
    move-result v12

    .line 141
    add-int/2addr v12, v5

    .line 142
    goto :goto_4

    .line 143
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 144
    move-result v12

    .line 147
    sub-int v12, v3, v12

    .line 148
    div-int/lit8 v12, v12, 0x2

    .line 150
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    .line 152
    move-result v12

    .line 155
    :goto_3
    move/from16 v17, v12

    .line 156
    move v12, v5

    .line 158
    move/from16 v5, v17

    .line 159
    :goto_4
    add-int/2addr v4, v8

    .line 161
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 162
    move-result v15

    .line 165
    add-int/2addr v15, v4

    .line 166
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 167
    move-result v16

    .line 170
    add-int v9, v16, v5

    .line 171
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    .line 173
    add-int/lit8 v11, v11, 0x1

    .line 176
    move v5, v12

    .line 178
    move v4, v14

    .line 179
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 180
    goto/16 :goto_0

    .line 182
    :cond_7
    sub-int/2addr v2, v4

    .line 184
    sub-int/2addr v2, v6

    .line 185
    const/4 v6, 0x0

    .line 186
    :goto_5
    if-ge v6, v1, :cond_a

    .line 187
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 189
    move-result-object v8

    .line 192
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 193
    move-result v9

    .line 196
    if-eq v9, v12, :cond_9

    .line 197
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 199
    move-result-object v9

    .line 202
    check-cast v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 203
    iget-boolean v10, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    .line 205
    if-nez v10, :cond_9

    .line 207
    invoke-virtual {v0, v8}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 209
    move-result-object v10

    .line 212
    if-eqz v10, :cond_9

    .line 213
    int-to-float v13, v2

    .line 215
    iget v10, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 216
    mul-float/2addr v10, v13

    .line 218
    float-to-int v10, v10

    .line 219
    add-int/2addr v10, v4

    .line 220
    iget-boolean v14, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->needsMeasure:Z

    .line 221
    if-eqz v14, :cond_8

    .line 223
    const/4 v14, 0x0

    .line 225
    iput-boolean v14, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->needsMeasure:Z

    .line 226
    iget v9, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->widthFactor:F

    .line 228
    mul-float/2addr v13, v9

    .line 230
    float-to-int v9, v13

    .line 231
    const/high16 v13, 0x40000000    # 2.0f

    .line 232
    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 234
    move-result v9

    .line 237
    sub-int v14, v3, v5

    .line 238
    sub-int/2addr v14, v7

    .line 240
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 241
    move-result v13

    .line 244
    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    .line 245
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 248
    move-result v9

    .line 251
    add-int/2addr v9, v10

    .line 252
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 253
    move-result v13

    .line 256
    add-int/2addr v13, v5

    .line 257
    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    .line 258
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 261
    goto :goto_5

    .line 263
    :cond_a
    iput v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mTopPageBounds:I

    .line 264
    sub-int/2addr v3, v7

    .line 266
    iput v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mBottomPageBounds:I

    .line 267
    iput v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mDecorChildCount:I

    .line 269
    iget-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 271
    if-eqz v1, :cond_b

    .line 273
    iget v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 275
    const/4 v2, 0x0

    .line 277
    invoke-virtual {v0, v1, v2, v2}, Landroidx/viewpager/widget/OriginalViewPager;->scrollToItem(IIZ)V

    .line 278
    goto :goto_6

    .line 281
    :cond_b
    const/4 v2, 0x0

    .line 282
    :goto_6
    iput-boolean v2, v0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 283
    return-void
    .line 285
.end method

.method public final onMeasure(II)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    .line 3
    move-result p1

    .line 6
    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    .line 7
    move-result p2

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 14
    move-result p1

    .line 17
    div-int/lit8 p2, p1, 0xa

    .line 18
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDefaultGutterSize:I

    .line 20
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 22
    move-result p2

    .line 25
    iput p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mGutterSize:I

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 28
    move-result p2

    .line 31
    sub-int/2addr p1, p2

    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 33
    move-result p2

    .line 36
    sub-int/2addr p1, p2

    .line 37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 38
    move-result p2

    .line 41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 42
    move-result v1

    .line 45
    sub-int/2addr p2, v1

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 47
    move-result v1

    .line 50
    sub-int/2addr p2, v1

    .line 51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 52
    move-result v1

    .line 55
    move v2, v0

    .line 56
    :goto_0
    const/16 v3, 0x8

    .line 57
    const/4 v4, 0x1

    .line 59
    const/high16 v5, 0x40000000    # 2.0f

    .line 60
    if-ge v2, v1, :cond_c

    .line 62
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    move-result-object v6

    .line 67
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 68
    move-result v7

    .line 71
    if-eq v7, v3, :cond_b

    .line 72
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 74
    move-result-object v3

    .line 77
    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 78
    if-eqz v3, :cond_b

    .line 80
    iget-boolean v7, v3, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    .line 82
    if-eqz v7, :cond_b

    .line 84
    iget v7, v3, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->gravity:I

    .line 86
    and-int/lit8 v8, v7, 0x7

    .line 88
    and-int/lit8 v7, v7, 0x70

    .line 90
    const/16 v9, 0x30

    .line 92
    if-eq v7, v9, :cond_1

    .line 94
    const/16 v9, 0x50

    .line 96
    if-ne v7, v9, :cond_0

    .line 98
    goto :goto_1

    .line 100
    :cond_0
    move v7, v0

    .line 101
    goto :goto_2

    .line 102
    :cond_1
    :goto_1
    move v7, v4

    .line 103
    :goto_2
    const/4 v9, 0x3

    .line 104
    if-eq v8, v9, :cond_3

    .line 105
    const/4 v9, 0x5

    .line 107
    if-ne v8, v9, :cond_2

    .line 108
    goto :goto_3

    .line 110
    :cond_2
    move v4, v0

    .line 111
    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    .line 112
    if-eqz v7, :cond_4

    .line 114
    move v9, v8

    .line 116
    move v8, v5

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    if-eqz v4, :cond_5

    .line 119
    move v9, v5

    .line 121
    goto :goto_4

    .line 122
    :cond_5
    move v9, v8

    .line 123
    :goto_4
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 124
    const/4 v11, -0x1

    .line 126
    const/4 v12, -0x2

    .line 127
    if-eq v10, v12, :cond_7

    .line 128
    if-eq v10, v11, :cond_6

    .line 130
    goto :goto_5

    .line 132
    :cond_6
    move v10, p1

    .line 133
    :goto_5
    move v8, v5

    .line 134
    goto :goto_6

    .line 135
    :cond_7
    move v10, p1

    .line 136
    :goto_6
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 137
    if-eq v3, v12, :cond_9

    .line 139
    if-eq v3, v11, :cond_8

    .line 141
    goto :goto_7

    .line 143
    :cond_8
    move v3, p2

    .line 144
    goto :goto_7

    .line 145
    :cond_9
    move v3, p2

    .line 146
    move v5, v9

    .line 147
    :goto_7
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 148
    move-result v8

    .line 151
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 152
    move-result v3

    .line 155
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    .line 156
    if-eqz v7, :cond_a

    .line 159
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 161
    move-result v3

    .line 164
    sub-int/2addr p2, v3

    .line 165
    goto :goto_8

    .line 166
    :cond_a
    if-eqz v4, :cond_b

    .line 167
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 169
    move-result v3

    .line 172
    sub-int/2addr p1, v3

    .line 173
    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 174
    goto :goto_0

    .line 176
    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 177
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 180
    move-result p2

    .line 183
    iput p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mChildHeightMeasureSpec:I

    .line 184
    iput-boolean v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    .line 186
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 188
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    .line 191
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 193
    move-result p2

    .line 196
    :goto_9
    if-ge v0, p2, :cond_f

    .line 197
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 199
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 203
    move-result v2

    .line 206
    if-eq v2, v3, :cond_e

    .line 207
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 209
    move-result-object v2

    .line 212
    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 213
    if-eqz v2, :cond_d

    .line 215
    iget-boolean v4, v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    .line 217
    if-nez v4, :cond_e

    .line 219
    :cond_d
    int-to-float v4, p1

    .line 221
    iget v2, v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->widthFactor:F

    .line 222
    mul-float/2addr v4, v2

    .line 224
    float-to-int v2, v4

    .line 225
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 226
    move-result v2

    .line 229
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mChildHeightMeasureSpec:I

    .line 230
    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 232
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 235
    goto :goto_9

    .line 237
    :cond_f
    return-void
    .line 238
.end method

.method public final onPageScrolled()V
    .locals 11

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDecorChildCount:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-lez v0, :cond_5

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 7
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 11
    move-result v2

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 15
    move-result v3

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 19
    move-result v4

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    move-result v5

    .line 26
    const/4 v6, 0x0

    .line 27
    :goto_0
    if-ge v6, v5, :cond_5

    .line 28
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object v7

    .line 33
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object v8

    .line 37
    check-cast v8, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 38
    iget-boolean v9, v8, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    .line 40
    if-nez v9, :cond_0

    .line 42
    goto :goto_3

    .line 44
    :cond_0
    iget v8, v8, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->gravity:I

    .line 45
    and-int/lit8 v8, v8, 0x7

    .line 47
    if-eq v8, v1, :cond_3

    .line 49
    const/4 v9, 0x3

    .line 51
    if-eq v8, v9, :cond_2

    .line 52
    const/4 v9, 0x5

    .line 54
    if-eq v8, v9, :cond_1

    .line 55
    move v8, v2

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    sub-int v8, v4, v3

    .line 59
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 61
    move-result v9

    .line 64
    sub-int/2addr v8, v9

    .line 65
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 66
    move-result v9

    .line 69
    add-int/2addr v3, v9

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 72
    move-result v8

    .line 75
    add-int/2addr v8, v2

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 78
    move-result v8

    .line 81
    sub-int v8, v4, v8

    .line 82
    div-int/lit8 v8, v8, 0x2

    .line 84
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    .line 86
    move-result v8

    .line 89
    :goto_1
    move v10, v8

    .line 90
    move v8, v2

    .line 91
    move v2, v10

    .line 92
    :goto_2
    add-int/2addr v2, v0

    .line 93
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 94
    move-result v9

    .line 97
    sub-int/2addr v2, v9

    .line 98
    if-eqz v2, :cond_4

    .line 99
    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 101
    :cond_4
    move v2, v8

    .line 104
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 105
    goto :goto_0

    .line 107
    :cond_5
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    .line 108
    return-void
    .line 110
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    and-int/lit8 v1, p1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    move v1, v0

    .line 12
    move v0, v2

    .line 13
    move v4, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 16
    const/4 v1, -0x1

    .line 18
    move v4, v1

    .line 19
    :goto_0
    if-eq v0, v1, :cond_2

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 26
    move-result v6

    .line 29
    if-nez v6, :cond_1

    .line 30
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 32
    move-result-object v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    iget v6, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 38
    iget v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 40
    if-ne v6, v7, :cond_1

    .line 42
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 44
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    return v3

    .line 50
    :cond_1
    add-int/2addr v0, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return v2
    .line 53
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .line 1
    instance-of v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    return-void

    .line 9
    :cond_0
    check-cast p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;

    .line 10
    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 12
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 17
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 23
    move-result v0

    .line 26
    iget v3, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->position:I

    .line 27
    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->isRTL:I

    .line 29
    if-lez p1, :cond_1

    .line 31
    move p1, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move p1, v2

    .line 35
    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->isRTL()Z

    .line 36
    move-result v4

    .line 39
    if-ne p1, v4, :cond_2

    .line 40
    goto :goto_1

    .line 42
    :cond_2
    sub-int/2addr v0, v3

    .line 43
    add-int/lit8 v3, v0, -0x1

    .line 44
    :goto_1
    invoke-virtual {p0, v3, v2, v2, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IIZZ)V

    .line 46
    goto :goto_3

    .line 49
    :cond_3
    iget v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->position:I

    .line 50
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    .line 52
    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->isRTL:I

    .line 54
    if-lez p1, :cond_4

    .line 56
    goto :goto_2

    .line 58
    :cond_4
    move v1, v2

    .line 59
    :goto_2
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurIsRTL:Z

    .line 60
    :goto_3
    return-void
    .line 62
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;

    .line 6
    invoke-direct {v1, v0}, Landroidx/viewpager/widget/OriginalViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 11
    iput v0, v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->position:I

    .line 13
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->isRTL()Z

    .line 15
    move-result v0

    .line 18
    iput v0, v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->isRTL:I

    .line 19
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 21
    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    const/4 p0, 0x0

    .line 28
    iput-object p0, v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 29
    :cond_0
    return-object v1
    .line 31
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
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

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
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 19
    move-result v1

    .line 22
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 25
    move-result p1

    .line 28
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 29
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 31
    if-eqz p0, :cond_1

    .line 33
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    .line 35
    :cond_1
    return-void
    .line 38
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2
    if-eq p1, p3, :cond_0

    .line 5
    iget p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 7
    invoke-virtual {p0, p1, p3, p2, p2}, Landroidx/viewpager/widget/OriginalViewPager;->recomputeScrollPosition(IIII)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 16
    if-eqz v0, :cond_13

    .line 18
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 20
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    goto/16 :goto_4

    .line 26
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 28
    if-nez v0, :cond_2

    .line 30
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 32
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 36
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 38
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 43
    move-result v0

    .line 46
    and-int/lit16 v0, v0, 0xff

    .line 47
    const/4 v2, 0x1

    .line 49
    if-eqz v0, :cond_10

    .line 50
    const/4 v3, -0x1

    .line 52
    if-eq v0, v2, :cond_b

    .line 53
    const/4 v4, 0x2

    .line 55
    if-eq v0, v4, :cond_6

    .line 56
    const/4 v3, 0x3

    .line 58
    if-eq v0, v3, :cond_5

    .line 59
    const/4 v3, 0x5

    .line 61
    if-eq v0, v3, :cond_4

    .line 62
    const/4 v3, 0x6

    .line 64
    if-eq v0, v3, :cond_3

    .line 65
    goto/16 :goto_3

    .line 67
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 69
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 74
    move-result v0

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 78
    move-result p1

    .line 81
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 82
    goto/16 :goto_3

    .line 84
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 86
    move-result v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 90
    move-result v3

    .line 93
    iput v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 96
    move-result p1

    .line 99
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 100
    goto/16 :goto_3

    .line 102
    :cond_5
    iget-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 104
    if-eqz p1, :cond_11

    .line 106
    iget p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 108
    invoke-virtual {p0, p1, v1, v2}, Landroidx/viewpager/widget/OriginalViewPager;->scrollToItem(IIZ)V

    .line 110
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->resetTouch()Z

    .line 113
    move-result v1

    .line 116
    goto/16 :goto_3

    .line 117
    :cond_6
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 119
    if-nez v0, :cond_a

    .line 121
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 125
    move-result v0

    .line 128
    if-ne v0, v3, :cond_7

    .line 129
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->resetTouch()Z

    .line 131
    move-result v1

    .line 134
    goto/16 :goto_3

    .line 135
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 137
    move-result v3

    .line 140
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 141
    sub-float v4, v3, v4

    .line 143
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 145
    move-result v4

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 149
    move-result v0

    .line 152
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 153
    sub-float v5, v0, v5

    .line 155
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 157
    move-result v5

    .line 160
    iget v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    .line 161
    int-to-float v6, v6

    .line 163
    cmpl-float v6, v4, v6

    .line 164
    if-lez v6, :cond_a

    .line 166
    cmpl-float v4, v4, v5

    .line 168
    if-lez v4, :cond_a

    .line 170
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 172
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 174
    move-result-object v4

    .line 177
    if-eqz v4, :cond_8

    .line 178
    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 180
    :cond_8
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    .line 183
    sub-float/2addr v3, v4

    .line 185
    const/4 v5, 0x0

    .line 186
    cmpl-float v3, v3, v5

    .line 187
    if-lez v3, :cond_9

    .line 189
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    .line 191
    int-to-float v3, v3

    .line 193
    add-float/2addr v4, v3

    .line 194
    goto :goto_0

    .line 195
    :cond_9
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    .line 196
    int-to-float v3, v3

    .line 198
    sub-float/2addr v4, v3

    .line 199
    :goto_0
    iput v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 200
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 202
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    .line 204
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    .line 207
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 210
    move-result-object v0

    .line 213
    if-eqz v0, :cond_a

    .line 214
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 216
    :cond_a
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 219
    if-eqz v0, :cond_11

    .line 221
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 223
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 225
    move-result v0

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 229
    move-result p1

    .line 232
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->performDrag(F)Z

    .line 233
    move-result p1

    .line 236
    or-int/2addr v1, p1

    .line 237
    goto/16 :goto_3

    .line 238
    :cond_b
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 240
    if-eqz v0, :cond_11

    .line 242
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 244
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMaximumVelocity:I

    .line 246
    int-to-float v4, v4

    .line 248
    const/16 v5, 0x3e8

    .line 249
    invoke-virtual {v0, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 251
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 254
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 256
    move-result v0

    .line 259
    float-to-int v0, v0

    .line 260
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 261
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 263
    move-result v4

    .line 266
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 267
    move-result v5

    .line 270
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 271
    move-result-object v6

    .line 274
    iget v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 275
    int-to-float v7, v7

    .line 277
    int-to-float v4, v4

    .line 278
    div-float/2addr v7, v4

    .line 279
    iget v8, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 280
    int-to-float v5, v5

    .line 282
    div-float/2addr v5, v4

    .line 283
    iget v4, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 284
    sub-float/2addr v5, v4

    .line 286
    iget v4, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    .line 287
    add-float/2addr v4, v7

    .line 289
    div-float/2addr v5, v4

    .line 290
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 291
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 293
    move-result v4

    .line 296
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 297
    move-result p1

    .line 300
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    .line 301
    sub-float/2addr p1, v4

    .line 303
    float-to-int p1, p1

    .line 304
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 305
    move-result p1

    .line 308
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFlingDistance:I

    .line 309
    if-le p1, v4, :cond_d

    .line 311
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 313
    move-result p1

    .line 316
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMinimumVelocity:I

    .line 317
    if-le p1, v4, :cond_d

    .line 319
    if-lez v0, :cond_c

    .line 321
    goto :goto_2

    .line 323
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 324
    goto :goto_2

    .line 326
    :cond_d
    iget p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 327
    if-lt v8, p1, :cond_e

    .line 329
    const p1, 0x3ecccccd    # 0.4f

    .line 331
    goto :goto_1

    .line 334
    :cond_e
    const p1, 0x3f19999a    # 0.6f

    .line 335
    :goto_1
    add-float/2addr v5, p1

    .line 338
    float-to-int p1, v5

    .line 339
    add-int/2addr v8, p1

    .line 340
    :goto_2
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 341
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 343
    move-result p1

    .line 346
    if-lez p1, :cond_f

    .line 347
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 349
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 351
    move-result-object p1

    .line 354
    check-cast p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 355
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 357
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 359
    move-result v4

    .line 362
    add-int/2addr v4, v3

    .line 363
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 364
    move-result-object v1

    .line 367
    check-cast v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 368
    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 370
    iget v1, v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 372
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    .line 374
    move-result v1

    .line 377
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 378
    move-result v8

    .line 381
    :cond_f
    invoke-virtual {p0, v8, v0, v2, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IIZZ)V

    .line 382
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->resetTouch()Z

    .line 385
    move-result v1

    .line 388
    goto :goto_3

    .line 389
    :cond_10
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 390
    iput-boolean v2, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 392
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 394
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 399
    move-result v0

    .line 402
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    .line 403
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 407
    move-result v0

    .line 410
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionY:F

    .line 411
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 413
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 415
    move-result p1

    .line 418
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 419
    :cond_11
    :goto_3
    if-eqz v1, :cond_12

    .line 421
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 423
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 425
    :cond_12
    return v2

    .line 428
    :cond_13
    :goto_4
    return v1
    .line 429
.end method

.method public final pageRight()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 6
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 8
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    sub-int/2addr v0, v2

    .line 13
    if-ge v1, v0, :cond_0

    .line 14
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 16
    add-int/2addr v0, v2

    .line 18
    invoke-virtual {p0, v0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(IZ)V

    .line 19
    return v2

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final pageScrolled(I)Z
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result p1

    .line 7
    const-string v0, "onPageScrolled did not call superclass implementation"

    .line 8
    const/4 v1, 0x0

    .line 10
    if-nez p1, :cond_2

    .line 11
    iget-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 13
    if-eqz p1, :cond_0

    .line 15
    return v1

    .line 17
    :cond_0
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    .line 18
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->onPageScrolled()V

    .line 20
    iget-boolean p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    .line 23
    if-eqz p0, :cond_1

    .line 25
    return v1

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 28
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0

    .line 33
    :cond_2
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 34
    move-result-object p1

    .line 37
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 38
    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 41
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    .line 43
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->onPageScrolled()V

    .line 45
    iget-boolean p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    .line 48
    if-eqz p0, :cond_3

    .line 50
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p0
    .line 59
.end method

.method public final performDrag(F)Z
    .locals 9

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2
    sub-float/2addr v0, p1

    .line 4
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 7
    move-result p1

    .line 10
    int-to-float p1, p1

    .line 11
    add-float/2addr p1, v0

    .line 12
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 13
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    .line 18
    mul-float/2addr v1, v0

    .line 20
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 21
    mul-float/2addr v2, v0

    .line 23
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 24
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 30
    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 31
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 33
    const/4 v6, 0x1

    .line 35
    invoke-static {v5, v6}, Landroidx/appcompat/view/menu/CascadingMenuPopup$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 36
    move-result-object v5

    .line 39
    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 40
    iget v7, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 42
    if-eqz v7, :cond_0

    .line 44
    iget v1, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 46
    mul-float/2addr v1, v0

    .line 48
    move v3, v4

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v3, v6

    .line 51
    :goto_0
    iget v7, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 52
    iget-object v8, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 54
    invoke-virtual {v8}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 56
    move-result v8

    .line 59
    sub-int/2addr v8, v6

    .line 60
    if-eq v7, v8, :cond_1

    .line 61
    iget v2, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 63
    mul-float/2addr v2, v0

    .line 65
    move v5, v4

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move v5, v6

    .line 68
    :goto_1
    cmpg-float v7, p1, v1

    .line 69
    if-gez v7, :cond_3

    .line 71
    if-eqz v3, :cond_2

    .line 73
    sub-float p1, v1, p1

    .line 75
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 77
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 79
    move-result p1

    .line 82
    div-float/2addr p1, v0

    .line 83
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 84
    move v4, v6

    .line 87
    :cond_2
    move p1, v1

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    cmpl-float v1, p1, v2

    .line 90
    if-lez v1, :cond_5

    .line 92
    if-eqz v5, :cond_4

    .line 94
    sub-float/2addr p1, v2

    .line 96
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 97
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 99
    move-result p1

    .line 102
    div-float/2addr p1, v0

    .line 103
    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 104
    move v4, v6

    .line 107
    :cond_4
    move p1, v2

    .line 108
    :cond_5
    :goto_2
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 109
    float-to-int v1, p1

    .line 111
    int-to-float v2, v1

    .line 112
    sub-float/2addr p1, v2

    .line 113
    add-float/2addr p1, v0

    .line 114
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 115
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    .line 117
    move-result p1

    .line 120
    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 121
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->pageScrolled(I)Z

    .line 124
    return v4
    .line 127
.end method

.method public final populate()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->populate(I)V

    return-void
.end method

.method public final populate(I)V
    .locals 14

    .line 2
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-eq v0, p1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v0

    .line 4
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->sortChildDrawingOrder()V

    return-void

    .line 7
    :cond_1
    iget-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->sortChildDrawingOrder()V

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 12
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 13
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    .line 14
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    add-int/2addr v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 15
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    if-ne v3, v4, :cond_2f

    .line 16
    :goto_1
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 17
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 18
    iget v5, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-lt v5, v6, :cond_4

    if-ne v5, v6, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_6

    if-lez v3, :cond_6

    .line 19
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {p0, v4, v2}, Landroidx/viewpager/widget/OriginalViewPager;->addNewItem(II)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v4

    :cond_6
    const/4 v5, 0x0

    if-eqz v4, :cond_26

    add-int/lit8 v6, v2, -0x1

    if-ltz v6, :cond_7

    .line 20
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    .line 21
    :goto_3
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    if-gtz v8, :cond_8

    move v11, v5

    goto :goto_4

    .line 22
    :cond_8
    iget v10, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    sub-float v10, v9, v10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v8

    div-float/2addr v11, v12

    add-float/2addr v11, v10

    .line 23
    :goto_4
    iget v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    add-int/lit8 v10, v10, -0x1

    move v12, v5

    :goto_5
    if-ltz v10, :cond_e

    cmpl-float v13, v12, v11

    if-ltz v13, :cond_a

    if-ge v10, v1, :cond_a

    if-nez v7, :cond_9

    goto :goto_7

    .line 24
    :cond_9
    iget v13, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ne v10, v13, :cond_d

    iget-boolean v13, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->scrolling:Z

    if-nez v13, :cond_d

    .line 25
    iget-object v13, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    iget-object v13, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v7, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v13, p0, v10, v7}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v2, v2, -0x1

    if-ltz v6, :cond_c

    .line 27
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_6

    :cond_a
    if-eqz v7, :cond_b

    .line 28
    iget v13, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ne v10, v13, :cond_b

    .line 29
    iget v7, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_c

    .line 30
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_6

    :cond_b
    add-int/lit8 v7, v6, 0x1

    .line 31
    invoke-virtual {p0, v10, v7}, Landroidx/viewpager/widget/OriginalViewPager;->addNewItem(II)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v7

    .line 32
    iget v7, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    add-int/lit8 v2, v2, 0x1

    if-ltz v6, :cond_c

    .line 33
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    :cond_d
    :goto_6
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 34
    :cond_e
    :goto_7
    iget v1, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v6, v2, 0x1

    cmpg-float v7, v1, v9

    if-gez v7, :cond_16

    .line 35
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_f

    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_8

    :cond_f
    const/4 v7, 0x0

    :goto_8
    if-gtz v8, :cond_10

    move v10, v5

    goto :goto_9

    .line 36
    :cond_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v8, v8

    div-float/2addr v10, v8

    add-float/2addr v10, v9

    .line 37
    :goto_9
    iget v8, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    add-int/lit8 v8, v8, 0x1

    move v9, v6

    :goto_a
    if-ge v8, v3, :cond_16

    cmpl-float v11, v1, v10

    if-ltz v11, :cond_12

    if-le v8, p1, :cond_12

    if-nez v7, :cond_11

    goto :goto_c

    .line 38
    :cond_11
    iget v11, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ne v8, v11, :cond_15

    iget-boolean v11, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->scrolling:Z

    if-nez v11, :cond_15

    .line 39
    iget-object v11, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 40
    iget-object v11, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v7, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v11, p0, v8, v7}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 41
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v9, v7, :cond_14

    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_b

    :cond_12
    if-eqz v7, :cond_13

    .line 42
    iget v11, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ne v8, v11, :cond_13

    .line 43
    iget v7, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v1, v7

    add-int/lit8 v9, v9, 0x1

    .line 44
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v9, v7, :cond_14

    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_b

    .line 45
    :cond_13
    invoke-virtual {p0, v8, v9}, Landroidx/viewpager/widget/OriginalViewPager;->addNewItem(II)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v7

    add-int/lit8 v9, v9, 0x1

    .line 46
    iget v7, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v1, v7

    .line 47
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v9, v7, :cond_14

    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_b

    :cond_14
    const/4 v7, 0x0

    :cond_15
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 48
    :cond_16
    :goto_c
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    .line 49
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_17

    .line 50
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    goto :goto_d

    :cond_17
    move v3, v5

    :goto_d
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1d

    .line 51
    iget v7, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 52
    iget v8, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ge v7, v8, :cond_1a

    .line 53
    iget v8, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    iget v0, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v0

    add-float/2addr v8, v3

    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x0

    .line 54
    :goto_e
    iget v9, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-gt v7, v9, :cond_1d

    iget-object v9, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_1d

    .line 55
    iget-object v9, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 56
    :goto_f
    iget v10, v9, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-le v7, v10, :cond_18

    iget-object v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v0, v10, :cond_18

    add-int/lit8 v0, v0, 0x1

    .line 57
    iget-object v9, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_f

    .line 58
    :cond_18
    :goto_10
    iget v10, v9, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ge v7, v10, :cond_19

    .line 59
    iget-object v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-float v10, v1, v3

    add-float/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 60
    :cond_19
    iput v8, v9, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 61
    iget v9, v9, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v3

    add-float/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_1a
    if-le v7, v8, :cond_1d

    .line 62
    iget-object v8, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 63
    iget v0, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    :goto_11
    add-int/lit8 v7, v7, -0x1

    .line 64
    iget v9, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-lt v7, v9, :cond_1d

    if-ltz v8, :cond_1d

    .line 65
    iget-object v9, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 66
    :goto_12
    iget v10, v9, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ge v7, v10, :cond_1b

    if-lez v8, :cond_1b

    add-int/lit8 v8, v8, -0x1

    .line 67
    iget-object v9, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_12

    .line 68
    :cond_1b
    :goto_13
    iget v10, v9, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-le v7, v10, :cond_1c

    .line 69
    iget-object v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-float v10, v1, v3

    sub-float/2addr v0, v10

    add-int/lit8 v7, v7, -0x1

    goto :goto_13

    .line 70
    :cond_1c
    iget v10, v9, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v10, v3

    sub-float/2addr v0, v10

    .line 71
    iput v0, v9, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    goto :goto_11

    .line 72
    :cond_1d
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 73
    iget v7, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 74
    iget v8, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v8, -0x1

    if-nez v8, :cond_1e

    move v10, v7

    goto :goto_14

    :cond_1e
    const v10, -0x800001

    .line 75
    :goto_14
    iput v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    add-int/lit8 p1, p1, -0x1

    if-ne v8, p1, :cond_1f

    .line 76
    iget v8, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v7

    sub-float/2addr v8, v1

    goto :goto_15

    :cond_1f
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    :goto_15
    iput v8, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    add-int/lit8 v2, v2, -0x1

    :goto_16
    if-ltz v2, :cond_22

    .line 77
    iget-object v8, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 78
    :goto_17
    iget v10, v8, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-le v9, v10, :cond_20

    .line 79
    iget-object v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-float v10, v1, v3

    sub-float/2addr v7, v10

    goto :goto_17

    .line 80
    :cond_20
    iget v11, v8, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v3

    sub-float/2addr v7, v11

    .line 81
    iput v7, v8, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    if-nez v10, :cond_21

    .line 82
    iput v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    :cond_21
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_16

    .line 83
    :cond_22
    iget v2, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    iget v7, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v7

    add-float/2addr v2, v3

    .line 84
    iget v4, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    :goto_18
    add-int/lit8 v4, v4, 0x1

    if-ge v6, v0, :cond_25

    .line 85
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 86
    :goto_19
    iget v8, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ge v4, v8, :cond_23

    .line 87
    iget-object v8, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-float v8, v1, v3

    add-float/2addr v2, v8

    goto :goto_19

    :cond_23
    if-ne v8, p1, :cond_24

    .line 88
    iget v8, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v8, v1

    iput v8, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 89
    :cond_24
    iput v2, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 90
    iget v7, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v3

    add-float/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 91
    :cond_25
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    :cond_26
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, p1, :cond_28

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 96
    iput v0, v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->childIndex:I

    .line 97
    iget-boolean v3, v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_27

    iget v3, v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->widthFactor:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_27

    .line 98
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 99
    iget v3, v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    iput v3, v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->widthFactor:F

    .line 100
    iget v1, v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iput v1, v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->position:I

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 101
    :cond_28
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->sortChildDrawingOrder()V

    .line 102
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 104
    :goto_1b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2a

    if-eqz v0, :cond_2b

    .line 105
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_29

    goto :goto_1c

    .line 106
    :cond_29
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_1b

    .line 107
    :cond_2a
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object p1

    goto :goto_1d

    :cond_2b
    :goto_1c
    const/4 p1, 0x0

    :goto_1d
    if-eqz p1, :cond_2c

    .line 108
    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-eq p1, v0, :cond_2e

    :cond_2c
    const/4 p1, 0x0

    .line 109
    :goto_1e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2e

    .line 110
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 111
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 112
    iget v1, v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v1, v2, :cond_2d

    const/4 v1, 0x2

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_1f

    :cond_2d
    add-int/lit8 p1, p1, 0x1

    goto :goto_1e

    :cond_2e
    :goto_1f
    return-void

    .line 114
    :cond_2f
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_20

    .line 115
    :catch_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 116
    :goto_20
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    const-string v4, ", found: "

    const-string v5, " Pager id: "

    .line 117
    invoke-static {v1, v2, v4, v3, v5}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 118
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Pager class: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Problematic adapter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final recomputeScrollPosition(IIII)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p2, :cond_1

    .line 3
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 13
    iget-boolean v2, v1, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 15
    if-nez v2, :cond_0

    .line 17
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getCurrentItem()I

    .line 19
    move-result p1

    .line 22
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 23
    move-result p0

    .line 26
    mul-int/2addr p1, p0

    .line 27
    int-to-double p0, p1

    .line 28
    iput-wide p0, v1, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndX:D

    .line 29
    iput-boolean v0, v1, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 31
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 34
    move-result v0

    .line 37
    sub-int/2addr p1, v0

    .line 38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 39
    move-result v0

    .line 42
    sub-int/2addr p1, v0

    .line 43
    add-int/2addr p1, p3

    .line 44
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 45
    move-result p3

    .line 48
    sub-int/2addr p2, p3

    .line 49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 50
    move-result p3

    .line 53
    sub-int/2addr p2, p3

    .line 54
    add-int/2addr p2, p4

    .line 55
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 56
    move-result p3

    .line 59
    int-to-float p3, p3

    .line 60
    int-to-float p2, p2

    .line 61
    div-float/2addr p3, p2

    .line 62
    int-to-float p1, p1

    .line 63
    mul-float/2addr p3, p1

    .line 64
    float-to-int p1, p3

    .line 65
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    .line 66
    move-result p2

    .line 69
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 70
    goto :goto_1

    .line 73
    :cond_1
    iget p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 74
    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/OriginalViewPager;->infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 76
    move-result-object p2

    .line 79
    if-eqz p2, :cond_2

    .line 80
    iget p2, p2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 82
    iget p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 84
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    .line 86
    move-result p2

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const/4 p2, 0x0

    .line 91
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 92
    move-result p3

    .line 95
    sub-int/2addr p1, p3

    .line 96
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 97
    move-result p3

    .line 100
    sub-int/2addr p1, p3

    .line 101
    int-to-float p1, p1

    .line 102
    mul-float/2addr p2, p1

    .line 103
    float-to-int p1, p2

    .line 104
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 105
    move-result p2

    .line 108
    if-eq p1, p2, :cond_3

    .line 109
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 111
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    .line 114
    move-result p2

    .line 117
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 118
    :cond_3
    :goto_1
    return-void
    .line 121
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    :goto_0
    return-void
    .line 13
.end method

.method public final resetTouch()Z
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 3
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 6
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 8
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 14
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 18
    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 20
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 22
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 25
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 27
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 30
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 32
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 38
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 40
    move-result p0

    .line 43
    if-eqz p0, :cond_2

    .line 44
    :cond_1
    const/4 v0, 0x1

    .line 46
    :cond_2
    return v0
    .line 47
.end method

.method public final scrollToItem(IIZ)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 2
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 9
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    .line 14
    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 16
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 18
    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    .line 20
    move-result p1

    .line 23
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    .line 24
    move-result p1

    .line 27
    mul-float/2addr p1, v1

    .line 28
    float-to-int p1, p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move p1, v0

    .line 31
    :goto_0
    if-eqz p3, :cond_8

    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 34
    move-result p3

    .line 37
    if-nez p3, :cond_1

    .line 38
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    .line 40
    goto/16 :goto_5

    .line 43
    :cond_1
    iget-object p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 45
    const/4 v1, 0x1

    .line 47
    if-eqz p3, :cond_2

    .line 48
    iget-boolean v2, p3, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 50
    if-nez v2, :cond_2

    .line 52
    move v2, v1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v2, v0

    .line 56
    :goto_1
    if-eqz v2, :cond_4

    .line 57
    iget-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    .line 59
    if-eqz v2, :cond_3

    .line 61
    iget-wide v2, p3, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrX:D

    .line 63
    goto :goto_2

    .line 65
    :cond_3
    iget-wide v2, p3, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartX:D

    .line 66
    :goto_2
    double-to-int v2, v2

    .line 68
    iput-boolean v1, p3, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 69
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    .line 71
    goto :goto_3

    .line 74
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 75
    move-result v2

    .line 78
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    .line 79
    move-result p3

    .line 82
    sub-int v3, p1, v2

    .line 83
    rsub-int/lit8 v4, p3, 0x0

    .line 85
    if-nez v3, :cond_5

    .line 87
    if-nez v4, :cond_5

    .line 89
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 91
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 94
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    .line 97
    goto :goto_5

    .line 100
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    .line 101
    const/4 v3, 0x2

    .line 104
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    .line 105
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    .line 108
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 110
    int-to-float v2, v2

    .line 112
    int-to-float p1, p1

    .line 113
    int-to-float p3, p3

    .line 114
    int-to-float v5, v0

    .line 115
    neg-int p2, p2

    .line 116
    int-to-float p2, p2

    .line 117
    iput-boolean v0, v4, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 118
    iput-boolean v0, v4, Lmiuix/androidbasewidget/widget/SpringScroller;->mLastStep:Z

    .line 120
    float-to-double v6, v2

    .line 122
    iput-wide v6, v4, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartX:D

    .line 123
    float-to-double v6, p1

    .line 125
    iput-wide v6, v4, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndX:D

    .line 126
    float-to-double v6, p3

    .line 128
    iput-wide v6, v4, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartY:D

    .line 129
    double-to-int v0, v6

    .line 131
    int-to-double v6, v0

    .line 132
    iput-wide v6, v4, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrY:D

    .line 133
    float-to-double v6, v5

    .line 135
    iput-wide v6, v4, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndY:D

    .line 136
    float-to-double v6, p2

    .line 138
    iput-wide v6, v4, Lmiuix/androidbasewidget/widget/SpringScroller;->mVelocity:D

    .line 139
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    .line 141
    move-result-wide v6

    .line 144
    const-wide v8, 0x40b3880000000000L    # 5000.0

    .line 145
    cmpg-double p2, v6, v8

    .line 150
    if-gtz p2, :cond_6

    .line 152
    new-instance p2, Lmiuix/androidbasewidget/widget/SpringOperator;

    .line 154
    invoke-direct {p2}, Lmiuix/androidbasewidget/widget/SpringOperator;-><init>()V

    .line 156
    iput-object p2, v4, Lmiuix/androidbasewidget/widget/SpringScroller;->mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

    .line 159
    goto :goto_4

    .line 161
    :cond_6
    new-instance p2, Lmiuix/androidbasewidget/widget/SpringOperator;

    .line 162
    invoke-direct {p2}, Lmiuix/androidbasewidget/widget/SpringOperator;-><init>()V

    .line 164
    iput-object p2, v4, Lmiuix/androidbasewidget/widget/SpringScroller;->mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

    .line 167
    :goto_4
    sub-float/2addr v5, p3

    .line 169
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 170
    move-result p2

    .line 173
    sub-float/2addr p1, v2

    .line 174
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 175
    move-result p1

    .line 178
    cmpl-float p1, p2, p1

    .line 179
    if-lez p1, :cond_7

    .line 181
    move v1, v3

    .line 183
    :cond_7
    iput v1, v4, Lmiuix/androidbasewidget/widget/SpringScroller;->mOrientation:I

    .line 184
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 186
    move-result-wide p1

    .line 189
    iput-wide p1, v4, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartTime:J

    .line 190
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 192
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 194
    goto :goto_5

    .line 197
    :cond_8
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 198
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 201
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->pageScrolled(I)Z

    .line 204
    :goto_5
    return-void
    .line 207
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    monitor-enter v0

    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    iput-object v3, v0, Landroidx/viewpager/widget/PagerAdapter;->mViewPagerObserver:Landroid/database/DataSetObserver;

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move v0, v2

    .line 18
    :goto_0
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v3

    .line 24
    if-ge v0, v3, :cond_0

    .line 25
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 32
    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 33
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 35
    iget v5, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 37
    iget-object v3, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 39
    invoke-virtual {v4, p0, v5, v3}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    move v0, v2

    .line 57
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 58
    move-result v3

    .line 61
    if-ge v0, v3, :cond_2

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 68
    move-result-object v3

    .line 71
    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 72
    iget-boolean v3, v3, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    .line 74
    if-nez v3, :cond_1

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 78
    add-int/lit8 v0, v0, -0x1

    .line 81
    :cond_1
    add-int/2addr v0, v1

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iput v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 85
    invoke-virtual {p0, v2, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 87
    goto :goto_2

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p0

    .line 93
    :cond_3
    :goto_2
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 94
    iput v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    .line 96
    if-eqz p1, :cond_8

    .line 98
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mObserver:Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;

    .line 100
    if-nez p1, :cond_4

    .line 102
    new-instance p1, Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;

    .line 104
    invoke-direct {p1, p0}, Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;-><init>(Landroidx/viewpager/widget/OriginalViewPager;)V

    .line 106
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mObserver:Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;

    .line 109
    :cond_4
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 111
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mObserver:Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;

    .line 113
    monitor-enter p1

    .line 115
    :try_start_2
    iput-object v0, p1, Landroidx/viewpager/widget/PagerAdapter;->mViewPagerObserver:Landroid/database/DataSetObserver;

    .line 116
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 119
    iget-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 121
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 123
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 125
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 127
    move-result v0

    .line 130
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    .line 131
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    .line 133
    if-ltz v0, :cond_6

    .line 135
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 142
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 144
    move-result p1

    .line 147
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    .line 148
    iget-boolean v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurIsRTL:Z

    .line 150
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->isRTL()Z

    .line 152
    move-result v4

    .line 155
    const/4 v5, -0x1

    .line 156
    if-ne v3, v4, :cond_5

    .line 157
    goto :goto_3

    .line 159
    :cond_5
    sub-int/2addr p1, v0

    .line 160
    add-int/lit8 v0, p1, -0x1

    .line 161
    :goto_3
    invoke-virtual {p0, v0, v2, v2, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IIZZ)V

    .line 163
    iput v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    .line 166
    goto :goto_4

    .line 168
    :cond_6
    if-nez p1, :cond_7

    .line 169
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 171
    goto :goto_4

    .line 174
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 175
    goto :goto_4

    .line 178
    :catchall_1
    move-exception p0

    .line 179
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    throw p0

    .line 181
    :cond_8
    :goto_4
    return-void
    .line 182
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 2
    iget-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IIZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 5
    invoke-virtual {p0, p1, v0, p2, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IIZZ)V

    return-void
.end method

.method public final setCurrentItemInternal(IIZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 7
    move-result v0

    .line 10
    if-gtz v0, :cond_0

    .line 11
    goto :goto_3

    .line 13
    :cond_0
    if-nez p4, :cond_1

    .line 14
    iget p4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 16
    if-ne p4, p1, :cond_1

    .line 18
    iget-object p4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result p4

    .line 25
    if-eqz p4, :cond_1

    .line 26
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    .line 28
    return-void

    .line 31
    :cond_1
    const/4 p4, 0x1

    .line 32
    if-gez p1, :cond_2

    .line 33
    move p1, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 37
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 39
    move-result v0

    .line 42
    if-lt p1, v0, :cond_3

    .line 43
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 45
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 47
    move-result p1

    .line 50
    sub-int/2addr p1, p4

    .line 51
    :cond_3
    :goto_0
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 52
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 54
    add-int v3, v2, v0

    .line 56
    if-gt p1, v3, :cond_4

    .line 58
    sub-int/2addr v2, v0

    .line 60
    if-ge p1, v2, :cond_5

    .line 61
    :cond_4
    :goto_1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    move-result v0

    .line 68
    if-ge v1, v0, :cond_5

    .line 69
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 76
    check-cast v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 77
    iput-boolean p4, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->scrolling:Z

    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 81
    goto :goto_1

    .line 83
    :cond_5
    iget-boolean p4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 84
    if-eqz p4, :cond_6

    .line 86
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 88
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 90
    goto :goto_2

    .line 93
    :cond_6
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->populate(I)V

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Landroidx/viewpager/widget/OriginalViewPager;->scrollToItem(IIZ)V

    .line 97
    :goto_2
    return-void

    .line 100
    :cond_7
    :goto_3
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    .line 101
    return-void
    .line 104
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "Requested offscreen page limit "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string p1, " too small; defaulting to 2"

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    const-string v1, "ViewPager"

    .line 24
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    move p1, v0

    .line 29
    :cond_0
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 30
    if-eq p1, v0, :cond_1

    .line 32
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 34
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 36
    :cond_1
    return-void
    .line 39
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
    .line 2
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 2
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->recomputeScrollPosition(IIII)V

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 13
    return-void
    .line 16
.end method

.method public setPageMarginDrawable(I)V
    .locals 2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/OriginalViewPager$PageTransformer;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/OriginalViewPager$PageTransformer;I)V

    return-void
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/OriginalViewPager$PageTransformer;I)V
    .locals 1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, v0

    .line 2
    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const/4 p3, 0x2

    .line 3
    :cond_1
    iput p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrder:I

    goto :goto_1

    .line 4
    :cond_2
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrder:I

    :goto_1
    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    :cond_3
    return-void
.end method

.method public final setScrollState(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    .line 7
    return-void
    .line 9
.end method

.method public final setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollingCacheEnabled:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollingCacheEnabled:Z

    .line 6
    :cond_0
    return-void
    .line 8
.end method

.method public final sortChildDrawingOrder()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrder:I

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 6
    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_1
    if-ge v1, v0, :cond_1

    .line 26
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v2

    .line 31
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 40
    sget-object v0, Landroidx/viewpager/widget/OriginalViewPager;->sPositionComparator:Landroidx/viewpager/widget/OriginalViewPager$1;

    .line 42
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 44
    :cond_2
    return-void
    .line 47
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    if-ne p1, p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
    .line 16
.end method
