.class public Lmiuix/miuixbasewidget/widget/FilterSortView2;
.super Landroid/widget/HorizontalScrollView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mContentView:Landroid/widget/FrameLayout;

.field public mEnabled:Z

.field public mFilteredId:I

.field public mFilteredUpdated:Z

.field public mIsParentApplyBlur:Z

.field public final mPaddingBetweenTabs:I

.field public final mTabViewChildIds:Ljava/util/ArrayList;

.field public mTabsLayoutUpdated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    .line 8
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredUpdated:Z

    .line 9
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabsLayoutUpdated:Z

    .line 10
    sget-object v3, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView:[I

    const v4, 0x7f1406cd    # @style/Widget.FilterSortView2.DayNight

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 12
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, p3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mContentView:Landroid/widget/FrameLayout;

    .line 16
    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 18
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070ace    # @dimen/miuix_appcompat_filter_sort_view_padding '4.0dp'

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070ac5    # @dimen/miuix_appcompat_filter_sort_padding_between_tabs '8.0dp'

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mPaddingBetweenTabs:I

    .line 21
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-virtual {p0, v2}, Landroid/view/View;->setForceDarkAllowed(Z)V

    return-void
.end method


# virtual methods
.method public getEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    .line 2
    return p0
    .line 4
.end method

.method public getFilterHoverListener()Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$FilterHoverListener;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getOnFilteredListener()Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$OnFilteredListener;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getTabCount()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    return-object v1

    .line 6
    :cond_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mContentView:Landroid/widget/FrameLayout;

    .line 7
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 9
    move-result v0

    .line 12
    add-int/lit8 v0, v0, 0x0

    .line 13
    add-int/2addr v0, p1

    .line 15
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mContentView:Landroid/widget/FrameLayout;

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object p0

    .line 21
    instance-of p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 22
    if-eqz p1, :cond_1

    .line 24
    check-cast p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 26
    return-object p0

    .line 28
    :cond_1
    return-object v1
    .line 29
.end method

.method public getTabViewChildIdCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredUpdated:Z

    .line 6
    return-void
    .line 8
.end method

.method public final onLayout(ZIIII)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p2

    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 5
    iget-object v2, v0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mContentView:Landroid/widget/FrameLayout;

    .line 8
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 10
    move-result v2

    .line 13
    iget v3, v0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mPaddingBetweenTabs:I

    .line 14
    const/4 v4, -0x1

    .line 16
    mul-int/2addr v3, v4

    .line 17
    sub-int v5, p4, v1

    .line 18
    sub-int v6, v5, v3

    .line 20
    const/4 v7, 0x0

    .line 22
    div-int/2addr v6, v7

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 24
    move-result v6

    .line 27
    const/4 v8, 0x1

    .line 28
    if-ne v6, v8, :cond_0

    .line 29
    move v6, v8

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v6, v7

    .line 33
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 36
    move v10, v7

    .line 39
    move v11, v10

    .line 40
    :goto_1
    if-ge v10, v2, :cond_2

    .line 41
    iget-object v12, v0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mContentView:Landroid/widget/FrameLayout;

    .line 43
    invoke-virtual {v12, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 45
    move-result-object v12

    .line 48
    instance-of v13, v12, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 49
    if-eqz v13, :cond_1

    .line 51
    iget-object v13, v0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    .line 55
    move-result v14

    .line 58
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v14

    .line 62
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 63
    move-result v13

    .line 66
    if-eqz v13, :cond_1

    .line 67
    move-object v13, v12

    .line 69
    check-cast v13, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 70
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 75
    move-result v12

    .line 78
    add-int/2addr v11, v12

    .line 79
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 80
    goto :goto_1

    .line 82
    :cond_2
    add-int/2addr v11, v3

    .line 83
    if-le v11, v5, :cond_3

    .line 84
    move v2, v8

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    move v2, v7

    .line 88
    :goto_2
    if-eqz v2, :cond_4

    .line 89
    move v5, v11

    .line 91
    :cond_4
    iget-object v2, v0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mContentView:Landroid/widget/FrameLayout;

    .line 92
    add-int/2addr v5, v1

    .line 94
    move/from16 v3, p3

    .line 95
    move/from16 v10, p5

    .line 97
    invoke-virtual {v2, v1, v3, v5, v10}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 99
    iget-boolean v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabsLayoutUpdated:Z

    .line 102
    if-eqz v1, :cond_6

    .line 104
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object v1

    .line 109
    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 110
    if-eqz v6, :cond_5

    .line 112
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRight()I

    .line 114
    goto :goto_3

    .line 117
    :cond_5
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    .line 118
    goto :goto_3

    .line 121
    :cond_6
    if-eqz v6, :cond_7

    .line 122
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    .line 124
    goto :goto_3

    .line 127
    :cond_7
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    .line 128
    :goto_3
    invoke-virtual {p0, v7, v7}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 131
    iput-boolean v8, v0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabsLayoutUpdated:Z

    .line 134
    iget v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    .line 136
    if-eq v1, v4, :cond_8

    .line 138
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    .line 140
    move-result-object v1

    .line 143
    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 144
    if-eqz v1, :cond_8

    .line 146
    iget-boolean v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredUpdated:Z

    .line 148
    if-nez v1, :cond_8

    .line 150
    iput-boolean v8, v0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredUpdated:Z

    .line 152
    :cond_8
    return-void
    .line 154
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 2
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    .line 5
    if-eq v0, p1, :cond_1

    .line 7
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    .line 9
    const/4 p1, 0x0

    .line 11
    :goto_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mContentView:Landroid/widget/FrameLayout;

    .line 12
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 14
    move-result v0

    .line 17
    if-ge p1, v0, :cond_1

    .line 18
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mContentView:Landroid/widget/FrameLayout;

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 25
    instance-of v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 26
    if-eqz v1, :cond_0

    .line 28
    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 30
    iget-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    .line 32
    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setEnabled(Z)V

    .line 34
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    return-void
    .line 40
.end method

.method public setFilteredTab(I)V
    .locals 2

    .line 6
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    .line 9
    :cond_0
    sget v0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->$r8$clinit:I

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setFiltered(Z)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->updateChildIdsFromXml()V

    return-void
.end method

.method public setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    .line 3
    :cond_0
    sget v0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->$r8$clinit:I

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setFiltered(Z)V

    .line 5
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->updateChildIdsFromXml()V

    return-void
.end method

.method public setParentApplyBlur(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    .line 6
    :cond_0
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mContentView:Landroid/widget/FrameLayout;

    .line 8
    if-eqz p0, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_2

    .line 17
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v2

    .line 22
    instance-of v3, v2, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 23
    if-eqz v3, :cond_1

    .line 25
    check-cast v2, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 27
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 29
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_2
    return-void
    .line 35
.end method

.method public setTabIncatorVisibility(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mContentView:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 5
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mContentView:Landroid/widget/FrameLayout;

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v1

    .line 16
    instance-of v2, v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 17
    if-eqz v2, :cond_0

    .line 19
    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 21
    invoke-virtual {v1, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setIndicatorVisibility(I)V

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    return-void
    .line 29
.end method

.method public final updateChildIdsFromXml()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mContentView:Landroid/widget/FrameLayout;

    .line 10
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_1

    .line 17
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mContentView:Landroid/widget/FrameLayout;

    .line 19
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v2

    .line 24
    instance-of v3, v2, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 25
    if-nez v3, :cond_0

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    check-cast v2, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 32
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    .line 34
    const/4 p0, 0x0

    .line 37
    throw p0

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 39
    :cond_2
    return-void
    .line 42
.end method
