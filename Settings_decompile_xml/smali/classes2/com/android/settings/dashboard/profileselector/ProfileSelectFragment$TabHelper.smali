.class Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;
.super Ljava/lang/Object;
.source "ProfileSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabHelper"
.end annotation


# instance fields
.field private tabViews:[Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

.field private tabs:Lmiuix/miuixbasewidget/widget/FilterSortView;

.field private viewPager:Lmiuix/viewpager/widget/ViewPager;


# direct methods
.method public static synthetic $r8$lambda$lgqFNlmL2FovuIYMc_Zl3EbgDRY(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->lambda$addTabs$0(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(ILmiuix/miuixbasewidget/widget/FilterSortView;Lmiuix/viewpager/widget/ViewPager;)V
    .locals 0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    new-array p1, p1, [Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->tabViews:[Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 364
    iput-object p2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->tabs:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 365
    iput-object p3, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->viewPager:Lmiuix/viewpager/widget/ViewPager;

    return-void
.end method

.method private findIndex(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)I
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->tabViews:[Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 403
    :goto_0
    iget-object v2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->tabViews:[Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 404
    aget-object v2, v2, v0

    if-ne v2, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private synthetic lambda$addTabs$0(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Landroid/view/View;)V
    .locals 0

    .line 374
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->findIndex(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 377
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->viewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ProfileSelectFragment"

    const-string p2, "addTabs: "

    .line 379
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addTabs()V
    .locals 6

    .line 368
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->tabViews:[Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eqz v0, :cond_1

    .line 369
    invoke-static {}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->-$$Nest$sfgetLABEL()[I

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->tabViews:[Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 371
    iget-object v3, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->tabs:Lmiuix/miuixbasewidget/widget/FilterSortView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->-$$Nest$sfgetLABEL()[I

    move-result-object v5

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiuix/miuixbasewidget/widget/FilterSortView;->addTab(Ljava/lang/CharSequence;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    move-result-object v3

    .line 372
    iget-object v4, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->tabViews:[Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    aput-object v3, v4, v2

    .line 373
    new-instance v4, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    invoke-virtual {v3, v4}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->tabs:Lmiuix/miuixbasewidget/widget/FilterSortView;

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->tabViews:[Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    :cond_1
    return-void
.end method

.method public pageSelected(I)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->tabs:Lmiuix/miuixbasewidget/widget/FilterSortView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->tabViews:[Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eqz p0, :cond_1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUpViewPager()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->viewPager:Lmiuix/viewpager/widget/ViewPager;

    new-instance v1, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper$1;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper$1;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;)V

    return-void
.end method
