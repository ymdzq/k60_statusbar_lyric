.class public abstract Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ProfileSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;,
        Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;
    }
.end annotation


# static fields
.field private static final LABEL:[I


# instance fields
.field private mContentView:Landroid/view/ViewGroup;

.field private mViewPager:Lmiuix/viewpager/widget/ViewPager;

.field private tabHelper:Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLABEL()[I
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->LABEL:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smconvertPosition(I)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->convertPosition(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 110
    sget v0, Lcom/android/settings/R$string;->category_personal:I

    sget v1, Lcom/android/settings/R$string;->category_work:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->LABEL:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static convertPosition(I)I
    .locals 2

    .line 347
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 349
    sget-object v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->LABEL:[I

    array-length v0, v0

    sub-int/2addr v0, v1

    sub-int/2addr v0, p0

    return v0

    :cond_0
    return p0
.end method


# virtual methods
.method public abstract getFragments()[Landroidx/fragment/app/Fragment;
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "ProfileSelectFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 256
    sget p0, Lcom/android/settings/R$xml;->placeholder_preference_screen:I

    return p0
.end method

.method getTabId(Landroid/app/Activity;Landroid/os/Bundle;)I
    .locals 2

    const/4 p0, 0x1

    if-eqz p2, :cond_1

    const-string v0, ":settings:show_fragment_tab"

    const/4 v1, -0x1

    .line 267
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v0

    .line 271
    :cond_0
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 272
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p2

    if-eqz p2, :cond_1

    return p0

    .line 278
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result p2

    .line 279
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getTitleResId()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 159
    sget v0, Lcom/android/settings/R$layout;->preference_list_profile_select_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 162
    sget v2, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 163
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mContentView:Landroid/view/ViewGroup;

    .line 164
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->getTitleResId()I

    move-result p2

    if-lez p2, :cond_0

    .line 169
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->getTabId(Landroid/app/Activity;Landroid/os/Bundle;)I

    move-result p2

    .line 173
    sget p3, Lcom/android/settings/R$id;->tab_container:I

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 174
    sget v2, Lcom/android/settings/R$id;->view_pager:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/viewpager/widget/ViewPager;

    iput-object v2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 175
    new-instance v3, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;)V

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/OriginalViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 176
    sget v2, Lcom/android/settings/R$id;->tabs:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 177
    new-instance v3, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->getFragments()[Landroidx/fragment/app/Fragment;

    move-result-object v4

    array-length v4, v4

    iget-object v5, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-direct {v3, v4, v2, v5}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;-><init>(ILmiuix/miuixbasewidget/widget/FilterSortView;Lmiuix/viewpager/widget/ViewPager;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->tabHelper:Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;

    .line 178
    invoke-virtual {v3}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->addTabs()V

    .line 180
    iget-object v2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->tabHelper:Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->setUpViewPager()V

    .line 182
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object p3, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->tabHelper:Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;

    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->pageSelected(I)V

    .line 186
    sget p2, Lcom/android/settings/R$id;->list_container:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 187
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const/4 p3, 0x2

    .line 192
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/android/settings/Utils;->setActionBarShadowAnimation(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;Landroid/view/View;)V

    return-object v0
.end method
