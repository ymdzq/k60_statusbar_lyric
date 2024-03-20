.class public final Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;
.super Ljava/lang/Object;
.source "A11yMenuViewPager.java"


# instance fields
.field private a11yMenuLayout:Landroid/view/ViewGroup;

.field private gridPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field public final service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

.field public viewPager:Landroidx/viewpager/widget/ViewPager;

.field private viewPagerAdapter:Lcom/android/settings/accessibility/accessibilitymenu/view/ViewPagerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/accessibility/accessibilitymenu/view/ViewPagerAdapter<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgeta11yMenuLayout(Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;)Landroid/view/ViewGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->a11yMenuLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgridPageList(Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->gridPageList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$madjustTextViewHeight(Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;Landroid/widget/GridView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->adjustTextViewHeight(Landroid/widget/GridView;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->gridPageList:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    return-void
.end method

.method private adjustTextViewHeight(Landroid/widget/GridView;)V
    .locals 7

    const/4 p0, 0x0

    .line 125
    filled-new-array {p0, p0, p0}, [I

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 127
    new-array v2, v1, [Landroid/view/View;

    move v3, p0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 129
    invoke-virtual {p1, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/android/settings/R$id;->shortcutLabel:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    .line 130
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 131
    div-int/lit8 v5, v3, 0x3

    .line 133
    aget v6, v0, v5

    if-le v4, v6, :cond_0

    .line 134
    aput v4, v0, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge p0, v1, :cond_2

    .line 139
    aget-object p1, v2, p0

    div-int/lit8 v3, p0, 0x3

    aget v3, v0, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setMinimumHeight(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private updateFooterState()V
    .locals 0

    .line 0
    return-void
.end method


# virtual methods
.method public final configureViewPagerAndFooter(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->a11yMenuLayout:Landroid/view/ViewGroup;

    .line 39
    sget v0, Lcom/android/settings/R$id;->view_pager:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 40
    new-instance p1, Lcom/android/settings/accessibility/accessibilitymenu/view/ViewPagerAdapter;

    invoke-direct {p1}, Lcom/android/settings/accessibility/accessibilitymenu/view/ViewPagerAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->viewPagerAdapter:Lcom/android/settings/accessibility/accessibilitymenu/view/ViewPagerAdapter;

    .line 41
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    if-eqz p2, :cond_2

    .line 42
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 43
    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->gridPageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->gridPageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 46
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    add-int/lit8 v1, v0, 0x9

    .line 49
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 50
    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 51
    iget-object v2, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->grid_view:I

    const/4 v4, 0x0

    .line 52
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/android/settings/R$id;->gridview:I

    .line 53
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 54
    new-instance v3, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;

    iget-object v4, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    invoke-direct {v3, v4, v0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;-><init>(Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;Ljava/util/List;)V

    const/4 v0, 0x3

    .line 55
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 56
    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->gridPageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->viewPagerAdapter:Lcom/android/settings/accessibility/accessibilitymenu/view/ViewPagerAdapter;

    iget-object p2, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->gridPageList:Ljava/util/List;

    iput-object p2, p1, Lcom/android/settings/accessibility/accessibilitymenu/view/ViewPagerAdapter;->widgetList:Ljava/util/List;

    .line 60
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 62
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->updateFooterState()V

    .line 63
    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->a11yMenuLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;

    invoke-direct {p2, p0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager$1;-><init>(Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;)V

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public disableMenu(IZ)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->gridPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuViewPager;->gridPageList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/GridView;

    .line 113
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    .line 115
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 116
    sget p1, Lcom/android/settings/R$id;->shortcutIconBtn:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 118
    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method
