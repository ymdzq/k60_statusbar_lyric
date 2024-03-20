.class public abstract Landroidx/leanback/widget/BaseGridView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAnimateChildLayout:Z

.field public mHasOverlappingRendering:Z

.field public mInitialPrefetchItemCount:I

.field public mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

.field public mPrivateFlag:I

.field public mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/leanback/widget/BaseGridView;->mAnimateChildLayout:Z

    .line 6
    iput-boolean p1, p0, Landroidx/leanback/widget/BaseGridView;->mHasOverlappingRendering:Z

    .line 8
    const/4 p2, 0x4

    .line 10
    iput p2, p0, Landroidx/leanback/widget/BaseGridView;->mInitialPrefetchItemCount:I

    .line 11
    new-instance p2, Landroidx/leanback/widget/GridLayoutManager;

    .line 13
    invoke-direct {p2, p0}, Landroidx/leanback/widget/GridLayoutManager;-><init>(Landroidx/leanback/widget/BaseGridView;)V

    .line 15
    iput-object p2, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 18
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/BaseGridView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    .line 24
    const/high16 p3, 0x40000

    .line 27
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 29
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 32
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 35
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 38
    const/4 p1, 0x2

    .line 41
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 45
    move-result-object p1

    .line 48
    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    .line 49
    iput-boolean p2, p1, Landroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    .line 51
    new-instance p1, Landroidx/leanback/widget/BaseGridView$1;

    .line 53
    invoke-direct {p1, p0}, Landroidx/leanback/widget/BaseGridView$1;-><init>(Landroidx/leanback/widget/BaseGridView;)V

    .line 55
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    .line 58
    check-cast p0, Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
    .line 65
.end method


# virtual methods
.method public final dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
    .line 11
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final focusSearch(I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 8
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 18
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    .line 23
    move-result-object p0

    .line 26
    return-object p0
    .line 27
.end method

.method public final getChildDrawingOrder(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 13
    move-result p0

    .line 16
    if-ge p2, p0, :cond_1

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    add-int/lit8 v0, p1, -0x1

    .line 20
    if-ge p2, v0, :cond_2

    .line 22
    add-int/2addr p0, p1

    .line 24
    add-int/lit8 p0, p0, -0x1

    .line 25
    sub-int/2addr p0, p2

    .line 27
    :cond_2
    move p2, p0

    .line 28
    :goto_0
    return p2
    .line 29
.end method

.method public getExtraLayoutSpace()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    .line 4
    return p0
    .line 6
.end method

.method public getFocusScrollStrategy()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    .line 4
    return p0
    .line 6
.end method

.method public getHorizontalMargin()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    .line 4
    return p0
    .line 6
.end method

.method public getHorizontalSpacing()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    .line 4
    return p0
    .line 6
.end method

.method public getInitialPrefetchItemCount()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/widget/BaseGridView;->mInitialPrefetchItemCount:I

    .line 2
    return p0
    .line 4
.end method

.method public getItemAlignmentOffset()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    .line 4
    iget-object p0, p0, Landroidx/leanback/widget/ItemAlignment;->mMainAxis:Landroidx/leanback/widget/ItemAlignment$Axis;

    .line 6
    iget p0, p0, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffset:I

    .line 8
    return p0
    .line 10
.end method

.method public getItemAlignmentOffsetPercent()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    .line 4
    iget-object p0, p0, Landroidx/leanback/widget/ItemAlignment;->mMainAxis:Landroidx/leanback/widget/ItemAlignment$Axis;

    .line 6
    iget p0, p0, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffsetPercent:F

    .line 8
    return p0
    .line 10
.end method

.method public getItemAlignmentViewId()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    .line 4
    iget-object p0, p0, Landroidx/leanback/widget/ItemAlignment;->mMainAxis:Landroidx/leanback/widget/ItemAlignment$Axis;

    .line 6
    iget p0, p0, Landroidx/leanback/widget/ItemAlignment$Axis;->mViewId:I

    .line 8
    return p0
    .line 10
.end method

.method public getOnUnhandledKeyListener()Landroidx/leanback/widget/BaseGridView$OnUnhandledKeyListener;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getSaveChildrenLimitNumber()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    .line 4
    iget p0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    .line 6
    return p0
    .line 8
.end method

.method public final getSaveChildrenPolicy()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    .line 4
    iget p0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    .line 6
    return p0
    .line 8
.end method

.method public getSelectedPosition()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 4
    return p0
    .line 6
.end method

.method public getSelectedSubPosition()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 4
    return p0
    .line 6
.end method

.method public getSmoothScrollByBehavior()Landroidx/leanback/widget/BaseGridView$SmoothScrollByBehavior;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getSmoothScrollMaxPendingMoves()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mMaxPendingMoves:I

    .line 4
    return p0
    .line 6
.end method

.method public final getSmoothScrollSpeedFactor()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSmoothScrollSpeedFactor:F

    .line 4
    return p0
    .line 6
.end method

.method public getVerticalMargin()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    .line 4
    return p0
    .line 6
.end method

.method public getVerticalSpacing()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    .line 4
    return p0
    .line 6
.end method

.method public getWindowAlignment()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 4
    iget-object p0, p0, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    .line 6
    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    .line 8
    return p0
    .line 10
.end method

.method public getWindowAlignmentOffset()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 4
    iget-object p0, p0, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    .line 6
    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    .line 8
    return p0
    .line 10
.end method

.method public getWindowAlignmentOffsetPercent()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 4
    iget-object p0, p0, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    .line 6
    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    .line 8
    return p0
    .line 10
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/leanback/widget/BaseGridView;->mHasOverlappingRendering:Z

    .line 2
    return p0
    .line 4
.end method

.method public final initBaseGridViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    sget-object v0, Landroidx/leanback/widget/R$styleable;->lbBaseGridView:[I

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    move-result-object p1

    .line 7
    const/4 p2, 0x4

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 10
    move-result p2

    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 15
    move-result v1

    .line 18
    iget-object v2, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 19
    iget v3, v2, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 21
    and-int/lit16 v3, v3, -0x1801

    .line 23
    if-eqz p2, :cond_0

    .line 25
    const/16 p2, 0x800

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    move p2, v0

    .line 30
    :goto_0
    or-int/2addr p2, v3

    .line 31
    if-eqz v1, :cond_1

    .line 32
    const/16 v1, 0x1000

    .line 34
    goto :goto_1

    .line 36
    :cond_1
    move v1, v0

    .line 37
    :goto_1
    or-int/2addr p2, v1

    .line 38
    iput p2, v2, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 39
    const/4 p2, 0x6

    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 43
    move-result p2

    .line 46
    const/4 v2, 0x5

    .line 47
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 48
    move-result v2

    .line 51
    iget-object v3, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 52
    iget v4, v3, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 54
    and-int/lit16 v4, v4, -0x6001

    .line 56
    if-eqz p2, :cond_2

    .line 58
    const/16 p2, 0x2000

    .line 60
    goto :goto_2

    .line 62
    :cond_2
    move p2, v0

    .line 63
    :goto_2
    or-int/2addr p2, v4

    .line 64
    if-eqz v2, :cond_3

    .line 65
    const/16 v2, 0x4000

    .line 67
    goto :goto_3

    .line 69
    :cond_3
    move v2, v0

    .line 70
    :goto_3
    or-int/2addr p2, v2

    .line 71
    iput p2, v3, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 72
    const/16 p2, 0x8

    .line 74
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 76
    move-result p2

    .line 79
    const/4 v2, 0x2

    .line 80
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 81
    move-result p2

    .line 84
    iget v2, v3, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 85
    if-ne v2, v1, :cond_4

    .line 87
    iput p2, v3, Landroidx/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    .line 89
    iput p2, v3, Landroidx/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    .line 91
    goto :goto_4

    .line 93
    :cond_4
    iput p2, v3, Landroidx/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    .line 94
    iput p2, v3, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    .line 96
    :goto_4
    iget-object p2, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 98
    const/4 v2, 0x7

    .line 100
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 101
    move-result v2

    .line 104
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 105
    move-result v1

    .line 108
    iget v2, p2, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 109
    if-nez v2, :cond_5

    .line 111
    iput v1, p2, Landroidx/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    .line 113
    iput v1, p2, Landroidx/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    .line 115
    goto :goto_5

    .line 117
    :cond_5
    iput v1, p2, Landroidx/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    .line 118
    iput v1, p2, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    .line 120
    :goto_5
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 122
    move-result p2

    .line 125
    if-eqz p2, :cond_6

    .line 126
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 128
    move-result p2

    .line 131
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/BaseGridView;->setGravity(I)V

    .line 132
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    return-void
    .line 138
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 5
    if-eqz p1, :cond_2

    .line 7
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 18
    move-result p3

    .line 21
    if-nez p3, :cond_1

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->hasFocusable()Z

    .line 24
    move-result p3

    .line 27
    if-eqz p3, :cond_1

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 30
    goto :goto_1

    .line 33
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    :goto_1
    return-void
    .line 40
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    .line 2
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    return v2

    .line 9
    :cond_0
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 10
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    .line 12
    if-eq v0, v1, :cond_1

    .line 14
    const/4 v3, 0x2

    .line 16
    if-eq v0, v3, :cond_1

    .line 17
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 19
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 21
    move-result-object p0

    .line 24
    if-eqz p0, :cond_5

    .line 25
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 27
    move-result v2

    .line 30
    goto :goto_3

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 32
    move-result v0

    .line 35
    and-int/lit8 v3, p1, 0x2

    .line 36
    if-eqz v3, :cond_2

    .line 38
    move v4, v1

    .line 40
    move v3, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 43
    const/4 v3, -0x1

    .line 45
    move v4, v3

    .line 46
    move v3, v0

    .line 47
    move v0, v4

    .line 48
    :goto_0
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 49
    iget-object v5, v5, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    .line 51
    iget v6, v5, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    .line 53
    iget v7, v5, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    .line 55
    sub-int/2addr v7, v6

    .line 57
    iget v5, v5, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    .line 58
    sub-int/2addr v7, v5

    .line 60
    add-int/2addr v7, v6

    .line 61
    :goto_1
    if-eq v3, v0, :cond_4

    .line 62
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 64
    move-result-object v5

    .line 67
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 68
    move-result v8

    .line 71
    if-nez v8, :cond_3

    .line 72
    iget-object v8, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 74
    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    .line 76
    move-result v8

    .line 79
    if-lt v8, v6, :cond_3

    .line 80
    iget-object v8, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 82
    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    .line 84
    move-result v8

    .line 87
    if-gt v8, v7, :cond_3

    .line 88
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 90
    move-result v5

    .line 93
    if-eqz v5, :cond_3

    .line 94
    goto :goto_2

    .line 96
    :cond_3
    add-int/2addr v3, v4

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    move v1, v2

    .line 99
    :goto_2
    move v2, v1

    .line 100
    :cond_5
    :goto_3
    return v2
    .line 101
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    if-eqz p0, :cond_4

    .line 4
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 6
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_0

    .line 10
    if-ne p1, v2, :cond_1

    .line 12
    const/high16 v0, 0x40000

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    if-ne p1, v2, :cond_1

    .line 17
    const/high16 v0, 0x80000

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    move v0, v1

    .line 22
    :goto_0
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 23
    const/high16 v4, 0xc0000

    .line 25
    and-int/2addr v4, v3

    .line 27
    if-ne v4, v0, :cond_2

    .line 28
    goto :goto_1

    .line 30
    :cond_2
    const v4, -0xc0001

    .line 31
    and-int/2addr v3, v4

    .line 34
    or-int/2addr v0, v3

    .line 35
    or-int/lit16 v0, v0, 0x100

    .line 36
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 38
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 40
    iget-object p0, p0, Landroidx/leanback/widget/WindowAlignment;->horizontal:Landroidx/leanback/widget/WindowAlignment$Axis;

    .line 42
    if-ne p1, v2, :cond_3

    .line 44
    move v1, v2

    .line 46
    :cond_3
    iput-boolean v1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    .line 47
    :cond_4
    :goto_1
    return-void
    .line 49
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    iget v2, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    .line 20
    or-int/2addr v1, v2

    .line 22
    iput v1, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 25
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    if-eqz v0, :cond_2

    .line 31
    iget p1, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    .line 33
    xor-int/lit8 p1, p1, -0x2

    .line 35
    iput p1, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    .line 37
    :cond_2
    return-void
    .line 39
.end method

.method public final removeViewAt(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget v1, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    .line 12
    or-int/lit8 v1, v1, 0x1

    .line 14
    iput v1, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 18
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 21
    if-eqz v0, :cond_1

    .line 24
    iget p1, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    .line 26
    xor-int/lit8 p1, p1, -0x2

    .line 28
    iput p1, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    .line 30
    :cond_1
    return-void
    .line 32
.end method

.method public final scrollToPosition(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 4
    and-int/lit8 v1, v1, 0x40

    .line 6
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v2

    .line 13
    :goto_0
    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v0, p1, v2, v2, v2}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIIZ)V

    .line 16
    return-void

    .line 19
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 20
    return-void
    .line 23
.end method

.method public setAnimateChildLayout(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/BaseGridView;->mAnimateChildLayout:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Landroidx/leanback/widget/BaseGridView;->mAnimateChildLayout:Z

    .line 6
    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 10
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/leanback/widget/BaseGridView;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 14
    const/4 p1, 0x0

    .line 16
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/BaseGridView;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 21
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 23
    :cond_1
    :goto_0
    return-void
    .line 26
.end method

.method public setChildrenVisibility(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildVisibility:I

    .line 4
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 9
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-ge v0, p1, :cond_0

    .line 14
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v1

    .line 19
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildVisibility:I

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method

.method public setExtraLayoutSpace(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    .line 4
    if-ne v0, p1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    if-ltz v0, :cond_1

    .line 9
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 13
    :goto_0
    return-void

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string p1, "ExtraLayoutSpace must >= 0"

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method

.method public setFocusDrawingOrderEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 2
    return-void
    .line 5
.end method

.method public setFocusScrollStrategy(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    const-string p1, "Invalid scrollStrategy"

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0

    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 19
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 23
    return-void
    .line 26
.end method

.method public final setFocusSearchDisabled(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const/high16 v0, 0x60000

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const/high16 v0, 0x40000

    .line 7
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 9
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 12
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 14
    const v1, -0x8001

    .line 16
    and-int/2addr v0, v1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    const p1, 0x8000

    .line 22
    goto :goto_1

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    :goto_1
    or-int/2addr p1, v0

    .line 27
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 28
    return-void
    .line 30
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->mGravity:I

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 6
    return-void
    .line 9
.end method

.method public setHasOverlappingRendering(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/widget/BaseGridView;->mHasOverlappingRendering:Z

    .line 2
    return-void
    .line 4
.end method

.method public setHorizontalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseGridView;->setHorizontalSpacing(I)V

    .line 2
    return-void
    .line 5
.end method

.method public setHorizontalSpacing(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 4
    if-nez v1, :cond_0

    .line 6
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    .line 8
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    .line 13
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    .line 15
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 17
    return-void
    .line 20
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/BaseGridView;->mInitialPrefetchItemCount:I

    .line 2
    return-void
    .line 4
.end method

.method public setItemAlignmentOffset(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    .line 4
    iget-object v1, v1, Landroidx/leanback/widget/ItemAlignment;->mMainAxis:Landroidx/leanback/widget/ItemAlignment$Axis;

    .line 6
    iput p1, v1, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffset:I

    .line 8
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 13
    return-void
    .line 16
.end method

.method public setItemAlignmentOffsetPercent(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    .line 4
    iget-object v1, v1, Landroidx/leanback/widget/ItemAlignment;->mMainAxis:Landroidx/leanback/widget/ItemAlignment$Axis;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/4 v2, 0x0

    .line 11
    cmpg-float v2, p1, v2

    .line 12
    if-ltz v2, :cond_0

    .line 14
    const/high16 v2, 0x42c80000    # 100.0f

    .line 16
    cmpl-float v2, p1, v2

    .line 18
    if-lez v2, :cond_1

    .line 20
    :cond_0
    const/high16 v2, -0x40800000    # -1.0f

    .line 22
    cmpl-float v2, p1, v2

    .line 24
    if-nez v2, :cond_2

    .line 26
    :cond_1
    iput p1, v1, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffsetPercent:F

    .line 28
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    .line 30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 33
    return-void

    .line 36
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 37
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 39
    throw p0
    .line 42
.end method

.method public setItemAlignmentOffsetWithPadding(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    .line 4
    iget-object v1, v1, Landroidx/leanback/widget/ItemAlignment;->mMainAxis:Landroidx/leanback/widget/ItemAlignment$Axis;

    .line 6
    iput-boolean p1, v1, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffsetWithPadding:Z

    .line 8
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 13
    return-void
    .line 16
.end method

.method public setItemAlignmentViewId(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    .line 4
    iget-object v0, v0, Landroidx/leanback/widget/ItemAlignment;->mMainAxis:Landroidx/leanback/widget/ItemAlignment$Axis;

    .line 6
    iput p1, v0, Landroidx/leanback/widget/ItemAlignment$Axis;->mViewId:I

    .line 8
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    .line 10
    return-void
    .line 13
.end method

.method public setItemMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseGridView;->setItemSpacing(I)V

    .line 2
    return-void
    .line 5
.end method

.method public setItemSpacing(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    .line 4
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    .line 6
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    .line 8
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 12
    return-void
    .line 15
.end method

.method public setLayoutEnabled(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 4
    and-int/lit16 v1, v0, 0x200

    .line 6
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v2

    .line 13
    :goto_0
    if-eq v1, p1, :cond_2

    .line 14
    and-int/lit16 v0, v0, -0x201

    .line 16
    if-eqz p1, :cond_1

    .line 18
    const/16 v2, 0x200

    .line 20
    :cond_1
    or-int p1, v0, v2

    .line 22
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 26
    :cond_2
    return-void
    .line 29
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    iget-object p1, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iput-object v0, p1, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    .line 12
    iput-object v0, p1, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 14
    :cond_0
    iput-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 16
    return-void

    .line 18
    :cond_1
    move-object v1, p1

    .line 19
    check-cast v1, Landroidx/leanback/widget/GridLayoutManager;

    .line 20
    iput-object v1, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 22
    iput-object p0, v1, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    .line 24
    iput-object v0, v1, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 26
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    return-void
    .line 31
.end method

.method public setOnChildLaidOutListener(Landroidx/leanback/widget/OnChildLaidOutListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    return-void
    .line 7
.end method

.method public setOnChildSelectedListener(Landroidx/leanback/widget/OnChildSelectedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    return-void
    .line 7
.end method

.method public setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    if-nez p1, :cond_0

    .line 4
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 7
    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 10
    if-nez v0, :cond_1

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    :goto_0
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :goto_1
    return-void
    .line 30
.end method

.method public setOnKeyInterceptListener(Landroidx/leanback/widget/BaseGridView$OnKeyInterceptListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setOnMotionInterceptListener(Landroidx/leanback/widget/BaseGridView$OnMotionInterceptListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setOnTouchInterceptListener(Landroidx/leanback/widget/BaseGridView$OnTouchInterceptListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setOnUnhandledKeyListener(Landroidx/leanback/widget/BaseGridView$OnUnhandledKeyListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setPruneChild(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 4
    const/high16 v1, 0x10000

    .line 6
    and-int v2, v0, v1

    .line 8
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    const/4 v2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v3

    .line 15
    :goto_0
    if-eq v2, p1, :cond_2

    .line 16
    const v2, -0x10001

    .line 18
    and-int/2addr v0, v2

    .line 21
    if-eqz p1, :cond_1

    .line 22
    goto :goto_1

    .line 24
    :cond_1
    move v1, v3

    .line 25
    :goto_1
    or-int/2addr v0, v1

    .line 26
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 27
    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 31
    :cond_2
    return-void
    .line 34
.end method

.method public final setSaveChildrenLimitNumber(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    .line 4
    iput p1, p0, Landroidx/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    .line 6
    invoke-virtual {p0}, Landroidx/leanback/widget/ViewsStateBundle;->applyPolicyChanges()V

    .line 8
    return-void
    .line 11
.end method

.method public final setSaveChildrenPolicy(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    .line 4
    iput p1, p0, Landroidx/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    .line 6
    invoke-virtual {p0}, Landroidx/leanback/widget/ViewsStateBundle;->applyPolicyChanges()V

    .line 8
    return-void
    .line 11
.end method

.method public setScrollEnabled(Z)V
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 4
    const/high16 v1, 0x20000

    .line 6
    and-int v2, v0, v1

    .line 8
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v2, :cond_0

    .line 12
    move v2, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v4

    .line 16
    :goto_0
    if-eq v2, p1, :cond_2

    .line 17
    const v2, -0x20001

    .line 19
    and-int/2addr v0, v2

    .line 22
    if-eqz p1, :cond_1

    .line 23
    move v4, v1

    .line 25
    :cond_1
    or-int p1, v0, v4

    .line 26
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 28
    and-int/2addr p1, v1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    .line 33
    if-nez p1, :cond_2

    .line 35
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 37
    const/4 v0, -0x1

    .line 39
    if-eq p1, v0, :cond_2

    .line 40
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 42
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    .line 44
    invoke-virtual {p0, p1, v0, v1, v3}, Landroidx/leanback/widget/GridLayoutManager;->scrollToSelection(IIIZ)V

    .line 46
    :cond_2
    return-void
    .line 49
.end method

.method public setSelectedPosition(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0, v0}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIIZ)V

    return-void
.end method

.method public setSelectedPosition(II)V
    .locals 1

    .line 3
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, p2, v0}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIIZ)V

    return-void
.end method

.method public setSelectedPosition(ILandroidx/leanback/widget/ViewHolderTask;)V
    .locals 2

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p2}, Landroidx/leanback/widget/ViewHolderTask;->run()V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    new-instance p2, Landroidx/leanback/widget/BaseGridView$2;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Landroidx/leanback/widget/BaseGridView$2;-><init>(Landroidx/leanback/widget/BaseGridView;II)V

    .line 9
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 10
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 12
    :cond_2
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    return-void
.end method

.method public setSelectedPositionSmooth(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, p1, v0, v0, v1}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIIZ)V

    return-void
.end method

.method public setSelectedPositionSmooth(ILandroidx/leanback/widget/ViewHolderTask;)V
    .locals 2

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2}, Landroidx/leanback/widget/ViewHolderTask;->run()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    new-instance p2, Landroidx/leanback/widget/BaseGridView$2;

    invoke-direct {p2, p0, p1, v0}, Landroidx/leanback/widget/BaseGridView$2;-><init>(Landroidx/leanback/widget/BaseGridView;II)V

    .line 7
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 8
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 10
    :cond_2
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPositionSmooth(I)V

    return-void
.end method

.method public setSelectedPositionSmoothWithSub(II)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIIZ)V

    .line 6
    return-void
    .line 9
.end method

.method public setSelectedPositionWithSub(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v0}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIIZ)V

    return-void
.end method

.method public setSelectedPositionWithSub(III)V
    .locals 1

    .line 3
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIIZ)V

    return-void
.end method

.method public final setSmoothScrollByBehavior(Landroidx/leanback/widget/BaseGridView$SmoothScrollByBehavior;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setSmoothScrollMaxPendingMoves(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mMaxPendingMoves:I

    .line 4
    return-void
    .line 6
.end method

.method public final setSmoothScrollSpeedFactor(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSmoothScrollSpeedFactor:F

    .line 4
    return-void
    .line 6
.end method

.method public setVerticalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseGridView;->setVerticalSpacing(I)V

    .line 2
    return-void
    .line 5
.end method

.method public setVerticalSpacing(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    .line 9
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    .line 14
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    .line 16
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 18
    return-void
    .line 21
.end method

.method public setWindowAlignment(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 4
    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    .line 6
    iput p1, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 10
    return-void
    .line 13
.end method

.method public setWindowAlignmentOffset(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 4
    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    .line 6
    iput p1, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 10
    return-void
    .line 13
.end method

.method public setWindowAlignmentOffsetPercent(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 4
    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/4 v1, 0x0

    .line 11
    cmpg-float v1, p1, v1

    .line 12
    if-ltz v1, :cond_0

    .line 14
    const/high16 v1, 0x42c80000    # 100.0f

    .line 16
    cmpl-float v1, p1, v1

    .line 18
    if-lez v1, :cond_1

    .line 20
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 22
    cmpl-float v1, p1, v1

    .line 24
    if-nez v1, :cond_2

    .line 26
    :cond_1
    iput p1, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 30
    return-void

    .line 33
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 36
    throw p0
    .line 39
.end method

.method public setWindowAlignmentPreferKeyLineOverHighEdge(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 4
    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget p1, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    .line 10
    or-int/lit8 p1, p1, 0x2

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget p1, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    .line 15
    and-int/lit8 p1, p1, -0x3

    .line 17
    :goto_0
    iput p1, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 21
    return-void
.end method

.method public setWindowAlignmentPreferKeyLineOverLowEdge(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 4
    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget p1, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    .line 10
    or-int/lit8 p1, p1, 0x1

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget p1, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    .line 15
    and-int/lit8 p1, p1, -0x2

    .line 17
    :goto_0
    iput p1, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 21
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy$1(IIZ)V

    .line 3
    return-void
    .line 6
.end method

.method public final smoothScrollBy$1(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy$1(IIZ)V

    .line 3
    return-void
    .line 6
.end method

.method public final smoothScrollToPosition(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 4
    and-int/lit8 v1, v1, 0x40

    .line 6
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v2

    .line 13
    :goto_0
    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v0, p1, v2, v2, v2}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIIZ)V

    .line 16
    return-void

    .line 19
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 20
    return-void
    .line 23
.end method
