.class public Lcom/android/settings/applications/MiuiAppLaunchSettings;
.super Lcom/android/settings/applications/AppInfoBase;
.source "MiuiAppLaunchSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnScrollChangeListener;


# static fields
.field private static final sBrowserIntent:Landroid/content/Intent;


# instance fields
.field private mAppLinkState:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private mAppSummary:Landroid/widget/TextView;

.field private mClearDefaultsPreference:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

.field private mDomainUrlsCategory:Landroidx/preference/PreferenceCategory;

.field private mHasDomainUrls:Z

.field private mHeadContent:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mIsBrowser:Z

.field private mPm:Landroid/content/pm/PackageManager;

.field private mScrollView:Lmiuix/core/widget/NestedScrollView;


# direct methods
.method static bridge synthetic -$$Nest$mupdateAppLinkState(Lcom/android/settings/applications/MiuiAppLaunchSettings;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/MiuiAppLaunchSettings;->updateAppLinkState(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateSummary(Lcom/android/settings/applications/MiuiAppLaunchSettings;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/MiuiAppLaunchSettings;->updateSummary(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http:"

    .line 63
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoBase;-><init>()V

    return-void
.end method

.method private buildState()V
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mAppLinkState:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    sget v1, Lcom/android/settings/R$string;->app_link_open_always:I

    .line 171
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->app_link_open_ask:I

    .line 172
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->app_link_open_never:I

    .line 173
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/CharSequence;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mAppLinkState:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const/4 v1, 0x2

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 177
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 178
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v3, v4}, [Ljava/lang/CharSequence;

    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 180
    iget-boolean v0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mIsBrowser:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mAppLinkState:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mAppLinkState:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mDomainUrlsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    .line 185
    iget-object p0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mDomainUrlsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mAppLinkState:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-boolean v1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mHasDomainUrls:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 193
    iget-boolean v0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mHasDomainUrls:Z

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mAppLinkState:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 199
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mAppLinkState:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/MiuiAppLaunchSettings;->updateSummary(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mAppLinkState:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    new-instance v1, Lcom/android/settings/applications/MiuiAppLaunchSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/MiuiAppLaunchSettings$1;-><init>(Lcom/android/settings/applications/MiuiAppLaunchSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    .line 257
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method private isBrowserApp(Ljava/lang/String;)Z
    .locals 4

    .line 263
    sget-object v0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object p0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    const/high16 p1, 0x20000

    .line 265
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 264
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 266
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 268
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 269
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    iget-boolean v2, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private updateAppLinkState(I)Z
    .locals 4

    .line 231
    iget-boolean v0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mIsBrowser:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 237
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 238
    iget-object v2, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, p1, :cond_1

    return v1

    .line 244
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, v0}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 247
    iget-object v2, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p0, v0}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result p0

    if-ne p1, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    const-string p0, "MiuiAppLaunchSettings"

    const-string p1, "Couldn\'t update intent verification status!"

    .line 250
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method private updateSummary(Ljava/lang/String;)V
    .locals 4

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mAppLinkState:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mAppLinkState:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v1}, Lmiuix/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    .line 222
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 223
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    iget-object p0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mAppLinkState:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    aget-object p1, v1, v2

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected createDialog(II)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x102002c    # @android:id/home

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 82
    sget p1, Lcom/android/settings/R$style;->ThemeMiuiSettings_Main:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->setThemeRes(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 87
    sget v0, Lcom/android/settings/R$layout;->app_launch_settings:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 88
    sget v0, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 89
    invoke-super {p0, p1, v0, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 90
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 93
    instance-of p3, p1, Lmiuix/springback/view/SpringBackLayout;

    if-eqz p3, :cond_0

    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->app_launch_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_1

    return-object p2

    .line 101
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 102
    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/applications/MiuiAppLaunchSettings;->isBrowserApp(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mIsBrowser:Z

    .line 103
    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 p1, p1, 0x10

    const/4 p3, 0x1

    if-eqz p1, :cond_2

    move p1, p3

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mHasDomainUrls:Z

    .line 106
    sget p1, Lcom/android/settings/R$id;->app_detail_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mIconView:Landroid/widget/ImageView;

    .line 107
    sget p1, Lcom/android/settings/R$id;->app_detail_summary:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mAppSummary:Landroid/widget/TextView;

    .line 108
    sget p1, Lcom/android/settings/R$id;->app_launch_scrollview:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/core/widget/NestedScrollView;

    iput-object p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mScrollView:Lmiuix/core/widget/NestedScrollView;

    .line 109
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 110
    sget p1, Lcom/android/settings/R$id;->app_head:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mHeadContent:Landroid/view/View;

    .line 111
    sget p1, Lcom/android/settings/R$id;->app_detail_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mAppSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 116
    iget-object p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 117
    iget-object p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestFocus()Z

    .line 118
    iget-object p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p3

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 119
    invoke-virtual {p3, v0}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 118
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "app_link_state"

    .line 121
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mAppLinkState:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const-string p1, "app_launch_supported_domain_urls"

    .line 123
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mDomainUrlsCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "app_launch_clear_defaults"

    .line 124
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    iput-object p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    .line 125
    iget-boolean p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mIsBrowser:Z

    if-nez p1, :cond_3

    .line 126
    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/applications/MiuiAppLaunchSettings;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 127
    iget-object p3, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mDomainUrlsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p3}, Landroidx/preference/PreferenceGroup;->removeAll()V

    move p3, v1

    .line 128
    :goto_1
    array-length v0, p1

    if-ge p3, v0, :cond_3

    .line 129
    new-instance v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    .line 130
    aget-object v2, p1, p3

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 132
    iget-object v2, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mDomainUrlsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method public onResume()V
    .locals 0

    .line 140
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onResume()V

    .line 141
    invoke-direct {p0}, Lcom/android/settings/applications/MiuiAppLaunchSettings;->buildState()V

    return-void
.end method

.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    return-void
.end method

.method protected refreshUi()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->setPackageName(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->setAppEntry(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
