.class public Lmiuix/miuixbasewidget/widget/FilterSortView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAnimExecuted:Z

.field public mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

.field public mEnabled:Z

.field public final mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$1;

.field public mFilteredId:I

.field public mFilteredUpdated:Z

.field public mHoverBgView:Landroid/view/View;

.field public mNeedAnim:Z

.field public final mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$1;

.field public final mPadding:I

.field public final mTabViewChildIds:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    .line 8
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 9
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    .line 10
    new-instance v2, Lmiuix/miuixbasewidget/widget/FilterSortView$1;

    invoke-direct {v2, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$1;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView;)V

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$1;

    .line 11
    new-instance v2, Lmiuix/miuixbasewidget/widget/FilterSortView$1;

    invoke-direct {v2, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$1;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView;)V

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$1;

    .line 12
    sget-object v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView:[I

    const v3, 0x7f1406c9    # @style/Widget.FilterSortView.DayNight

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070ace    # @dimen/miuix_appcompat_filter_sort_view_padding '4.0dp'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 18
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 20
    new-instance p3, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    .line 21
    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 23
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    const p3, 0x7f081504    # @drawable/miuix_appcompat_filter_sort_hover_bg 'res/drawable/miuix_appcompat_filter_sort_hover_bg.xml'

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 24
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 25
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 27
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 28
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    const/4 v0, 0x3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {p1, p3, v0, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 29
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, p3, p2, v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 30
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    const/4 v0, 0x6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {p1, p3, v0, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 31
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    const/4 v0, 0x7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {p1, p3, v0, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 32
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d011a    # @layout/layout_filter_tab_view 'res/layout/layout_filter_tab_view.xml'

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 34
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 35
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 37
    iget-object p1, p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    const/16 p3, 0x8

    .line 38
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 40
    iget-object p1, p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    iget-boolean p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    invoke-virtual {p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setEnabled(Z)V

    .line 44
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    invoke-virtual {p0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    return-void
.end method


# virtual methods
.method public getEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    .line 2
    return p0
    .line 4
.end method

.method public getFilterHoverListener()Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$1;

    .line 2
    return-object p0
    .line 4
.end method

.method public getOnFilteredListener()Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$1;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTabCount()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    .line 6
    return-void
    .line 8
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    .line 2
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    .line 5
    const/4 p2, -0x1

    .line 7
    if-eq p1, p2, :cond_1

    .line 8
    iget-boolean p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    .line 10
    if-nez p2, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 17
    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 18
    if-eqz p1, :cond_1

    .line 20
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 22
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 24
    move-result p2

    .line 27
    if-eqz p2, :cond_0

    .line 28
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 30
    const/4 p3, 0x0

    .line 32
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 33
    :cond_0
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 36
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    move-result-object p2

    .line 41
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 42
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    .line 44
    move-result p3

    .line 47
    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 50
    move-result p3

    .line 53
    iget p4, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 54
    mul-int/lit8 p4, p4, 0x2

    .line 56
    sub-int/2addr p3, p4

    .line 58
    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 59
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 61
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getX()F

    .line 63
    move-result p4

    .line 66
    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setX(F)V

    .line 67
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 70
    iget p4, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 72
    int-to-float p4, p4

    .line 74
    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setY(F)V

    .line 75
    new-instance p3, Lmiuix/miuixbasewidget/widget/FilterSortView$$ExternalSyntheticLambda0;

    .line 78
    invoke-direct {p3, p0, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView$$ExternalSyntheticLambda0;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 80
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 83
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    .line 86
    move-result p1

    .line 89
    if-lez p1, :cond_1

    .line 90
    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    .line 93
    :cond_1
    return-void
    .line 95
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 2
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    .line 5
    if-eq v0, p1, :cond_1

    .line 7
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    .line 9
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result v0

    .line 15
    if-ge p1, v0, :cond_1

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 21
    instance-of v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 22
    if-eqz v1, :cond_0

    .line 24
    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 26
    iget-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    .line 28
    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setEnabled(Z)V

    .line 30
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    return-void
    .line 36
.end method

.method public setFilteredTab(I)V
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, p1

    .line 11
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 12
    instance-of v3, p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eqz v3, :cond_1

    .line 13
    move-object v2, p1

    check-cast v2, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    .line 14
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    const/4 v4, 0x1

    if-eq p1, v3, :cond_3

    .line 15
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    if-eq p1, v0, :cond_2

    move p1, v4

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 16
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    .line 17
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    goto :goto_2

    .line 18
    :cond_3
    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    if-eqz p1, :cond_4

    .line 19
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 20
    :cond_4
    :goto_2
    sget p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->$r8$clinit:I

    .line 21
    invoke-virtual {v2, v4}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(Z)V

    .line 22
    :cond_5
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->updateChildIdsFromXml()V

    return-void
.end method

.method public setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V
    .locals 4

    .line 1
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 2
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 3
    iput-boolean v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    .line 4
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    goto :goto_1

    .line 5
    :cond_1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    if-eqz v0, :cond_2

    .line 6
    iput-boolean v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 7
    :cond_2
    :goto_1
    sget v0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->$r8$clinit:I

    .line 8
    invoke-virtual {p1, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(Z)V

    .line 9
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->updateChildIdsFromXml()V

    return-void
.end method

.method public setTabIncatorVisibility(I)V
    .locals 3

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
    instance-of v2, v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 13
    if-eqz v2, :cond_0

    .line 15
    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 17
    invoke-virtual {v1, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setIndicatorVisibility(I)V

    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    return-void
    .line 25
.end method

.method public final updateChildIdsFromXml()V
    .locals 15

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_a

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    if-ge v2, v0, :cond_1

    .line 18
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object v3

    .line 23
    instance-of v4, v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 24
    if-eqz v4, :cond_0

    .line 26
    check-cast v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 28
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    .line 30
    move-result v4

    .line 33
    iget-object v5, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 34
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getId()I

    .line 36
    move-result v5

    .line 39
    if-eq v4, v5, :cond_0

    .line 40
    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$1;

    .line 42
    invoke-virtual {v3, v4}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setOnFilteredListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;)V

    .line 44
    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    .line 47
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    .line 49
    move-result v5

    .line 52
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v5

    .line 56
    check-cast v4, Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$1;

    .line 62
    invoke-virtual {v3, v4}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFilterHoverListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;)V

    .line 64
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 70
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 72
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 75
    move v2, v1

    .line 78
    :goto_1
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    .line 79
    check-cast v3, Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 83
    move-result v3

    .line 86
    if-ge v2, v3, :cond_9

    .line 87
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    .line 89
    check-cast v3, Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object v3

    .line 96
    check-cast v3, Ljava/lang/Integer;

    .line 97
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 99
    move-result v9

    .line 102
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 103
    move-result-object v3

    .line 106
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 107
    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 109
    const/4 v3, -0x2

    .line 111
    invoke-virtual {v0, v9, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 112
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 115
    move-result-object v3

    .line 118
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 119
    const/high16 v4, 0x3f800000    # 1.0f

    .line 121
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 123
    if-nez v2, :cond_2

    .line 125
    move v10, v1

    .line 127
    goto :goto_2

    .line 128
    :cond_2
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    .line 129
    add-int/lit8 v4, v2, -0x1

    .line 131
    check-cast v3, Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    move-result-object v3

    .line 138
    check-cast v3, Ljava/lang/Integer;

    .line 139
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 141
    move-result v3

    .line 144
    move v10, v3

    .line 145
    :goto_2
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    .line 146
    check-cast v3, Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 150
    move-result v3

    .line 153
    add-int/lit8 v3, v3, -0x1

    .line 154
    if-ne v2, v3, :cond_3

    .line 156
    move v11, v1

    .line 158
    goto :goto_3

    .line 159
    :cond_3
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    .line 160
    add-int/lit8 v4, v2, 0x1

    .line 162
    check-cast v3, Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    move-result-object v3

    .line 169
    check-cast v3, Ljava/lang/Integer;

    .line 170
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 172
    move-result v3

    .line 175
    move v11, v3

    .line 176
    :goto_3
    const/4 v12, 0x4

    .line 177
    const/4 v6, 0x0

    .line 178
    const/4 v13, 0x0

    .line 179
    iget-object v14, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 180
    const/4 v5, 0x3

    .line 182
    const/4 v8, 0x0

    .line 183
    const/4 v7, 0x3

    .line 184
    move-object v3, v0

    .line 185
    move v4, v9

    .line 186
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 187
    const/4 v5, 0x4

    .line 190
    move v6, v13

    .line 191
    move v7, v12

    .line 192
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 193
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    move-result-object v3

    .line 199
    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    move-result-object v3

    .line 203
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 204
    if-eqz v3, :cond_4

    .line 206
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 208
    const/high16 v4, 0x3f000000    # 0.5f

    .line 210
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 212
    :cond_4
    const/4 v5, 0x6

    .line 214
    const/4 v12, 0x6

    .line 215
    const/4 v13, 0x7

    .line 216
    if-nez v10, :cond_5

    .line 217
    move v7, v12

    .line 219
    goto :goto_4

    .line 220
    :cond_5
    move v7, v13

    .line 221
    :goto_4
    if-nez v10, :cond_6

    .line 222
    iget v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 224
    move v8, v3

    .line 226
    goto :goto_5

    .line 227
    :cond_6
    move v8, v1

    .line 228
    :goto_5
    move-object v3, v0

    .line 229
    move v4, v9

    .line 230
    move v6, v10

    .line 231
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 232
    const/4 v5, 0x7

    .line 235
    if-nez v11, :cond_7

    .line 236
    move v7, v13

    .line 238
    goto :goto_6

    .line 239
    :cond_7
    move v7, v12

    .line 240
    :goto_6
    if-nez v11, :cond_8

    .line 241
    iget v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 243
    move v8, v3

    .line 245
    goto :goto_7

    .line 246
    :cond_8
    move v8, v1

    .line 247
    :goto_7
    move-object v3, v0

    .line 248
    move v4, v9

    .line 249
    move v6, v11

    .line 250
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 251
    const/4 v5, 0x3

    .line 254
    const/4 v10, 0x0

    .line 255
    const/4 v7, 0x3

    .line 256
    iget v8, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 257
    const/4 v6, 0x0

    .line 259
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 260
    const/4 v5, 0x4

    .line 263
    const/4 v7, 0x4

    .line 264
    iget v8, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 265
    move v6, v10

    .line 267
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 268
    add-int/lit8 v2, v2, 0x1

    .line 271
    goto/16 :goto_1

    .line 273
    :cond_9
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 275
    :cond_a
    return-void
    .line 278
.end method
