.class public Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
.super Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActionModeBackground:Landroid/graphics/drawable/Drawable;

.field public mAnimationProgress:F

.field public mButton1:Landroid/widget/Button;

.field public final mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field public mButton2:Landroid/widget/Button;

.field public final mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field public mCollapseContainer:Landroid/view/View;

.field public final mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field public mCollapseTotalHeight:I

.field public mContentInset:I

.field public final mExpandTitleStyleRes:I

.field public mExpandTitleView:Landroid/widget/TextView;

.field public mExpandTotalHeight:I

.field public mIsAnimating:Z

.field public final mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field public final mMovableMainContainer:Landroid/widget/FrameLayout;

.field public mNonTouchScrolling:Z

.field public final mOnMenuItemClickListener:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;

.field public mPendingHeight:I

.field public final mPostScroll:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;

.field public final mPostScroller:Landroid/widget/Scroller;

.field public final mSplitBackground:Landroid/graphics/drawable/Drawable;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleLayout:Landroid/widget/LinearLayout;

.field public mTitleOptional:Z

.field public final mTitleStyleRes:I

.field public mTitleView:Landroid/widget/TextView;

.field public mTouchScrolling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010394    # @android:attr/actionModeStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mOnMenuItemClickListener:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;

    .line 5
    new-instance v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 6
    new-instance v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTouchScrolling:Z

    .line 8
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    .line 9
    new-instance v2, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;

    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroll:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;

    .line 10
    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    .line 11
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    const v3, 0x7f0a005d    # @id/action_bar_movable_container

    .line 12
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0709fc    # @dimen/miuix_appcompat_action_bar_title_horizontal_padding '26.0dp'

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070a00    # @dimen/miuix_appcompat_action_bar_title_top_padding '4.0dp'

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0709f9    # @dimen/miuix_appcompat_action_bar_title_bottom_padding '10.0dp'

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 17
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 18
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 19
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 20
    sget-object v0, Lmiuix/appcompat/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 21
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionModeBackground:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p3, 0x3

    .line 23
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    const/16 p3, 0xa

    .line 24
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    const/4 p3, 0x1

    .line 25
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    const/4 v0, 0x5

    .line 26
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 27
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    const/high16 v1, 0x1040000    # @android:string/cancel

    .line 28
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1020019    # @android:id/button1

    invoke-direct {v0, p1, v2, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 29
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    const v1, 0x7f130797    # @string/miuix_appcompat_action_mode_select_all 'Select all'

    .line 30
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x102001a    # @android:id/button2

    invoke-direct {v0, p1, v2, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    const/4 p0, 0x6

    .line 31
    invoke-virtual {p2, p0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 32
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    const/4 v0, -0x1

    .line 4
    const/4 v1, -0x2

    .line 5
    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 6
    return-object p0
    .line 9
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 7
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    return-object v0
    .line 11
.end method

.method public getActionBarStyle()I
    .locals 0

    .line 1
    const p0, 0x1010394    # @android:attr/actionModeStyle

    .line 2
    return p0
    .line 5
.end method

.method public getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 2
    return-object p0
    .line 4
.end method

.method public getAnimatedVisibility()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getAnimationProgress()F
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationProgress:F

    .line 2
    return p0
    .line 4
.end method

.method public getCollapseTitle()Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getCollapsedHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getExpandState()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 2
    return p0
    .line 4
.end method

.method public getExpandTitle()Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getExpandedHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTotalHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 2
    return-object p0
    .line 4
.end method

.method public final initTitle()V
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    move-result-object v0

    .line 16
    const v3, 0x7f0d01f0    # @layout/miuix_appcompat_action_mode_title_item 'res/layout/miuix_appcompat_action_mode_title_item.xml'

    .line 17
    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/LinearLayout;

    .line 24
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 26
    const v3, 0x1020019    # @android:id/button1

    .line 28
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/Button;

    .line 35
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    .line 37
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 39
    const v3, 0x102001a    # @android:id/button2

    .line 41
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/Button;

    .line 48
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    .line 52
    const v3, 0x3f19999a    # 0.6f

    .line 54
    if-eqz v0, :cond_0

    .line 57
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mOnMenuItemClickListener:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;

    .line 59
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    .line 64
    filled-new-array {v0}, [Landroid/view/View;

    .line 66
    move-result-object v0

    .line 69
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 70
    move-result-object v0

    .line 73
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 74
    move-result-object v0

    .line 77
    new-array v4, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 78
    invoke-interface {v0, v1, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 80
    move-result-object v0

    .line 83
    new-array v4, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 84
    invoke-interface {v0, v3, v4}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 86
    move-result-object v0

    .line 89
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    .line 90
    new-array v5, v2, [Lmiuix/animation/base/AnimConfig;

    .line 92
    invoke-interface {v0, v4, v5}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 94
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    .line 97
    filled-new-array {v0}, [Landroid/view/View;

    .line 99
    move-result-object v0

    .line 102
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 103
    move-result-object v0

    .line 106
    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 107
    move-result-object v0

    .line 110
    sget-object v4, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 111
    invoke-interface {v0, v4}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 113
    move-result-object v0

    .line 116
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    .line 117
    new-array v5, v2, [Lmiuix/animation/base/AnimConfig;

    .line 119
    invoke-interface {v0, v4, v5}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    .line 124
    if-eqz v0, :cond_1

    .line 126
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mOnMenuItemClickListener:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;

    .line 128
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    .line 133
    filled-new-array {v0}, [Landroid/view/View;

    .line 135
    move-result-object v0

    .line 138
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 139
    move-result-object v0

    .line 142
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 143
    move-result-object v0

    .line 146
    new-array v4, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 147
    invoke-interface {v0, v1, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 149
    move-result-object v0

    .line 152
    new-array v4, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 153
    invoke-interface {v0, v3, v4}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 155
    move-result-object v0

    .line 158
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    .line 159
    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    .line 161
    invoke-interface {v0, v3, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 163
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    .line 166
    filled-new-array {v0}, [Landroid/view/View;

    .line 168
    move-result-object v0

    .line 171
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 172
    move-result-object v0

    .line 175
    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 176
    move-result-object v0

    .line 179
    sget-object v3, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 180
    invoke-interface {v0, v3}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 182
    move-result-object v0

    .line 185
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    .line 186
    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    .line 188
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 190
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 193
    const v3, 0x1020016    # @android:id/title

    .line 195
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 198
    move-result-object v0

    .line 201
    check-cast v0, Landroid/widget/TextView;

    .line 202
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 204
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 206
    if-eqz v3, :cond_2

    .line 208
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 210
    move-result-object v3

    .line 213
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 214
    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 216
    :cond_2
    new-instance v0, Landroid/widget/TextView;

    .line 219
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 221
    move-result-object v3

    .line 224
    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 225
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    .line 228
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    .line 230
    if-eqz v3, :cond_3

    .line 232
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 234
    move-result-object v3

    .line 237
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    .line 238
    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 240
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 243
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 245
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    .line 250
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 252
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 257
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseContainer:Landroid/view/View;

    .line 259
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 261
    invoke-virtual {v3, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 263
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 266
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 268
    move-result v0

    .line 271
    const/4 v3, 0x1

    .line 272
    xor-int/2addr v0, v3

    .line 273
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 274
    const/16 v5, 0x8

    .line 276
    if-eqz v0, :cond_4

    .line 278
    move v6, v2

    .line 280
    goto :goto_0

    .line 281
    :cond_4
    move v6, v5

    .line 282
    :goto_0
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    .line 286
    if-eqz v0, :cond_5

    .line 288
    move v5, v2

    .line 290
    :cond_5
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 294
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 296
    move-result-object v0

    .line 299
    if-nez v0, :cond_6

    .line 300
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 302
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 304
    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    .line 307
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    .line 309
    move-result-object v0

    .line 312
    if-nez v0, :cond_7

    .line 313
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 315
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    .line 317
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 319
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 322
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 324
    move-result-object v0

    .line 327
    if-nez v0, :cond_8

    .line 328
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 330
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 332
    :cond_8
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 335
    const/4 v4, 0x0

    .line 337
    if-nez v0, :cond_9

    .line 338
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 340
    invoke-virtual {v0, v1, v2, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIZ)V

    .line 342
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 345
    invoke-virtual {p0, v4, v2, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIZ)V

    .line 347
    goto :goto_1

    .line 350
    :cond_9
    if-ne v0, v3, :cond_a

    .line 351
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 353
    const/16 v3, 0x14

    .line 355
    invoke-virtual {v0, v4, v3, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIZ)V

    .line 357
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 360
    invoke-virtual {p0, v1, v2, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIZ)V

    .line 362
    :cond_a
    :goto_1
    return-void
    .line 365
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p1

    .line 8
    const v0, 0x7f0709fc    # @dimen/miuix_appcompat_action_bar_title_horizontal_padding '26.0dp'

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 12
    move-result p1

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v1

    .line 21
    const v2, 0x7f070a00    # @dimen/miuix_appcompat_action_bar_title_top_padding '4.0dp'

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 25
    move-result v1

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object v2

    .line 32
    const v3, 0x7f0709f9    # @dimen/miuix_appcompat_action_bar_title_bottom_padding '10.0dp'

    .line 33
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 36
    move-result v2

    .line 39
    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 43
    move-result-object p1

    .line 46
    const v0, 0x7f040020    # @attr/actionBarPaddingStart

    .line 47
    invoke-static {v0, p1}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(ILandroid/content/Context;)I

    .line 50
    move-result p1

    .line 53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v0

    .line 57
    const v1, 0x7f04001f    # @attr/actionBarPaddingEnd

    .line 58
    invoke-static {v1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(ILandroid/content/Context;)I

    .line 61
    move-result v0

    .line 64
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 65
    move-result v1

    .line 68
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 69
    move-result v2

    .line 72
    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 73
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 76
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v0

    .line 83
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 84
    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 86
    :cond_0
    return-void
    .line 89
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 10
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 13
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mActionButtonPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

    .line 15
    if-eqz p0, :cond_0

    .line 17
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 23
    :cond_0
    return-void
    .line 26
.end method

.method public final onExpandStateChanged(II)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    if-ne p1, v2, :cond_0

    .line 5
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    .line 9
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 11
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 19
    :cond_0
    if-ne p2, v2, :cond_1

    .line 22
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 24
    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 28
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 31
    const/4 v2, 0x0

    .line 33
    if-ne p2, v0, :cond_4

    .line 34
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 36
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 38
    move-result v3

    .line 41
    cmpl-float v3, v3, v2

    .line 42
    if-lez v3, :cond_3

    .line 44
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 46
    if-eqz v3, :cond_2

    .line 48
    const/16 v4, 0x14

    .line 50
    invoke-virtual {v3, v2, v4, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIZ)V

    .line 52
    :cond_2
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 55
    if-eqz v3, :cond_3

    .line 57
    invoke-virtual {v3, p1, v1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIZ)V

    .line 59
    :cond_3
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 62
    if-eqz v3, :cond_4

    .line 64
    invoke-virtual {v3, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 66
    :cond_4
    if-nez p2, :cond_6

    .line 69
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 71
    if-eqz p2, :cond_5

    .line 73
    invoke-virtual {p2, p1, v1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIZ)V

    .line 75
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 78
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 83
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onShow()V

    .line 85
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 88
    if-eqz p1, :cond_7

    .line 90
    invoke-virtual {p1, v2, v1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIZ)V

    .line 92
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 95
    const/16 p1, 0x8

    .line 97
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 99
    goto :goto_0

    .line 102
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 103
    move-result p1

    .line 106
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 107
    sub-int/2addr p1, p2

    .line 109
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 110
    :cond_7
    :goto_0
    return-void
    .line 112
.end method

.method public final onLayout(ZIIII)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    move/from16 v7, p2

    .line 4
    move/from16 v8, p4

    .line 6
    sub-int v9, v8, v7

    .line 8
    int-to-float v0, v9

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 19
    move-result-object v1

    .line 22
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 23
    div-float/2addr v0, v1

    .line 25
    float-to-int v10, v0

    .line 26
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 27
    const/4 v11, 0x0

    .line 29
    const/4 v12, 0x1

    .line 30
    const/4 v13, 0x2

    .line 31
    if-ne v0, v13, :cond_0

    .line 32
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    if-ne v0, v12, :cond_1

    .line 37
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 39
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 41
    move-result v0

    .line 44
    :goto_0
    move v14, v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v14, v11

    .line 47
    :goto_1
    sub-int v15, p5, p3

    .line 48
    sub-int v16, v15, v14

    .line 50
    sub-int v0, p5, v14

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    .line 54
    move-result v1

    .line 57
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 58
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 60
    move-result v3

    .line 63
    sub-int v0, v0, p3

    .line 64
    sub-int/2addr v0, v3

    .line 66
    div-int/lit8 v2, v0, 0x2

    .line 67
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 69
    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 73
    move-result v0

    .line 76
    const/16 v4, 0x8

    .line 77
    if-eq v0, v4, :cond_2

    .line 79
    iget-object v4, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 81
    const/4 v5, 0x0

    .line 83
    move-object/from16 v0, p0

    .line 84
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(IIILandroid/view/View;Z)I

    .line 86
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 89
    move-result v0

    .line 92
    sub-int/2addr v9, v0

    .line 93
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 94
    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 98
    move-result-object v0

    .line 101
    if-ne v0, v6, :cond_3

    .line 102
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 104
    invoke-virtual {v6, v0, v9}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;I)V

    .line 106
    :cond_3
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 109
    if-eqz v0, :cond_4

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 113
    move-result-object v0

    .line 116
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 117
    move-result-object v0

    .line 120
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 121
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 123
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    .line 125
    move-result v1

    .line 128
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onMenuStateChanged(I)V

    .line 129
    :cond_4
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 132
    if-eqz v0, :cond_7

    .line 134
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 136
    move-result v0

    .line 139
    if-nez v0, :cond_7

    .line 140
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 142
    if-eqz v0, :cond_7

    .line 144
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 146
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 148
    move-result v1

    .line 151
    sub-int v1, v15, v1

    .line 152
    invoke-virtual {v0, v7, v1, v8, v15}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 157
    move-result v0

    .line 160
    if-ne v0, v12, :cond_5

    .line 161
    move v0, v12

    .line 163
    goto :goto_2

    .line 164
    :cond_5
    move v0, v11

    .line 165
    :goto_2
    if-eqz v0, :cond_6

    .line 166
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 168
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    .line 170
    move-result v0

    .line 173
    sub-int v0, v8, v0

    .line 174
    goto :goto_3

    .line 176
    :cond_6
    move v0, v7

    .line 177
    :goto_3
    new-instance v1, Landroid/graphics/Rect;

    .line 178
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 180
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 183
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 185
    move-result v2

    .line 188
    sub-int v15, v15, v16

    .line 189
    sub-int/2addr v2, v15

    .line 191
    iget-object v3, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 192
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    .line 194
    move-result v3

    .line 197
    add-int/2addr v3, v0

    .line 198
    iget-object v4, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 199
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 201
    move-result v4

    .line 204
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 205
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 210
    :cond_7
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 213
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 215
    move-result v0

    .line 218
    sub-int/2addr v0, v14

    .line 219
    int-to-float v0, v0

    .line 220
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 221
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 223
    move-result v1

    .line 226
    int-to-float v1, v1

    .line 227
    div-float/2addr v0, v1

    .line 228
    const/high16 v1, 0x3f800000    # 1.0f

    .line 229
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 231
    move-result v0

    .line 234
    const/high16 v2, 0x40400000    # 3.0f

    .line 235
    mul-float/2addr v2, v0

    .line 237
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 238
    move-result v2

    .line 241
    sub-float v2, v1, v2

    .line 242
    iget v3, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 244
    const/16 v4, 0x14

    .line 246
    const/4 v5, 0x0

    .line 248
    if-ne v3, v13, :cond_9

    .line 249
    cmpl-float v3, v2, v5

    .line 251
    if-lez v3, :cond_8

    .line 253
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 255
    iget-object v3, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    .line 257
    invoke-virtual {v1, v5, v4, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FILmiuix/animation/base/AnimConfig;)V

    .line 259
    goto :goto_4

    .line 262
    :cond_8
    iget-object v3, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 263
    iget-object v4, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 265
    invoke-virtual {v3, v1, v11, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FILmiuix/animation/base/AnimConfig;)V

    .line 267
    :goto_4
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 270
    iget-object v3, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 272
    invoke-virtual {v1, v2, v11, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FILmiuix/animation/base/AnimConfig;)V

    .line 274
    goto :goto_5

    .line 277
    :cond_9
    if-ne v3, v12, :cond_a

    .line 278
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 280
    iget-object v3, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    .line 282
    invoke-virtual {v2, v5, v4, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FILmiuix/animation/base/AnimConfig;)V

    .line 284
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 287
    iget-object v3, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 289
    invoke-virtual {v2, v1, v11, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FILmiuix/animation/base/AnimConfig;)V

    .line 291
    goto :goto_5

    .line 294
    :cond_a
    if-nez v3, :cond_b

    .line 295
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 297
    iget-object v3, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 299
    invoke-virtual {v2, v1, v11, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FILmiuix/animation/base/AnimConfig;)V

    .line 301
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 304
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 306
    invoke-virtual {v1, v5, v11, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FILmiuix/animation/base/AnimConfig;)V

    .line 308
    :cond_b
    :goto_5
    iput v0, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    .line 311
    const/16 v0, 0x29e

    .line 313
    if-le v10, v0, :cond_c

    .line 315
    move v11, v12

    .line 317
    :cond_c
    iput-boolean v11, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mIsInWideMode:Z

    .line 318
    return-void
    .line 320
.end method

.method public final onMeasure(II)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    move-result p1

    .line 5
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 6
    if-lez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 11
    move-result v0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 15
    move-result p2

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 19
    move-result v1

    .line 22
    add-int/2addr v1, p2

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 24
    move-result p2

    .line 27
    sub-int p2, p1, p2

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 30
    move-result v2

    .line 33
    sub-int/2addr p2, v2

    .line 34
    sub-int v2, v0, v1

    .line 35
    const/high16 v3, -0x80000000

    .line 37
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 39
    move-result v2

    .line 42
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 43
    const/4 v5, 0x0

    .line 45
    if-eqz v4, :cond_1

    .line 46
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 48
    move-result-object v4

    .line 51
    if-ne v4, p0, :cond_1

    .line 52
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 54
    invoke-static {v4, p2, v2, v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 56
    move-result p2

    .line 59
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 60
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 62
    move-result v4

    .line 65
    add-int/2addr v4, v5

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move v4, v5

    .line 68
    :goto_1
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 69
    const/4 v7, 0x1

    .line 71
    if-eqz v6, :cond_6

    .line 72
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 74
    move-result v6

    .line 77
    const/16 v8, 0x8

    .line 78
    if-eq v6, v8, :cond_6

    .line 80
    const/high16 v6, 0x40000000    # 2.0f

    .line 82
    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 84
    move-result p2

    .line 87
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 88
    invoke-virtual {v6, p2, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 90
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 93
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 95
    move-result p2

    .line 98
    add-int/2addr v4, p2

    .line 99
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 100
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 102
    move-result-object v2

    .line 105
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 106
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 108
    move-result-object v6

    .line 111
    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 112
    move-result v2

    .line 115
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 116
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 118
    move-result v6

    .line 121
    int-to-float v6, v6

    .line 122
    iget-boolean v8, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 123
    if-nez v8, :cond_2

    .line 125
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    .line 127
    move-result v8

    .line 130
    if-eqz v8, :cond_3

    .line 131
    :cond_2
    cmpg-float v2, v2, v6

    .line 133
    if-gtz v2, :cond_4

    .line 135
    :cond_3
    move v2, v7

    .line 137
    goto :goto_2

    .line 138
    :cond_4
    move v2, v5

    .line 139
    :goto_2
    if-eqz v2, :cond_5

    .line 140
    move v2, v5

    .line 142
    goto :goto_3

    .line 143
    :cond_5
    const/4 v2, 0x4

    .line 144
    :goto_3
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :cond_6
    if-gtz v0, :cond_a

    .line 148
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 150
    move-result p2

    .line 153
    move v0, v5

    .line 154
    move v2, v0

    .line 155
    :goto_4
    if-ge v0, p2, :cond_8

    .line 156
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 158
    move-result-object v3

    .line 161
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 162
    move-result v3

    .line 165
    add-int/2addr v3, v1

    .line 166
    if-le v3, v2, :cond_7

    .line 167
    move v2, v3

    .line 169
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 170
    goto :goto_4

    .line 172
    :cond_8
    if-lez v2, :cond_9

    .line 173
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    .line 175
    add-int v5, v2, p2

    .line 177
    :cond_9
    invoke-virtual {p0, p1, v5}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 179
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 182
    move-result p1

    .line 185
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 186
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTotalHeight:I

    .line 188
    goto :goto_6

    .line 190
    :cond_a
    if-lez v4, :cond_b

    .line 191
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    .line 193
    add-int/2addr v0, p2

    .line 195
    goto :goto_5

    .line 196
    :cond_b
    move v0, v5

    .line 197
    :goto_5
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 198
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 200
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 202
    move-result v0

    .line 205
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 206
    move-result v1

    .line 209
    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->measure(II)V

    .line 210
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 213
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 215
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 217
    move-result v0

    .line 220
    add-int/2addr v0, p2

    .line 221
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTotalHeight:I

    .line 222
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 224
    const/4 v1, 0x2

    .line 226
    if-ne p2, v1, :cond_c

    .line 227
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 229
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 231
    add-int/2addr p2, v0

    .line 233
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 234
    goto :goto_6

    .line 237
    :cond_c
    if-ne p2, v7, :cond_d

    .line 238
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 240
    goto :goto_6

    .line 243
    :cond_d
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 244
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 246
    :goto_6
    return-void
    .line 249
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    iget-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->title:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 13
    const v0, 0x102001a    # @android:id/button2

    .line 16
    iget-object v1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->defaultButtonText:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;)V

    .line 21
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->isOverflowOpen:Z

    .line 24
    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$$ExternalSyntheticLambda0;

    .line 28
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/app/widget/AbsActionBarView;)V

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 33
    :cond_0
    iget p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->expandState:I

    .line 36
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 38
    return-void
    .line 41
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 11
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowMenuShowing()Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v2

    .line 24
    :goto_0
    iput-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->isOverflowOpen:Z

    .line 25
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    .line 27
    move-result-object v1

    .line 30
    iput-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->title:Ljava/lang/CharSequence;

    .line 31
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    .line 33
    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    .line 37
    move-result-object v1

    .line 40
    iput-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->defaultButtonText:Ljava/lang/CharSequence;

    .line 41
    :cond_1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 43
    const/4 v1, 0x2

    .line 45
    if-ne p0, v1, :cond_2

    .line 46
    iput v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->expandState:I

    .line 48
    goto :goto_1

    .line 50
    :cond_2
    iput p0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->expandState:I

    .line 51
    :goto_1
    return-object v0
    .line 53
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    const/4 p0, 0x1

    .line 5
    return p0
    .line 6
.end method

.method public final refreshBottomMenu()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setActionModeAnim(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setAnimationProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationProgress:F

    .line 2
    return-void
    .line 4
.end method

.method public setBottomMenuMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mBottomMenuMode:I

    .line 2
    return-void
    .line 4
.end method

.method public setButton(ILjava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    const v0, 0x1020019    # @android:id/button1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 6
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    const v0, 0x102001a    # @android:id/button2

    if-ne p1, v0, :cond_5

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz p1, :cond_4

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_4
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 11
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    :cond_5
    :goto_2
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;I)V
    .locals 6

    .line 29
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    const/16 v0, 0x8

    const/4 v1, 0x0

    const v2, 0x102001a    # @android:id/button2

    const v3, 0x1020019    # @android:id/button1

    if-ne p1, v3, :cond_2

    .line 30
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 31
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 34
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 35
    iput-object p2, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    if-ne p1, v2, :cond_5

    .line 36
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz v4, :cond_4

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 40
    :cond_4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 41
    iput-object p2, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 42
    :cond_5
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_12

    if-eqz p3, :cond_12

    if-ne p1, v3, :cond_6

    .line 43
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    goto :goto_3

    :cond_6
    if-ne p1, v2, :cond_7

    .line 44
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_8

    goto/16 :goto_8

    :cond_8
    const p2, 0x7f081402    # @drawable/miuix_appcompat_action_mode_title_button_cancel '@drawable/miuix_action_icon_cancel_light'

    if-eq p2, p3, :cond_11

    const p2, 0x7f08132e    # @drawable/miuix_action_icon_cancel_light 'res/drawable/miuix_action_icon_cancel_light.xml'

    if-eq p2, p3, :cond_11

    const p2, 0x7f08132d    # @drawable/miuix_action_icon_cancel_dark 'res/drawable/miuix_action_icon_cancel_dark.xml'

    if-ne p2, p3, :cond_9

    goto/16 :goto_7

    :cond_9
    const p2, 0x7f081405    # @drawable/miuix_appcompat_action_mode_title_button_confirm '@drawable/miuix_action_icon_confirm_light'

    if-eq p2, p3, :cond_10

    const p2, 0x7f081330    # @drawable/miuix_action_icon_confirm_light 'res/drawable/miuix_action_icon_confirm_light.xml'

    if-eq p2, p3, :cond_10

    const p2, 0x7f08132f    # @drawable/miuix_action_icon_confirm_dark 'res/drawable/miuix_action_icon_confirm_dark.xml'

    if-ne p2, p3, :cond_a

    goto :goto_6

    :cond_a
    const p2, 0x7f08140e    # @drawable/miuix_appcompat_action_mode_title_button_select_all '@drawable/miuix_action_icon_select_all_light'

    if-eq p2, p3, :cond_f

    const p2, 0x7f081374    # @drawable/miuix_action_icon_select_all_light 'res/drawable/miuix_action_icon_select_all_light.xml'

    if-eq p2, p3, :cond_f

    const p2, 0x7f081373    # @drawable/miuix_action_icon_select_all_dark 'res/drawable/miuix_action_icon_select_all_dark.xml'

    if-ne p2, p3, :cond_b

    goto :goto_5

    :cond_b
    const p2, 0x7f08140b    # @drawable/miuix_appcompat_action_mode_title_button_deselect_all '@drawable/miuix_action_icon_deselect_all_light'

    if-eq p2, p3, :cond_e

    const p2, 0x7f081338    # @drawable/miuix_action_icon_deselect_all_light 'res/drawable/miuix_action_icon_deselect_all_light.xml'

    if-eq p2, p3, :cond_e

    const p2, 0x7f081337    # @drawable/miuix_action_icon_deselect_all_dark 'res/drawable/miuix_action_icon_deselect_all_dark.xml'

    if-ne p2, p3, :cond_c

    goto :goto_4

    :cond_c
    const p2, 0x7f081408    # @drawable/miuix_appcompat_action_mode_title_button_delete '@drawable/miuix_action_icon_delete_light'

    if-eq p2, p3, :cond_d

    const p2, 0x7f081336    # @drawable/miuix_action_icon_delete_light 'res/drawable/miuix_action_icon_delete_light.xml'

    if-eq p2, p3, :cond_d

    const p2, 0x7f081335    # @drawable/miuix_action_icon_delete_dark 'res/drawable/miuix_action_icon_delete_dark.xml'

    if-ne p2, p3, :cond_12

    .line 45
    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f13079c    # @string/miuix_appcompat_delete_description 'Delete'

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 46
    :cond_e
    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f13079e    # @string/miuix_appcompat_deselect_all_description 'Deselect all'

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 47
    :cond_f
    :goto_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1307a3    # @string/miuix_appcompat_select_all_description 'Select all'

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 48
    :cond_10
    :goto_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f13079b    # @string/miuix_appcompat_confirm_description 'Confirm'

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 49
    :cond_11
    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f13079a    # @string/miuix_appcompat_cancel_description 'Cancel'

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_12
    :goto_8
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 3

    .line 12
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    const v0, 0x1020019    # @android:id/button1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 13
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 14
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {p1, p4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 17
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 18
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 19
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 20
    iput-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    const v0, 0x102001a    # @android:id/button2

    if-ne p1, v0, :cond_5

    .line 21
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz p1, :cond_4

    .line 22
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {p1, p4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 26
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    :cond_4
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 28
    iput-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    :cond_5
    :goto_2
    return-void
.end method

.method public setContentInset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    .line 2
    return-void
    .line 4
.end method

.method public setExpandState(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(IZZ)V

    return-void
.end method

.method public bridge synthetic setExpandState(IZZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(IZZ)V

    return-void
.end method

.method public bridge synthetic setPendingInset(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setPendingInset(Landroid/graphics/Rect;)V

    .line 2
    return-void
    .line 5
.end method

.method public setResizable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 2
    return-void
    .line 4
.end method

.method public setSplitActionBar(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 2
    if-eq v0, p1, :cond_5

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 6
    if-eqz v0, :cond_4

    .line 8
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 10
    const/4 v1, -0x2

    .line 12
    const/4 v2, -0x1

    .line 13
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 14
    const/4 v3, 0x0

    .line 17
    if-nez p1, :cond_1

    .line 18
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 20
    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 22
    move-result-object v1

    .line 25
    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 26
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 28
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 30
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 33
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 35
    move-result-object v1

    .line 38
    check-cast v1, Landroid/view/ViewGroup;

    .line 39
    if-eqz v1, :cond_0

    .line 41
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 43
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 45
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 48
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    goto :goto_1

    .line 53
    :cond_1
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v5

    .line 59
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 64
    move-result-object v5

    .line 67
    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 68
    const/4 v5, 0x1

    .line 70
    iput-boolean v5, v4, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 71
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 73
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 75
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mIsInWideMode:Z

    .line 77
    if-eqz v1, :cond_2

    .line 79
    const/16 v1, 0x11

    .line 81
    goto :goto_0

    .line 83
    :cond_2
    const/16 v1, 0x50

    .line 84
    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 86
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 88
    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 90
    move-result-object v1

    .line 93
    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 94
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 96
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 103
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 105
    move-result-object v1

    .line 108
    check-cast v1, Landroid/view/ViewGroup;

    .line 109
    if-eqz v1, :cond_3

    .line 111
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 113
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 115
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 118
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 120
    iget-object v4, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 122
    if-ne v4, v2, :cond_3

    .line 124
    iput-object v3, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 126
    :cond_3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 128
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 130
    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 135
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 137
    iput-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 139
    if-eqz v1, :cond_4

    .line 141
    iget-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSupportBgBlur:Z

    .line 143
    if-eqz v2, :cond_4

    .line 145
    iget-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsEnableBgBlur:Z

    .line 147
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBgBlurBlendColors:[I

    .line 149
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBgBlurBlendColorModes:[I

    .line 151
    invoke-virtual {v1, v2, v3, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setBgBlur(Z[I[I)V

    .line 153
    :cond_4
    :goto_1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 156
    :cond_5
    return-void
    .line 158
.end method

.method public setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 2
    return-void
    .line 4
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    .line 2
    return-void
    .line 4
.end method

.method public setSubTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSubTitleClickListener:Landroid/view/View$OnClickListener;

    .line 2
    return-void
    .line 4
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    .line 4
    return-void
    .line 7
.end method

.method public setTitleClickable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    .line 2
    return-void
    .line 4
.end method

.method public setTitleOptional(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleOptional:Z

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6
    :cond_0
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleOptional:Z

    .line 9
    return-void
    .line 11
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setVisibility(I)V

    .line 2
    return-void
    .line 5
.end method

.method public final showOverflowMenu()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    .line 6
    :cond_0
    return-void
    .line 9
.end method
