.class public Lcom/android/settings/MiuiChangeProfileScreenLockPreferenceController;
.super Lcom/android/settings/MiuiChangeScreenLockPreferenceController;
.source "MiuiChangeProfileScreenLockPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "unlock_set_or_change_profile"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/fragment/app/Fragment;)Z
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/MiuiRestrictedPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/MiuiChangeProfileScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mUm:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-static {v0, v2, v3}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 74
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.intent.extra.USER_ID"

    .line 75
    iget p0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-class p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    .line 77
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    sget v2, Lcom/android/settings/R$string;->lock_settings_picker_update_profile_lock_title:I

    .line 76
    invoke-static {p1, p0, v1, v0, v2}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public isAvailable()Z
    .locals 3

    .line 41
    iget v0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    const/16 v1, -0x2710

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mUm:Landroid/os/UserManager;

    .line 42
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x80000

    if-eq p0, v0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public updateState()V
    .locals 2

    .line 85
    iget v0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->updateSummary(I)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->lock_settings_profile_unified_summary:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/MiuiRestrictedPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/MiuiRestrictedPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 95
    :cond_0
    iget v0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->disableIfPasswordQualityManaged(I)V

    :goto_0
    return-void
.end method
