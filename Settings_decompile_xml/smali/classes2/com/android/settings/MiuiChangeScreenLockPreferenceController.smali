.class public Lcom/android/settings/MiuiChangeScreenLockPreferenceController;
.super Ljava/lang/Object;
.source "MiuiChangeScreenLockPreferenceController.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mDPM:Landroid/app/admin/DevicePolicyManager;

.field protected final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mPreference:Lcom/android/settingslib/MiuiRestrictedPreference;

.field protected final mProfileChallengeUserId:I

.field protected final mUm:Landroid/os/UserManager;

.field protected final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mUserId:I

    .line 50
    iput-object p1, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    .line 51
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mUm:Landroid/os/UserManager;

    const-string v2, "device_policy"

    .line 52
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 53
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 54
    invoke-static {v1, v0}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    return-void
.end method


# virtual methods
.method disableIfPasswordQualityManaged(I)V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {v0, p1}, Lcom/android/settings/compat/RestrictedLockUtilsCompat;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result p1

    const/high16 v1, 0x80000

    if-ne p1, v1, :cond_0

    .line 134
    iget-object p0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/MiuiRestrictedPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/MiuiRestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/MiuiRestrictedPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "unlock_set_or_change"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected updateSummary(I)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    iget v0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 102
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/MiuiRestrictedPreference;

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_mode_none:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 103
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/MiuiRestrictedPreference;

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_mode_off:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_5

    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_4

    const/high16 v0, 0x30000

    if-eq p1, v0, :cond_4

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_3

    goto :goto_1

    .line 120
    :cond_3
    iget-object p1, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/MiuiRestrictedPreference;

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_mode_password:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 114
    :cond_4
    iget-object p1, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/MiuiRestrictedPreference;

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_mode_pin:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 110
    :cond_5
    iget-object p1, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/MiuiRestrictedPreference;

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_mode_pattern:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 126
    :goto_1
    iget-object p0, p0, Lcom/android/settings/MiuiChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/MiuiRestrictedPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method
