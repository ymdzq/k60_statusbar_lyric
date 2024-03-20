.class public Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;
.super Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ATTRS:[I


# instance fields
.field public mActionCount:I

.field public mBackgroundPadding:Landroid/graphics/Rect;

.field public final mBackgroundView:Landroid/view/View;

.field public mCollapseBackground:Landroid/graphics/drawable/Drawable;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceType:I

.field public final mExpandBackground:Landroid/graphics/drawable/Drawable;

.field public mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

.field public mMaxActionButtonWidth:I

.field public mMenuItemGap:I

.field public mMenuItemGapForBigWide:I

.field public mMenuItemGapForCommon:I

.field public mMenuItemGapForNormalWide:I

.field public mMenuItemGapForSmallWide:I

.field public mMenuItemGapForTinyWide:I

.field public mMenuItemHeight:I

.field public mMenuItemWidth:I

.field public mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

.field public mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

.field public mOverflowMenuViewAnimator:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

.field public final mSplitActionBarOverlayHeight:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const v0, 0x7f0402b9    # @attr/expandBackground

    .line 2
    const v1, 0x7f0406e0    # @attr/splitActionBarOverlayHeight

    .line 5
    const v2, 0x10100d4    # @android:attr/background

    .line 8
    filled-new-array {v2, v0, v1}, [I

    .line 11
    move-result-object v0

    .line 14
    sput-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->ATTRS:[I

    .line 15
    return-void
    .line 17
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 5
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForCommon:I

    .line 6
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForTinyWide:I

    .line 7
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForSmallWide:I

    .line 8
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForNormalWide:I

    .line 9
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForBigWide:I

    .line 10
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 11
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    const/4 v1, 0x0

    .line 12
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mContext:Landroid/content/Context;

    .line 14
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 15
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    .line 16
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    .line 17
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mSplitActionBarOverlayHeight:I

    .line 18
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->extractBackground()V

    .line 20
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 21
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 22
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 23
    invoke-static {}, Lmiuix/os/DeviceHelper;->detectType()I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mDeviceType:I

    .line 24
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->updateActionButtonValues(Landroid/content/Context;)V

    return-void
.end method

.method private getActionMenuItemCount()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    .line 8
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 15
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 17
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    .line 19
    move-result p0

    .line 22
    if-eq p0, v2, :cond_1

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 25
    :cond_1
    return v0
    .line 27
.end method

.method private getOverflowMenuViewAnimator()Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 6
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;-><init>(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)V

    .line 8
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 11
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 13
    return-object p0
    .line 15
.end method


# virtual methods
.method public final extractBackground()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 11
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 13
    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    .line 20
    :goto_0
    if-nez v0, :cond_2

    .line 22
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 24
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 26
    return-void

    .line 29
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 32
    return-void
    .line 35
.end method

.method public final filterLeftoverView(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 6
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 12
    if-ne v0, v1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    move v1, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v1, v3

    .line 19
    :goto_1
    if-eqz v1, :cond_2

    .line 20
    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 27
    if-eqz v0, :cond_4

    .line 29
    iget-boolean v0, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 31
    if-nez v0, :cond_3

    .line 33
    goto :goto_3

    .line 35
    :cond_3
    :goto_2
    move v0, v2

    .line 36
    goto :goto_4

    .line 37
    :cond_4
    :goto_3
    move v0, v3

    .line 38
    :goto_4
    if-eqz v0, :cond_5

    .line 39
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->filterLeftoverView(I)Z

    .line 41
    move v2, v3

    .line 44
    :cond_5
    return v2
    .line 45
.end method

.method public final getChildDrawingOrder(II)I
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 8
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    .line 10
    move-result v1

    .line 13
    const/4 v2, -0x1

    .line 14
    if-nez p2, :cond_1

    .line 15
    if-eq v0, v2, :cond_0

    .line 17
    return v0

    .line 19
    :cond_0
    if-eq v1, v2, :cond_2

    .line 20
    return v1

    .line 22
    :cond_1
    const/4 v3, 0x1

    .line 23
    if-ne p2, v3, :cond_2

    .line 24
    if-eq v0, v2, :cond_2

    .line 26
    if-eq v1, v2, :cond_2

    .line 28
    return v1

    .line 30
    :cond_2
    const/4 v2, 0x0

    .line 31
    :goto_0
    if-ge v2, p1, :cond_7

    .line 32
    if-eq v2, v0, :cond_6

    .line 34
    if-ne v2, v1, :cond_3

    .line 36
    goto :goto_2

    .line 38
    :cond_3
    if-ge v2, v0, :cond_4

    .line 39
    add-int/lit8 v3, v2, 0x1

    .line 41
    goto :goto_1

    .line 43
    :cond_4
    move v3, v2

    .line 44
    :goto_1
    if-ge v2, v1, :cond_5

    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 47
    :cond_5
    if-ne v3, p2, :cond_6

    .line 49
    return v2

    .line 51
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 52
    goto :goto_0

    .line 54
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->getChildDrawingOrder(II)I

    .line 55
    move-result p0

    .line 58
    return p0
    .line 59
.end method

.method public getCollapsedHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemHeight:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 8
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 10
    add-int/2addr v0, v1

    .line 12
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mSplitActionBarOverlayHeight:I

    .line 13
    sub-int/2addr v0, p0

    .line 15
    return v0
    .line 16
.end method

.method public final hasBackgroundView()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 3
    move-result-object v1

    .line 6
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 7
    const/4 v3, 0x1

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v1

    .line 15
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 16
    if-ne v1, p0, :cond_1

    .line 18
    :cond_0
    move v0, v3

    .line 20
    :cond_1
    return v0
    .line 21
.end method

.method public final hideOverflowMenu(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 2
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 4
    if-eq v0, v1, :cond_2

    .line 6
    sget-object v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 8
    if-ne v0, v2, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getOverflowMenuViewAnimator()Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 13
    move-result-object v2

    .line 16
    sget-object v3, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 17
    if-ne v0, v3, :cond_1

    .line 19
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 21
    invoke-virtual {v2, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->ensureAnimators(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 23
    iget-object p0, v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 26
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 28
    iget-object p0, v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 31
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 33
    iget-object p0, v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 36
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    sget-object p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 42
    if-ne v0, p0, :cond_2

    .line 44
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    .line 46
    :cond_2
    :goto_0
    return-void
    .line 49
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->updateActionButtonValues(Landroid/content/Context;)V

    .line 7
    return-void
    .line 10
.end method

.method public final onLayout(ZIIII)V
    .locals 9

    .line 1
    sub-int/2addr p4, p2

    .line 2
    sub-int/2addr p5, p3

    .line 3
    const/4 v3, 0x0

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 5
    const/4 p2, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 10
    move-result p1

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 14
    const/4 v2, 0x0

    .line 16
    move-object v0, p0

    .line 17
    move v4, p4

    .line 18
    move v5, p1

    .line 19
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 20
    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 23
    iget p3, p3, Landroid/graphics/Rect;->top:I

    .line 25
    sub-int/2addr p1, p3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move p1, p2

    .line 29
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 30
    const/4 v2, 0x0

    .line 32
    move-object v0, p0

    .line 33
    move v3, p1

    .line 34
    move v4, p4

    .line 35
    move v5, p5

    .line 36
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 37
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 40
    move-result p3

    .line 43
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemWidth:I

    .line 44
    sub-int/2addr p4, v0

    .line 46
    const/4 v6, 0x1

    .line 47
    shr-int/2addr p4, v6

    .line 48
    move v7, p2

    .line 49
    :goto_1
    if-ge v7, p3, :cond_4

    .line 50
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 52
    move-result-object v8

    .line 55
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 56
    if-eq v8, v0, :cond_2

    .line 58
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 60
    if-ne v8, v0, :cond_1

    .line 62
    goto :goto_2

    .line 64
    :cond_1
    move v0, p2

    .line 65
    goto :goto_3

    .line 66
    :cond_2
    :goto_2
    move v0, v6

    .line 67
    :goto_3
    if-eqz v0, :cond_3

    .line 68
    goto :goto_4

    .line 70
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 71
    move-result v0

    .line 74
    add-int v4, v0, p4

    .line 75
    move-object v0, p0

    .line 77
    move-object v1, v8

    .line 78
    move v2, p4

    .line 79
    move v3, p1

    .line 80
    move v5, p5

    .line 81
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 82
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 85
    move-result v0

    .line 88
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 89
    add-int/2addr v0, v1

    .line 91
    add-int/2addr v0, p4

    .line 92
    move p4, v0

    .line 93
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 94
    goto :goto_1

    .line 96
    :cond_4
    return-void
    .line 97
.end method

.method public final onMeasure(II)V
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 3
    move-result v7

    .line 6
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getActionMenuItemCount()I

    .line 7
    move-result v0

    .line 10
    iput v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    .line 11
    const/4 v8, 0x0

    .line 13
    if-eqz v7, :cond_10

    .line 14
    if-nez v0, :cond_0

    .line 16
    goto/16 :goto_7

    .line 18
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 20
    move-result v9

    .line 23
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    .line 24
    div-int v0, v9, v0

    .line 26
    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result v0

    .line 33
    iput v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 34
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 39
    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mDeviceType:I

    .line 40
    const/4 v2, 0x3

    .line 42
    if-ne v1, v2, :cond_1

    .line 43
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForTinyWide:I

    .line 45
    iput v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 47
    goto :goto_0

    .line 49
    :cond_1
    const/4 v2, 0x2

    .line 50
    if-ne v1, v2, :cond_5

    .line 51
    int-to-float v1, v9

    .line 53
    const/high16 v2, 0x3f800000    # 1.0f

    .line 54
    mul-float/2addr v1, v2

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 61
    move-result-object v0

    .line 64
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 65
    div-float/2addr v1, v0

    .line 67
    float-to-int v0, v1

    .line 68
    const/16 v1, 0x2bc

    .line 69
    const/16 v2, 0x2e4

    .line 71
    if-lt v0, v1, :cond_2

    .line 73
    if-ge v0, v2, :cond_2

    .line 75
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForSmallWide:I

    .line 77
    iput v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 79
    goto :goto_0

    .line 81
    :cond_2
    const/16 v1, 0x3e8

    .line 82
    if-lt v0, v2, :cond_3

    .line 84
    if-ge v0, v1, :cond_3

    .line 86
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForNormalWide:I

    .line 88
    iput v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 90
    goto :goto_0

    .line 92
    :cond_3
    if-lt v0, v1, :cond_4

    .line 93
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForBigWide:I

    .line 95
    iput v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 97
    goto :goto_0

    .line 99
    :cond_4
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForTinyWide:I

    .line 100
    iput v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 102
    goto :goto_0

    .line 104
    :cond_5
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForCommon:I

    .line 105
    iput v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 107
    :goto_0
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 109
    const/high16 v1, -0x80000000

    .line 111
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 113
    move-result v10

    .line 116
    move v11, v8

    .line 117
    move v12, v11

    .line 118
    move v13, v12

    .line 119
    :goto_1
    if-ge v11, v7, :cond_9

    .line 120
    invoke-virtual {p0, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 122
    move-result-object v14

    .line 125
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 126
    if-eq v14, v0, :cond_7

    .line 128
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 130
    if-ne v14, v0, :cond_6

    .line 132
    goto :goto_2

    .line 134
    :cond_6
    move v0, v8

    .line 135
    goto :goto_3

    .line 136
    :cond_7
    :goto_2
    const/4 v0, 0x1

    .line 137
    :goto_3
    if-eqz v0, :cond_8

    .line 138
    goto :goto_4

    .line 140
    :cond_8
    const/4 v3, 0x0

    .line 141
    const/4 v5, 0x0

    .line 142
    move-object v0, p0

    .line 143
    move-object v1, v14

    .line 144
    move v2, v10

    .line 145
    move/from16 v4, p2

    .line 146
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 148
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 151
    move-result v0

    .line 154
    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 155
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 157
    move-result v0

    .line 160
    add-int/2addr v12, v0

    .line 161
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 162
    move-result v0

    .line 165
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    .line 166
    move-result v13

    .line 169
    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 170
    goto :goto_1

    .line 172
    :cond_9
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 173
    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    .line 175
    add-int/lit8 v1, v1, -0x1

    .line 177
    mul-int/2addr v0, v1

    .line 179
    add-int/2addr v0, v12

    .line 180
    if-le v0, v9, :cond_a

    .line 181
    iput v8, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 183
    :cond_a
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 185
    mul-int/2addr v1, v0

    .line 187
    add-int v7, v1, v12

    .line 188
    iput v7, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemWidth:I

    .line 190
    iput v13, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemHeight:I

    .line 192
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 194
    sget-object v10, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 196
    if-eqz v0, :cond_d

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 200
    move-result-object v0

    .line 203
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 204
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mContext:Landroid/content/Context;

    .line 206
    sget v2, Lmiuix/core/util/MiuixUIUtils;->$r8$clinit:I

    .line 208
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 210
    move-result-object v2

    .line 213
    const-string v3, "android"

    .line 214
    const-string v4, "status_bar_height"

    .line 216
    const-string v5, "dimen"

    .line 218
    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    move-result v2

    .line 223
    if-lez v2, :cond_b

    .line 224
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 226
    move-result-object v1

    .line 229
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 230
    move-result v8

    .line 233
    :cond_b
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 234
    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemHeight:I

    .line 236
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 238
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 240
    const/4 v3, 0x0

    .line 242
    const/4 v5, 0x0

    .line 243
    move-object v0, p0

    .line 244
    move/from16 v2, p1

    .line 245
    move/from16 v4, p2

    .line 247
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 249
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 254
    move-result v0

    .line 257
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    .line 258
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 261
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 263
    move-result v0

    .line 266
    add-int/2addr v13, v0

    .line 267
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 268
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 270
    if-ne v0, v1, :cond_c

    .line 272
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 274
    const/4 v1, 0x0

    .line 276
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 277
    goto :goto_5

    .line 280
    :cond_c
    if-ne v0, v10, :cond_d

    .line 281
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 283
    int-to-float v1, v13

    .line 285
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 286
    :cond_d
    :goto_5
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 289
    if-nez v0, :cond_e

    .line 291
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 293
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 295
    add-int/2addr v13, v0

    .line 297
    :cond_e
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 298
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 300
    if-ne v1, v10, :cond_f

    .line 302
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 304
    goto :goto_6

    .line 306
    :cond_f
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    .line 307
    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 309
    invoke-virtual {p0, v9, v13}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 312
    return-void

    .line 315
    :cond_10
    :goto_7
    iput v8, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemHeight:I

    .line 316
    invoke-virtual {p0, v8, v8}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 318
    return-void
    .line 321
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 6
    if-nez v1, :cond_0

    .line 8
    const/4 v1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 12
    move-result v1

    .line 15
    :goto_0
    cmpl-float v0, v0, v1

    .line 16
    if-gtz v0, :cond_2

    .line 18
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 20
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    goto :goto_1

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 29
    :goto_2
    return p0
    .line 30
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->extractBackground()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setBgBlur(Z[I[I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setOverflowMenuView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 7
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-le v0, v2, :cond_0

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v0, v1

    .line 21
    :goto_0
    if-eq v0, p1, :cond_5

    .line 22
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 24
    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 28
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 36
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 39
    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 43
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 48
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 51
    :cond_2
    if-eqz p1, :cond_4

    .line 53
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 55
    if-nez v0, :cond_3

    .line 57
    new-instance v0, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 59
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 66
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 68
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 70
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 73
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 78
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 80
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->extractBackground()V

    .line 82
    :cond_5
    return-void
    .line 85
.end method

.method public setValue(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 7
    move-result p0

    .line 10
    int-to-float p0, p0

    .line 11
    mul-float/2addr p1, p0

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 13
    return-void
    .line 16
.end method

.method public final showOverflowMenu(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 2
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 4
    if-eq v0, v1, :cond_3

    .line 6
    sget-object v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 8
    if-eq v0, v2, :cond_3

    .line 10
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 12
    if-nez v2, :cond_0

    .line 14
    goto :goto_1

    .line 16
    :cond_0
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 17
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    .line 19
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getOverflowMenuViewAnimator()Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 24
    move-result-object v2

    .line 27
    sget-object v3, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 28
    if-ne v0, v3, :cond_1

    .line 30
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 32
    invoke-virtual {v2, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->ensureAnimators(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 34
    iget-object p1, v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 37
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 39
    iget-object p1, v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 42
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 44
    iget-object p1, v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 47
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    sget-object p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 53
    if-ne v0, p1, :cond_2

    .line 55
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    .line 57
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidateOnAnimation()V

    .line 60
    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 67
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 70
    return p1

    .line 73
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 74
    return p0
    .line 75
.end method

.method public final updateActionButtonValues(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f070a0e    # @dimen/miuix_appcompat_action_button_max_width '152.73dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v0

    .line 12
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v0

    .line 18
    const v1, 0x7f070a06    # @dimen/miuix_appcompat_action_button_gap '0.0dp'

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result v0

    .line 25
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForCommon:I

    .line 26
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mDeviceType:I

    .line 28
    const/4 v1, 0x1

    .line 30
    if-eq v0, v1, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v0

    .line 36
    const v1, 0x7f070a0a    # @dimen/miuix_appcompat_action_button_gap_tiny_wide '12.0dp'

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    move-result v0

    .line 43
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForTinyWide:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v0

    .line 49
    const v1, 0x7f070a09    # @dimen/miuix_appcompat_action_button_gap_small_wide '26.0dp'

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 53
    move-result v0

    .line 56
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForSmallWide:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v0

    .line 62
    const v1, 0x7f070a08    # @dimen/miuix_appcompat_action_button_gap_normal_wide '44.0dp'

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    move-result v0

    .line 69
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForNormalWide:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    move-result-object p1

    .line 75
    const v0, 0x7f070a07    # @dimen/miuix_appcompat_action_button_gap_big_wide '88.0dp'

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 79
    move-result p1

    .line 82
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForBigWide:I

    .line 83
    :cond_0
    return-void
    .line 85
.end method
