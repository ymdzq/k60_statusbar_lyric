.class public Lcom/android/settings/MiuiLockUnificationPreferenceController;
.super Ljava/lang/Object;
.source "MiuiLockUnificationPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

.field private mContext:Landroid/content/Context;

.field private mCurrentDevicePassword:Ljava/lang/String;

.field private mCurrentProfilePassword:Ljava/lang/String;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private final mHost:Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mProfileChallengeUserId:I

.field private final mUm:Landroid/os/UserManager;

.field private mUnifyProfile:Lcom/android/settingslib/MiuiRestrictedSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0, v0}, Lcom/android/settings/MiuiLockUnificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mContext:Landroid/content/Context;

    .line 72
    iput-object p3, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 73
    iput-object p2, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mHost:Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;

    const-string/jumbo p2, "user"

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mUm:Landroid/os/UserManager;

    .line 75
    new-instance p3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 76
    new-instance p3, Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-direct {p3, p1}, Lcom/android/settings/MiuiChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    .line 77
    sget p1, Lcom/android/settings/MiuiLockUnificationPreferenceController;->MY_USER_ID:I

    invoke-static {p2, p1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mProfileChallengeUserId:I

    return-void
.end method

.method private launchConfirmProfileLockForUnification()V
    .locals 8

    .line 174
    iget-object v0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title_profile:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 177
    iget-object v0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 178
    iget-object v3, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    iget v4, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mProfileChallengeUserId:I

    const/16 v6, 0x81

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->launchConfirmationActivity(Landroidx/fragment/app/Fragment;IIILjava/lang/String;)Z

    goto :goto_0

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiLockUnificationPreferenceController;->unifyLocks()V

    :goto_0
    return-void
.end method

.method private unifyLocks()V
    .locals 9

    .line 188
    iget-object v0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mProfileChallengeUserId:I

    .line 189
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v6

    const/high16 v0, 0x40000

    const/4 v1, 0x1

    const/4 v8, 0x0

    if-eq v0, v6, :cond_1

    const/high16 v0, 0x50000

    if-eq v0, v6, :cond_1

    const/high16 v0, 0x60000

    if-ne v0, v6, :cond_0

    goto :goto_0

    :cond_0
    move v0, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const/high16 v2, 0x10000

    if-ne v6, v2, :cond_2

    .line 194
    iget-object v0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mCurrentProfilePassword:Ljava/lang/String;

    .line 195
    invoke-static {v0, v1}, Lcom/android/settings/compat/LockPatternUtilsCompat;->stringToPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mCurrentDevicePassword:Ljava/lang/String;

    sget v3, Lcom/android/settings/MiuiLockUnificationPreferenceController;->MY_USER_ID:I

    .line 194
    invoke-static {v0, v1, v2, v3, v8}, Lcom/android/settings/compat/LockPatternUtilsCompat;->saveLockPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;Ljava/lang/String;IZ)V

    goto :goto_2

    .line 198
    :cond_2
    new-instance v2, Landroid/security/MiuiLockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mCurrentProfilePassword:Ljava/lang/String;

    xor-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mCurrentDevicePassword:Ljava/lang/String;

    sget v7, Lcom/android/settings/MiuiLockUnificationPreferenceController;->MY_USER_ID:I

    invoke-static/range {v2 .. v7}, Lcom/android/settings/compat/LockPatternUtilsCompat;->saveLockPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZLjava/lang/String;II)V

    .line 201
    :goto_2
    iget-object v0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mProfileChallengeUserId:I

    iget-object v2, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-static {v0, v1, v8, v2}, Lcom/android/settings/compat/LockPatternUtilsCompat;->setSeparateProfileChallengeEnabled(Lcom/android/internal/widget/LockPatternUtils;IZLjava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mProfileChallengeUserId:I

    .line 204
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/MiuiLockUnificationPreferenceController;->MY_USER_ID:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mCurrentDevicePassword:Ljava/lang/String;

    .line 207
    iput-object v0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mCurrentProfilePassword:Ljava/lang/String;

    return-void
.end method

.method private ununifyLocks()V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.USER_ID"

    .line 153
    iget v2, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    iget-object p0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    const-class v1, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    .line 155
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/android/settings/R$string;->lock_settings_picker_update_profile_lock_title:I

    .line 154
    invoke-static {p0, v1, v2, v0, v3}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string/jumbo v0, "unification"

    .line 62
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/MiuiRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/MiuiRestrictedSwitchPreference;

    .line 63
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 4

    const/16 v0, 0x82

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v2, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/android/settings/MiuiLockUnificationPreferenceController;->ununifyLocks()V

    return v1

    :cond_0
    const/16 v0, 0x80

    const-string/jumbo v3, "password"

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    .line 137
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mCurrentDevicePassword:Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Lcom/android/settings/MiuiLockUnificationPreferenceController;->launchConfirmProfileLockForUnification()V

    return v1

    :cond_1
    const/16 v0, 0x81

    if-ne p1, v0, :cond_2

    if-ne p2, v2, :cond_2

    .line 143
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mCurrentProfilePassword:Ljava/lang/String;

    .line 144
    invoke-direct {p0}, Lcom/android/settings/MiuiLockUnificationPreferenceController;->unifyLocks()V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 81
    iget v0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mProfileChallengeUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mUm:Landroid/os/UserManager;

    .line 82
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchConfirmDeviceLockForUnification()V
    .locals 8

    .line 161
    iget-object v0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 164
    iget-object v0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/settings/MiuiLockUnificationPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 165
    iget-object v3, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const/16 v6, 0x80

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->launchConfirmationActivity(Landroidx/fragment/app/Fragment;IIILjava/lang/String;)Z

    goto :goto_0

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiLockUnificationPreferenceController;->launchConfirmProfileLockForUnification()V

    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 92
    iget-object p1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mUm:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mProfileChallengeUserId:I

    invoke-static {p1, v0, v1}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 95
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mHost:Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;

    if-eqz p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mProfileChallengeUserId:I

    .line 97
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    const/high16 v1, 0x10000

    if-lt p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mUm:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mProfileChallengeUserId:I

    .line 100
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const-string/jumbo v2, "no_unified_password"

    .line 99
    invoke-virtual {p1, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_1

    move v0, p2

    .line 102
    :cond_1
    invoke-static {v0}, Lcom/android/settings/MiuiUnificationConfirmationDialog;->newInstance(Z)Lcom/android/settings/MiuiUnificationConfirmationDialog;

    move-result-object p1

    .line 103
    iget-object p0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mHost:Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;

    invoke-virtual {p1, p0}, Lcom/android/settings/MiuiUnificationConfirmationDialog;->show(Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 107
    iget-object p1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/MiuiLockUnificationPreferenceController;->MY_USER_ID:I

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    iget-object v2, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_3

    .line 109
    iget-object v1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const/16 v5, 0x82

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->launchConfirmationActivity(Landroidx/fragment/app/Fragment;IIILjava/lang/String;)Z

    goto :goto_0

    .line 111
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MiuiLockUnificationPreferenceController;->ununifyLocks()V

    :goto_0
    return p2
.end method

.method public unifyUncompliantLocks()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mProfileChallengeUserId:I

    iget-object v2, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mCurrentProfilePassword:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/compat/LockPatternUtilsCompat;->setSeparateProfileChallengeEnabled(Lcom/android/internal/widget/LockPatternUtils;IZLjava/lang/String;)V

    .line 213
    iget-object p0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_0

    .line 214
    const-class v0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    .line 215
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/android/settings/R$string;->lock_settings_picker_title:I

    .line 214
    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    :cond_0
    return-void
.end method

.method public updateState()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/MiuiRestrictedSwitchPreference;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mProfileChallengeUserId:I

    .line 120
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/MiuiRestrictedSwitchPreference;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/MiuiRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "no_unified_password"

    iget p0, p0, Lcom/android/settings/MiuiLockUnificationPreferenceController;->mProfileChallengeUserId:I

    invoke-static {v1, v2, p0}, Lcom/android/settings/compat/RestrictedLockUtilsCompat;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method
