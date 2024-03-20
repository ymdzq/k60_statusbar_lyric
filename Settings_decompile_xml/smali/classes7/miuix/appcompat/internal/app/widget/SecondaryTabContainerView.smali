.class public Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
.super Lmiuix/miuixbasewidget/widget/FilterSortView2;
.source "SecondaryTabContainerView.java"

# interfaces
.implements Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$TabClickListener;,
        Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;
    }
.end annotation


# instance fields
.field private mActivatedTextAppearanceId:I

.field private mAllowCollapse:Z

.field private mContentHeight:I

.field private mTabClickListener:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$TabClickListener;

.field private mTextAppearanceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;)I
    .locals 0

    .line 24
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->getTabCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->getDefaultTabTextStyle()I

    move-result v0

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mTextAppearanceId:I

    .line 48
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->getTabActivatedTextStyle()I

    move-result v0

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mActivatedTextAppearanceId:I

    return-void
.end method


# virtual methods
.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;IZ)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;
    .locals 1

    .line 71
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->createTabView(Landroidx/appcompat/app/ActionBar$Tab;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTabViewAt(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V

    .line 73
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTabViewChildId(I)V

    .line 74
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->access$000(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;Ljava/lang/CharSequence;)V

    .line 75
    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    if-eqz p3, :cond_0

    .line 77
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V

    const/4 p1, 0x1

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-object v0
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;Z)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;
    .locals 2

    .line 54
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->createTabView(Landroidx/appcompat/app/ActionBar$Tab;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;

    move-result-object v0

    const/4 v1, -0x1

    .line 55
    invoke-virtual {p0, v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTabViewAt(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V

    .line 56
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTabViewChildId(I)V

    .line 57
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->access$000(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;Ljava/lang/CharSequence;)V

    .line 59
    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V

    const/4 p1, 0x1

    .line 63
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-object v0
.end method

.method public animateToTab(I)V
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(I)V

    return-void
.end method

.method protected createTabView(Landroidx/appcompat/app/ActionBar$Tab;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;
    .locals 3

    .line 144
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_filter_tab_view:I

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;

    .line 146
    invoke-virtual {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->attach(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;Landroidx/appcompat/app/ActionBar$Tab;)V

    const/4 p1, 0x1

    .line 147
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 149
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mTabClickListener:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$TabClickListener;

    if-nez p1, :cond_0

    .line 150
    new-instance p1, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$TabClickListener;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$TabClickListener;-><init>(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mTabClickListener:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$TabClickListener;

    .line 152
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mTabClickListener:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$TabClickListener;

    invoke-virtual {v0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->getEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setEnabled(Z)V

    .line 154
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mTextAppearanceId:I

    invoke-virtual {v0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setTextAppearance(I)V

    .line 155
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mActivatedTextAppearanceId:I

    invoke-virtual {v0, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setActivatedTextAppearance(I)V

    return-object v0
.end method

.method protected getDefaultTabTextStyle()I
    .locals 0

    .line 203
    sget p0, Lmiuix/appcompat/R$attr;->actionBarTabTextSecondaryStyle:I

    return p0
.end method

.method protected getTabActivatedTextStyle()I
    .locals 0

    .line 207
    sget p0, Lmiuix/appcompat/R$attr;->actionBarTabActivatedTextSecondaryStyle:I

    return p0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 122
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mContentHeight:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    .line 123
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 125
    :cond_0
    invoke-super {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->onMeasure(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 233
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object p1

    .line 234
    instance-of v0, p1, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V

    :cond_0
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->removeAllTabViews()V

    .line 110
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->clearTabViewChildIds()V

    .line 111
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected setContentHeight(I)V
    .locals 1

    .line 129
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mContentHeight:I

    if-eq v0, p1, :cond_0

    .line 130
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mContentHeight:I

    .line 131
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setTabSelected(I)V
    .locals 0

    .line 178
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(I)V

    return-void
.end method

.method protected updateCustomTabView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)Landroid/view/View;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public updateTab(I)V
    .locals 1

    .line 86
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object p1

    .line 87
    instance-of v0, p1, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;

    if-eqz v0, :cond_0

    .line 88
    check-cast p1, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->update()V

    .line 90
    :cond_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mAllowCollapse:Z

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_1
    return-void
.end method
