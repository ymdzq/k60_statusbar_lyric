.class public Lcom/android/settings/device/PreInstallApplication;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PreInstallApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/settings/device/CommonIconListAdapter;

.field private mGridView:Landroidx/recyclerview/widget/RecyclerView;

.field private mMorePreInstallAppPref:Lcom/android/settings/widget/CustomTextColorValuePreference;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/android/settings/device/PreInstallApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/device/PreInstallApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/android/settings/device/PreInstallApplication;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->pre_install_app_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/settings/device/PreInstallApplication;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->pre_install_app_phone:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->ic_app_phone:I

    invoke-direct {v1, v2, v3}, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.mms"

    invoke-static {v1, v2}, Lcom/android/settings/MiuiUtils;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    new-instance v1, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->pre_install_app_sms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->ic_app_mms:I

    invoke-direct {v1, v2, v3}, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    new-instance v1, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->pre_install_app_browser:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->ic_app_browser:I

    invoke-direct {v1, v2, v3}, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->pre_install_app_camera:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->ic_app_camera:I

    invoke-direct {v1, v2, v3}, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->pre_install_app_weather:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->ic_app_weather:I

    invoke-direct {v1, v2, v3}, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->pre_install_app_gallery:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->ic_app_photo:I

    invoke-direct {v1, v2, v3}, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lcom/android/settings/device/CommonIconListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/device/CommonIconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/device/PreInstallApplication;->mAdapter:Lcom/android/settings/device/CommonIconListAdapter;

    .line 75
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 77
    iget-object v1, p0, Lcom/android/settings/device/PreInstallApplication;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/device/PreInstallApplication;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/settings/device/PreInstallApplication;->mAdapter:Lcom/android/settings/device/CommonIconListAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 88
    sget-object p0, Lcom/android/settings/device/PreInstallApplication;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 39
    const-class p0, Lcom/android/settings/device/PreInstallApplication;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 83
    sget p0, Lcom/android/settings/R$xml;->pre_install_app:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "more_pre_install_app"

    .line 45
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/CustomTextColorValuePreference;

    iput-object p1, p0, Lcom/android/settings/device/PreInstallApplication;->mMorePreInstallAppPref:Lcom/android/settings/widget/CustomTextColorValuePreference;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 50
    sget v0, Lcom/android/settings/R$layout;->pre_install_app:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/device/PreInstallApplication;->mRootView:Landroid/view/View;

    .line 52
    sget v0, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 54
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    invoke-direct {p0}, Lcom/android/settings/device/PreInstallApplication;->initView()V

    .line 56
    iget-object p0, p0, Lcom/android/settings/device/PreInstallApplication;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 1

    .line 102
    iget-object p1, p0, Lcom/android/settings/device/PreInstallApplication;->mMorePreInstallAppPref:Lcom/android/settings/widget/CustomTextColorValuePreference;

    if-ne p2, p1, :cond_1

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 104
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 105
    sget p1, Lcom/android/settings/R$string;->pre_install_network_unavailable:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    goto :goto_0

    .line 107
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "miui.intent.action.VIEW_PRE_INSTALLED_APPLICATION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 94
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 96
    sget v0, Lcom/android/settings/R$string;->pre_install_application:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method
