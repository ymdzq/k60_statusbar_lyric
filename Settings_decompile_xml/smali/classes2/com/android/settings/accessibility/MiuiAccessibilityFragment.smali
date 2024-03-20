.class public Lcom/android/settings/accessibility/MiuiAccessibilityFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiAccessibilityFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/MiuiAccessibilityFragment$PreviewPagerAdapter;
    }
.end annotation


# static fields
.field private static final a11ySettingsClass:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mFragmentAdapter:Lcom/android/settings/accessibility/MiuiAccessibilityFragment$PreviewPagerAdapter;

.field private mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mRootLayout:Landroid/view/View;

.field private mTabBar:Landroid/widget/LinearLayout;

.field private mTitles:[Ljava/lang/String;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmViewPager(Lcom/android/settings/accessibility/MiuiAccessibilityFragment;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgeta11ySettingsClass()[Ljava/lang/Class;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->a11ySettingsClass:[Ljava/lang/Class;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 35
    const-class v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;

    const-class v1, Lcom/android/settings/accessibility/VisualAccessibilitySettings;

    const-class v2, Lcom/android/settings/accessibility/HearingAccessibilitySettings;

    const-class v3, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->a11ySettingsClass:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 48
    new-instance v0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/MiuiAccessibilityFragment$1;-><init>(Lcom/android/settings/accessibility/MiuiAccessibilityFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method private initTitles()V
    .locals 4

    .line 92
    sget v0, Lcom/android/settings/R$string;->accessibility_settings_tabs_general:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->accessibility_settings_tabs_visual:I

    .line 93
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->accessibility_settings_tabs_hearing:I

    .line 94
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->accessibility_settings_tabs_physical:I

    .line 95
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mTitles:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createTabView(Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .line 150
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/android/settings/R$attr;->actionBarTabTextExpandStyle:I

    invoke-direct {v0, v1, v2, v3}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->actionbar_text_selector_tablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 154
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    .line 156
    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 157
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method protected getDefaultVisibleTabIndex()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 88
    const-class p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-direct {p0}, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->initTitles()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mRootLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 105
    iget-object p2, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mRootLayout:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mRootLayout:Landroid/view/View;

    return-object p0

    .line 109
    :cond_1
    sget v0, Lcom/android/settings/R$layout;->miui_accessibility_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mRootLayout:Landroid/view/View;

    .line 110
    sget v2, Lcom/android/settings/R$id;->viewPager:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 111
    iget-object v2, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 112
    new-instance v0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment$PreviewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/settings/accessibility/MiuiAccessibilityFragment$PreviewPagerAdapter;-><init>(Lcom/android/settings/accessibility/MiuiAccessibilityFragment;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mFragmentAdapter:Lcom/android/settings/accessibility/MiuiAccessibilityFragment$PreviewPagerAdapter;

    .line 113
    iget-object v2, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mRootLayout:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->tablayout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mTabBar:Landroid/widget/LinearLayout;

    .line 116
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 117
    :goto_0
    sget-object v2, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->a11ySettingsClass:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mTitles:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->createTabView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 120
    new-instance v3, Lcom/android/settings/accessibility/MiuiAccessibilityFragment$2;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/accessibility/MiuiAccessibilityFragment$2;-><init>(Lcom/android/settings/accessibility/MiuiAccessibilityFragment;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v3, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mTabBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->getDefaultVisibleTabIndex()I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 133
    iget-object v1, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mTabBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 135
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 137
    iget-object p0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mRootLayout:Landroid/view/View;

    return-object p0
.end method

.method public setTabSelected(I)V
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mTabBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 143
    iget-object v3, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->mTabBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 145
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
