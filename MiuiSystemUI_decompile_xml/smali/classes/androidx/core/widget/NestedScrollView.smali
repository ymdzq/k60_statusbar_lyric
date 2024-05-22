.class public Landroidx/core/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/core/view/NestedScrollingChild3;


# static fields
.field public static final ACCESSIBILITY_DELEGATE:Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

.field public static final DECELERATION_RATE:F

.field public static final SCROLLVIEW_STYLEABLE:[I


# instance fields
.field public mActivePointerId:I

.field public final mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field public mChildToScrollTo:Landroid/view/View;

.field public mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field public mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field public mFillViewport:Z

.field public mIsBeingDragged:Z

.field public mIsLaidOut:Z

.field public mIsLayoutDirty:Z

.field public mLastMotionY:I

.field public mLastScroll:J

.field public mLastScrollerY:I

.field public mMaximumVelocity:I

.field public mMinimumVelocity:I

.field public mNestedYOffset:I

.field public mOnScrollChangeListener:Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;

.field public final mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field public final mPhysicalCoeff:F

.field public mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

.field public final mScrollConsumed:[I

.field public final mScrollOffset:[I

.field public mScroller:Landroid/widget/OverScroller;

.field public mSmoothScrollingEnabled:Z

.field public final mTempRect:Landroid/graphics/Rect;

.field public mTouchSlop:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 7
    move-result-wide v0

    .line 10
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 16
    move-result-wide v2

    .line 19
    div-double/2addr v0, v2

    .line 20
    double-to-float v0, v0

    .line 21
    sput v0, Landroidx/core/widget/NestedScrollView;->DECELERATION_RATE:F

    .line 22
    new-instance v0, Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

    .line 24
    invoke-direct {v0}, Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;-><init>()V

    .line 26
    sput-object v0, Landroidx/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

    .line 29
    const v0, 0x101017a    # @android:attr/fillViewport

    .line 31
    filled-new-array {v0}, [I

    .line 34
    move-result-object v0

    .line 37
    sput-object v0, Landroidx/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    .line 38
    return-void
    .line 40
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040577    # @attr/nestedScrollViewStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 8
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 9
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v2, -0x1

    .line 10
    iput v2, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 11
    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    new-array v2, v2, [I

    .line 12
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 13
    invoke-static {p1, p2}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object v2

    .line 14
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 15
    invoke-static {p1, p2}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object v2

    .line 16
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v2, v3

    const v3, 0x43c10b3d

    mul-float/2addr v2, v3

    const v3, 0x3f570a3d    # 0.84f

    mul-float/2addr v2, v3

    .line 18
    iput v2, p0, Landroidx/core/widget/NestedScrollView;->mPhysicalCoeff:F

    .line 19
    new-instance v2, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    const/high16 v2, 0x40000

    .line 21
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 22
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    .line 25
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroidx/core/widget/NestedScrollView;->mMinimumVelocity:I

    .line 26
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->mMaximumVelocity:I

    .line 27
    sget-object v2, Landroidx/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->setFillViewport(Z)V

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1}, Landroidx/core/view/NestedScrollingParentHelper;-><init>()V

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 31
    new-instance p1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 32
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 33
    sget-object p1, Landroidx/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 5

    .line 1
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->mVerticalScrollFactor:F

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
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mVerticalScrollFactor:F

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
    iget p0, p0, Landroidx/core/widget/NestedScrollView;->mVerticalScrollFactor:F

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
    invoke-static {p0, p1}, Landroidx/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

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
    .locals 8

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
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getMaxScrollAmount()I

    .line 17
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 25
    move-result v5

    .line 28
    invoke-virtual {p0, v1, v2, v5}, Landroidx/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    .line 29
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 37
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 40
    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 42
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 45
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    .line 47
    move-result v2

    .line 50
    invoke-virtual {p0, v2, v4, v3, v3}, Landroidx/core/widget/NestedScrollView;->scrollBy(IIIZ)I

    .line 51
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 54
    goto :goto_2

    .line 57
    :cond_1
    const/16 v1, 0x21

    .line 58
    const/16 v5, 0x82

    .line 60
    if-ne p1, v1, :cond_2

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 64
    move-result v1

    .line 67
    if-ge v1, v2, :cond_2

    .line 68
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 70
    move-result v2

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    if-ne p1, v5, :cond_3

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 77
    move-result v1

    .line 80
    if-lez v1, :cond_3

    .line 81
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 83
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 87
    move-result-object v6

    .line 90
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 93
    move-result v1

    .line 96
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 97
    add-int/2addr v1, v6

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 100
    move-result v6

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 104
    move-result v7

    .line 107
    add-int/2addr v7, v6

    .line 108
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 109
    move-result v6

    .line 112
    sub-int/2addr v7, v6

    .line 113
    sub-int/2addr v1, v7

    .line 114
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 115
    move-result v2

    .line 118
    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 119
    return v4

    .line 121
    :cond_4
    if-ne p1, v5, :cond_5

    .line 122
    goto :goto_1

    .line 124
    :cond_5
    neg-int v2, v2

    .line 125
    :goto_1
    invoke-virtual {p0, v2, v4, v3, v3}, Landroidx/core/widget/NestedScrollView;->scrollBy(IIIZ)I

    .line 126
    :goto_2
    if-eqz v0, :cond_6

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 131
    move-result p1

    .line 134
    if-eqz p1, :cond_6

    .line 135
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 137
    move-result p1

    .line 140
    invoke-virtual {p0, v0, v4, p1}, Landroidx/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    .line 141
    move-result p1

    .line 144
    xor-int/2addr p1, v3

    .line 145
    if-eqz p1, :cond_6

    .line 146
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDescendantFocusability()I

    .line 148
    move-result p1

    .line 151
    const/high16 v0, 0x20000

    .line 152
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 157
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 160
    :cond_6
    return v3
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
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 4
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 13
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 15
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 18
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 20
    move-result v1

    .line 23
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 24
    sub-int v2, v1, v2

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 28
    move-result v3

    .line 31
    const/high16 v4, 0x3f000000    # 0.5f

    .line 32
    const/4 v5, 0x0

    .line 34
    const/high16 v6, 0x40800000    # 4.0f

    .line 35
    if-lez v2, :cond_1

    .line 37
    iget-object v7, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 39
    invoke-static {v7}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 41
    move-result v7

    .line 44
    cmpl-float v7, v7, v5

    .line 45
    if-eqz v7, :cond_1

    .line 47
    neg-int v5, v2

    .line 49
    int-to-float v5, v5

    .line 50
    mul-float/2addr v5, v6

    .line 51
    int-to-float v7, v3

    .line 52
    div-float/2addr v5, v7

    .line 53
    neg-int v3, v3

    .line 54
    int-to-float v3, v3

    .line 55
    div-float/2addr v3, v6

    .line 56
    iget-object v6, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 57
    invoke-static {v6, v5, v4}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    .line 59
    move-result v4

    .line 62
    mul-float/2addr v4, v3

    .line 63
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 64
    move-result v3

    .line 67
    if-eq v3, v2, :cond_2

    .line 68
    iget-object v4, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 70
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->finish()V

    .line 72
    goto :goto_0

    .line 75
    :cond_1
    if-gez v2, :cond_3

    .line 76
    iget-object v7, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 78
    invoke-static {v7}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 80
    move-result v7

    .line 83
    cmpl-float v5, v7, v5

    .line 84
    if-eqz v5, :cond_3

    .line 86
    int-to-float v5, v2

    .line 88
    mul-float/2addr v5, v6

    .line 89
    int-to-float v3, v3

    .line 90
    div-float/2addr v5, v3

    .line 91
    div-float/2addr v3, v6

    .line 92
    iget-object v6, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 93
    invoke-static {v6, v5, v4}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    .line 95
    move-result v4

    .line 98
    mul-float/2addr v4, v3

    .line 99
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 100
    move-result v3

    .line 103
    if-eq v3, v2, :cond_2

    .line 104
    iget-object v4, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 106
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->finish()V

    .line 108
    :cond_2
    :goto_0
    sub-int/2addr v2, v3

    .line 111
    :cond_3
    iput v1, v0, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 112
    iget-object v7, v0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 114
    const/4 v1, 0x1

    .line 116
    const/4 v9, 0x0

    .line 117
    aput v9, v7, v1

    .line 118
    const/4 v4, 0x0

    .line 120
    const/4 v8, 0x0

    .line 121
    const/4 v6, 0x1

    .line 122
    iget-object v3, v0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 123
    move v5, v2

    .line 125
    invoke-virtual/range {v3 .. v8}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(III[I[I)Z

    .line 126
    iget-object v3, v0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 129
    aget v3, v3, v1

    .line 131
    sub-int/2addr v2, v3

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 134
    move-result v3

    .line 137
    if-eqz v2, :cond_4

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 140
    move-result v4

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 144
    move-result v5

    .line 147
    invoke-virtual {v0, v2, v5, v4, v3}, Landroidx/core/widget/NestedScrollView;->overScrollByCompat(IIII)Z

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 151
    move-result v5

    .line 154
    sub-int v12, v5, v4

    .line 155
    sub-int/2addr v2, v12

    .line 157
    iget-object v4, v0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 158
    aput v9, v4, v1

    .line 160
    iget-object v15, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 162
    const/16 v16, 0x1

    .line 164
    const/4 v11, 0x0

    .line 166
    const/4 v13, 0x0

    .line 167
    iget-object v10, v0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 168
    move v14, v2

    .line 170
    move-object/from16 v17, v4

    .line 171
    invoke-virtual/range {v10 .. v17}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    .line 173
    iget-object v4, v0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 176
    aget v4, v4, v1

    .line 178
    sub-int/2addr v2, v4

    .line 180
    :cond_4
    if-eqz v2, :cond_9

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    .line 183
    move-result v4

    .line 186
    if-eqz v4, :cond_5

    .line 187
    if-ne v4, v1, :cond_6

    .line 189
    if-lez v3, :cond_6

    .line 191
    :cond_5
    move v9, v1

    .line 193
    :cond_6
    if-eqz v9, :cond_8

    .line 194
    if-gez v2, :cond_7

    .line 196
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 198
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 200
    move-result v2

    .line 203
    if-eqz v2, :cond_8

    .line 204
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 206
    iget-object v3, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 208
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 210
    move-result v3

    .line 213
    float-to-int v3, v3

    .line 214
    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 215
    goto :goto_1

    .line 218
    :cond_7
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 219
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 221
    move-result v2

    .line 224
    if-eqz v2, :cond_8

    .line 225
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 227
    iget-object v3, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 229
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 231
    move-result v3

    .line 234
    float-to-int v3, v3

    .line 235
    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 236
    :cond_8
    :goto_1
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 239
    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 241
    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 244
    :cond_9
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 247
    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    .line 249
    move-result v2

    .line 252
    if-nez v2, :cond_a

    .line 253
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 255
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 257
    goto :goto_2

    .line 260
    :cond_a
    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 261
    :goto_2
    return-void
    .line 264
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
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
    .line 18
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 5
    move-result v0

    .line 8
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 9
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 11
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_3

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 18
    move-result v1

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 22
    move-result v3

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 26
    move-result v4

    .line 29
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result v5

    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 34
    move-result v6

    .line 37
    if-eqz v6, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 40
    move-result v6

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 44
    move-result v7

    .line 47
    add-int/2addr v7, v6

    .line 48
    sub-int/2addr v3, v7

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 50
    move-result v6

    .line 53
    add-int/2addr v6, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v6, v2

    .line 56
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 57
    move-result v7

    .line 60
    if-eqz v7, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 63
    move-result v7

    .line 66
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 67
    move-result v8

    .line 70
    add-int/2addr v8, v7

    .line 71
    sub-int/2addr v4, v8

    .line 72
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 73
    move-result v7

    .line 76
    add-int/2addr v5, v7

    .line 77
    :cond_1
    int-to-float v6, v6

    .line 78
    int-to-float v5, v5

    .line 79
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 80
    iget-object v5, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 83
    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 85
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 88
    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 90
    move-result v3

    .line 93
    if-eqz v3, :cond_2

    .line 94
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 96
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 98
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 101
    :cond_3
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 104
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 106
    move-result v1

    .line 109
    if-nez v1, :cond_7

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 112
    move-result v1

    .line 115
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 116
    move-result v3

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 120
    move-result v4

    .line 123
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 124
    move-result v5

    .line 127
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 128
    move-result v0

    .line 131
    add-int/2addr v0, v4

    .line 132
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 133
    move-result v5

    .line 136
    if-eqz v5, :cond_4

    .line 137
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 139
    move-result v5

    .line 142
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 143
    move-result v6

    .line 146
    add-int/2addr v6, v5

    .line 147
    sub-int/2addr v3, v6

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 149
    move-result v5

    .line 152
    add-int/2addr v2, v5

    .line 153
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 154
    move-result v5

    .line 157
    if-eqz v5, :cond_5

    .line 158
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 160
    move-result v5

    .line 163
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 164
    move-result v6

    .line 167
    add-int/2addr v6, v5

    .line 168
    sub-int/2addr v4, v6

    .line 169
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 170
    move-result v5

    .line 173
    sub-int/2addr v0, v5

    .line 174
    :cond_5
    sub-int/2addr v2, v3

    .line 175
    int-to-float v2, v2

    .line 176
    int-to-float v0, v0

    .line 177
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 178
    int-to-float v0, v3

    .line 181
    const/4 v2, 0x0

    .line 182
    const/high16 v5, 0x43340000    # 180.0f

    .line 183
    invoke-virtual {p1, v5, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 185
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 188
    invoke-virtual {v0, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 190
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 193
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 195
    move-result v0

    .line 198
    if-eqz v0, :cond_6

    .line 199
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 201
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 203
    :cond_6
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 206
    :cond_7
    return-void
    .line 209
.end method

.method public final executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-lez v0, :cond_0

    .line 13
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    move-result-object v3

    .line 22
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 25
    move-result v0

    .line 28
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 29
    add-int/2addr v0, v4

    .line 31
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 32
    add-int/2addr v0, v3

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 35
    move-result v3

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 39
    move-result v4

    .line 42
    sub-int/2addr v3, v4

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 44
    move-result v4

    .line 47
    sub-int/2addr v3, v4

    .line 48
    if-le v0, v3, :cond_0

    .line 49
    move v0, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v0, v2

    .line 53
    :goto_0
    const/16 v3, 0x82

    .line 54
    if-nez v0, :cond_4

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isFocused()Z

    .line 58
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 64
    move-result p1

    .line 67
    const/4 v0, 0x4

    .line 68
    if-eq p1, v0, :cond_3

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    .line 71
    move-result-object p1

    .line 74
    if-ne p1, p0, :cond_1

    .line 75
    const/4 p1, 0x0

    .line 77
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 78
    move-result-object v0

    .line 81
    invoke-virtual {v0, p0, p1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 82
    move-result-object p1

    .line 85
    if-eqz p1, :cond_2

    .line 86
    if-eq p1, p0, :cond_2

    .line 88
    invoke-virtual {p1, v3}, Landroid/view/View;->requestFocus(I)Z

    .line 90
    move-result p0

    .line 93
    if-eqz p0, :cond_2

    .line 94
    goto :goto_1

    .line 96
    :cond_2
    move v1, v2

    .line 97
    :goto_1
    return v1

    .line 98
    :cond_3
    return v2

    .line 99
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 100
    move-result v0

    .line 103
    if-nez v0, :cond_f

    .line 104
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 106
    move-result v0

    .line 109
    const/16 v1, 0x13

    .line 110
    const/16 v4, 0x21

    .line 112
    if-eq v0, v1, :cond_d

    .line 114
    const/16 v1, 0x14

    .line 116
    if-eq v0, v1, :cond_b

    .line 118
    const/16 v1, 0x3e

    .line 120
    if-eq v0, v1, :cond_9

    .line 122
    const/16 p1, 0x5c

    .line 124
    if-eq v0, p1, :cond_8

    .line 126
    const/16 p1, 0x5d

    .line 128
    if-eq v0, p1, :cond_7

    .line 130
    const/16 p1, 0x7a

    .line 132
    if-eq v0, p1, :cond_6

    .line 134
    const/16 p1, 0x7b

    .line 136
    if-eq v0, p1, :cond_5

    .line 138
    goto :goto_2

    .line 140
    :cond_5
    invoke-virtual {p0, v3}, Landroidx/core/widget/NestedScrollView;->pageScroll(I)Z

    .line 141
    goto :goto_2

    .line 144
    :cond_6
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->pageScroll(I)Z

    .line 145
    goto :goto_2

    .line 148
    :cond_7
    invoke-virtual {p0, v3}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 149
    move-result v2

    .line 152
    goto :goto_2

    .line 153
    :cond_8
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 154
    move-result v2

    .line 157
    goto :goto_2

    .line 158
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 159
    move-result p1

    .line 162
    if-eqz p1, :cond_a

    .line 163
    move v3, v4

    .line 165
    :cond_a
    invoke-virtual {p0, v3}, Landroidx/core/widget/NestedScrollView;->pageScroll(I)Z

    .line 166
    goto :goto_2

    .line 169
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 170
    move-result p1

    .line 173
    if-eqz p1, :cond_c

    .line 174
    invoke-virtual {p0, v3}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 176
    move-result v2

    .line 179
    goto :goto_2

    .line 180
    :cond_c
    invoke-virtual {p0, v3}, Landroidx/core/widget/NestedScrollView;->arrowScroll(I)Z

    .line 181
    move-result v2

    .line 184
    goto :goto_2

    .line 185
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 186
    move-result p1

    .line 189
    if-eqz p1, :cond_e

    .line 190
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 192
    move-result v2

    .line 195
    goto :goto_2

    .line 196
    :cond_e
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->arrowScroll(I)Z

    .line 197
    move-result v2

    .line 200
    :cond_f
    :goto_2
    return v2
    .line 201
.end method

.method public final fling(I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 10
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 14
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/high16 v8, -0x80000000

    .line 21
    const v9, 0x7fffffff

    .line 23
    const/4 v10, 0x0

    .line 26
    const/4 v11, 0x0

    .line 27
    move v5, p1

    .line 28
    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 29
    const/4 p1, 0x2

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 37
    move-result p1

    .line 40
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 41
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 43
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 45
    :cond_0
    return-void
    .line 48
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
    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

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
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

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
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 56
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 58
    sub-int/2addr v1, v3

    .line 60
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 61
    :cond_1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 63
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 65
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 67
    invoke-virtual {p0, p1, v1, v0}, Landroidx/core/widget/NestedScrollView;->scrollAndFocus(III)Z

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
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

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
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    iget-boolean p0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 4
    return p0
    .line 6
.end method

.method public final isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

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
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

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

.method public measureChild(Landroid/view/View;II)V
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

.method public measureChildWithMargins(Landroid/view/View;IIII)V
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
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 6
    return-void
    .line 8
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 11
    if-nez v0, :cond_2

    .line 13
    const/4 v0, 0x2

    .line 15
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    .line 16
    move-result v1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    const/16 v0, 0x9

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 25
    move-result v0

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 29
    move-result v1

    .line 32
    float-to-int v1, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/high16 v1, 0x400000

    .line 35
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    .line 37
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    const/16 v1, 0x1a

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 45
    move-result v1

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 49
    move-result v4

    .line 52
    div-int/lit8 v0, v4, 0x2

    .line 53
    move v5, v1

    .line 55
    move v1, v0

    .line 56
    move v0, v5

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move v1, v2

    .line 59
    move v0, v3

    .line 60
    :goto_0
    cmpl-float v3, v0, v3

    .line 61
    if-eqz v3, :cond_2

    .line 63
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    .line 65
    move-result v2

    .line 68
    mul-float/2addr v0, v2

    .line 69
    float-to-int v0, v0

    .line 70
    const/16 v2, 0x2002

    .line 71
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    .line 73
    move-result p1

    .line 76
    neg-int v0, v0

    .line 77
    const/4 v2, 0x1

    .line 78
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/core/widget/NestedScrollView;->scrollBy(IIIZ)I

    .line 79
    :cond_2
    return v2
    .line 82
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
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
    iget-boolean v3, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

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
    goto/16 :goto_4

    .line 32
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 34
    goto/16 :goto_4

    .line 37
    :cond_2
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 39
    if-ne v0, v5, :cond_3

    .line 41
    goto/16 :goto_4

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
    goto/16 :goto_4

    .line 75
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 77
    move-result v0

    .line 80
    float-to-int v0, v0

    .line 81
    iget v3, p0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 82
    sub-int v3, v0, v3

    .line 84
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 86
    move-result v3

    .line 89
    iget v5, p0, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    .line 90
    if-le v3, v5, :cond_11

    .line 92
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getNestedScrollAxes()I

    .line 94
    move-result v3

    .line 97
    and-int/2addr v2, v3

    .line 98
    if-nez v2, :cond_11

    .line 99
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 101
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 103
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 105
    if-nez v0, :cond_5

    .line 107
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 109
    move-result-object v0

    .line 112
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 113
    :cond_5
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 115
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 117
    iput v4, p0, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 122
    move-result-object p1

    .line 125
    if-eqz p1, :cond_11

    .line 126
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 128
    goto/16 :goto_4

    .line 131
    :cond_6
    iput-boolean v4, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 133
    iput v5, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 135
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 137
    if-eqz p1, :cond_7

    .line 139
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 141
    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 144
    :cond_7
    iget-object v5, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

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
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 159
    move-result v11

    .line 162
    invoke-virtual/range {v5 .. v11}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

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
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 174
    goto/16 :goto_4

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
    if-nez v5, :cond_d

    .line 232
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->stopGlowAnimations(Landroid/view/MotionEvent;)Z

    .line 234
    move-result p1

    .line 237
    if-nez p1, :cond_c

    .line 238
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 240
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 242
    move-result p1

    .line 245
    if-nez p1, :cond_b

    .line 246
    goto :goto_1

    .line 248
    :cond_b
    move v1, v4

    .line 249
    :cond_c
    :goto_1
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 250
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 252
    if-eqz p1, :cond_11

    .line 254
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 256
    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 259
    goto :goto_4

    .line 261
    :cond_d
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 262
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 264
    move-result v0

    .line 267
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 268
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 270
    if-nez v0, :cond_e

    .line 272
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 274
    move-result-object v0

    .line 277
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 278
    goto :goto_2

    .line 280
    :cond_e
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 281
    :goto_2
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 284
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 286
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 289
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 291
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->stopGlowAnimations(Landroid/view/MotionEvent;)Z

    .line 294
    move-result p1

    .line 297
    if-nez p1, :cond_10

    .line 298
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 300
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 302
    move-result p1

    .line 305
    if-nez p1, :cond_f

    .line 306
    goto :goto_3

    .line 308
    :cond_f
    move v1, v4

    .line 309
    :cond_10
    :goto_3
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 310
    invoke-virtual {p0, v2, v4}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 312
    :cond_11
    :goto_4
    iget-boolean p0, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 315
    return p0
    .line 317
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 6
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 8
    if-eqz p2, :cond_0

    .line 10
    invoke-static {p2, p0}, Landroidx/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    .line 12
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 18
    iget-object p4, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 20
    invoke-virtual {p2, p4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 22
    iget-object p4, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {p0, p2, p4}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 27
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

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
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 42
    iget-boolean p4, p0, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 44
    if-nez p4, :cond_6

    .line 46
    iget-object p4, p0, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    .line 48
    if-eqz p4, :cond_1

    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 52
    move-result p4

    .line 55
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    .line 56
    iget v0, v0, Landroidx/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    .line 58
    invoke-virtual {p0, p4, v0}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 60
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

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
    invoke-virtual {p0, p2, p1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

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
    invoke-virtual {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 138
    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 142
    return-void
    .line 144
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

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
    invoke-virtual {p0, p1, p3, p2}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 6
    float-to-int p1, p3

    .line 9
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

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
    invoke-virtual {p0, p2, p3}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

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
    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 6

    const/4 v5, 0x0

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    invoke-virtual {p0, p5, p1, p2}, Landroidx/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p5, p6, p1}, Landroidx/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p5, p6, p7}, Landroidx/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {p1, p3, p4}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(II)V

    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1, p4}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

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
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    invoke-virtual {p0, v0, v2, v3}, Landroidx/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

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
    instance-of v0, p1, Landroidx/core/widget/NestedScrollView$SavedState;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    return-void

    .line 9
    :cond_0
    check-cast p1, Landroidx/core/widget/NestedScrollView$SavedState;

    .line 10
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    .line 19
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    .line 21
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/core/widget/NestedScrollView$SavedState;

    .line 6
    invoke-direct {v1, v0}, Landroidx/core/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 11
    move-result p0

    .line 14
    iput p0, v1, Landroidx/core/widget/NestedScrollView$SavedState;->scrollPosition:I

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
    iget v2, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

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
    iput v1, p0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 26
    move-result p1

    .line 29
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 30
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

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
    if-eqz p1, :cond_2

    .line 9
    if-ne p0, p1, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p0, p1, p2, p4}, Landroidx/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    .line 15
    move-result p3

    .line 18
    if-eqz p3, :cond_2

    .line 19
    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 21
    invoke-virtual {p1, p3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 23
    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 26
    invoke-virtual {p0, p1, p3}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 28
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 31
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    .line 33
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    iget-boolean p3, p0, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    .line 39
    if-eqz p3, :cond_1

    .line 41
    invoke-virtual {p0, p2, p1, p2}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(IIZ)V

    .line 43
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 47
    :cond_2
    :goto_0
    return-void
    .line 50
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

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
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

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
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Landroidx/core/widget/NestedScrollView;->onStopNestedScroll(ILandroid/view/View;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6
    if-nez v2, :cond_0

    .line 8
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 10
    move-result-object v2

    .line 13
    iput-object v2, v0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

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
    iput v3, v0, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 23
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 25
    move-result-object v4

    .line 28
    iget v5, v0, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

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
    if-eqz v2, :cond_18

    .line 38
    const/4 v8, 0x0

    .line 40
    const/4 v9, -0x1

    .line 41
    if-eq v2, v5, :cond_10

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
    goto/16 :goto_6

    .line 55
    :cond_2
    invoke-virtual/range {p0 .. p1}, Landroidx/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 57
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

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
    iput v1, v0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 71
    goto/16 :goto_6

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
    iput v3, v0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 84
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 86
    move-result v1

    .line 89
    iput v1, v0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 90
    goto/16 :goto_6

    .line 92
    :cond_4
    iget-boolean v1, v0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 94
    if-eqz v1, :cond_5

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 98
    move-result v1

    .line 101
    if-lez v1, :cond_5

    .line 102
    iget-object v10, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

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
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 117
    move-result v16

    .line 120
    invoke-virtual/range {v10 .. v16}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

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
    iput v9, v0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 132
    iput-boolean v3, v0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 134
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 136
    if-eqz v1, :cond_6

    .line 138
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 140
    iput-object v8, v0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 143
    :cond_6
    invoke-virtual {v0, v3}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 145
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 148
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 150
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 153
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 155
    goto/16 :goto_6

    .line 158
    :cond_7
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 160
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 162
    move-result v2

    .line 165
    if-ne v2, v9, :cond_8

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    const-string v2, "Invalid pointerId="

    .line 170
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    const-string v2, " in onTouchEvent"

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v1

    .line 188
    const-string v2, "NestedScrollView"

    .line 189
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    goto/16 :goto_6

    .line 194
    :cond_8
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 196
    move-result v7

    .line 199
    float-to-int v7, v7

    .line 200
    iget v8, v0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 201
    sub-int/2addr v8, v7

    .line 203
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 204
    move-result v9

    .line 207
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 208
    move-result v10

    .line 211
    int-to-float v10, v10

    .line 212
    div-float/2addr v9, v10

    .line 213
    int-to-float v10, v8

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 215
    move-result v11

    .line 218
    int-to-float v11, v11

    .line 219
    div-float/2addr v10, v11

    .line 220
    iget-object v11, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 221
    invoke-static {v11}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 223
    move-result v11

    .line 226
    cmpl-float v11, v11, v6

    .line 227
    if-eqz v11, :cond_a

    .line 229
    iget-object v11, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 231
    neg-float v10, v10

    .line 233
    invoke-static {v11, v10, v9}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    .line 234
    move-result v9

    .line 237
    neg-float v9, v9

    .line 238
    iget-object v10, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 239
    invoke-static {v10}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 241
    move-result v10

    .line 244
    cmpl-float v6, v10, v6

    .line 245
    if-nez v6, :cond_9

    .line 247
    iget-object v6, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 249
    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 251
    :cond_9
    :goto_0
    move v6, v9

    .line 254
    goto :goto_1

    .line 255
    :cond_a
    iget-object v11, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 256
    invoke-static {v11}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 258
    move-result v11

    .line 261
    cmpl-float v11, v11, v6

    .line 262
    if-eqz v11, :cond_b

    .line 264
    iget-object v11, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 266
    const/high16 v12, 0x3f800000    # 1.0f

    .line 268
    sub-float/2addr v12, v9

    .line 270
    invoke-static {v11, v10, v12}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    .line 271
    move-result v9

    .line 274
    iget-object v10, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 275
    invoke-static {v10}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 277
    move-result v10

    .line 280
    cmpl-float v6, v10, v6

    .line 281
    if-nez v6, :cond_9

    .line 283
    iget-object v6, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 285
    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 287
    goto :goto_0

    .line 290
    :cond_b
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 291
    move-result v9

    .line 294
    int-to-float v9, v9

    .line 295
    mul-float/2addr v6, v9

    .line 296
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 297
    move-result v6

    .line 300
    if-eqz v6, :cond_c

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 303
    :cond_c
    sub-int/2addr v8, v6

    .line 306
    iget-boolean v6, v0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 307
    if-nez v6, :cond_f

    .line 309
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 311
    move-result v6

    .line 314
    iget v9, v0, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    .line 315
    if-le v6, v9, :cond_f

    .line 317
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 319
    move-result-object v6

    .line 322
    if-eqz v6, :cond_d

    .line 323
    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 325
    :cond_d
    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 328
    if-lez v8, :cond_e

    .line 330
    iget v6, v0, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    .line 332
    sub-int/2addr v8, v6

    .line 334
    goto :goto_2

    .line 335
    :cond_e
    iget v6, v0, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    .line 336
    add-int/2addr v8, v6

    .line 338
    :cond_f
    :goto_2
    iget-boolean v6, v0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 339
    if-eqz v6, :cond_1c

    .line 341
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 343
    move-result v1

    .line 346
    float-to-int v1, v1

    .line 347
    invoke-virtual {v0, v8, v1, v3, v3}, Landroidx/core/widget/NestedScrollView;->scrollBy(IIIZ)I

    .line 348
    move-result v1

    .line 351
    sub-int/2addr v7, v1

    .line 352
    iput v7, v0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 353
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 355
    add-int/2addr v2, v1

    .line 357
    iput v2, v0, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 358
    goto/16 :goto_6

    .line 360
    :cond_10
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 362
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->mMaximumVelocity:I

    .line 364
    int-to-float v2, v2

    .line 366
    const/16 v7, 0x3e8

    .line 367
    invoke-virtual {v1, v7, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 369
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 372
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 374
    move-result v1

    .line 377
    float-to-int v1, v1

    .line 378
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 379
    move-result v2

    .line 382
    iget v7, v0, Landroidx/core/widget/NestedScrollView;->mMinimumVelocity:I

    .line 383
    if-lt v2, v7, :cond_15

    .line 385
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 387
    invoke-static {v2}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 389
    move-result v2

    .line 392
    cmpl-float v2, v2, v6

    .line 393
    if-eqz v2, :cond_12

    .line 395
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 397
    invoke-virtual {v0, v2, v1}, Landroidx/core/widget/NestedScrollView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    .line 399
    move-result v2

    .line 402
    if-eqz v2, :cond_11

    .line 403
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 405
    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 407
    goto :goto_3

    .line 410
    :cond_11
    neg-int v2, v1

    .line 411
    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    .line 412
    goto :goto_3

    .line 415
    :cond_12
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 416
    invoke-static {v2}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 418
    move-result v2

    .line 421
    cmpl-float v2, v2, v6

    .line 422
    if-eqz v2, :cond_14

    .line 424
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 426
    neg-int v7, v1

    .line 428
    invoke-virtual {v0, v2, v7}, Landroidx/core/widget/NestedScrollView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    .line 429
    move-result v2

    .line 432
    if-eqz v2, :cond_13

    .line 433
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 435
    invoke-virtual {v2, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 437
    goto :goto_3

    .line 440
    :cond_13
    invoke-virtual {v0, v7}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    .line 441
    :goto_3
    move v2, v5

    .line 444
    goto :goto_4

    .line 445
    :cond_14
    move v2, v3

    .line 446
    :goto_4
    if-nez v2, :cond_16

    .line 447
    neg-int v1, v1

    .line 449
    int-to-float v2, v1

    .line 450
    invoke-virtual {v0, v6, v2}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    .line 451
    move-result v7

    .line 454
    if-nez v7, :cond_16

    .line 455
    invoke-virtual {v0, v6, v2, v5}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 457
    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    .line 460
    goto :goto_5

    .line 463
    :cond_15
    iget-object v10, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 464
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 466
    move-result v11

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 470
    move-result v12

    .line 473
    const/4 v13, 0x0

    .line 474
    const/4 v14, 0x0

    .line 475
    const/4 v15, 0x0

    .line 476
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 477
    move-result v16

    .line 480
    invoke-virtual/range {v10 .. v16}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 481
    move-result v1

    .line 484
    if-eqz v1, :cond_16

    .line 485
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 487
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 489
    :cond_16
    :goto_5
    iput v9, v0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 492
    iput-boolean v3, v0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 494
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 496
    if-eqz v1, :cond_17

    .line 498
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 500
    iput-object v8, v0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 503
    :cond_17
    invoke-virtual {v0, v3}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 505
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 508
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 510
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 513
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 515
    goto :goto_6

    .line 518
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 519
    move-result v2

    .line 522
    if-nez v2, :cond_19

    .line 523
    return v3

    .line 525
    :cond_19
    iget-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 526
    if-eqz v2, :cond_1a

    .line 528
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 530
    move-result-object v2

    .line 533
    if-eqz v2, :cond_1a

    .line 534
    invoke-interface {v2, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 536
    :cond_1a
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 539
    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    .line 541
    move-result v2

    .line 544
    if-nez v2, :cond_1b

    .line 545
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 547
    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 549
    invoke-virtual {v0, v5}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 552
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 555
    move-result v2

    .line 558
    float-to-int v2, v2

    .line 559
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 560
    move-result v1

    .line 563
    iput v2, v0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 564
    iput v1, v0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 566
    invoke-virtual {v0, v7, v3}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 568
    :cond_1c
    :goto_6
    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 571
    if-eqz v0, :cond_1d

    .line 573
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 575
    :cond_1d
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 578
    return v5
    .line 581
.end method

.method public final overScrollByCompat(IIII)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollRange()I

    .line 6
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    .line 9
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    .line 12
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollExtent()I

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
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 44
    invoke-virtual {v2, v1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    .line 46
    move-result v2

    .line 49
    if-nez v2, :cond_4

    .line 50
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 52
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 57
    move-result v8

    .line 60
    move v3, p2

    .line 61
    move v4, p3

    .line 62
    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 63
    :cond_4
    invoke-virtual {p0, p2, p3, p1, p4}, Landroidx/core/widget/NestedScrollView;->onOverScrolled(IIZZ)V

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

.method public final pageScroll(I)Z
    .locals 4

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
    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 19
    move-result v2

    .line 22
    add-int/2addr v2, v3

    .line 23
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 26
    move-result v0

    .line 29
    if-lez v0, :cond_2

    .line 30
    sub-int/2addr v0, v1

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    move-result-object v1

    .line 40
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 43
    move-result v0

    .line 46
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 47
    add-int/2addr v0, v1

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 50
    move-result v1

    .line 53
    add-int/2addr v1, v0

    .line 54
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 55
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 57
    add-int/2addr v2, v3

    .line 59
    if-le v2, v1, :cond_2

    .line 60
    sub-int/2addr v1, v3

    .line 62
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 63
    goto :goto_1

    .line 65
    :cond_1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 66
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 68
    move-result v1

    .line 71
    sub-int/2addr v1, v3

    .line 72
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 73
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 75
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 77
    if-gez v1, :cond_2

    .line 79
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 81
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 83
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 85
    add-int/2addr v3, v1

    .line 87
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 88
    invoke-virtual {p0, p1, v1, v3}, Landroidx/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    .line 90
    move-result p0

    .line 93
    return p0
    .line 94
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 8
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 13
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 16
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

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
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

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
    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

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
    invoke-virtual {p0, p2, p1, p2}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(IIZ)V

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
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 8
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

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
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

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
    const/4 v3, 0x0

    .line 125
    const/4 v4, 0x1

    .line 126
    invoke-virtual {v0, v2, v3, v4, v4}, Landroidx/core/widget/NestedScrollView;->scrollBy(IIIZ)I

    .line 127
    move v7, v4

    .line 130
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    .line 131
    move-result-object v0

    .line 134
    if-eq v11, v0, :cond_d

    .line 135
    invoke-virtual {v11, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 137
    :cond_d
    return v7
    .line 140
.end method

.method public final scrollBy(IIIZ)I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p2

    .line 4
    move/from16 v10, p3

    .line 6
    const/4 v11, 0x1

    .line 8
    if-ne v10, v11, :cond_0

    .line 9
    const/4 v2, 0x2

    .line 11
    invoke-virtual {v0, v2, v10}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 12
    :cond_0
    const/4 v3, 0x0

    .line 15
    iget-object v6, v0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 16
    iget-object v7, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 18
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 20
    move/from16 v4, p1

    .line 22
    move/from16 v5, p3

    .line 24
    invoke-virtual/range {v2 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(III[I[I)Z

    .line 26
    move-result v2

    .line 29
    const/4 v12, 0x0

    .line 30
    if-eqz v2, :cond_1

    .line 31
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 33
    aget v2, v2, v11

    .line 35
    sub-int v2, p1, v2

    .line 37
    iget-object v3, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 39
    aget v3, v3, v11

    .line 41
    add-int/2addr v3, v12

    .line 43
    move v13, v2

    .line 44
    move v14, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move/from16 v13, p1

    .line 47
    move v14, v12

    .line 49
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 50
    move-result v15

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 54
    move-result v9

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    .line 58
    move-result v2

    .line 61
    if-eqz v2, :cond_3

    .line 62
    if-ne v2, v11, :cond_2

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 66
    move-result v2

    .line 69
    if-lez v2, :cond_2

    .line 70
    goto :goto_1

    .line 72
    :cond_2
    move v2, v12

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    :goto_1
    move v2, v11

    .line 75
    :goto_2
    if-eqz v2, :cond_4

    .line 76
    if-nez p4, :cond_4

    .line 78
    move/from16 v16, v11

    .line 80
    goto :goto_3

    .line 82
    :cond_4
    move/from16 v16, v12

    .line 83
    :goto_3
    invoke-virtual {v0, v13, v12, v15, v9}, Landroidx/core/widget/NestedScrollView;->overScrollByCompat(IIII)Z

    .line 85
    move-result v2

    .line 88
    if-eqz v2, :cond_5

    .line 89
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 91
    invoke-virtual {v2, v10}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    .line 93
    move-result v2

    .line 96
    if-nez v2, :cond_5

    .line 97
    move/from16 v17, v11

    .line 99
    goto :goto_4

    .line 101
    :cond_5
    move/from16 v17, v12

    .line 102
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 104
    move-result v2

    .line 107
    sub-int v4, v2, v15

    .line 108
    sub-int v6, v13, v4

    .line 110
    iget-object v8, v0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 112
    aput v12, v8, v11

    .line 114
    iget-object v7, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 116
    const/4 v3, 0x0

    .line 118
    const/4 v5, 0x0

    .line 119
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 120
    move-object/from16 v18, v8

    .line 122
    move/from16 v8, p3

    .line 124
    move v12, v9

    .line 126
    move-object/from16 v9, v18

    .line 127
    invoke-virtual/range {v2 .. v9}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    .line 129
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 132
    aget v2, v2, v11

    .line 134
    add-int/2addr v14, v2

    .line 136
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 137
    aget v2, v2, v11

    .line 139
    sub-int/2addr v13, v2

    .line 141
    add-int/2addr v15, v13

    .line 142
    if-gez v15, :cond_6

    .line 143
    if-eqz v16, :cond_7

    .line 145
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 147
    neg-int v3, v13

    .line 149
    int-to-float v3, v3

    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 151
    move-result v4

    .line 154
    int-to-float v4, v4

    .line 155
    div-float/2addr v3, v4

    .line 156
    int-to-float v1, v1

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 158
    move-result v4

    .line 161
    int-to-float v4, v4

    .line 162
    div-float/2addr v1, v4

    .line 163
    invoke-static {v2, v3, v1}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    .line 164
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 167
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 169
    move-result v1

    .line 172
    if-nez v1, :cond_7

    .line 173
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 175
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 177
    goto :goto_5

    .line 180
    :cond_6
    if-le v15, v12, :cond_7

    .line 181
    if-eqz v16, :cond_7

    .line 183
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 185
    int-to-float v3, v13

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 188
    move-result v4

    .line 191
    int-to-float v4, v4

    .line 192
    div-float/2addr v3, v4

    .line 193
    int-to-float v1, v1

    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 195
    move-result v4

    .line 198
    int-to-float v4, v4

    .line 199
    div-float/2addr v1, v4

    .line 200
    const/high16 v4, 0x3f800000    # 1.0f

    .line 201
    sub-float/2addr v4, v1

    .line 203
    invoke-static {v2, v3, v4}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    .line 204
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 207
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 209
    move-result v1

    .line 212
    if-nez v1, :cond_7

    .line 213
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 215
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 217
    :cond_7
    :goto_5
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 220
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 222
    move-result v1

    .line 225
    if-eqz v1, :cond_9

    .line 226
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 228
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 230
    move-result v1

    .line 233
    if-nez v1, :cond_8

    .line 234
    goto :goto_6

    .line 236
    :cond_8
    move/from16 v12, v17

    .line 237
    goto :goto_7

    .line 239
    :cond_9
    :goto_6
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 240
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 242
    const/4 v12, 0x0

    .line 245
    :goto_7
    if-eqz v12, :cond_a

    .line 246
    if-nez v10, :cond_a

    .line 248
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 250
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 252
    :cond_a
    if-ne v10, v11, :cond_b

    .line 255
    invoke-virtual {v0, v10}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 257
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 260
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 262
    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 265
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 267
    :cond_b
    return v14
    .line 270
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
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    .line 6
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->mOnScrollChangeListener:Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;

    .line 2
    return-void
    .line 4
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    .line 2
    return-void
    .line 4
.end method

.method public final shouldAbsorb(Landroid/widget/EdgeEffect;I)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lez p2, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    invoke-static {p1}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 6
    move-result p1

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 10
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    mul-float/2addr p1, v1

    .line 15
    neg-int p2, p2

    .line 16
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 17
    move-result p2

    .line 20
    int-to-float p2, p2

    .line 21
    const v1, 0x3eb33333    # 0.35f

    .line 22
    mul-float/2addr p2, v1

    .line 25
    iget v1, p0, Landroidx/core/widget/NestedScrollView;->mPhysicalCoeff:F

    .line 26
    const v2, 0x3c75c28f    # 0.015f

    .line 28
    mul-float/2addr v1, v2

    .line 31
    div-float/2addr p2, v1

    .line 32
    float-to-double v3, p2

    .line 33
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    .line 34
    move-result-wide v3

    .line 37
    sget p2, Landroidx/core/widget/NestedScrollView;->DECELERATION_RATE:F

    .line 38
    float-to-double v5, p2

    .line 40
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 41
    sub-double v7, v5, v7

    .line 43
    iget p0, p0, Landroidx/core/widget/NestedScrollView;->mPhysicalCoeff:F

    .line 45
    mul-float/2addr p0, v2

    .line 47
    float-to-double v1, p0

    .line 48
    div-double/2addr v5, v7

    .line 49
    mul-double/2addr v5, v3

    .line 50
    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    .line 51
    move-result-wide v3

    .line 54
    mul-double/2addr v3, v1

    .line 55
    double-to-float p0, v3

    .line 56
    cmpg-float p0, p0, p1

    .line 57
    if-gez p0, :cond_1

    .line 59
    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x0

    .line 62
    :goto_0
    return v0
    .line 63
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final smoothScrollBy(IIZ)V
    .locals 7

    .line 1
    const/16 v5, 0xfa

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 11
    move-result-wide v0

    .line 14
    iget-wide v2, p0, Landroidx/core/widget/NestedScrollView;->mLastScroll:J

    .line 15
    sub-long/2addr v0, v2

    .line 17
    const-wide/16 v2, 0xfa

    .line 18
    cmp-long v0, v0, v2

    .line 20
    const/4 v6, 0x1

    .line 22
    if-lez v0, :cond_2

    .line 23
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 36
    move-result v0

    .line 39
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 40
    add-int/2addr v0, v2

    .line 42
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 43
    add-int/2addr v0, v1

    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 46
    move-result v1

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 50
    move-result v2

    .line 53
    sub-int/2addr v1, v2

    .line 54
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 55
    move-result v2

    .line 58
    sub-int/2addr v1, v2

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 60
    move-result v2

    .line 63
    sub-int/2addr v0, v1

    .line 64
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 65
    move-result v0

    .line 68
    add-int/2addr p2, v2

    .line 69
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 70
    move-result p2

    .line 73
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 74
    move-result p1

    .line 77
    sub-int v4, p1, v2

    .line 78
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 80
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 82
    move-result v1

    .line 85
    const/4 v3, 0x0

    .line 86
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 87
    if-eqz p3, :cond_1

    .line 90
    const/4 p1, 0x2

    .line 92
    invoke-virtual {p0, p1, v6}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 93
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0, v6}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 97
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 100
    move-result p1

    .line 103
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 104
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 106
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 108
    goto :goto_1

    .line 111
    :cond_2
    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 112
    invoke-virtual {p3}, Landroid/widget/OverScroller;->isFinished()Z

    .line 114
    move-result p3

    .line 117
    if-nez p3, :cond_3

    .line 118
    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 120
    invoke-virtual {p3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 122
    invoke-virtual {p0, v6}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 125
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 128
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 131
    move-result-wide p1

    .line 134
    iput-wide p1, p0, Landroidx/core/widget/NestedScrollView;->mLastScroll:J

    .line 135
    return-void
    .line 137
.end method

.method public final startNestedScroll(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result p0

    return p0
.end method

.method public final startNestedScroll(II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p0

    return p0
.end method

.method public final stopGlowAnimations(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2
    invoke-static {v0}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 9
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 16
    move-result v3

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 20
    move-result v4

    .line 23
    int-to-float v4, v4

    .line 24
    div-float/2addr v3, v4

    .line 25
    invoke-static {v0, v1, v3}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    .line 26
    move v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 32
    invoke-static {v3}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 34
    move-result v3

    .line 37
    cmpl-float v3, v3, v1

    .line 38
    if-eqz v3, :cond_1

    .line 40
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 44
    move-result p1

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 48
    move-result p0

    .line 51
    int-to-float p0, p0

    .line 52
    div-float/2addr p1, p0

    .line 53
    const/high16 p0, 0x3f800000    # 1.0f

    .line 54
    sub-float/2addr p0, p1

    .line 56
    invoke-static {v0, v1, p0}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    .line 57
    goto :goto_1

    .line 60
    :cond_1
    move v2, v0

    .line 61
    :goto_1
    return v2
    .line 62
.end method

.method public final stopNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method public final stopNestedScroll(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method
