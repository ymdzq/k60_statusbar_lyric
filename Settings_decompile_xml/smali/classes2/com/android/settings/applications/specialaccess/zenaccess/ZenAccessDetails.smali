.class public Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "ZenAccessDetails.java"

# interfaces
.implements Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$8FWYn2hlmduBvDXJ51gKp0AQ84E(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;Ljava/lang/CharSequence;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->lambda$updatePreference$0(Ljava/lang/CharSequence;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$updatePreference$0(Ljava/lang/CharSequence;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 89
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const-string p4, "dialog"

    if-eqz p3, :cond_0

    .line 101
    new-instance p3, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;

    invoke-direct {p3}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;-><init>()V

    .line 102
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3, v0, p1, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/fragment/app/Fragment;)Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;

    .line 103
    invoke-virtual {p3, p2}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;->setResultCallback(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;)V

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p3, p0, p4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_0
    new-instance p3, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;

    invoke-direct {p3}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;-><init>()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3, v0, p1, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/fragment/app/Fragment;)Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;

    .line 108
    invoke-virtual {p3, p2}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->setResultCallback(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;)V

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p3, p0, p4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected createDialog(II)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x69c

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget p1, Lcom/android/settings/R$xml;->zen_access_permission_details:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;-><init>(Landroid/content/Context;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$Listener;)V

    .line 47
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onZenAccessPolicyChanged()V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->refreshUi()Z

    return-void
.end method

.method protected refreshUi()Z
    .locals 3

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->getPackagesRequestingNotificationPolicyAccess()Ljava/util/Set;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "zen_access_switch"

    .line 58
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->updatePreference(Landroid/content/Context;Landroidx/preference/SwitchPreference;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public updatePreference(Landroid/content/Context;Landroidx/preference/SwitchPreference;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 72
    invoke-static {p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->getAutoApprovedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 75
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 76
    sget p1, Lcom/android/settings/R$string;->zen_access_disabled_package_warning:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->hasAccess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 81
    new-instance v1, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$1;-><init>(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;Landroidx/preference/SwitchPreference;Landroid/content/Context;)V

    .line 88
    new-instance p1, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;Ljava/lang/CharSequence;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;)V

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
