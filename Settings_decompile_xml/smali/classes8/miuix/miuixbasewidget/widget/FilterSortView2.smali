.class public Lmiuix/miuixbasewidget/widget/FilterSortView2;
.super Landroid/widget/HorizontalScrollView;
.source "FilterSortView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
    }
.end annotation


# instance fields
.field private final mDeviceType:I

.field private mEnabled:Z

.field private mFilteredId:I

.field protected mIsParentApplyBlur:Z

.field private mLayoutConfig:I

.field private mTabCount:I

.field private final mTabViewChildIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 49
    sget v0, Lmiuix/miuixbasewidget/R$attr;->filterSortView2Style:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    .line 38
    iput v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    .line 54
    sget-object v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView2:[I

    sget v3, Lmiuix/miuixbasewidget/R$style;->Widget_FilterSortView2_DayNight:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 55
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView2_filterSortViewBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 56
    sget v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView2_android_enabled:I

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    .line 57
    sget v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView2_layoutConfig:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mLayoutConfig:I

    .line 58
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->initContentView()V

    .line 60
    invoke-virtual {p0, p3}, Landroid/widget/HorizontalScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 62
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-static {p1}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mDeviceType:I

    const/4 p1, 0x2

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    return-void
.end method

.method private addTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setEnabled(Z)V

    .line 211
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 212
    invoke-virtual {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTabViewAt(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V

    .line 213
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkView(Landroid/view/View;)V
    .locals 0

    .line 132
    instance-of p0, p1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz p0, :cond_0

    return-void

    .line 133
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal View! Only support TabView!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initContentView()V
    .locals 3

    .line 156
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 157
    new-instance v1, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    .line 158
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 160
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addView(Landroid/view/View;)V

    return-void
.end method

.method private refreshTabState()V
    .locals 3

    const/4 v0, 0x0

    .line 333
    :goto_0
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 334
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 335
    instance-of v2, v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v2, :cond_0

    .line 336
    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 337
    iget-boolean v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    invoke-virtual {v1, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected addTabViewAt(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V
    .locals 3

    if-eqz p1, :cond_2

    .line 250
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    const/4 v1, -0x2

    if-gt p2, v0, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 251
    :cond_1
    :goto_0
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, -0x1

    invoke-virtual {p2, p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 255
    :goto_1
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    :cond_2
    return-void
.end method

.method public addTabViewChildId(I)V
    .locals 0

    .line 168
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 101
    invoke-virtual {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 113
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 107
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    if-ne v0, p1, :cond_0

    .line 124
    invoke-super {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->checkView(Landroid/view/View;)V

    .line 127
    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-direct {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V

    :goto_0
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 p2, -0x1

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public clearTabViewChildIds()V
    .locals 0

    .line 176
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getEnabled()Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    return p0
.end method

.method protected getTabCount()I
    .locals 0

    .line 295
    iget p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    return p0
.end method

.method protected getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-gt p1, v0, :cond_0

    return-object v1

    .line 263
    :cond_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    iget v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    sub-int/2addr v0, v2

    add-int/2addr v0, p1

    .line 264
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 265
    instance-of p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz p1, :cond_1

    .line 266
    check-cast p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    return-object p0

    :cond_1
    return-object v1
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 73
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 74
    iget v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mLayoutConfig:I

    const/16 v3, 0x29e

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 76
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 77
    iget v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mDeviceType:I

    if-ne v2, v4, :cond_2

    const/16 v2, 0x19a

    if-le v0, v2, :cond_2

    if-le v1, v3, :cond_2

    goto :goto_0

    :cond_0
    if-ne v2, v6, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 82
    iget v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mDeviceType:I

    if-ne v1, v4, :cond_2

    if-le v0, v3, :cond_2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne v2, v0, :cond_2

    goto :goto_0

    :cond_2
    move v6, v7

    .line 88
    :goto_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v0, v6}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->setTabViewLayoutMode(I)V

    .line 89
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method protected removeAllTabViews()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 284
    :goto_0
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 285
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 286
    instance-of v3, v2, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v3, :cond_0

    .line 287
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->clearTabViewChildIds()V

    .line 291
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 325
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 326
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 327
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    .line 328
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->refreshTabState()V

    :cond_0
    return-void
.end method

.method public setFilteredTab(I)V
    .locals 2

    .line 299
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 301
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 302
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    :cond_0
    const/4 v0, 0x1

    .line 304
    invoke-static {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->access$000(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Z)V

    .line 306
    :cond_1
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->updateChildIdsFromXml()V

    return-void
.end method

.method public setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V
    .locals 2

    .line 241
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    :cond_0
    const/4 v0, 0x1

    .line 244
    invoke-static {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->access$000(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Z)V

    .line 245
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->updateChildIdsFromXml()V

    return-void
.end method

.method public setParentApplyBlur(Z)V
    .locals 4

    .line 138
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    if-eq v0, p1, :cond_0

    .line 139
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    .line 141
    :cond_0
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    if-eqz p0, :cond_2

    .line 143
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 145
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 146
    instance-of v3, v2, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v3, :cond_1

    .line 147
    check-cast v2, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 149
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected updateChildIdsFromXml()V
    .locals 4

    .line 310
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 313
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 314
    instance-of v3, v2, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v3, :cond_0

    .line 315
    check-cast v2, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 316
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_2
    return-void
.end method
