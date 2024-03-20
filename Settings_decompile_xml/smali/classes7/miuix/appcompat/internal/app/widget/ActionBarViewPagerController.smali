.class public Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;
    }
.end annotation


# instance fields
.field private mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mTabListener:Landroidx/appcompat/app/ActionBar$TabListener;

.field private mViewPager:Lmiuix/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;Z)V
    .locals 3

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance p3, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;

    invoke-direct {p3, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)V

    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mTabListener:Landroidx/appcompat/app/ActionBar$TabListener;

    .line 118
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 119
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getActionBarOverlayLayout()Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 122
    sget v0, Lmiuix/appcompat/R$id;->view_pager:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 123
    instance-of v2, v1, Lmiuix/viewpager/widget/ViewPager;

    if-eqz v2, :cond_0

    .line 124
    check-cast v1, Lmiuix/viewpager/widget/ViewPager;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    goto :goto_0

    .line 126
    :cond_0
    new-instance v1, Lmiuix/viewpager/widget/ViewPager;

    invoke-direct {v1, p3}, Lmiuix/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 127
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setId(I)V

    .line 128
    new-instance v0, Lmiuix/springback/view/SpringBackLayout;

    invoke-direct {v0, p3}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;)V

    .line 129
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    const/4 v1, 0x5

    .line 130
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setScrollOrientation(I)V

    .line 131
    new-instance v1, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    invoke-direct {v1}, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;-><init>()V

    .line 132
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 134
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Lmiuix/viewpager/widget/ViewPager;->isDraggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    const v1, 0x1020002    # @android:id/content

    .line 135
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 136
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    :goto_0
    new-instance p1, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-direct {p1, p3, p2}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 142
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 143
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    new-instance p2, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;

    invoke-direct {p2, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/OriginalViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;)V

    if-eqz p4, :cond_1

    .line 196
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 197
    new-instance p1, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-direct {p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;-><init>(Lmiuix/viewpager/widget/ViewPager;Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/viewpager/widget/ViewPager;
    .locals 0

    .line 37
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
    .locals 0

    .line 37
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    return-object p0
.end method


# virtual methods
.method addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/appcompat/app/ActionBar$Tab;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .line 212
    move-object v0, p2

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mTabListener:Landroidx/appcompat/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setInternalTabListener(Landroidx/appcompat/app/ActionBar$TabListener;)Landroidx/appcompat/app/ActionBar$Tab;

    .line 213
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0, p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalAddTab(Landroidx/appcompat/app/ActionBar$Tab;I)V

    .line 214
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->addFragment(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/ActionBar$Tab;Z)I

    move-result p1

    .line 215
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 216
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p2, p0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    :cond_0
    return p1
.end method

.method addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/appcompat/app/ActionBar$Tab;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .line 202
    move-object v0, p2

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mTabListener:Landroidx/appcompat/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setInternalTabListener(Landroidx/appcompat/app/ActionBar$TabListener;)Landroidx/appcompat/app/ActionBar$Tab;

    .line 203
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalAddTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    .line 204
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->addFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/ActionBar$Tab;Z)I

    move-result p1

    .line 205
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 206
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p2, p0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    :cond_0
    return p1
.end method

.method addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    .line 293
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getFragmentTabCount()I
    .locals 0

    .line 264
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getCount()I

    move-result p0

    return p0
.end method

.method setViewPagerDraggable(Z)V
    .locals 1

    .line 323
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Lmiuix/viewpager/widget/ViewPager;->setDraggable(Z)V

    .line 324
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz p0, :cond_0

    .line 325
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    :cond_0
    return-void
.end method
