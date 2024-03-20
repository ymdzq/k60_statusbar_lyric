.class public Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "MiuiSecurityCommonSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSecurityCommonSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiuiSecurityCommonSettingsFragment"
.end annotation


# instance fields
.field private callbak:Lcom/android/settings/FingerprintRemoveCallback;

.field private mAddKeyguardpasswordThenAddFingerprint:Z

.field private mBiometricWeakLiveliness:Landroidx/preference/CheckBoxPreference;

.field private mChangePassword:Lcom/android/settings/KeyguardRestrictedListPreference;

.field private final mChangeSecurityLockPreferenceListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

.field private final mFaceAndFingerprintDeletes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFaceRemovalCallback:Lcom/android/settings/faceunlock/FaceRemoveCallback;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockScreenCommonOptions:Landroidx/preference/PreferenceCategory;

.field private mPasswordConfirmed:Z

.field private mSecurityLockToggle:Lcom/android/settings/KeyguardRestrictedPreference;

.field private mTactileFeedback:Landroidx/preference/CheckBoxPreference;

.field private mTurnOnOrOffAndChangePassword:Landroidx/preference/PreferenceCategory;

.field private mUserPassword:Ljava/lang/String;

.field private removeAllFingerCallbak:Lcom/android/settings/FingerprintRemoveCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetcallbak(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Lcom/android/settings/FingerprintRemoveCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->callbak:Lcom/android/settings/FingerprintRemoveCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChooseLockSettingsHelper(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Lcom/android/settings/MiuiChooseLockSettingsHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasswordConfirmed(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mPasswordConfirmed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserPassword(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mUserPassword:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateNewPassword(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->createNewPassword()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRemoveAllFingerprints(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->handleRemoveAllFingerprints()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveBiometricResult(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->removeBiometricResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDialogToWaitTurnOffPassword(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->showDialogToWaitTurnOffPassword()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mturnoffPassword(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->turnoffPassword()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mPasswordConfirmed:Z

    .line 120
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mFaceAndFingerprintDeletes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 122
    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mAddKeyguardpasswordThenAddFingerprint:Z

    .line 123
    new-instance v0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;-><init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChangeSecurityLockPreferenceListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 471
    new-instance v0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$2;-><init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->callbak:Lcom/android/settings/FingerprintRemoveCallback;

    .line 608
    new-instance v0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$6;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$6;-><init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mFaceRemovalCallback:Lcom/android/settings/faceunlock/FaceRemoveCallback;

    .line 622
    new-instance v0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$7;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$7;-><init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->removeAllFingerCallbak:Lcom/android/settings/FingerprintRemoveCallback;

    return-void
.end method

.method private createNewPassword()V
    .locals 6

    .line 579
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "add_keyguard_password_then_add_fingerprint"

    .line 580
    iget-boolean v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mAddKeyguardpasswordThenAddFingerprint:Z

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "com.android.settings.MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment"

    const/4 v3, 0x0

    .line 581
    sget v5, Lcom/android/settings/R$string;->password_entrance_title:I

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method

.method private disablePrefByPasswordQuality()V
    .locals 11

    .line 646
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/compat/RestrictedLockUtilsCompat;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 647
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 648
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v1

    if-eqz v0, :cond_0

    if-lez v1, :cond_0

    .line 650
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mSecurityLockToggle:Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 652
    :cond_0
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mSecurityLockToggle:Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_0
    if-eqz v0, :cond_6

    .line 655
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChangePassword:Lcom/android/settings/KeyguardRestrictedListPreference;

    invoke-virtual {v2}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 656
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChangePassword:Lcom/android/settings/KeyguardRestrictedListPreference;

    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 658
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_6

    .line 659
    aget-object v6, v3, v5

    const-string/jumbo v7, "pattern"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    const/high16 v6, 0x10000

    if-le v1, v6, :cond_1

    move v6, v7

    goto :goto_2

    :cond_1
    move v6, v4

    :goto_2
    const-string/jumbo v8, "numerical"

    .line 661
    aget-object v9, v3, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/high16 v8, 0x30000

    if-le v1, v8, :cond_2

    move v8, v7

    goto :goto_3

    :cond_2
    move v8, v4

    :goto_3
    const-string/jumbo v9, "mixed"

    .line 663
    aget-object v10, v3, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/high16 v9, 0x60000

    if-le v1, v9, :cond_3

    goto :goto_4

    :cond_3
    move v7, v4

    :goto_4
    if-nez v6, :cond_4

    if-nez v8, :cond_4

    if-eqz v7, :cond_5

    .line 666
    :cond_4
    new-instance v6, Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedItem;

    aget-object v7, v2, v5

    aget-object v8, v3, v5

    invoke-direct {v6, v7, v8, v0}, Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 668
    iget-object v7, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChangePassword:Lcom/android/settings/KeyguardRestrictedListPreference;

    invoke-virtual {v7, v6}, Lcom/android/settings/KeyguardRestrictedListPreference;->addRestrictedItem(Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedItem;)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private handleRemoveAllFingerprints()V
    .locals 4

    .line 567
    new-instance v0, Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    .line 568
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v1

    .line 569
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result v2

    if-eqz v1, :cond_1

    .line 570
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    .line 573
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 574
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->removeAllFingerCallbak:Lcom/android/settings/FingerprintRemoveCallback;

    invoke-virtual {v0, p0}, Lcom/android/settings/FingerprintHelper;->removeAllFingerprint(Lcom/android/settings/FingerprintRemoveCallback;)V

    goto :goto_1

    .line 571
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->removeBiometricResult()V

    :cond_2
    :goto_1
    return-void
.end method

.method private handleSecurityLockToggle()V
    .locals 3

    .line 485
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->keyguardPasswordExisted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->showTurnoffPasswordConfirmDialogAndFinish()V

    goto :goto_0

    .line 488
    :cond_0
    new-instance v0, Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    .line 489
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v1

    .line 490
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 491
    new-instance v1, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$3;-><init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;Lcom/android/settings/FingerprintHelper;)V

    .line 502
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x1010355    # @android:attr/alertDialogIcon

    .line 503
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->delete_or_keep_legacy_passwords_confirm_msg:I

    .line 504
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->delete_legacy_fingerprint:I

    .line 505
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->keep_legacy_fingerprint:I

    .line 506
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 507
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 510
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->createNewPassword()V

    :goto_0
    return-void
.end method

.method private keyguardPasswordExisted()Z
    .locals 1

    .line 336
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private launchConfirmationFragment(I)V
    .locals 7

    .line 172
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 173
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_disable_preview"

    const/4 v2, 0x1

    .line 174
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x6b

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "return_credentials"

    .line 176
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    const-class v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget v6, Lcom/android/settings/R$string;->empty_title:I

    move-object v1, p0

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 180
    :cond_2
    const-class v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget v6, Lcom/android/settings/R$string;->empty_title:I

    move-object v1, p0

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    :goto_0
    return-void
.end method

.method private processResult(II)V
    .locals 2

    const/16 v0, 0x65

    const/4 v1, -0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x67

    if-eq p1, v0, :cond_6

    const/16 v0, 0x68

    if-eq p1, v0, :cond_5

    const/16 v0, 0x6a

    if-eq p1, v0, :cond_4

    const/16 v0, 0x6b

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xca

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_8

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 440
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_2
    if-eq p2, v1, :cond_3

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 454
    iput-boolean p1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mPasswordConfirmed:Z

    goto :goto_0

    :cond_4
    if-ne p2, v1, :cond_8

    .line 445
    new-instance p1, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 446
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.miui.keyguard.bluetoothdeviceunlock"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    if-ne p2, v1, :cond_8

    .line 435
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mBiometricWeakLiveliness:Landroidx/preference/CheckBoxPreference;

    if-eqz p0, :cond_8

    const/4 p1, 0x0

    .line 436
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_6
    if-ne p2, v1, :cond_8

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->startBiometricWeakImprove()V

    goto :goto_0

    :cond_7
    if-ne p2, v1, :cond_8

    .line 459
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->turnoffPassword()V

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_8
    :goto_0
    return-void
.end method

.method private removeBiometricResult()V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mFaceAndFingerprintDeletes:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mFaceAndFingerprintDeletes:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 641
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method private showConfirmDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)V
    .locals 1

    .line 326
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x1010355    # @android:attr/alertDialogIcon

    .line 327
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->turn_off_keyguard_password_alert_title:I

    .line 328
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 329
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p2, 0x104000a    # @android:string/ok

    .line 330
    invoke-virtual {p0, p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p2, 0x1040000    # @android:string/cancel

    .line 331
    invoke-virtual {p0, p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 332
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showDialogToWaitTurnOffPassword()V
    .locals 4

    .line 548
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/settings/MiuiSecurityCommonSettings;->-$$Nest$sfputmLoadingDialog(Landroid/app/ProgressDialog;)V

    .line 549
    invoke-static {}, Lcom/android/settings/MiuiSecurityCommonSettings;->-$$Nest$sfgetmLoadingDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 550
    invoke-static {}, Lcom/android/settings/MiuiSecurityCommonSettings;->-$$Nest$sfgetmLoadingDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->turn_off_keyguard_password_wait_dialog:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 551
    invoke-static {}, Lcom/android/settings/MiuiSecurityCommonSettings;->-$$Nest$sfgetmLoadingDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 552
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 553
    new-instance v1, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$5;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$5;-><init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showTurnoffPasswordConfirmDialogAndFinish()V
    .locals 4

    .line 516
    new-instance v0, Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    .line 517
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    .line 518
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result v0

    .line 519
    new-instance v1, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$4;-><init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    .line 534
    sget v2, Lcom/android/settings/R$string;->turn_off_keyguard_password_confirm_msg:I

    .line 535
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 536
    sget v2, Lcom/android/settings/R$string;->turn_off_keyguard_password_with_fingerprint_face_confirm_msg:I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 539
    sget v2, Lcom/android/settings/R$string;->turn_off_keyguard_password_with_fingerprint_confirm_msg:I

    goto :goto_0

    .line 541
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    sget v2, Lcom/android/settings/R$string;->turn_off_keyguard_password_with_face_confirm_msg:I

    .line 544
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->showConfirmDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method private turnoffPassword()V
    .locals 4

    .line 586
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->hasEnrolledFaces(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->removeBiometricResult()V

    goto :goto_0

    .line 590
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    move-result-object v0

    const-string v1, "0"

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mFaceRemovalCallback:Lcom/android/settings/faceunlock/FaceRemoveCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->deleteFeature(Ljava/lang/String;Lcom/android/settings/faceunlock/FaceRemoveCallback;)V

    .line 592
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mUserPassword:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/compat/LockPatternUtilsCompat;->clearLock(Lcom/android/internal/widget/LockPatternUtils;IZLjava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 595
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "new_numeric_password_type"

    .line 596
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 595
    invoke-static {v0, v1, v3, v2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 598
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.keyguard.bluetoothdeviceunlock.disable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 601
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "vpn_password_enable"

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    return-void
.end method

.method private updatePreferencesByPasswordState()V
    .locals 2

    .line 311
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->keyguardPasswordExisted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mSecurityLockToggle:Lcom/android/settings/KeyguardRestrictedPreference;

    sget v1, Lcom/android/settings/R$string;->turn_off_security_lock:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/Preference;->setTitle(I)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChangePassword:Lcom/android/settings/KeyguardRestrictedListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/KeyguardRestrictedListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mSecurityLockToggle:Lcom/android/settings/KeyguardRestrictedPreference;

    sget v1, Lcom/android/settings/R$string;->turn_on_keyguard_password:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/Preference;->setTitle(I)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChangePassword:Lcom/android/settings/KeyguardRestrictedListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/KeyguardRestrictedListPreference;->setEnabled(Z)V

    .line 317
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mLockScreenCommonOptions:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mTurnOnOrOffAndChangePassword:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChangePassword:Lcom/android/settings/KeyguardRestrictedListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 322
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->disablePrefByPasswordQuality()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 168
    const-class p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 414
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    const/16 v0, 0x6b

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "password"

    .line 416
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mUserPassword:Ljava/lang/String;

    .line 418
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->processResult(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 342
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 344
    new-instance v0, Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/MiuiChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    .line 345
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 346
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 348
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->keyguardPasswordExisted()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    const-string/jumbo p1, "password_confirmed"

    .line 349
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "password"

    .line 350
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mUserPassword:Ljava/lang/String;

    const/4 p1, 0x1

    .line 351
    iput-boolean p1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mPasswordConfirmed:Z

    goto :goto_0

    :cond_0
    const/16 p1, 0x6b

    .line 353
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->launchConfirmationFragment(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string p1, "add_keyguard_password_then_add_fingerprint"

    .line 357
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mAddKeyguardpasswordThenAddFingerprint:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onFragmentResult(ILandroid/os/Bundle;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v2, "miui_security_fragment_result"

    .line 423
    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 424
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->processResult(II)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 366
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 367
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "biometric_weak_liveliness"

    .line 368
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mBiometricWeakLiveliness:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_1

    .line 374
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/16 v4, 0x68

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->launchConfirmationActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    :cond_2
    :goto_0
    return v0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 7

    .line 390
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "turn_off_security_lock"

    .line 392
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->handleSecurityLockToggle()V

    goto :goto_0

    :cond_0
    const-string v1, "biometric_weak_improve_matching"

    .line 394
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/16 v4, 0x67

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->launchConfirmationActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->startBiometricWeakImprove()V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    .line 400
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public onResume()V
    .locals 9

    .line 196
    invoke-super {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onResume()V

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 209
    :cond_1
    sget v0, Lcom/android/settings/R$xml;->security_settings_unlock_common:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "turn_off_security_lock"

    .line 210
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/KeyguardRestrictedPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mSecurityLockToggle:Lcom/android/settings/KeyguardRestrictedPreference;

    const-string v0, "change_password"

    .line 211
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/KeyguardRestrictedListPreference;

    iput-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChangePassword:Lcom/android/settings/KeyguardRestrictedListPreference;

    const-string v1, "lock_screen_common_options"

    .line 212
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mLockScreenCommonOptions:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v1, "turn_and_change_password"

    .line 213
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mTurnOnOrOffAndChangePassword:Landroidx/preference/PreferenceCategory;

    .line 217
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const v2, 0x8000

    const-string v3, "facial"

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v1, v2, :cond_5

    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_4

    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_3

    const/high16 v2, 0x30000

    if-eq v1, v2, :cond_3

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_2

    const/high16 v2, 0x50000

    if-eq v1, v2, :cond_2

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2

    move-object v2, v4

    :goto_0
    move v1, v5

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "mixed"

    move-object v2, v1

    goto :goto_0

    .line 222
    :cond_3
    sget v1, Lcom/android/settings/R$xml;->security_settings_pin:I

    const-string/jumbo v2, "numerical"

    goto :goto_1

    .line 230
    :cond_4
    sget v1, Lcom/android/settings/R$xml;->security_settings_pattern:I

    const-string/jumbo v2, "pattern"

    goto :goto_1

    .line 226
    :cond_5
    sget v1, Lcom/android/settings/R$xml;->security_settings_biometric_weak:I

    move-object v2, v3

    :goto_1
    const/4 v6, 0x0

    if-eq v1, v5, :cond_6

    .line 241
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v1, v4}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v1

    move v4, v6

    .line 243
    :goto_2
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    if-ge v4, v7, :cond_6

    .line 244
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v7

    .line 245
    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 246
    iget-object v8, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mLockScreenCommonOptions:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v8, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const-string v1, "biometric_weak_liveliness"

    .line 249
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mBiometricWeakLiveliness:Landroidx/preference/CheckBoxPreference;

    if-eqz v1, :cond_7

    .line 251
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_7
    const-string/jumbo v1, "vibrator"

    .line 254
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_8

    .line 255
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mLockScreenCommonOptions:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mTactileFeedback:Landroidx/preference/CheckBoxPreference;

    if-eqz v4, :cond_8

    .line 256
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 260
    :cond_8
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    .line 266
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mLockScreenCommonOptions:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_9

    .line 267
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 268
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mLockScreenCommonOptions:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 272
    :cond_9
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->mChangeSecurityLockPreferenceListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 273
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 274
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/KeyguardRestrictedListPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 277
    :cond_a
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/KeyguardRestrictedListPreference;

    .line 279
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 280
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    move v4, v6

    .line 281
    :goto_3
    array-length v7, v2

    if-ge v4, v7, :cond_c

    .line 282
    aget-object v7, v2, v4

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    move v4, v5

    :goto_4
    if-eq v4, v5, :cond_10

    .line 289
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 290
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [Ljava/lang/CharSequence;

    .line 291
    :goto_5
    array-length v7, v1

    if-ge v6, v7, :cond_f

    if-ne v6, v4, :cond_d

    goto :goto_6

    :cond_d
    if-ge v6, v4, :cond_e

    .line 295
    aget-object v7, v1, v6

    aput-object v7, v3, v6

    .line 296
    aget-object v7, v2, v6

    aput-object v7, v5, v6

    goto :goto_6

    :cond_e
    add-int/lit8 v7, v6, -0x1

    .line 298
    aget-object v8, v1, v6

    aput-object v8, v3, v7

    .line 299
    aget-object v8, v2, v6

    aput-object v8, v5, v7

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 302
    :cond_f
    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 306
    :cond_10
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->updatePreferencesByPasswordState()V

    return-void
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .line 407
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    .line 408
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
