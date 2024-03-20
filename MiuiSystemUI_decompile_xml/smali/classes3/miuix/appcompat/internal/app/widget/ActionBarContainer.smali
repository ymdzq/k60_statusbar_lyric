.class public Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

.field public mActionBarHeightGap:I

.field public final mActionBarTransitionListeners:Ljava/util/List;

.field public mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field public mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

.field public mApplyBgBlur:Z

.field public mBackground:Landroid/graphics/drawable/Drawable;

.field public final mBackgroundArray:[Landroid/graphics/drawable/Drawable;

.field public mBgBlurBlendColorModes:[I

.field public mBgBlurBlendColors:[I

.field public mCurBarExpandState:I

.field public mCurBarResizable:Z

.field public mCurContextBarExpandState:I

.field public mCurContextBarResizable:Z

.field public mCurrentShowAnim:Landroid/animation/Animator;

.field public mCustomBackground:Z

.field public mExtraMarginTopOnMiuixFloating:I

.field public mHeightMaxMeasureSpec:I

.field public mIsEnableBgBlur:Z

.field public mIsMiuixFloating:Z

.field public final mIsSplit:Z

.field public mIsSupportBgBlur:Z

.field public mIsTransitioning:Z

.field public mLastActionBarResizingProcess:F

.field public mOverlayMode:Z

.field public mPendingInsets:Landroid/graphics/Rect;

.field public mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

.field public final mShowListener:Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;

.field public mSplitBackground:Landroid/graphics/drawable/Drawable;

.field public mStackedBackground:Landroid/graphics/drawable/Drawable;

.field public mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field public mTabContainerPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSupportBgBlur:Z

    .line 4
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsEnableBgBlur:Z

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mApplyBgBlur:Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBgBlurBlendColors:[I

    .line 7
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBgBlurBlendColorModes:[I

    .line 8
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 9
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 10
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    const/4 v2, -0x1

    .line 11
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHeightMaxMeasureSpec:I

    const/4 v2, 0x0

    .line 12
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastActionBarResizingProcess:F

    .line 13
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 14
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    .line 15
    new-instance v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;

    invoke-direct {v2, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;I)V

    .line 16
    new-instance v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;I)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mShowListener:Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;

    .line 17
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x13

    .line 20
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x14

    .line 21
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    filled-new-array {p2, v1, v2}, [Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    const/16 p2, 0x1f

    .line 22
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getId()I

    move-result p2

    const v1, 0x7f0a08b4    # @id/split_action_bar

    if-ne p2, v1, :cond_0

    .line 24
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    const/16 p2, 0x12

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez p1, :cond_1

    .line 28
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 29
    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->resizeSplitMaxHeight()V

    .line 30
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    goto :goto_0

    .line 31
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    :goto_0
    move v0, v3

    .line 32
    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public static getActionMenuViewCollapseHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 5
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    .line 11
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    cmpl-float v1, v1, v2

    .line 16
    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    .line 20
    move-result v1

    .line 23
    if-lez v1, :cond_0

    .line 24
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    .line 26
    move-result p0

    .line 29
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result v0

    .line 33
    :cond_0
    return v0
    .line 34
.end method

.method public static getActionMenuViewInsetHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 5
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    .line 11
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    cmpl-float v1, v1, v2

    .line 16
    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    .line 20
    move-result v1

    .line 23
    if-lez v1, :cond_0

    .line 24
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    .line 26
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    .line 31
    move-result p0

    .line 34
    sub-float/2addr v1, p0

    .line 35
    float-to-int p0, v1

    .line 36
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 37
    move-result v0

    .line 40
    :cond_0
    return v0
    .line 41
.end method


# virtual methods
.method public final applyInsetsTopByMargin(Lmiuix/appcompat/internal/app/widget/AbsActionBarView;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsMiuixFloating:Z

    .line 16
    if-eqz v1, :cond_0

    .line 18
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mExtraMarginTopOnMiuixFloating:I

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 23
    if-eqz p0, :cond_1

    .line 25
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    :goto_0
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    :cond_2
    return-void
    .line 36
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    return-void
    .line 5
.end method

.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 21
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 28
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    .line 36
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 40
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 43
    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 47
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    .line 55
    move-result-object p0

    .line 58
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 59
    :cond_2
    return-void
    .line 62
.end method

.method public getActionBarCoordinateListener()Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getCollapsedHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 7
    move-result v0

    .line 10
    const/16 v2, 0x8

    .line 11
    if-eq v0, v2, :cond_0

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 17
    move-result v0

    .line 20
    if-lez v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v1

    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 28
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 34
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 36
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getCollapsedHeight()I

    .line 38
    move-result p0

    .line 41
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 42
    :goto_1
    add-int/2addr p0, v0

    .line 44
    return p0

    .line 45
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 46
    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    move-result-object v0

    .line 53
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 56
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapsedHeight()I

    .line 58
    move-result p0

    .line 61
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 62
    goto :goto_1

    .line 64
    :cond_2
    return v1
    .line 65
.end method

.method public getInsetHeight()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 8
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionMenuViewInsetHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I

    .line 10
    move-result v0

    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 14
    move-result v0

    .line 17
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 18
    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionMenuViewInsetHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I

    .line 20
    move-result p0

    .line 23
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 24
    move-result p0

    .line 27
    return p0
    .line 28
.end method

.method public getPendingInsets()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 2
    return-object p0
    .line 4
.end method

.method public getSplitCollapsedHeight()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 8
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionMenuViewCollapseHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I

    .line 10
    move-result v0

    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 14
    move-result v0

    .line 17
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 18
    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionMenuViewCollapseHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I

    .line 20
    move-result p0

    .line 23
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 24
    move-result p0

    .line 27
    return p0
    .line 28
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsMiuixFloating:Z

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p1

    .line 12
    const v0, 0x7f070ae0    # @dimen/miuix_appcompat_floating_window_top_offset '8.0dp'

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    move-result p1

    .line 19
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mExtraMarginTopOnMiuixFloating:I

    .line 20
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->resizeSplitMaxHeight()V

    .line 22
    return-void
    .line 25
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    .line 5
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 9
    return-void
    .line 12
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 15
    if-eqz v0, :cond_1

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 20
    if-eqz p0, :cond_2

    .line 22
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 24
    :cond_2
    :goto_0
    return-void
    .line 27
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0057    # @id/action_bar

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 12
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 14
    const v0, 0x7f0a006a    # @id/action_context_bar

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 23
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 27
    if-eqz v0, :cond_0

    .line 29
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    .line 31
    iput-object v1, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    .line 33
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 35
    move-result v0

    .line 38
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    .line 39
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 41
    iget-boolean v0, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 43
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    .line 45
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 47
    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    .line 51
    move-result v0

    .line 54
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 55
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 57
    iget-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 59
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    .line 61
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 63
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 65
    :cond_1
    return-void
    .line 68
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x1

    .line 8
    return p0
    .line 9
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

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

.method public final onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 5
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p3

    .line 15
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p3

    .line 19
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    move-result-object p3

    .line 23
    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 24
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 26
    const/4 p5, 0x0

    .line 28
    if-eqz p3, :cond_3

    .line 29
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 31
    move-result p3

    .line 34
    const/16 v0, 0x8

    .line 35
    if-eq p3, v0, :cond_3

    .line 37
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 39
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 41
    move-result p3

    .line 44
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 45
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 49
    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 55
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 57
    move-result v0

    .line 60
    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 65
    move-result v1

    .line 68
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    .line 69
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 71
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 73
    move-result v3

    .line 76
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 77
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 79
    move-result v4

    .line 82
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 83
    goto :goto_2

    .line 86
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 87
    if-eqz v0, :cond_1

    .line 89
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 91
    goto :goto_0

    .line 93
    :cond_1
    move v0, p5

    .line 94
    :goto_0
    add-int/2addr p3, v0

    .line 95
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 98
    move-result v1

    .line 101
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 102
    if-eqz v2, :cond_2

    .line 104
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 106
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    .line 108
    add-int/2addr v2, v3

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    .line 112
    :goto_1
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 114
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 116
    move-result v3

    .line 119
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 120
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 122
    move-result v4

    .line 125
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 126
    :goto_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 129
    sub-int p3, p1, p3

    .line 131
    invoke-virtual {v0, p2, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    .line 133
    :cond_3
    iget-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 136
    const/4 v0, 0x1

    .line 138
    if-eqz p3, :cond_4

    .line 139
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 141
    if-eqz p1, :cond_a

    .line 143
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    .line 145
    move-result p2

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 149
    move-result p3

    .line 152
    invoke-virtual {p1, p5, p5, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 153
    goto :goto_6

    .line 156
    :cond_4
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    .line 157
    if-nez v1, :cond_9

    .line 159
    if-nez p3, :cond_9

    .line 161
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 163
    if-eqz p3, :cond_9

    .line 165
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 167
    if-eqz v1, :cond_9

    .line 169
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    .line 171
    if-eqz v1, :cond_9

    .line 173
    array-length v1, v1

    .line 175
    const/4 v2, 0x3

    .line 176
    if-ge v1, v2, :cond_5

    .line 177
    goto :goto_5

    .line 179
    :cond_5
    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    .line 180
    move-result p3

    .line 183
    if-eqz p3, :cond_8

    .line 184
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 186
    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    .line 188
    move-result p3

    .line 191
    and-int/lit8 v1, p3, 0x2

    .line 192
    if-nez v1, :cond_7

    .line 194
    and-int/lit8 v1, p3, 0x4

    .line 196
    if-nez v1, :cond_7

    .line 198
    and-int/lit8 p3, p3, 0x10

    .line 200
    if-eqz p3, :cond_6

    .line 202
    goto :goto_3

    .line 204
    :cond_6
    move p3, v0

    .line 205
    goto :goto_4

    .line 206
    :cond_7
    :goto_3
    const/4 p3, 0x2

    .line 207
    goto :goto_4

    .line 208
    :cond_8
    move p3, p5

    .line 209
    :goto_4
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    .line 210
    aget-object p3, v1, p3

    .line 212
    if-eqz p3, :cond_9

    .line 214
    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 216
    :cond_9
    :goto_5
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 218
    if-eqz p3, :cond_a

    .line 220
    sub-int/2addr p4, p2

    .line 222
    invoke-virtual {p3, p5, p5, p4, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 223
    goto :goto_6

    .line 226
    :cond_a
    move v0, p5

    .line 227
    :goto_6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 228
    if-eqz p1, :cond_b

    .line 230
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    .line 232
    move-result p1

    .line 235
    if-nez p1, :cond_b

    .line 236
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 238
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 240
    move-result p1

    .line 243
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 244
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getCollapsedHeight()I

    .line 246
    move-result p2

    .line 249
    sub-int/2addr p1, p2

    .line 250
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 251
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 253
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandedHeight()I

    .line 255
    move-result p1

    .line 258
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 259
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getCollapsedHeight()I

    .line 261
    move-result p2

    .line 264
    goto :goto_7

    .line 265
    :cond_b
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 266
    if-eqz p1, :cond_c

    .line 268
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 270
    move-result p1

    .line 273
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 274
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapsedHeight()I

    .line 276
    move-result p2

    .line 279
    sub-int/2addr p1, p2

    .line 280
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 281
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 283
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandedHeight()I

    .line 285
    move-result p1

    .line 288
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 289
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapsedHeight()I

    .line 291
    move-result p2

    .line 294
    :goto_7
    sub-int p5, p1, p2

    .line 295
    :cond_c
    const/high16 p1, 0x3f800000    # 1.0f

    .line 297
    if-nez p5, :cond_d

    .line 299
    move p2, p1

    .line 301
    goto :goto_8

    .line 302
    :cond_d
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 303
    sub-int p2, p5, p2

    .line 305
    int-to-float p2, p2

    .line 307
    mul-float/2addr p2, p1

    .line 308
    int-to-float p3, p5

    .line 309
    div-float/2addr p2, p3

    .line 310
    :goto_8
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 311
    move-result p1

    .line 314
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    .line 315
    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 317
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 319
    move-result-object p2

    .line 322
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 323
    move-result p3

    .line 326
    if-nez p3, :cond_f

    .line 327
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastActionBarResizingProcess:F

    .line 329
    if-eqz v0, :cond_e

    .line 331
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 333
    :cond_e
    return-void

    .line 336
    :cond_f
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 337
    move-result-object p0

    .line 340
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 341
    const/4 p0, 0x0

    .line 344
    throw p0
    .line 345
.end method

.method public final onMeasure(II)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 2
    const/high16 v1, -0x80000000

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    move-result v0

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 15
    move-result p1

    .line 18
    const/high16 v0, 0x40000000    # 2.0f

    .line 19
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 21
    move-result p1

    .line 24
    :cond_0
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHeightMaxMeasureSpec:I

    .line 25
    const/4 v1, -0x1

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    move p2, v0

    .line 30
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 34
    move-result p1

    .line 37
    move p2, v2

    .line 38
    move v0, p2

    .line 39
    :goto_0
    if-ge p2, p1, :cond_2

    .line 40
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 42
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 46
    move-result v1

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 50
    move-result v0

    .line 53
    add-int/lit8 p2, p2, 0x1

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    if-nez v0, :cond_3

    .line 57
    invoke-virtual {p0, v2, v2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 59
    :cond_3
    return-void

    .line 62
    :cond_4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 63
    if-eqz v0, :cond_5

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 67
    move-result v3

    .line 70
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    .line 71
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 73
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    .line 75
    move-result v5

    .line 78
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 79
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    .line 81
    move-result v6

    .line 84
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 85
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 88
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsetsTopByMargin(Lmiuix/appcompat/internal/app/widget/AbsActionBarView;)V

    .line 90
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 93
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsetsTopByMargin(Lmiuix/appcompat/internal/app/widget/AbsActionBarView;)V

    .line 95
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 98
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 101
    const/4 v0, 0x1

    .line 103
    const/16 v3, 0x8

    .line 104
    if-eqz p1, :cond_6

    .line 106
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    .line 108
    move-result p1

    .line 111
    if-eq p1, v3, :cond_6

    .line 112
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 114
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 116
    move-result p1

    .line 119
    if-lez p1, :cond_6

    .line 120
    move p1, v0

    .line 122
    goto :goto_1

    .line 123
    :cond_6
    move p1, v2

    .line 124
    :goto_1
    if-eqz p1, :cond_8

    .line 125
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 127
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 129
    move-result-object v4

    .line 132
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 133
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 135
    iget-boolean v6, v5, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    .line 137
    if-eqz v6, :cond_7

    .line 139
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 141
    goto :goto_2

    .line 143
    :cond_7
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 144
    move-result v5

    .line 147
    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 148
    add-int/2addr v5, v6

    .line 150
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 151
    add-int/2addr v4, v5

    .line 153
    goto :goto_2

    .line 154
    :cond_8
    move v4, v2

    .line 155
    :goto_2
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 156
    if-eqz v5, :cond_9

    .line 158
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    .line 160
    move-result v5

    .line 163
    if-eq v5, v3, :cond_9

    .line 164
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 166
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 168
    move-result v5

    .line 171
    if-lez v5, :cond_9

    .line 172
    goto :goto_3

    .line 174
    :cond_9
    move v0, v2

    .line 175
    :goto_3
    if-eqz v0, :cond_a

    .line 176
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 178
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 180
    move-result-object v0

    .line 183
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 184
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 186
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 188
    move-result v5

    .line 191
    iget v6, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 192
    add-int/2addr v5, v6

    .line 194
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 195
    add-int/2addr v5, v0

    .line 197
    goto :goto_4

    .line 198
    :cond_a
    move v5, v2

    .line 199
    :goto_4
    if-gtz v4, :cond_b

    .line 200
    if-lez v5, :cond_c

    .line 202
    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    .line 204
    move-result v0

    .line 207
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 208
    move-result v5

    .line 211
    invoke-virtual {p0, v0, v5}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 212
    :cond_c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 215
    if-eqz v0, :cond_e

    .line 217
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 219
    move-result v0

    .line 222
    if-eq v0, v3, :cond_e

    .line 223
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 225
    move-result v0

    .line 228
    if-ne v0, v1, :cond_e

    .line 229
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 231
    move-result p2

    .line 234
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    .line 235
    move-result v0

    .line 238
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 239
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 241
    move-result v1

    .line 244
    add-int/2addr v1, v4

    .line 245
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 246
    move-result p2

    .line 249
    if-nez p1, :cond_d

    .line 250
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 252
    if-eqz p1, :cond_d

    .line 254
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 256
    goto :goto_5

    .line 258
    :cond_d
    move p1, v2

    .line 259
    :goto_5
    add-int/2addr p2, p1

    .line 260
    invoke-virtual {p0, v0, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 261
    :cond_e
    move p1, v2

    .line 264
    move p2, p1

    .line 265
    :goto_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 266
    move-result v0

    .line 269
    if-ge p1, v0, :cond_10

    .line 270
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 272
    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 276
    move-result v1

    .line 279
    if-nez v1, :cond_f

    .line 280
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 282
    move-result v1

    .line 285
    if-lez v1, :cond_f

    .line 286
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 288
    move-result v0

    .line 291
    if-lez v0, :cond_f

    .line 292
    add-int/lit8 p2, p2, 0x1

    .line 294
    :cond_f
    add-int/lit8 p1, p1, 0x1

    .line 296
    goto :goto_6

    .line 298
    :cond_10
    if-nez p2, :cond_11

    .line 299
    invoke-virtual {p0, v2, v2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 301
    :cond_11
    return-void
    .line 304
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;

    .line 5
    iget-boolean p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarApplyBlur:Z

    .line 7
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarBlur(Z)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;

    .line 6
    invoke-direct {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mApplyBgBlur:Z

    .line 11
    iput-boolean p0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarApplyBlur:Z

    .line 13
    return-object v1
    .line 15
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public final resizeSplitMaxHeight()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x7f040031    # @attr/actionBarSplitMaxPercentageHeight

    .line 10
    invoke-static {v1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 13
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    iget v1, v0, Landroid/util/TypedValue;->type:I

    .line 19
    const/4 v2, 0x6

    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 27
    new-instance v2, Landroid/graphics/Point;

    .line 28
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 30
    invoke-static {v1, v2}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 33
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 36
    int-to-float v1, v1

    .line 38
    invoke-virtual {v0, v1, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 39
    move-result v0

    .line 42
    float-to-int v0, v0

    .line 43
    const/high16 v1, -0x80000000

    .line 44
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 46
    move-result v0

    .line 49
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHeightMaxMeasureSpec:I

    .line 50
    :cond_0
    return-void
    .line 52
.end method

.method public final setActionBarBlur(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsEnableBgBlur:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mApplyBgBlur:Z

    .line 7
    if-eq v0, p1, :cond_2

    .line 9
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mApplyBgBlur:Z

    .line 11
    if-eqz p1, :cond_1

    .line 13
    const/4 v0, 0x0

    .line 15
    invoke-static {p0, v0}, Lmiuix/core/util/MiuiBlurUtils;->setBackgroundBlur(Landroid/view/View;Z)Z

    .line 16
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBgBlurBlendColors:[I

    .line 19
    array-length v2, v1

    .line 21
    if-ge v0, v2, :cond_2

    .line 22
    aget v1, v1, v0

    .line 24
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBgBlurBlendColorModes:[I

    .line 26
    aget v2, v2, v0

    .line 28
    invoke-static {p0, v1, v2}, Lmiuix/core/util/MiuiBlurUtils;->addBackgroundBlenderColor(Landroid/view/View;II)V

    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p0}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlur(Landroid/view/View;)V

    .line 36
    invoke-static {p0}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlenderColor(Landroid/view/View;)V

    .line 39
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 42
    if-eqz p0, :cond_3

    .line 44
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setApplyBgBlur(Z)V

    .line 46
    :cond_3
    return-void
    .line 49
.end method

.method public setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 6
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 11
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    .line 13
    move-result p1

    .line 16
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 17
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 19
    iget-boolean p1, p1, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 21
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    .line 23
    :cond_0
    return-void
    .line 25
.end method

.method public setAlpha(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2
    return-void
    .line 5
.end method

.method public setBgBlur(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSupportBgBlur:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsEnableBgBlur:Z

    .line 7
    if-eq v0, p1, :cond_5

    .line 9
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsEnableBgBlur:Z

    .line 11
    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBgBlurBlendColors:[I

    .line 15
    if-nez p1, :cond_4

    .line 17
    const/4 p1, 0x2

    .line 19
    new-array v0, p1, [I

    .line 20
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBgBlurBlendColors:[I

    .line 22
    new-array p1, p1, [I

    .line 24
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBgBlurBlendColorModes:[I

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 28
    move-result-object p1

    .line 31
    const v0, 0x7f0403e2    # @attr/isLightTheme

    .line 32
    const/4 v1, 0x1

    .line 35
    invoke-static {v0, v1, p1}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(IZLandroid/content/Context;)Z

    .line 36
    move-result p1

    .line 39
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBgBlurBlendColors:[I

    .line 40
    if-eqz p1, :cond_1

    .line 42
    const v2, -0x409e9fa0

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    const v2, -0x75d9d9da    # -7.999784E-33f

    .line 48
    :goto_0
    const/4 v3, 0x0

    .line 51
    aput v2, v0, v3

    .line 52
    if-eqz p1, :cond_2

    .line 54
    const v2, -0x51000001

    .line 56
    goto :goto_1

    .line 59
    :cond_2
    const v2, 0x75737373

    .line 60
    :goto_1
    aput v2, v0, v1

    .line 63
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBgBlurBlendColorModes:[I

    .line 65
    if-eqz p1, :cond_3

    .line 67
    const/16 p1, 0x12

    .line 69
    goto :goto_2

    .line 71
    :cond_3
    const/16 p1, 0x13

    .line 72
    :goto_2
    aput p1, v0, v3

    .line 74
    const/4 p1, 0x3

    .line 76
    aput p1, v0, v1

    .line 77
    :cond_4
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 79
    if-eqz p1, :cond_5

    .line 81
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 83
    if-eqz p1, :cond_5

    .line 85
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsEnableBgBlur:Z

    .line 87
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBgBlurBlendColors:[I

    .line 89
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBgBlurBlendColorModes:[I

    .line 91
    invoke-virtual {p1, v0, v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setBgBlur(Z[I[I)V

    .line 93
    :cond_5
    return-void
    .line 96
.end method

.method public setCoordinatedOffsetYInSearchMode(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setIsMiuixFloating(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsMiuixFloating:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f070ae0    # @dimen/miuix_appcompat_floating_window_top_offset '8.0dp'

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 14
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mExtraMarginTopOnMiuixFloating:I

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 17
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 24
    move-result v0

    .line 27
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    .line 28
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 30
    iget-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 32
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    .line 34
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 36
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 39
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    .line 45
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    .line 47
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 50
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    .line 52
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 57
    if-eqz v0, :cond_3

    .line 59
    if-eqz p1, :cond_2

    .line 61
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    .line 63
    move-result p1

    .line 66
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 67
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 69
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 71
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    .line 73
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 75
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 78
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    .line 80
    goto :goto_1

    .line 83
    :cond_2
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    .line 84
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    .line 86
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 89
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 91
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 93
    :cond_3
    :goto_1
    return-void
    .line 96
.end method

.method public setMiuixFloatingOnInit(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsMiuixFloating:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f070ae0    # @dimen/miuix_appcompat_floating_window_top_offset '8.0dp'

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 14
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mExtraMarginTopOnMiuixFloating:I

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 17
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    if-eqz p1, :cond_0

    .line 22
    iget-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 24
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    .line 26
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 28
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 31
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 36
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 38
    move-result v0

    .line 41
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    .line 42
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 44
    if-eqz v0, :cond_1

    .line 46
    if-eqz p1, :cond_1

    .line 48
    iget-boolean p1, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 50
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    .line 52
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 54
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 57
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    .line 59
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 62
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    .line 64
    move-result p1

    .line 67
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 68
    :cond_1
    return-void
    .line 70
.end method

.method public setOverlayMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mOverlayMode:Z

    .line 2
    return-void
    .line 4
.end method

.method public setPendingInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 6
    if-nez v0, :cond_0

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    .line 10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 15
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 17
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 27
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 30
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsetsTopByMargin(Lmiuix/appcompat/internal/app/widget/AbsActionBarView;)V

    .line 32
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 35
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsetsTopByMargin(Lmiuix/appcompat/internal/app/widget/AbsActionBarView;)V

    .line 37
    :cond_1
    return-void
    .line 40
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 7
    move-result-object v0

    .line 10
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    move-object v1, v0

    .line 21
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 22
    const/4 v0, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz p1, :cond_2

    .line 26
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 28
    if-nez v1, :cond_1

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 39
    :goto_0
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    .line 42
    goto :goto_1

    .line 44
    :cond_2
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    .line 45
    :goto_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 47
    if-eqz p1, :cond_3

    .line 49
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 51
    if-nez p1, :cond_4

    .line 53
    goto :goto_2

    .line 55
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 56
    if-nez p1, :cond_4

    .line 58
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 60
    if-nez p1, :cond_4

    .line 62
    goto :goto_2

    .line 64
    :cond_4
    move v0, v2

    .line 65
    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 66
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 69
    return-void
    .line 72
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 15
    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 19
    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 22
    const/4 v0, 0x1

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz p1, :cond_2

    .line 26
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 28
    if-nez p1, :cond_3

    .line 30
    goto :goto_0

    .line 32
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 33
    if-nez p1, :cond_3

    .line 35
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 37
    if-nez p1, :cond_3

    .line 39
    goto :goto_0

    .line 41
    :cond_3
    move v0, v1

    .line 42
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 46
    return-void
    .line 49
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 15
    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 19
    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 22
    if-eqz p1, :cond_2

    .line 24
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 26
    if-nez p1, :cond_3

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 31
    if-nez p1, :cond_3

    .line 33
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 35
    if-nez p1, :cond_3

    .line 37
    :goto_0
    const/4 p1, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    const/4 p1, 0x0

    .line 41
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 42
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 45
    if-eqz p1, :cond_4

    .line 47
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    :cond_4
    return-void
    .line 54
.end method

.method public setSupportBgBlur(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSupportBgBlur:Z

    .line 2
    return-void
    .line 4
.end method

.method public setTabContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object v0

    .line 17
    const/4 v1, -0x1

    .line 18
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    const/4 v1, -0x2

    .line 21
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 25
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    .line 28
    move-result v0

    .line 31
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 35
    if-eqz v0, :cond_2

    .line 37
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    :cond_2
    :goto_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 43
    return-void
    .line 45
.end method

.method public setTransitioning(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const/high16 p1, 0x60000

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/high16 p1, 0x40000

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 11
    return-void
    .line 14
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, v0

    .line 10
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 11
    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 15
    :cond_1
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 18
    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 22
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 25
    if-eqz p0, :cond_3

    .line 27
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 29
    :cond_3
    return-void
    .line 32
.end method

.method public final startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 6
    if-eqz v0, :cond_2

    .line 8
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 12
    if-ne p1, v0, :cond_1

    .line 14
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 16
    if-nez v0, :cond_2

    .line 18
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 20
    move-result p0

    .line 23
    if-eqz p0, :cond_3

    .line 24
    :cond_2
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_3
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
    .line 29
.end method
