.class public Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MiuiSecurityAndPrivacySettings.java"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# instance fields
.field private mCardPreferenceController:Lcom/android/settings/security/UnlockModeCardPreferenceController;

.field private mChangeProfileScreenLockPreferenceController:Lcom/android/settings/MiuiChangeProfileScreenLockPreferenceController;

.field private mLockUnificationPreferenceController:Lcom/android/settings/MiuiLockUnificationPreferenceController;

.field private mPrivacyPasswordUnlockStateController:Lcom/android/settings/PrivacyPasswordUnlockStateController;

.field private mRootView:Landroid/view/View;

.field private mWorkProfileCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    new-instance v1, Lcom/android/settings/security/UnlockModeCardPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, "unlock_mode_card_preference"

    invoke-direct {v1, v2, v3, p0}, Lcom/android/settings/security/UnlockModeCardPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    iput-object v1, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mCardPreferenceController:Lcom/android/settings/security/UnlockModeCardPreferenceController;

    .line 199
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v1, Lcom/android/settings/security/ManagePasswordPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/settings/security/ManagePasswordPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v1, Lcom/android/settings/PrivacyPasswordUnlockStateController;

    const-string/jumbo v2, "privacy_password"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/PrivacyPasswordUnlockStateController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mPrivacyPasswordUnlockStateController:Lcom/android/settings/PrivacyPasswordUnlockStateController;

    .line 202
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;

    const-string v1, "cell_broadcast_settings"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance p0, Lcom/android/settings/security/PrivacyPolicyController;

    const-string v1, "keyguard_privacy_policy"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/security/PrivacyPolicyController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPageIndex()I
    .locals 0

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 59
    sget p0, Lcom/android/settings/R$xml;->security_privacy_settings:I

    return p0
.end method

.method public launchConfirmDeviceLockForUnification()V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mLockUnificationPreferenceController:Lcom/android/settings/MiuiLockUnificationPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/MiuiLockUnificationPreferenceController;->launchConfirmDeviceLockForUnification()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mCardPreferenceController:Lcom/android/settings/security/UnlockModeCardPreferenceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/security/UnlockModeCardPreferenceController;->handleActivityResult(IILandroid/content/Intent;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mLockUnificationPreferenceController:Lcom/android/settings/MiuiLockUnificationPreferenceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/MiuiLockUnificationPreferenceController;->handleActivityResult(IILandroid/content/Intent;)Z

    .line 176
    iget-object p3, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mPrivacyPasswordUnlockStateController:Lcom/android/settings/PrivacyPasswordUnlockStateController;

    invoke-virtual {p3, p1, p2}, Lcom/android/settings/PrivacyPasswordUnlockStateController;->handleActivityResult(II)Z

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowingMode()I

    move-result p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .line 103
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onBindPreferences()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 215
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 216
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->card_margin_edge:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 221
    sget v0, Lcom/android/settings/R$id;->grid_view_root:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    new-instance p1, Lcom/android/settings/MiuiChangeProfileScreenLockPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/MiuiChangeProfileScreenLockPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mChangeProfileScreenLockPreferenceController:Lcom/android/settings/MiuiChangeProfileScreenLockPreferenceController;

    .line 81
    new-instance p1, Lcom/android/settings/MiuiLockUnificationPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0, p0, p0}, Lcom/android/settings/MiuiLockUnificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mLockUnificationPreferenceController:Lcom/android/settings/MiuiLockUnificationPreferenceController;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 87
    sget v0, Lcom/android/settings/R$layout;->security_privacy_settings:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mRootView:Landroid/view/View;

    .line 89
    sget v2, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 91
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 94
    instance-of p2, p1, Lmiuix/springback/view/SpringBackLayout;

    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    .line 154
    invoke-super {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mRootView:Landroid/view/View;

    return-void
.end method

.method public onFragmentResult(ILandroid/os/Bundle;)V
    .locals 2

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p2, :cond_0

    .line 188
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v1, "miui_security_fragment_result"

    .line 189
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mCardPreferenceController:Lcom/android/settings/security/UnlockModeCardPreferenceController;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/settings/security/UnlockModeCardPreferenceController;->handleActivityResult(IILandroid/content/Intent;)V

    .line 192
    iget-object p0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mLockUnificationPreferenceController:Lcom/android/settings/MiuiLockUnificationPreferenceController;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/MiuiLockUnificationPreferenceController;->handleActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->checkMultiWindowState(Landroid/app/Activity;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 108
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unlock_set_or_change_profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mChangeProfileScreenLockPreferenceController:Lcom/android/settings/MiuiChangeProfileScreenLockPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/MiuiChangeProfileScreenLockPreferenceController;->handlePreferenceTreeClick(Landroidx/fragment/app/Fragment;)Z

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 122
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mChangeProfileScreenLockPreferenceController:Lcom/android/settings/MiuiChangeProfileScreenLockPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/MiuiChangeProfileScreenLockPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mLockUnificationPreferenceController:Lcom/android/settings/MiuiLockUnificationPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/MiuiLockUnificationPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "security_category_profile"

    .line 133
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mWorkProfileCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_3

    .line 135
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mWorkProfileCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 124
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mChangeProfileScreenLockPreferenceController:Lcom/android/settings/MiuiChangeProfileScreenLockPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/MiuiChangeProfileScreenLockPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mChangeProfileScreenLockPreferenceController:Lcom/android/settings/MiuiChangeProfileScreenLockPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mChangeProfileScreenLockPreferenceController:Lcom/android/settings/MiuiChangeProfileScreenLockPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/MiuiChangeProfileScreenLockPreferenceController;->updateState()V

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mLockUnificationPreferenceController:Lcom/android/settings/MiuiLockUnificationPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/MiuiLockUnificationPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mLockUnificationPreferenceController:Lcom/android/settings/MiuiLockUnificationPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiLockUnificationPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mLockUnificationPreferenceController:Lcom/android/settings/MiuiLockUnificationPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/MiuiLockUnificationPreferenceController;->updateState()V

    .line 138
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->checkMultiWindowState(Landroid/app/Activity;)V

    .line 140
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_5

    const-string v0, "cell_broadcast_settings"

    .line 141
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_5

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v1, "phone"

    .line 144
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 145
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BG"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const-string p0, "BG-ALERT"

    .line 146
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public unifyUncompliantLocks()V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mLockUnificationPreferenceController:Lcom/android/settings/MiuiLockUnificationPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/MiuiLockUnificationPreferenceController;->unifyUncompliantLocks()V

    return-void
.end method

.method public updateUnificationPreference()V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->mLockUnificationPreferenceController:Lcom/android/settings/MiuiLockUnificationPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/MiuiLockUnificationPreferenceController;->updateState()V

    return-void
.end method
