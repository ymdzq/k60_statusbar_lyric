.class public Lmiuix/core/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/core/view/NestedScrollingChild3;


# static fields
.field public static final ACCESSIBILITY_DELEGATE:Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;

.field public static final SCROLLVIEW_STYLEABLE:[I


# instance fields
.field public mActivePointerId:I

.field public final mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field public mChildToScrollTo:Landroid/view/View;

.field public mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field public mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field public mFillViewport:Z

.field public mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field public mHasReachEdgeBeforeFling:Z

.field public mIsBeingDragged:Z

.field public mIsLaidOut:Z

.field public mIsLayoutDirty:Z

.field public mLastMotionY:I

.field public mLastScroll:J

.field public mLastScrollerY:I

.field public mMaximumVelocity:I

.field public mMinimumVelocity:I

.field public mNestedYOffset:I

.field public final mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field public mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

.field public final mScrollConsumed:[I

.field public final mScrollOffset:[I

.field public mScroller:Lmiuix/overscroller/widget/OverScroller;

.field public mSmoothScrollingEnabled:Z

.field public final mTempRect:Landroid/graphics/Rect;

.field public mTouchSlop:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mVerticalScrollFactor:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;

    .line 2
    invoke-direct {v0}, Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;-><init>()V

    .line 4
    sput-object v0, Lmiuix/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;

    .line 7
    const v0, 0x101017a    # @android:attr/fillViewport

    .line 9
    filled-new-array {v0}, [I

    .line 12
    move-result-object v0

    .line 15
    sput-object v0, Lmiuix/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    .line 16
    return-void
    .line 18
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lmiuix/core/widget/NestedScrollView;->mIsLaidOut:Z

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 8
    iput-boolean v1, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 9
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v3, -0x1

    .line 10
    iput v3, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 11
    iput-object v4, p0, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    new-array v3, v3, [I

    .line 12
    iput-object v3, p0, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 13
    new-instance v3, Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 14
    invoke-direct {v3, v4, v2}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 15
    iput-object v3, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    const/high16 v2, 0x40000

    .line 17
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 18
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    .line 21
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lmiuix/core/widget/NestedScrollView;->mMinimumVelocity:I

    .line 22
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lmiuix/core/widget/NestedScrollView;->mMaximumVelocity:I

    .line 23
    sget-object v2, Lmiuix/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/core/widget/NestedScrollView;->setFillViewport(Z)V

    .line 25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1}, Landroidx/core/view/NestedScrollingParentHelper;-><init>()V

    iput-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 27
    new-instance p1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 28
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 29
    sget-object p1, Lmiuix/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 15
    :cond_0
    iget-object p0, p0, Lmiuix/core/widget/NestedScrollView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 17
    return-object p0
    .line 19
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 5

    .line 1
    iget v0, p0, Lmiuix/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    .line 2
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    if-nez v0, :cond_1

    .line 7
    new-instance v0, Landroid/util/TypedValue;

    .line 9
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 18
    move-result-object v2

    .line 21
    const v3, 0x101004d    # @android:attr/listPreferredItemHeight

    .line 22
    const/4 v4, 0x1

    .line 25
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 26
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 36
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 40
    move-result v0

    .line 43
    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    .line 44
    goto :goto_0

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    const-string v0, "Expected theme to define listPreferredItemHeight."

    .line 49
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0

    .line 54
    :cond_1
    :goto_0
    iget p0, p0, Lmiuix/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    .line 55
    return p0
    .line 57
.end method

.method public static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object p0

    .line 9
    instance-of v1, p0, Landroid/view/ViewGroup;

    .line 10
    if-eqz v1, :cond_1

    .line 12
    check-cast p0, Landroid/view/View;

    .line 14
    invoke-static {p0, p1}, Lmiuix/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
    .line 24
.end method


# virtual methods
.method public final addView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 11
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final arrowScroll(I)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    if-ne v0, p0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getMaxScrollAmount()I

    .line 17
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 24
    move-result v4

    .line 27
    invoke-virtual {p0, v1, v2, v4}, Lmiuix/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    .line 28
    move-result v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 36
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 41
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 44
    invoke-virtual {p0, v2}, Lmiuix/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    .line 46
    move-result v2

    .line 49
    invoke-virtual {p0, v2}, Lmiuix/core/widget/NestedScrollView;->doScrollY(I)V

    .line 50
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 53
    goto :goto_2

    .line 56
    :cond_1
    const/16 v1, 0x21

    .line 57
    const/16 v4, 0x82

    .line 59
    if-ne p1, v1, :cond_2

    .line 61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 63
    move-result v1

    .line 66
    if-ge v1, v2, :cond_2

    .line 67
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 69
    move-result v2

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    if-ne p1, v4, :cond_3

    .line 74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 76
    move-result v1

    .line 79
    if-lez v1, :cond_3

    .line 80
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 82
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 86
    move-result-object v5

    .line 89
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 92
    move-result v1

    .line 95
    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 96
    add-int/2addr v1, v5

    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 99
    move-result v5

    .line 102
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 103
    move-result v6

    .line 106
    add-int/2addr v6, v5

    .line 107
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 108
    move-result v5

    .line 111
    sub-int/2addr v6, v5

    .line 112
    sub-int/2addr v1, v6

    .line 113
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 114
    move-result v2

    .line 117
    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 118
    return v3

    .line 120
    :cond_4
    if-ne p1, v4, :cond_5

    .line 121
    goto :goto_1

    .line 123
    :cond_5
    neg-int v2, v2

    .line 124
    :goto_1
    invoke-virtual {p0, v2}, Lmiuix/core/widget/NestedScrollView;->doScrollY(I)V

    .line 125
    :goto_2
    const/4 p1, 0x1

    .line 128
    if-eqz v0, :cond_6

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 131
    move-result v1

    .line 134
    if-eqz v1, :cond_6

    .line 135
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 137
    move-result v1

    .line 140
    invoke-virtual {p0, v0, v3, v1}, Lmiuix/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    .line 141
    move-result v0

    .line 144
    xor-int/2addr v0, p1

    .line 145
    if-eqz v0, :cond_6

    .line 146
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDescendantFocusability()I

    .line 148
    move-result v0

    .line 151
    const/high16 v1, 0x20000

    .line 152
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 157
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 160
    :cond_6
    return p1
    .line 163
.end method

.method public final computeHorizontalScrollExtent()I
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final computeHorizontalScrollOffset()I
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final computeHorizontalScrollRange()I
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final computeScroll()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 4
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 13
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->computeScrollOffset()Z

    .line 15
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 18
    iget-object v1, v1, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/DynamicScroller;

    .line 20
    iget-wide v1, v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 22
    double-to-int v1, v1

    .line 24
    iget v2, v0, Lmiuix/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 25
    sub-int v2, v1, v2

    .line 27
    iput v1, v0, Lmiuix/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 29
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 31
    const/4 v9, 0x1

    .line 33
    const/4 v10, 0x0

    .line 34
    aput v10, v1, v9

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 37
    move-result-object v1

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 41
    move-result-object v3

    .line 44
    const v4, 0x1020002    # @android:id/content

    .line 45
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v3

    .line 51
    :goto_0
    if-eqz v1, :cond_3

    .line 52
    instance-of v4, v1, Lmiuix/core/view/NestedCurrentFling;

    .line 54
    if-eqz v4, :cond_1

    .line 56
    check-cast v1, Lmiuix/core/view/NestedCurrentFling;

    .line 58
    iget-object v3, v0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 60
    iget-object v4, v3, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/DynamicScroller;

    .line 62
    iget-wide v4, v4, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 64
    double-to-float v4, v4

    .line 66
    iget-object v3, v3, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/DynamicScroller;

    .line 67
    iget-wide v5, v3, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 69
    double-to-float v3, v5

    .line 71
    check-cast v1, Lmiuix/springback/view/SpringBackLayout;

    .line 72
    iput v4, v1, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    .line 74
    iput v3, v1, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    .line 76
    goto :goto_1

    .line 78
    :cond_1
    instance-of v4, v1, Landroid/view/ViewGroup;

    .line 79
    if-eqz v4, :cond_2

    .line 81
    if-ne v1, v3, :cond_2

    .line 83
    goto :goto_1

    .line 85
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 86
    move-result-object v1

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 91
    iget-object v7, v0, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 92
    const/4 v8, 0x0

    .line 94
    const/4 v6, 0x1

    .line 95
    iget-object v3, v0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 96
    move v5, v2

    .line 98
    invoke-virtual/range {v3 .. v8}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(III[I[I)Z

    .line 99
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 102
    aget v1, v1, v9

    .line 104
    sub-int/2addr v2, v1

    .line 106
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 107
    move-result v1

    .line 110
    if-eqz v2, :cond_4

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 113
    move-result v3

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 117
    move-result v4

    .line 120
    invoke-virtual {v0, v2, v4, v3, v1}, Lmiuix/core/widget/NestedScrollView;->overScrollByCompat(IIII)Z

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 124
    move-result v4

    .line 127
    sub-int v13, v4, v3

    .line 128
    sub-int/2addr v2, v13

    .line 130
    iget-object v3, v0, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 131
    aput v10, v3, v9

    .line 133
    iget-object v4, v0, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 135
    const/16 v17, 0x1

    .line 137
    const/4 v12, 0x0

    .line 139
    const/4 v14, 0x0

    .line 140
    iget-object v11, v0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 141
    move v15, v2

    .line 143
    move-object/from16 v16, v4

    .line 144
    move-object/from16 v18, v3

    .line 146
    invoke-virtual/range {v11 .. v18}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    .line 148
    iget-object v3, v0, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 151
    aget v3, v3, v9

    .line 153
    sub-int/2addr v2, v3

    .line 155
    :cond_4
    if-eqz v2, :cond_9

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    .line 158
    move-result v3

    .line 161
    if-eqz v3, :cond_5

    .line 162
    if-ne v3, v9, :cond_6

    .line 164
    if-lez v1, :cond_6

    .line 166
    :cond_5
    move v10, v9

    .line 168
    :cond_6
    if-eqz v10, :cond_8

    .line 169
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->ensureGlows()V

    .line 171
    if-gez v2, :cond_7

    .line 174
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 176
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 178
    move-result v1

    .line 181
    if-eqz v1, :cond_8

    .line 182
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 184
    iget-object v2, v0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 186
    iget-object v3, v2, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/DynamicScroller;

    .line 188
    iget-wide v3, v3, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 190
    iget-object v2, v2, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/DynamicScroller;

    .line 192
    iget-wide v5, v2, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 194
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    .line 196
    move-result-wide v2

    .line 199
    double-to-float v2, v2

    .line 200
    float-to-int v2, v2

    .line 201
    invoke-virtual {v1, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 202
    goto :goto_2

    .line 205
    :cond_7
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 206
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 208
    move-result v1

    .line 211
    if-eqz v1, :cond_8

    .line 212
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 214
    iget-object v2, v0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 216
    iget-object v3, v2, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/DynamicScroller;

    .line 218
    iget-wide v3, v3, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 220
    iget-object v2, v2, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/DynamicScroller;

    .line 222
    iget-wide v5, v2, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 224
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    .line 226
    move-result-wide v2

    .line 229
    double-to-float v2, v2

    .line 230
    float-to-int v2, v2

    .line 231
    invoke-virtual {v1, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 232
    :cond_8
    :goto_2
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 235
    iget-object v2, v1, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/DynamicScroller;

    .line 237
    invoke-virtual {v2}, Lmiuix/overscroller/widget/DynamicScroller;->finish()V

    .line 239
    iget-object v1, v1, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/DynamicScroller;

    .line 242
    invoke-virtual {v1}, Lmiuix/overscroller/widget/DynamicScroller;->finish()V

    .line 244
    invoke-virtual {v0, v9}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 247
    :cond_9
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 250
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    .line 252
    move-result v1

    .line 255
    if-nez v1, :cond_a

    .line 256
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 258
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 260
    goto :goto_3

    .line 263
    :cond_a
    invoke-virtual {v0, v9}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 264
    iget-boolean v1, v0, Lmiuix/core/widget/NestedScrollView;->mHasReachEdgeBeforeFling:Z

    .line 267
    if-nez v1, :cond_c

    .line 269
    const-string v1, "2.0"

    .line 271
    invoke-static {v1}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    .line 273
    move-result v1

    .line 276
    if-eqz v1, :cond_b

    .line 277
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    .line 279
    move-result-object v0

    .line 282
    const/16 v1, 0xc9

    .line 283
    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)V

    .line 285
    goto :goto_3

    .line 288
    :cond_b
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    .line 289
    invoke-static {v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 291
    :cond_c
    :goto_3
    return-void
    .line 294
.end method

.method public final computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 10
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 14
    move-result v2

    .line 17
    add-int v3, v2, v0

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVerticalFadingEdgeLength()I

    .line 20
    move-result v4

    .line 23
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 24
    if-lez v5, :cond_1

    .line 26
    add-int/2addr v2, v4

    .line 28
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 29
    move-result-object v5

    .line 32
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    move-result-object v6

    .line 36
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 37
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 39
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 41
    move-result v8

    .line 44
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 45
    add-int/2addr v8, v9

    .line 47
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 48
    add-int/2addr v8, v9

    .line 50
    if-ge v7, v8, :cond_2

    .line 51
    sub-int v4, v3, v4

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    move v4, v3

    .line 56
    :goto_0
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 57
    if-le v7, v4, :cond_4

    .line 59
    iget v8, p1, Landroid/graphics/Rect;->top:I

    .line 61
    if-le v8, v2, :cond_4

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 65
    move-result p0

    .line 68
    if-le p0, v0, :cond_3

    .line 69
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 71
    sub-int/2addr p0, v2

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 75
    sub-int/2addr p0, v4

    .line 77
    :goto_1
    add-int/2addr p0, v1

    .line 78
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 79
    move-result p1

    .line 82
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 83
    add-int/2addr p1, v0

    .line 85
    sub-int/2addr p1, v3

    .line 86
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 87
    move-result v1

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 92
    if-ge v3, v2, :cond_6

    .line 94
    if-ge v7, v4, :cond_6

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 98
    move-result v3

    .line 101
    if-le v3, v0, :cond_5

    .line 102
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 104
    sub-int/2addr v4, p1

    .line 106
    sub-int/2addr v1, v4

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 109
    sub-int/2addr v2, p1

    .line 111
    sub-int/2addr v1, v2

    .line 112
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 113
    move-result p0

    .line 116
    neg-int p0, p0

    .line 117
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 118
    move-result v1

    .line 121
    :cond_6
    :goto_3
    return v1
    .line 122
.end method

.method public final computeVerticalScrollExtent()I
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final computeVerticalScrollOffset()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    .line 3
    move-result p0

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 7
    move-result p0

    .line 10
    return p0
    .line 11
.end method

.method public final computeVerticalScrollRange()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 10
    move-result v2

    .line 13
    sub-int/2addr v1, v2

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 15
    move-result v2

    .line 18
    sub-int/2addr v1, v2

    .line 19
    if-nez v0, :cond_0

    .line 20
    return v1

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    move-result-object v3

    .line 31
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 34
    move-result v2

    .line 37
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 38
    add-int/2addr v2, v3

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 41
    move-result p0

    .line 44
    sub-int v1, v2, v1

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 47
    move-result v0

    .line 50
    if-gez p0, :cond_1

    .line 51
    sub-int/2addr v2, p0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    if-le p0, v0, :cond_2

    .line 55
    sub-int/2addr p0, v0

    .line 57
    add-int/2addr v2, p0

    .line 58
    :cond_2
    :goto_0
    return v2
    .line 59
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_e

    .line 7
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 14
    move-result v0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-lez v0, :cond_0

    .line 19
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    move-result-object v3

    .line 28
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 31
    move-result v0

    .line 34
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 35
    add-int/2addr v0, v4

    .line 37
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 38
    add-int/2addr v0, v3

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 41
    move-result v3

    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 45
    move-result v4

    .line 48
    sub-int/2addr v3, v4

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 50
    move-result v4

    .line 53
    sub-int/2addr v3, v4

    .line 54
    if-le v0, v3, :cond_0

    .line 55
    move v0, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v0, v2

    .line 59
    :goto_0
    const/16 v3, 0x82

    .line 60
    if-nez v0, :cond_3

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isFocused()Z

    .line 64
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 70
    move-result p1

    .line 73
    const/4 v0, 0x4

    .line 74
    if-eq p1, v0, :cond_2

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    .line 77
    move-result-object p1

    .line 80
    if-ne p1, p0, :cond_1

    .line 81
    const/4 p1, 0x0

    .line 83
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 84
    move-result-object v0

    .line 87
    invoke-virtual {v0, p0, p1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 88
    move-result-object p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    if-eq p1, p0, :cond_2

    .line 94
    invoke-virtual {p1, v3}, Landroid/view/View;->requestFocus(I)Z

    .line 96
    move-result p0

    .line 99
    if-eqz p0, :cond_2

    .line 100
    move p0, v1

    .line 102
    goto/16 :goto_5

    .line 103
    :cond_2
    :goto_1
    move p0, v2

    .line 105
    goto/16 :goto_5

    .line 106
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 108
    move-result v0

    .line 111
    if-nez v0, :cond_2

    .line 112
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 114
    move-result v0

    .line 117
    const/16 v4, 0x13

    .line 118
    const/16 v5, 0x21

    .line 120
    if-eq v0, v4, :cond_b

    .line 122
    const/16 v4, 0x14

    .line 124
    if-eq v0, v4, :cond_9

    .line 126
    const/16 v4, 0x3e

    .line 128
    if-eq v0, v4, :cond_4

    .line 130
    goto :goto_1

    .line 132
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 133
    move-result p1

    .line 136
    if-eqz p1, :cond_5

    .line 137
    goto :goto_2

    .line 139
    :cond_5
    move v5, v3

    .line 140
    :goto_2
    if-ne v5, v3, :cond_6

    .line 141
    move p1, v1

    .line 143
    goto :goto_3

    .line 144
    :cond_6
    move p1, v2

    .line 145
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 146
    move-result v0

    .line 149
    if-eqz p1, :cond_7

    .line 150
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 152
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 154
    move-result v3

    .line 157
    add-int/2addr v3, v0

    .line 158
    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 159
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 161
    move-result p1

    .line 164
    if-lez p1, :cond_8

    .line 165
    sub-int/2addr p1, v1

    .line 167
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 168
    move-result-object p1

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 172
    move-result-object v3

    .line 175
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 178
    move-result p1

    .line 181
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 182
    add-int/2addr p1, v3

    .line 184
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 185
    move-result v3

    .line 188
    add-int/2addr v3, p1

    .line 189
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 190
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 192
    add-int/2addr v4, v0

    .line 194
    if-le v4, v3, :cond_8

    .line 195
    sub-int/2addr v3, v0

    .line 197
    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 198
    goto :goto_4

    .line 200
    :cond_7
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 201
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 203
    move-result v3

    .line 206
    sub-int/2addr v3, v0

    .line 207
    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 208
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 210
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 212
    if-gez v3, :cond_8

    .line 214
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 216
    :cond_8
    :goto_4
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 218
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 220
    add-int/2addr v0, v3

    .line 222
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 223
    invoke-virtual {p0, v5, v3, v0}, Lmiuix/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    .line 225
    goto :goto_1

    .line 228
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 229
    move-result p1

    .line 232
    if-nez p1, :cond_a

    .line 233
    invoke-virtual {p0, v3}, Lmiuix/core/widget/NestedScrollView;->arrowScroll(I)Z

    .line 235
    move-result p0

    .line 238
    goto :goto_5

    .line 239
    :cond_a
    invoke-virtual {p0, v3}, Lmiuix/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 240
    move-result p0

    .line 243
    goto :goto_5

    .line 244
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 245
    move-result p1

    .line 248
    if-nez p1, :cond_c

    .line 249
    invoke-virtual {p0, v5}, Lmiuix/core/widget/NestedScrollView;->arrowScroll(I)Z

    .line 251
    move-result p0

    .line 254
    goto :goto_5

    .line 255
    :cond_c
    invoke-virtual {p0, v5}, Lmiuix/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 256
    move-result p0

    .line 259
    :goto_5
    if-eqz p0, :cond_d

    .line 260
    goto :goto_6

    .line 262
    :cond_d
    move v1, v2

    .line 263
    :cond_e
    :goto_6
    return v1
    .line 264
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    iget-object p0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    const/4 v3, 0x0

    .line 2
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
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

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method public final doScrollY(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    .line 4
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, v1, p1, v1}, Lmiuix/core/widget/NestedScrollView;->smoothScrollBy$2(IIZ)V

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 13
    :cond_1
    :goto_0
    return-void
    .line 16
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 5
    if-eqz v0, :cond_7

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 9
    move-result v0

    .line 12
    iget-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 13
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 15
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_3

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 22
    move-result v1

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 26
    move-result v3

    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 30
    move-result v4

    .line 33
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 34
    move-result v5

    .line 37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipToPadding()Z

    .line 38
    move-result v6

    .line 41
    if-eqz v6, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 44
    move-result v6

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 48
    move-result v7

    .line 51
    add-int/2addr v7, v6

    .line 52
    sub-int/2addr v3, v7

    .line 53
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 54
    move-result v6

    .line 57
    add-int/2addr v6, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v6, v2

    .line 60
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipToPadding()Z

    .line 61
    move-result v7

    .line 64
    if-eqz v7, :cond_1

    .line 65
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 67
    move-result v7

    .line 70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 71
    move-result v8

    .line 74
    add-int/2addr v8, v7

    .line 75
    sub-int/2addr v4, v8

    .line 76
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 77
    move-result v7

    .line 80
    add-int/2addr v5, v7

    .line 81
    :cond_1
    int-to-float v6, v6

    .line 82
    int-to-float v5, v5

    .line 83
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 84
    iget-object v5, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 87
    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 89
    iget-object v3, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 92
    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 94
    move-result v3

    .line 97
    if-eqz v3, :cond_2

    .line 98
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 100
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 102
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 105
    :cond_3
    iget-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 108
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 110
    move-result v1

    .line 113
    if-nez v1, :cond_7

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 116
    move-result v1

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 120
    move-result v3

    .line 123
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 124
    move-result v4

    .line 127
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 128
    move-result v5

    .line 131
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 132
    move-result v0

    .line 135
    add-int/2addr v0, v4

    .line 136
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipToPadding()Z

    .line 137
    move-result v5

    .line 140
    if-eqz v5, :cond_4

    .line 141
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 143
    move-result v5

    .line 146
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 147
    move-result v6

    .line 150
    add-int/2addr v6, v5

    .line 151
    sub-int/2addr v3, v6

    .line 152
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 153
    move-result v5

    .line 156
    add-int/2addr v2, v5

    .line 157
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipToPadding()Z

    .line 158
    move-result v5

    .line 161
    if-eqz v5, :cond_5

    .line 162
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 164
    move-result v5

    .line 167
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 168
    move-result v6

    .line 171
    add-int/2addr v6, v5

    .line 172
    sub-int/2addr v4, v6

    .line 173
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 174
    move-result v5

    .line 177
    sub-int/2addr v0, v5

    .line 178
    :cond_5
    sub-int/2addr v2, v3

    .line 179
    int-to-float v2, v2

    .line 180
    int-to-float v0, v0

    .line 181
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    int-to-float v0, v3

    .line 185
    const/4 v2, 0x0

    .line 186
    const/high16 v5, 0x43340000    # 180.0f

    .line 187
    invoke-virtual {p1, v5, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 189
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 192
    invoke-virtual {v0, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 194
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 197
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 199
    move-result v0

    .line 202
    if-eqz v0, :cond_6

    .line 203
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 205
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 207
    :cond_6
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 210
    :cond_7
    return-void
    .line 213
.end method

.method public final ensureGlows()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 9
    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 16
    new-instance v1, Landroid/widget/EdgeEffect;

    .line 17
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 22
    new-instance v1, Landroid/widget/EdgeEffect;

    .line 24
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 33
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 35
    :cond_1
    :goto_0
    return-void
    .line 37
.end method

.method public final fling(I)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    const/4 v0, 0x1

    .line 8
    if-lez p1, :cond_0

    .line 9
    move v1, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, -0x1

    .line 13
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    .line 14
    move-result v1

    .line 17
    xor-int/2addr v1, v0

    .line 18
    iput-boolean v1, p0, Lmiuix/core/widget/NestedScrollView;->mHasReachEdgeBeforeFling:Z

    .line 19
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 23
    move-result v3

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 27
    move-result v4

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    const/high16 v9, -0x80000000

    .line 34
    const v10, 0x7fffffff

    .line 36
    const/4 v11, 0x0

    .line 39
    const/4 v12, 0x0

    .line 40
    move v6, p1

    .line 41
    invoke-virtual/range {v2 .. v12}, Lmiuix/overscroller/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 42
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 45
    const/4 v1, 0x2

    .line 47
    invoke-virtual {p1, v1, v0}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 51
    move-result p1

    .line 54
    iput p1, p0, Lmiuix/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 55
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 57
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 59
    :cond_1
    return-void
    .line 62
.end method

.method public final fullScroll(I)Z
    .locals 5

    .line 1
    const/16 v0, 0x82

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 11
    move-result v3

    .line 14
    iget-object v4, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 15
    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 17
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 19
    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 23
    move-result v0

    .line 26
    if-lez v0, :cond_1

    .line 27
    sub-int/2addr v0, v1

    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 42
    move-result v0

    .line 45
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 46
    add-int/2addr v0, v1

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 49
    move-result v1

    .line 52
    add-int/2addr v1, v0

    .line 53
    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 54
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 56
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 58
    sub-int/2addr v1, v3

    .line 60
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 61
    :cond_1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 63
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 65
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 67
    invoke-virtual {p0, p1, v1, v0}, Lmiuix/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    .line 69
    move-result p0

    .line 72
    return p0
    .line 73
.end method

.method public getBottomFadingEdgeStrength()F
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVerticalFadingEdgeLength()I

    .line 21
    move-result v2

    .line 24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 25
    move-result v3

    .line 28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 29
    move-result v4

    .line 32
    sub-int/2addr v3, v4

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 34
    move-result v0

    .line 37
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 38
    add-int/2addr v0, v1

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 41
    move-result p0

    .line 44
    sub-int/2addr v0, p0

    .line 45
    sub-int/2addr v0, v3

    .line 46
    if-ge v0, v2, :cond_1

    .line 47
    int-to-float p0, v0

    .line 49
    int-to-float v0, v2

    .line 50
    div-float/2addr p0, v0

    .line 51
    return p0

    .line 52
    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 53
    return p0
    .line 55
.end method

.method public getMaxScrollAmount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 2
    move-result p0

    .line 5
    int-to-float p0, p0

    .line 6
    const/high16 v0, 0x3f000000    # 0.5f

    .line 7
    mul-float/2addr p0, v0

    .line 9
    float-to-int p0, p0

    .line 10
    return p0
    .line 11
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 2
    iget v0, p0, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesTouch:I

    .line 4
    iget p0, p0, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesNonTouch:I

    .line 6
    or-int/2addr p0, v0

    .line 8
    return p0
    .line 9
.end method

.method public getScrollRange()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 19
    move-result v0

    .line 22
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 23
    add-int/2addr v0, v3

    .line 25
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 26
    add-int/2addr v0, v2

    .line 28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 29
    move-result v2

    .line 32
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 33
    move-result v3

    .line 36
    sub-int/2addr v2, v3

    .line 37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 38
    move-result p0

    .line 41
    sub-int/2addr v2, p0

    .line 42
    sub-int/2addr v0, v2

    .line 43
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 44
    move-result v1

    .line 47
    :cond_0
    return v1
    .line 48
.end method

.method public getTopFadingEdgeStrength()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVerticalFadingEdgeLength()I

    .line 10
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 14
    move-result p0

    .line 17
    if-ge p0, v0, :cond_1

    .line 18
    int-to-float p0, p0

    .line 20
    int-to-float v0, v0

    .line 21
    div-float/2addr p0, v0

    .line 22
    return p0

    .line 23
    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 24
    return p0
    .line 26
.end method

.method public final hasNestedScrollingParent()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    iget-boolean p0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 4
    return p0
    .line 6
.end method

.method public final isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 12
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 14
    add-int/2addr p1, p2

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 17
    move-result v0

    .line 20
    if-lt p1, v0, :cond_0

    .line 21
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 23
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 25
    sub-int/2addr p1, p2

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 28
    move-result p0

    .line 31
    add-int/2addr p0, p3

    .line 32
    if-gt p1, p0, :cond_0

    .line 33
    const/4 p0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    :goto_0
    return p0
    .line 38
.end method

.method public final measureChild(Landroid/view/View;II)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object p3

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 6
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 10
    move-result p0

    .line 13
    add-int/2addr p0, v0

    .line 14
    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    invoke-static {p2, p0, p3}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    .line 17
    move-result p0

    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 22
    move-result p2

    .line 25
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    .line 26
    return-void
    .line 29
.end method

.method public final measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object p4

    .line 5
    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 8
    move-result p5

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 12
    move-result p0

    .line 15
    add-int/2addr p0, p5

    .line 16
    iget p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 17
    add-int/2addr p0, p5

    .line 19
    iget p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 20
    add-int/2addr p0, p5

    .line 22
    add-int/2addr p0, p3

    .line 23
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 24
    invoke-static {p2, p0, p3}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    .line 26
    move-result p0

    .line 29
    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 30
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 32
    add-int/2addr p2, p3

    .line 34
    const/4 p3, 0x0

    .line 35
    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 36
    move-result p2

    .line 39
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    .line 40
    return-void
    .line 43
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 6
    return-void
    .line 8
.end method

.method public final onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 5
    return-void
    .line 8
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    move-result v0

    .line 5
    and-int/lit8 v0, v0, 0x2

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    move-result v0

    .line 14
    const/16 v2, 0x8

    .line 15
    if-eq v0, v2, :cond_0

    .line 17
    goto :goto_1

    .line 19
    :cond_0
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 20
    if-nez v0, :cond_3

    .line 22
    const/16 v0, 0x9

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 26
    move-result p1

    .line 29
    const/4 v0, 0x0

    .line 30
    cmpl-float v0, p1, v0

    .line 31
    if-eqz v0, :cond_3

    .line 33
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    .line 35
    move-result v0

    .line 38
    mul-float/2addr p1, v0

    .line 39
    float-to-int p1, p1

    .line 40
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 41
    move-result v0

    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 45
    move-result v2

    .line 48
    sub-int p1, v2, p1

    .line 49
    if-gez p1, :cond_1

    .line 51
    move v0, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    if-le p1, v0, :cond_2

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    move v0, p1

    .line 58
    :goto_0
    if-eq v0, v2, :cond_3

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 61
    move-result p1

    .line 64
    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 65
    const/4 p0, 0x1

    .line 68
    return p0

    .line 69
    :cond_3
    :goto_1
    return v1
    .line 70
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    iget-boolean v3, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 10
    if-eqz v3, :cond_0

    .line 12
    return v1

    .line 14
    :cond_0
    and-int/lit16 v0, v0, 0xff

    .line 15
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v0, :cond_9

    .line 19
    const/4 v5, -0x1

    .line 21
    if-eq v0, v1, :cond_6

    .line 22
    if-eq v0, v2, :cond_2

    .line 24
    const/4 v1, 0x3

    .line 26
    if-eq v0, v1, :cond_6

    .line 27
    const/4 v1, 0x6

    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    goto/16 :goto_2

    .line 32
    :cond_1
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 34
    goto/16 :goto_2

    .line 37
    :cond_2
    iget v0, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 39
    if-ne v0, v5, :cond_3

    .line 41
    goto/16 :goto_2

    .line 43
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 45
    move-result v3

    .line 48
    if-ne v3, v5, :cond_4

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "Invalid pointerId="

    .line 53
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v0, " in onInterceptTouchEvent"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 69
    const-string v0, "NestedScrollView"

    .line 70
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    goto/16 :goto_2

    .line 75
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 77
    move-result v0

    .line 80
    float-to-int v0, v0

    .line 81
    iget v3, p0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 82
    sub-int v3, v0, v3

    .line 84
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 86
    move-result v3

    .line 89
    iget v5, p0, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    .line 90
    if-le v3, v5, :cond_d

    .line 92
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getNestedScrollAxes()I

    .line 94
    move-result v3

    .line 97
    and-int/2addr v2, v3

    .line 98
    if-nez v2, :cond_d

    .line 99
    iput-boolean v1, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 101
    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 103
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 105
    if-nez v0, :cond_5

    .line 107
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 109
    move-result-object v0

    .line 112
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 113
    :cond_5
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 115
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 117
    iput v4, p0, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 122
    move-result-object p1

    .line 125
    if-eqz p1, :cond_d

    .line 126
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 128
    goto/16 :goto_2

    .line 131
    :cond_6
    iput-boolean v4, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 133
    iput v5, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 135
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 137
    if-eqz p1, :cond_7

    .line 139
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 141
    iput-object v3, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 144
    :cond_7
    iget-object v5, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 146
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 148
    move-result v6

    .line 151
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 152
    move-result v7

    .line 155
    const/4 v8, 0x0

    .line 156
    const/4 v9, 0x0

    .line 157
    const/4 v10, 0x0

    .line 158
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 159
    move-result v11

    .line 162
    invoke-virtual/range {v5 .. v11}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    .line 163
    move-result p1

    .line 166
    if-eqz p1, :cond_8

    .line 167
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 169
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 171
    :cond_8
    invoke-virtual {p0, v4}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 174
    goto/16 :goto_2

    .line 177
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 179
    move-result v0

    .line 182
    float-to-int v0, v0

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 184
    move-result v5

    .line 187
    float-to-int v5, v5

    .line 188
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 189
    move-result v6

    .line 192
    if-lez v6, :cond_a

    .line 193
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 195
    move-result v6

    .line 198
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 199
    move-result-object v7

    .line 202
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 203
    move-result v8

    .line 206
    sub-int/2addr v8, v6

    .line 207
    if-lt v0, v8, :cond_a

    .line 208
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 210
    move-result v8

    .line 213
    sub-int/2addr v8, v6

    .line 214
    if-ge v0, v8, :cond_a

    .line 215
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 217
    move-result v6

    .line 220
    if-lt v5, v6, :cond_a

    .line 221
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 223
    move-result v6

    .line 226
    if-ge v5, v6, :cond_a

    .line 227
    move v5, v1

    .line 229
    goto :goto_0

    .line 230
    :cond_a
    move v5, v4

    .line 231
    :goto_0
    if-nez v5, :cond_b

    .line 232
    iput-boolean v4, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 234
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 236
    if-eqz p1, :cond_d

    .line 238
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 240
    iput-object v3, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 243
    goto :goto_2

    .line 245
    :cond_b
    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 246
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 248
    move-result v0

    .line 251
    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 252
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 254
    if-nez v0, :cond_c

    .line 256
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 258
    move-result-object v0

    .line 261
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 262
    goto :goto_1

    .line 264
    :cond_c
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 265
    :goto_1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 268
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 270
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 273
    invoke-virtual {p1}, Lmiuix/overscroller/widget/OverScroller;->computeScrollOffset()Z

    .line 275
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 278
    invoke-virtual {p1}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    .line 280
    move-result p1

    .line 283
    xor-int/2addr p1, v1

    .line 284
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 285
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 287
    invoke-virtual {p1, v2, v4}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    .line 289
    :cond_d
    :goto_2
    iget-boolean p0, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 292
    return p0
    .line 294
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 6
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 8
    if-eqz p2, :cond_0

    .line 10
    invoke-static {p2, p0}, Lmiuix/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    .line 12
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 18
    iget-object p4, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 20
    invoke-virtual {p2, p4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 22
    iget-object p4, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {p0, p2, p4}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 27
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {p0, p2}, Lmiuix/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    .line 32
    move-result p2

    .line 35
    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 38
    :cond_0
    const/4 p2, 0x0

    .line 41
    iput-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 42
    iget-boolean p4, p0, Lmiuix/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 44
    if-nez p4, :cond_6

    .line 46
    iget-object p4, p0, Lmiuix/core/widget/NestedScrollView;->mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 48
    if-eqz p4, :cond_1

    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 52
    move-result p4

    .line 55
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 56
    iget v0, v0, Lmiuix/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    .line 58
    invoke-virtual {p0, p4, v0}, Lmiuix/core/widget/NestedScrollView;->scrollTo(II)V

    .line 60
    iput-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 63
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 65
    move-result p2

    .line 68
    if-lez p2, :cond_2

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 71
    move-result-object p2

    .line 74
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    move-result-object p4

    .line 78
    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 81
    move-result p2

    .line 84
    iget v0, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 85
    add-int/2addr p2, v0

    .line 87
    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 88
    add-int/2addr p2, p4

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    move p2, p1

    .line 92
    :goto_0
    sub-int/2addr p5, p3

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 94
    move-result p3

    .line 97
    sub-int/2addr p5, p3

    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 99
    move-result p3

    .line 102
    sub-int/2addr p5, p3

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 104
    move-result p3

    .line 107
    if-ge p5, p2, :cond_5

    .line 108
    if-gez p3, :cond_3

    .line 110
    goto :goto_1

    .line 112
    :cond_3
    add-int p1, p5, p3

    .line 113
    if-le p1, p2, :cond_4

    .line 115
    sub-int p1, p2, p5

    .line 117
    goto :goto_1

    .line 119
    :cond_4
    move p1, p3

    .line 120
    :cond_5
    :goto_1
    if-eq p1, p3, :cond_6

    .line 121
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 123
    move-result p2

    .line 126
    invoke-virtual {p0, p2, p1}, Lmiuix/core/widget/NestedScrollView;->scrollTo(II)V

    .line 127
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 130
    move-result p1

    .line 133
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 134
    move-result p2

    .line 137
    invoke-virtual {p0, p1, p2}, Lmiuix/core/widget/NestedScrollView;->scrollTo(II)V

    .line 138
    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 142
    return-void
    .line 144
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mFillViewport:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    move-result p2

    .line 13
    if-nez p2, :cond_1

    .line 14
    return-void

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 17
    move-result p2

    .line 20
    if-lez p2, :cond_2

    .line 21
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    move-result v1

    .line 37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 38
    move-result v2

    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 42
    move-result v3

    .line 45
    sub-int/2addr v2, v3

    .line 46
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 47
    move-result v3

    .line 50
    sub-int/2addr v2, v3

    .line 51
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 52
    sub-int/2addr v2, v3

    .line 54
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 55
    sub-int/2addr v2, v3

    .line 57
    if-ge v1, v2, :cond_2

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 60
    move-result v1

    .line 63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 64
    move-result p0

    .line 67
    add-int/2addr p0, v1

    .line 68
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 69
    add-int/2addr p0, v1

    .line 71
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 72
    add-int/2addr p0, v1

    .line 74
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 75
    invoke-static {p1, p0, v0}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    .line 77
    move-result p0

    .line 80
    const/high16 p1, 0x40000000    # 2.0f

    .line 81
    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 83
    move-result p1

    .line 86
    invoke-virtual {p2, p0, p1}, Landroid/view/View;->measure(II)V

    .line 87
    :cond_2
    return-void
    .line 90
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 1
    if-nez p4, :cond_0

    .line 2
    const/4 p1, 0x0

    .line 4
    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p1, p3, p2}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 6
    float-to-int p1, p3

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->fling(I)V

    .line 10
    return p2

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
    .line 15
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 6

    const/4 v5, 0x0

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p2

    move v2, p3

    move v3, p5

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(III[I[I)Z

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p5, p1, p2}, Lmiuix/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p5, p6, p1}, Lmiuix/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p5, p6, p7}, Lmiuix/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/core/widget/NestedScrollView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {p1, p3, p4}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(II)V

    .line 2
    iget-object p0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p4}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    return-void
.end method

.method public final onNestedScrollInternal(II[I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1, p1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 10
    move-result v1

    .line 13
    sub-int v4, v1, v0

    .line 14
    if-eqz p3, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 18
    aget v1, p3, v0

    .line 19
    add-int/2addr v1, v4

    .line 21
    aput v1, p3, v0

    .line 22
    :cond_0
    sub-int v6, p1, v4

    .line 24
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 26
    const/4 v3, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    move v8, p2

    .line 31
    move-object v9, p3

    .line 32
    invoke-virtual/range {v2 .. v9}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    .line 33
    return-void
    .line 36
.end method

.method public final onOverScrolled(IIZZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2
    return-void
    .line 5
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    const/16 p1, 0x82

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    if-ne p1, v1, :cond_1

    .line 9
    const/16 p1, 0x21

    .line 11
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 13
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 15
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 32
    :goto_1
    const/4 v2, 0x0

    .line 33
    if-nez v0, :cond_3

    .line 34
    return v2

    .line 36
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 37
    move-result v3

    .line 40
    invoke-virtual {p0, v0, v2, v3}, Lmiuix/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    .line 41
    move-result p0

    .line 44
    xor-int/2addr p0, v1

    .line 45
    if-eqz p0, :cond_4

    .line 46
    return v2

    .line 48
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 49
    move-result p0

    .line 52
    return p0
    .line 53
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    return-void

    .line 9
    :cond_0
    check-cast p1, Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 10
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    iput-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 19
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->requestLayout()V

    .line 21
    return-void
    .line 24
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 6
    invoke-direct {v1, v0}, Lmiuix/core/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 11
    move-result p0

    .line 14
    iput p0, v1, Lmiuix/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    .line 15
    return-object v1
    .line 17
.end method

.method public final onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 2
    return-void
    .line 5
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
    iget v2, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

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
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 19
    move-result v1

    .line 22
    float-to-int v1, v1

    .line 23
    iput v1, p0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 26
    move-result p1

    .line 29
    iput p1, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 30
    iget-object p0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 32
    if-eqz p0, :cond_1

    .line 34
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    .line 36
    :cond_1
    return-void
    .line 39
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    .line 5
    move-result-object p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    if-ne p0, p1, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1, p0}, Lmiuix/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    .line 14
    move-result p2

    .line 17
    if-eqz p2, :cond_1

    .line 18
    const/4 p2, 0x0

    .line 20
    invoke-virtual {p0, p1, p2, p4}, Lmiuix/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    .line 21
    move-result p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 29
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 32
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 34
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 37
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    .line 39
    move-result p1

    .line 42
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->doScrollY(I)V

    .line 43
    :cond_1
    :goto_0
    return-void
    .line 46
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/core/widget/NestedScrollView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    and-int/lit8 p0, p3, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onStopNestedScroll(ILandroid/view/View;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 2
    iput v1, p2, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesNonTouch:I

    goto :goto_0

    .line 3
    :cond_0
    iput v1, p2, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesTouch:I

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Lmiuix/core/widget/NestedScrollView;->onStopNestedScroll(ILandroid/view/View;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6
    if-nez v2, :cond_0

    .line 8
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 10
    move-result-object v2

    .line 13
    iput-object v2, v0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 14
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 16
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v2, :cond_1

    .line 21
    iput v3, v0, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 23
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 25
    move-result-object v4

    .line 28
    iget v5, v0, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 29
    int-to-float v5, v5

    .line 31
    const/4 v6, 0x0

    .line 32
    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 33
    const/4 v5, 0x1

    .line 36
    const/4 v7, 0x2

    .line 37
    if-eqz v2, :cond_17

    .line 38
    const/4 v8, 0x0

    .line 40
    const/4 v9, -0x1

    .line 41
    if-eq v2, v5, :cond_13

    .line 42
    if-eq v2, v7, :cond_7

    .line 44
    const/4 v6, 0x3

    .line 46
    if-eq v2, v6, :cond_4

    .line 47
    const/4 v3, 0x5

    .line 49
    if-eq v2, v3, :cond_3

    .line 50
    const/4 v3, 0x6

    .line 52
    if-eq v2, v3, :cond_2

    .line 53
    goto/16 :goto_5

    .line 55
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lmiuix/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 57
    iget v2, v0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 60
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 62
    move-result v2

    .line 65
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 66
    move-result v1

    .line 69
    float-to-int v1, v1

    .line 70
    iput v1, v0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 71
    goto/16 :goto_5

    .line 73
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 75
    move-result v2

    .line 78
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 79
    move-result v3

    .line 82
    float-to-int v3, v3

    .line 83
    iput v3, v0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 84
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 86
    move-result v1

    .line 89
    iput v1, v0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 90
    goto/16 :goto_5

    .line 92
    :cond_4
    iget-boolean v1, v0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 94
    if-eqz v1, :cond_5

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 98
    move-result v1

    .line 101
    if-lez v1, :cond_5

    .line 102
    iget-object v10, v0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 106
    move-result v11

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 110
    move-result v12

    .line 113
    const/4 v13, 0x0

    .line 114
    const/4 v14, 0x0

    .line 115
    const/4 v15, 0x0

    .line 116
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 117
    move-result v16

    .line 120
    invoke-virtual/range {v10 .. v16}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    .line 121
    move-result v1

    .line 124
    if-eqz v1, :cond_5

    .line 125
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 127
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 129
    :cond_5
    iput v9, v0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 132
    iput-boolean v3, v0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 134
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 136
    if-eqz v1, :cond_6

    .line 138
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 140
    iput-object v8, v0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 143
    :cond_6
    invoke-virtual {v0, v3}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 145
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 148
    if-eqz v1, :cond_1b

    .line 150
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 152
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 155
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 157
    goto/16 :goto_5

    .line 160
    :cond_7
    iget v2, v0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 162
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 164
    move-result v2

    .line 167
    if-ne v2, v9, :cond_8

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    const-string v2, "Invalid pointerId="

    .line 172
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    iget v2, v0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    const-string v2, " in onTouchEvent"

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v1

    .line 190
    const-string v2, "NestedScrollView"

    .line 191
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    goto/16 :goto_5

    .line 196
    :cond_8
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 198
    move-result v6

    .line 201
    float-to-int v6, v6

    .line 202
    iget v7, v0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 203
    sub-int/2addr v7, v6

    .line 205
    iget-boolean v8, v0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 206
    if-nez v8, :cond_b

    .line 208
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 210
    move-result v8

    .line 213
    iget v9, v0, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    .line 214
    if-le v8, v9, :cond_b

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 218
    move-result-object v8

    .line 221
    if-eqz v8, :cond_9

    .line 222
    invoke-interface {v8, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 224
    :cond_9
    iput-boolean v5, v0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 227
    if-lez v7, :cond_a

    .line 229
    iget v8, v0, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    .line 231
    sub-int/2addr v7, v8

    .line 233
    goto :goto_0

    .line 234
    :cond_a
    iget v8, v0, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    .line 235
    add-int/2addr v7, v8

    .line 237
    :cond_b
    :goto_0
    iget-boolean v8, v0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 238
    if-eqz v8, :cond_1b

    .line 240
    const/4 v9, 0x0

    .line 242
    iget-object v12, v0, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 243
    iget-object v13, v0, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 245
    const/4 v11, 0x0

    .line 247
    iget-object v8, v0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 248
    move v10, v7

    .line 250
    invoke-virtual/range {v8 .. v13}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(III[I[I)Z

    .line 251
    move-result v8

    .line 254
    if-eqz v8, :cond_c

    .line 255
    iget-object v8, v0, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 257
    aget v8, v8, v5

    .line 259
    sub-int/2addr v7, v8

    .line 261
    iget v8, v0, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 262
    iget-object v9, v0, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 264
    aget v9, v9, v5

    .line 266
    add-int/2addr v8, v9

    .line 268
    iput v8, v0, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 269
    :cond_c
    iget-object v8, v0, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 271
    aget v8, v8, v5

    .line 273
    sub-int/2addr v6, v8

    .line 275
    iput v6, v0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 278
    move-result v6

    .line 281
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 282
    move-result v8

    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    .line 286
    move-result v9

    .line 289
    if-eqz v9, :cond_e

    .line 290
    if-ne v9, v5, :cond_d

    .line 292
    if-lez v8, :cond_d

    .line 294
    goto :goto_1

    .line 296
    :cond_d
    move v9, v3

    .line 297
    goto :goto_2

    .line 298
    :cond_e
    :goto_1
    move v9, v5

    .line 299
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 300
    move-result v10

    .line 303
    invoke-virtual {v0, v7, v3, v10, v8}, Lmiuix/core/widget/NestedScrollView;->overScrollByCompat(IIII)Z

    .line 304
    move-result v10

    .line 307
    if-eqz v10, :cond_f

    .line 308
    iget-object v10, v0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 310
    invoke-virtual {v10, v3}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    .line 312
    move-result v10

    .line 315
    if-nez v10, :cond_f

    .line 316
    iget-object v10, v0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 318
    invoke-virtual {v10}, Landroid/view/VelocityTracker;->clear()V

    .line 320
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 323
    move-result v10

    .line 326
    sub-int v13, v10, v6

    .line 327
    sub-int v15, v7, v13

    .line 329
    iget-object v10, v0, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 331
    aput v3, v10, v5

    .line 333
    iget-object v3, v0, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 335
    const/16 v17, 0x0

    .line 337
    const/4 v12, 0x0

    .line 339
    const/4 v14, 0x0

    .line 340
    iget-object v11, v0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 341
    move-object/from16 v16, v3

    .line 343
    move-object/from16 v18, v10

    .line 345
    invoke-virtual/range {v11 .. v18}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    .line 347
    iget v3, v0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 350
    iget-object v10, v0, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 352
    aget v10, v10, v5

    .line 354
    sub-int/2addr v3, v10

    .line 356
    iput v3, v0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 357
    iget v3, v0, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 359
    add-int/2addr v3, v10

    .line 361
    iput v3, v0, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 362
    if-eqz v9, :cond_1b

    .line 364
    iget-object v3, v0, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 366
    aget v3, v3, v5

    .line 368
    sub-int/2addr v7, v3

    .line 370
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->ensureGlows()V

    .line 371
    add-int/2addr v6, v7

    .line 374
    if-gez v6, :cond_10

    .line 375
    iget-object v3, v0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 377
    int-to-float v6, v7

    .line 379
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 380
    move-result v7

    .line 383
    int-to-float v7, v7

    .line 384
    div-float/2addr v6, v7

    .line 385
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 386
    move-result v1

    .line 389
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 390
    move-result v2

    .line 393
    int-to-float v2, v2

    .line 394
    div-float/2addr v1, v2

    .line 395
    invoke-static {v3, v6, v1}, Landroidx/core/widget/EdgeEffectCompat$Api21Impl;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 396
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 399
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 401
    move-result v1

    .line 404
    if-nez v1, :cond_11

    .line 405
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 407
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 409
    goto :goto_3

    .line 412
    :cond_10
    if-le v6, v8, :cond_11

    .line 413
    iget-object v3, v0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 415
    int-to-float v6, v7

    .line 417
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 418
    move-result v7

    .line 421
    int-to-float v7, v7

    .line 422
    div-float/2addr v6, v7

    .line 423
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 424
    move-result v1

    .line 427
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 428
    move-result v2

    .line 431
    int-to-float v2, v2

    .line 432
    div-float/2addr v1, v2

    .line 433
    const/high16 v2, 0x3f800000    # 1.0f

    .line 434
    sub-float/2addr v2, v1

    .line 436
    invoke-static {v3, v6, v2}, Landroidx/core/widget/EdgeEffectCompat$Api21Impl;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 437
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 440
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 442
    move-result v1

    .line 445
    if-nez v1, :cond_11

    .line 446
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 448
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 450
    :cond_11
    :goto_3
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 453
    if-eqz v1, :cond_1b

    .line 455
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 457
    move-result v1

    .line 460
    if-eqz v1, :cond_12

    .line 461
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 463
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 465
    move-result v1

    .line 468
    if-nez v1, :cond_1b

    .line 469
    :cond_12
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 471
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 473
    goto/16 :goto_5

    .line 476
    :cond_13
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 478
    iget v2, v0, Lmiuix/core/widget/NestedScrollView;->mMaximumVelocity:I

    .line 480
    int-to-float v2, v2

    .line 482
    const/16 v7, 0x3e8

    .line 483
    invoke-virtual {v1, v7, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 485
    iget v2, v0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 488
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 490
    move-result v1

    .line 493
    float-to-int v1, v1

    .line 494
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 495
    move-result v2

    .line 498
    iget v7, v0, Lmiuix/core/widget/NestedScrollView;->mMinimumVelocity:I

    .line 499
    if-lt v2, v7, :cond_14

    .line 501
    neg-int v1, v1

    .line 503
    int-to-float v2, v1

    .line 504
    invoke-virtual {v0, v6, v2}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    .line 505
    move-result v7

    .line 508
    if-nez v7, :cond_15

    .line 509
    invoke-virtual {v0, v6, v2, v5}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 511
    invoke-virtual {v0, v1}, Lmiuix/core/widget/NestedScrollView;->fling(I)V

    .line 514
    goto :goto_4

    .line 517
    :cond_14
    iget-object v10, v0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 518
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 520
    move-result v11

    .line 523
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 524
    move-result v12

    .line 527
    const/4 v13, 0x0

    .line 528
    const/4 v14, 0x0

    .line 529
    const/4 v15, 0x0

    .line 530
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 531
    move-result v16

    .line 534
    invoke-virtual/range {v10 .. v16}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    .line 535
    move-result v1

    .line 538
    if-eqz v1, :cond_15

    .line 539
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 541
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 543
    :cond_15
    :goto_4
    iput v9, v0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 546
    iput-boolean v3, v0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 548
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 550
    if-eqz v1, :cond_16

    .line 552
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 554
    iput-object v8, v0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 557
    :cond_16
    invoke-virtual {v0, v3}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 559
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 562
    if-eqz v1, :cond_1b

    .line 564
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 566
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 569
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 571
    goto :goto_5

    .line 574
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 575
    move-result v2

    .line 578
    if-nez v2, :cond_18

    .line 579
    return v3

    .line 581
    :cond_18
    iget-object v2, v0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 582
    invoke-virtual {v2}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    .line 584
    move-result v2

    .line 587
    xor-int/2addr v2, v5

    .line 588
    iput-boolean v2, v0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 589
    if-eqz v2, :cond_19

    .line 591
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 593
    move-result-object v2

    .line 596
    if-eqz v2, :cond_19

    .line 597
    invoke-interface {v2, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 599
    :cond_19
    iget-object v2, v0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 602
    invoke-virtual {v2}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    .line 604
    move-result v2

    .line 607
    if-nez v2, :cond_1a

    .line 608
    iget-object v2, v0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 610
    iget-object v6, v2, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/DynamicScroller;

    .line 612
    invoke-virtual {v6}, Lmiuix/overscroller/widget/DynamicScroller;->finish()V

    .line 614
    iget-object v2, v2, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/DynamicScroller;

    .line 617
    invoke-virtual {v2}, Lmiuix/overscroller/widget/DynamicScroller;->finish()V

    .line 619
    invoke-virtual {v0, v5}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 622
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 625
    move-result v2

    .line 628
    float-to-int v2, v2

    .line 629
    iput v2, v0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 630
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 632
    move-result v1

    .line 635
    iput v1, v0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 636
    iget-object v1, v0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 638
    invoke-virtual {v1, v7, v3}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    .line 640
    :cond_1b
    :goto_5
    iget-object v0, v0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 643
    if-eqz v0, :cond_1c

    .line 645
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 647
    :cond_1c
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 650
    return v5
    .line 653
.end method

.method public final overScrollByCompat(IIII)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->computeHorizontalScrollRange()I

    .line 6
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    .line 9
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    .line 12
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->computeVerticalScrollExtent()I

    .line 15
    const/4 v1, 0x1

    .line 18
    const/4 v0, 0x0

    .line 19
    add-int/2addr p2, v0

    .line 20
    add-int/2addr p3, p1

    .line 21
    add-int/2addr p4, v0

    .line 22
    if-lez p2, :cond_0

    .line 23
    :goto_0
    move p2, v0

    .line 25
    move p1, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    if-gez p2, :cond_1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    move p1, v0

    .line 31
    :goto_1
    if-le p3, p4, :cond_2

    .line 32
    move p3, p4

    .line 34
    :goto_2
    move p4, v1

    .line 35
    goto :goto_3

    .line 36
    :cond_2
    if-gez p3, :cond_3

    .line 37
    move p3, v0

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    move p4, v0

    .line 41
    :goto_3
    if-eqz p4, :cond_4

    .line 42
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 44
    invoke-virtual {v2, v1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    .line 46
    move-result v2

    .line 49
    if-nez v2, :cond_4

    .line 50
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 52
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 57
    move-result v8

    .line 60
    move v3, p2

    .line 61
    move v4, p3

    .line 62
    invoke-virtual/range {v2 .. v8}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    .line 63
    :cond_4
    invoke-virtual {p0, p2, p3, p1, p4}, Lmiuix/core/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    .line 66
    if-nez p1, :cond_6

    .line 69
    if-eqz p4, :cond_5

    .line 71
    goto :goto_4

    .line 73
    :cond_5
    move v1, v0

    .line 74
    :cond_6
    :goto_4
    return v1
    .line 75
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 8
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 13
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 16
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    iput-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 29
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 31
    return-void
    .line 34
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 6
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 11
    move-result v1

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 15
    move-result p1

    .line 18
    sub-int/2addr v1, p1

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 20
    invoke-virtual {p0, p2}, Lmiuix/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    .line 23
    move-result p1

    .line 26
    const/4 p2, 0x0

    .line 27
    if-eqz p1, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, p2

    .line 32
    :goto_0
    if-eqz v0, :cond_2

    .line 33
    if-eqz p3, :cond_1

    .line 35
    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 37
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0, p2, p1, p2}, Lmiuix/core/widget/NestedScrollView;->smoothScrollBy$2(IIZ)V

    .line 41
    :cond_2
    :goto_1
    return v0
    .line 44
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 8
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 14
    return-void
    .line 17
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 5
    return-void
    .line 8
.end method

.method public final scrollAndFocus(III)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 10
    move-result v4

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 14
    move-result v5

    .line 17
    add-int/2addr v4, v5

    .line 18
    const/16 v6, 0x21

    .line 19
    if-ne v1, v6, :cond_0

    .line 21
    const/4 v6, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v6, 0x0

    .line 25
    :goto_0
    const/4 v9, 0x2

    .line 26
    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->getFocusables(I)Ljava/util/ArrayList;

    .line 27
    move-result-object v9

    .line 30
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 31
    move-result v10

    .line 34
    const/4 v11, 0x0

    .line 35
    const/4 v12, 0x0

    .line 36
    const/4 v13, 0x0

    .line 37
    :goto_1
    if-ge v12, v10, :cond_9

    .line 38
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v14

    .line 43
    check-cast v14, Landroid/view/View;

    .line 44
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    .line 46
    move-result v15

    .line 49
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    .line 50
    move-result v7

    .line 53
    if-ge v2, v7, :cond_8

    .line 54
    if-ge v15, v3, :cond_8

    .line 56
    if-ge v2, v15, :cond_1

    .line 58
    if-ge v7, v3, :cond_1

    .line 60
    const/16 v16, 0x1

    .line 62
    goto :goto_2

    .line 64
    :cond_1
    const/16 v16, 0x0

    .line 65
    :goto_2
    if-nez v11, :cond_2

    .line 67
    move-object v11, v14

    .line 69
    move/from16 v13, v16

    .line 70
    goto :goto_5

    .line 72
    :cond_2
    if-eqz v6, :cond_3

    .line 73
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    .line 75
    move-result v8

    .line 78
    if-lt v15, v8, :cond_4

    .line 79
    :cond_3
    if-nez v6, :cond_5

    .line 81
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    .line 83
    move-result v8

    .line 86
    if-le v7, v8, :cond_5

    .line 87
    :cond_4
    const/4 v7, 0x1

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    const/4 v7, 0x0

    .line 91
    :goto_3
    if-eqz v13, :cond_6

    .line 92
    if-eqz v16, :cond_8

    .line 94
    if-eqz v7, :cond_8

    .line 96
    goto :goto_4

    .line 98
    :cond_6
    if-eqz v16, :cond_7

    .line 99
    move-object v11, v14

    .line 101
    const/4 v13, 0x1

    .line 102
    goto :goto_5

    .line 103
    :cond_7
    if-eqz v7, :cond_8

    .line 104
    :goto_4
    move-object v11, v14

    .line 106
    :cond_8
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 107
    goto :goto_1

    .line 109
    :cond_9
    if-nez v11, :cond_a

    .line 110
    move-object v11, v0

    .line 112
    :cond_a
    if-lt v2, v5, :cond_b

    .line 113
    if-gt v3, v4, :cond_b

    .line 115
    const/4 v7, 0x0

    .line 117
    goto :goto_7

    .line 118
    :cond_b
    if-eqz v6, :cond_c

    .line 119
    sub-int/2addr v2, v5

    .line 121
    goto :goto_6

    .line 122
    :cond_c
    sub-int v2, v3, v4

    .line 123
    :goto_6
    invoke-virtual {v0, v2}, Lmiuix/core/widget/NestedScrollView;->doScrollY(I)V

    .line 125
    const/4 v7, 0x1

    .line 128
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    .line 129
    move-result-object v0

    .line 132
    if-eq v11, v0, :cond_d

    .line 133
    invoke-virtual {v11, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 135
    :cond_d
    return v7
    .line 138
.end method

.method public final scrollTo(II)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    if-lez v0, :cond_7

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 19
    move-result v3

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 23
    move-result v4

    .line 26
    sub-int/2addr v3, v4

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 28
    move-result v4

    .line 31
    sub-int/2addr v3, v4

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 33
    move-result v4

    .line 36
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 37
    add-int/2addr v4, v5

    .line 39
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 40
    add-int/2addr v4, v5

    .line 42
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 43
    move-result v5

    .line 46
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 47
    move-result v6

    .line 50
    sub-int/2addr v5, v6

    .line 51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 52
    move-result v6

    .line 55
    sub-int/2addr v5, v6

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 57
    move-result v1

    .line 60
    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 61
    add-int/2addr v1, v6

    .line 63
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 64
    add-int/2addr v1, v2

    .line 66
    if-ge v3, v4, :cond_1

    .line 67
    if-gez p1, :cond_0

    .line 69
    goto :goto_0

    .line 71
    :cond_0
    add-int v2, v3, p1

    .line 72
    if-le v2, v4, :cond_2

    .line 74
    sub-int p1, v4, v3

    .line 76
    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    move p1, v0

    .line 79
    :cond_2
    :goto_1
    if-ge v5, v1, :cond_4

    .line 80
    if-gez p2, :cond_3

    .line 82
    goto :goto_2

    .line 84
    :cond_3
    add-int v0, v5, p2

    .line 85
    if-le v0, v1, :cond_5

    .line 87
    sub-int p2, v1, v5

    .line 89
    goto :goto_3

    .line 91
    :cond_4
    :goto_2
    move p2, v0

    .line 92
    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 93
    move-result v0

    .line 96
    if-ne p1, v0, :cond_6

    .line 97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 99
    move-result v0

    .line 102
    if-eq p2, v0, :cond_7

    .line 103
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 105
    :cond_7
    return-void
    .line 108
.end method

.method public setFillViewport(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mFillViewport:Z

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mFillViewport:Z

    .line 6
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->requestLayout()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public setOnScrollChangeListener(Lmiuix/core/widget/NestedScrollView$OnScrollChangeListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    .line 2
    return-void
    .line 4
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final smoothScrollBy$2(IIZ)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 9
    move-result-wide v0

    .line 12
    iget-wide v2, p0, Lmiuix/core/widget/NestedScrollView;->mLastScroll:J

    .line 13
    sub-long/2addr v0, v2

    .line 15
    const-wide/16 v2, 0xfa

    .line 16
    cmp-long v0, v0, v2

    .line 18
    const/4 v1, 0x1

    .line 20
    if-lez v0, :cond_2

    .line 21
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    move-result-object v2

    .line 31
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 34
    move-result v0

    .line 37
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 38
    add-int/2addr v0, v3

    .line 40
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 41
    add-int/2addr v0, v2

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 44
    move-result v2

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 48
    move-result v3

    .line 51
    sub-int/2addr v2, v3

    .line 52
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 53
    move-result v3

    .line 56
    sub-int/2addr v2, v3

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 58
    move-result v3

    .line 61
    sub-int/2addr v0, v2

    .line 62
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 63
    move-result v0

    .line 66
    add-int/2addr p2, v3

    .line 67
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 68
    move-result p2

    .line 71
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 72
    move-result p2

    .line 75
    sub-int/2addr p2, v3

    .line 76
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 77
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 79
    move-result v2

    .line 82
    iput p1, v0, Lmiuix/overscroller/widget/OverScroller;->mMode:I

    .line 83
    iget-object v4, v0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/DynamicScroller;

    .line 85
    iput-boolean p1, v4, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 87
    int-to-double v5, v2

    .line 89
    iput-wide v5, v4, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 90
    iput-wide v5, v4, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 92
    add-int/2addr v2, p1

    .line 94
    int-to-double v5, v2

    .line 95
    iput-wide v5, v4, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 96
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 98
    move-result-wide v5

    .line 101
    iput-wide v5, v4, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 102
    const/16 v2, 0xfa

    .line 104
    iput v2, v4, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 106
    iget-object v0, v0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/DynamicScroller;

    .line 108
    iput-boolean p1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 110
    int-to-double v4, v3

    .line 112
    iput-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 113
    iput-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 115
    add-int/2addr v3, p2

    .line 117
    int-to-double p1, v3

    .line 118
    iput-wide p1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 119
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 121
    move-result-wide p1

    .line 124
    iput-wide p1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 125
    iput v2, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 127
    if-eqz p3, :cond_1

    .line 129
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 131
    const/4 p2, 0x2

    .line 133
    invoke-virtual {p1, p2, v1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    .line 134
    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0, v1}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 138
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 141
    move-result p1

    .line 144
    iput p1, p0, Lmiuix/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 145
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 147
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 149
    goto :goto_1

    .line 152
    :cond_2
    iget-object p3, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 153
    invoke-virtual {p3}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    .line 155
    move-result p3

    .line 158
    if-nez p3, :cond_3

    .line 159
    iget-object p3, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 161
    iget-object v0, p3, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/DynamicScroller;

    .line 163
    invoke-virtual {v0}, Lmiuix/overscroller/widget/DynamicScroller;->finish()V

    .line 165
    iget-object p3, p3, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/DynamicScroller;

    .line 168
    invoke-virtual {p3}, Lmiuix/overscroller/widget/DynamicScroller;->finish()V

    .line 170
    invoke-virtual {p0, v1}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 173
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 176
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 179
    move-result-wide p1

    .line 182
    iput-wide p1, p0, Lmiuix/core/widget/NestedScrollView;->mLastScroll:J

    .line 183
    return-void
    .line 185
.end method

.method public final startNestedScroll(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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

.method public final stopNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method public final stopNestedScroll(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method
