.class public final Lcom/android/settings/MiuiChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "MiuiChooseLockSettingsHelper.java"


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "device_policy"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/MiuiChooseLockSettingsHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method private getBiometricSensorIntent(Lcom/android/settings/KeyguardSettingsPreferenceFragment;)Landroid/content/Intent;
    .locals 3

    .line 436
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 437
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/MiuiSecurityChooseUnlock;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "lockscreen.biometric_weak_fallback"

    const/4 v1, 0x1

    .line 438
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, ":settings:show_fragment_title"

    .line 439
    sget v1, Lcom/android/settings/R$string;->lockpassword_choose_your_password_header:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.SetupIntro"

    .line 443
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "showTutorial"

    const/4 v2, 0x0

    .line 444
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v2, p0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "PendingIntent"

    .line 446
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private getConfirmationActivityIntent(IILjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 340
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "return_credentials"

    const/4 v1, 0x1

    .line 341
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.extra.USER_ID"

    .line 342
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.android.settings.ConfirmLockPattern.header"

    .line 343
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.android.settings.forgetPassword"

    const/4 p3, 0x0

    .line 344
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000

    if-eq p2, p1, :cond_1

    const/high16 p1, 0x20000

    if-eq p2, p1, :cond_0

    const/high16 p1, 0x30000

    if-eq p2, p1, :cond_0

    const/high16 p1, 0x40000

    if-eq p2, p1, :cond_0

    const/high16 p1, 0x50000

    if-eq p2, p1, :cond_0

    const/high16 p1, 0x60000

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 355
    :cond_0
    const-class p1, Lcom/android/settings/ConfirmLockPassword$InternalActivity;

    goto :goto_0

    .line 349
    :cond_1
    const-class p1, Lcom/android/settings/ConfirmLockPattern$InternalActivity;

    .line 358
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.settings"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 2

    .line 469
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private launchConfirmActivity(Landroidx/fragment/app/Fragment;Landroid/app/Activity;III)V
    .locals 5

    const/high16 p0, 0x10000

    if-eq p3, p0, :cond_2

    const/high16 p0, 0x20000

    if-eq p3, p0, :cond_0

    const/high16 p0, 0x30000

    if-eq p3, p0, :cond_0

    const/high16 p0, 0x40000

    if-eq p3, p0, :cond_0

    const/high16 p0, 0x50000

    if-eq p3, p0, :cond_0

    const/high16 p0, 0x60000

    if-eq p3, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 402
    :cond_0
    invoke-static {p2, p5}, Lmiui/securityspace/CrossUserUtils;->isAirSpace(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 403
    const-class p0, Lcom/android/settings/ConfirmSpacePasswordActivity;

    goto :goto_0

    .line 402
    :cond_1
    const-class p0, Lcom/android/settings/ConfirmLockPassword;

    goto :goto_0

    .line 392
    :cond_2
    invoke-static {p2, p5}, Lmiui/securityspace/CrossUserUtils;->isAirSpace(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 393
    const-class p0, Lcom/android/settings/ConfirmSpacePatternActivity;

    goto :goto_0

    .line 392
    :cond_3
    const-class p0, Lcom/android/settings/ConfirmLockPattern;

    :goto_0
    if-eqz p0, :cond_8

    .line 408
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, p2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "second_user_id"

    const/16 v1, -0x2710

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    const-string v1, "com.android.settings.ConfirmLockPattern.header"

    if-ne p5, p0, :cond_4

    .line 412
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/settings/R$string;->lockpassword_confirm_for_second_user:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x106000b    # @android:color/white

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const-string v4, "com.android.settings.titleColor"

    invoke-virtual {p3, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/android/settings/R$color;->set_second_space_background:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const-string v4, "com.android.settings.bgColor"

    invoke-virtual {p3, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "com.android.settings.lockBtnWhite"

    .line 415
    invoke-virtual {p3, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const-string v4, "com.android.settings.forgetPatternColor"

    invoke-virtual {p3, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 417
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const-string v3, "com.android.settings.footerTextColor"

    invoke-virtual {p3, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    :cond_4
    invoke-static {p2, p5}, Lmiui/securityspace/CrossUserUtils;->isAirSpace(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "com.android.settings.userIdToConfirm"

    .line 420
    invoke-virtual {p3, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p5, Lcom/android/settings/R$string;->lockpassword_confirm_workspace_password:I

    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.android.settings.forgetPassword"

    .line 422
    invoke-virtual {p3, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    const/16 p0, 0x6b

    if-ne p4, p0, :cond_6

    const-string/jumbo p0, "return_credentials"

    .line 425
    invoke-virtual {p3, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    if-eqz p1, :cond_7

    .line 428
    invoke-virtual {p1, p3, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 430
    :cond_7
    invoke-virtual {p2, p3, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_8
    :goto_1
    return-void
.end method

.method private upgradeQualityForKeyStore(I)I
    .locals 0

    .line 461
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 462
    invoke-virtual {p0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/high16 p0, 0x10000

    if-ge p1, p0, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method


# virtual methods
.method public launchConfirmFragment(Lcom/android/settings/KeyguardSettingsPreferenceFragment;II)V
    .locals 2

    const/16 p0, 0x6b

    if-ne p3, p0, :cond_0

    .line 314
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "return_credentials"

    const/4 v1, 0x1

    .line 315
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/high16 v0, 0x10000

    if-eq p2, v0, :cond_2

    const/high16 v0, 0x20000

    if-eq p2, v0, :cond_1

    const/high16 v0, 0x30000

    if-eq p2, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p2, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p2, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p2, v0, :cond_1

    goto :goto_1

    .line 327
    :cond_1
    const-class p2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->empty_title:I

    invoke-static {p1, p2, p3, p0, v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_1

    .line 319
    :cond_2
    const-class p2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->empty_title:I

    invoke-static {p1, p2, p3, p0, v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    :goto_1
    return-void
.end method

.method public launchConfirmWhenNecessary(Lcom/android/settings/KeyguardSettingsPreferenceFragment;II)V
    .locals 8

    .line 371
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 372
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/MiuiSettings;

    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    const-string v1, "confirm_credentials"

    const/4 v2, 0x1

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 378
    invoke-virtual {v0, p3}, Landroid/security/MiuiLockPatternUtils;->getActivePasswordQuality(I)I

    move-result v5

    .line 379
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 380
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->launchConfirmActivity(Landroidx/fragment/app/Fragment;Landroid/app/Activity;III)V

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {p0, p1, v5, p2}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->launchConfirmFragment(Lcom/android/settings/KeyguardSettingsPreferenceFragment;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public launchConfirmationActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 335
    new-instance p0, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {p0, p1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 336
    invoke-virtual {p0, p3, p4, p5}, Landroid/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public launchConfirmationActivity(Landroidx/fragment/app/Fragment;IIILjava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 365
    invoke-direct {p0, p2, p3, p5}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->getConfirmationActivityIntent(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public startActivityToSetPassword(ILcom/android/settings/KeyguardSettingsPreferenceFragment;ZLjava/lang/String;I)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 209
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startActivityToSetPassword(ILcom/android/settings/KeyguardSettingsPreferenceFragment;ZLjava/lang/String;IZ)V

    return-void
.end method

.method public startActivityToSetPassword(ILcom/android/settings/KeyguardSettingsPreferenceFragment;ZLjava/lang/String;IZ)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 215
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 219
    :cond_0
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "lockscreen.biometric_weak_fallback"

    const/4 v7, 0x0

    .line 221
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-string/jumbo v9, "use_lock_password_to_encrypt_device"

    .line 223
    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const-string v11, "add_keyguard_password_then_add_fingerprint"

    .line 225
    invoke-virtual {v5, v11, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    const-string v13, "add_keyguard_password_then_add_face_recoginition"

    .line 227
    invoke-virtual {v5, v13, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 231
    new-instance v15, Lcom/android/settings/FingerprintHelper;

    invoke-direct {v15, v4}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result v15

    move/from16 v17, v8

    const-string v7, "challenge"

    const-string v8, "has_challenge"

    if-eqz v15, :cond_3

    .line 232
    instance-of v15, v4, Lcom/android/settings/MiuiSecurityChooseUnlock$InternalActivity;

    if-nez v15, :cond_1

    instance-of v15, v4, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$InternalActivity;

    if-nez v15, :cond_1

    instance-of v15, v4, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$InternalActivity;

    if-eqz v15, :cond_3

    :cond_1
    const/4 v15, 0x0

    .line 235
    invoke-virtual {v5, v8, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    move-object/from16 v19, v13

    move/from16 v20, v14

    const-wide/16 v13, 0x0

    if-eqz v16, :cond_2

    .line 237
    invoke-virtual {v5, v7, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    :cond_2
    move-object/from16 v18, v7

    goto :goto_0

    :cond_3
    move-object/from16 v19, v13

    move/from16 v20, v14

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v18, v7

    move/from16 v16, v15

    :goto_0
    const-string/jumbo v7, "requested_min_complexity"

    .line 243
    invoke-virtual {v5, v7, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    move-wide/from16 v21, v13

    move/from16 v13, p1

    .line 244
    invoke-virtual {v0, v13, v1, v3, v15}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->upgradeQuality(ILcom/android/settings/KeyguardSettingsPreferenceFragment;II)I

    move-result v13

    const-string/jumbo v14, "password"

    const-string v1, "confirm_credentials"

    move-object/from16 v23, v8

    const-string/jumbo v8, "set_keyguard_password"

    move-object/from16 v24, v7

    const-string/jumbo v7, "user_id_to_set_password"

    move/from16 v25, v15

    const/high16 v15, 0x20000

    if-lt v13, v15, :cond_a

    .line 246
    iget-object v15, v0, Lcom/android/settings/MiuiChooseLockSettingsHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v2

    const/4 v15, 0x4

    if-ge v2, v15, :cond_4

    move v2, v15

    :cond_4
    const/high16 v15, 0x40000

    if-le v13, v15, :cond_5

    move v13, v15

    .line 253
    :cond_5
    iget-object v0, v0, Lcom/android/settings/MiuiChooseLockSettingsHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v13}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v0

    .line 254
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    if-eqz p6, :cond_7

    .line 256
    invoke-static {v4}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_6

    const-class v26, Lcom/android/settings/SetupChooseLockPassword;

    goto :goto_1

    :cond_6
    const-class v26, Lcom/android/settings/ProvisionSetupChooseLockPassword;

    goto :goto_1

    .line 257
    :cond_7
    const-class v26, Lcom/android/settings/ChooseLockPassword;

    :goto_1
    move-object/from16 p1, v14

    move-object/from16 v14, v26

    .line 254
    invoke-virtual {v15, v4, v14}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v14

    const-string v15, "lockscreen.password_type"

    .line 258
    invoke-virtual {v14, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "lockscreen.password_min"

    .line 259
    invoke-virtual {v14, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "lockscreen.password_max"

    .line 260
    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    invoke-static {v14, v3}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->putExtraUserId(Landroid/content/Intent;I)V

    move/from16 v2, v17

    .line 262
    invoke-virtual {v14, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, -0x2710

    .line 263
    invoke-virtual {v5, v7, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v14, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    invoke-virtual {v14, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v14, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    invoke-virtual {v14, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, v19

    move/from16 v15, v20

    .line 267
    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    xor-int/lit8 v0, p3, 0x1

    .line 268
    invoke-virtual {v14, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    .line 269
    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v1, v24

    move/from16 v0, v25

    .line 270
    invoke-virtual {v14, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v16, :cond_8

    move-object/from16 v0, v23

    .line 272
    invoke-virtual {v14, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v3, v18

    move-wide/from16 v0, v21

    .line 273
    invoke-virtual {v14, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_8
    if-eqz v2, :cond_9

    move-object/from16 v0, p2

    const/16 v1, 0xc9

    .line 276
    invoke-virtual {v0, v14, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p2

    const/16 v1, 0xca

    .line 278
    invoke-virtual {v0, v14, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    :cond_a
    move-object/from16 p1, v14

    move/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v0, v19

    move/from16 v15, v20

    move-wide/from16 v27, v21

    move-object/from16 v30, v23

    move-object v14, v1

    const/high16 v1, 0x10000

    if-ne v13, v1, :cond_f

    .line 281
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz p6, :cond_c

    .line 283
    invoke-static {v4}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_b

    const-class v13, Lcom/android/settings/SetupChooseLockPattern;

    goto :goto_2

    :cond_b
    const-class v13, Lcom/android/settings/ProvisionSetupChooseLockPattern;

    goto :goto_2

    .line 284
    :cond_c
    const-class v13, Lcom/android/settings/ChooseLockPattern;

    .line 282
    :goto_2
    invoke-virtual {v1, v4, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "key_lock_method"

    const-string/jumbo v13, "pattern"

    .line 285
    invoke-virtual {v1, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-static {v1, v3}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->putExtraUserId(Landroid/content/Intent;I)V

    .line 287
    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v3, -0x2710

    .line 289
    invoke-virtual {v5, v7, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x1

    .line 290
    invoke-virtual {v5, v8, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    invoke-virtual {v1, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, ":android:show_fragment_title"

    .line 293
    sget v4, Lcom/android/settings/R$string;->empty_title:I

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    xor-int/lit8 v0, p3, 0x1

    .line 294
    invoke-virtual {v1, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v4, p1

    move-object/from16 v0, p4

    .line 295
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v16, :cond_d

    move-object/from16 v0, v30

    .line 297
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-wide/from16 v13, v27

    move-object/from16 v0, v29

    .line 298
    invoke-virtual {v1, v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_d
    if-eqz v2, :cond_e

    move-object/from16 v0, p2

    const/16 v2, 0xc9

    .line 301
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :cond_e
    move-object/from16 v0, p2

    const/16 v2, 0xca

    .line 303
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :cond_f
    move-object/from16 v0, p2

    const/16 v2, 0xca

    const v1, 0x8000

    if-ne v13, v1, :cond_10

    move-object/from16 v1, p0

    .line 306
    invoke-direct {v1, v0}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->getBiometricSensorIntent(Lcom/android/settings/KeyguardSettingsPreferenceFragment;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_10
    :goto_3
    return-void
.end method

.method public startFragmentToSetMixedPassword(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;I)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 145
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startFragmentToSetMixedPassword(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;IZ)V

    return-void
.end method

.method public startFragmentToSetMixedPassword(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;IZ)V
    .locals 11

    const-string v0, "device_policy"

    move-object v2, p1

    .line 150
    invoke-virtual {p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    .line 151
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    const/high16 v3, 0x40000

    .line 152
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v5

    const/4 v0, 0x4

    if-ge v1, v0, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    const/high16 v6, 0x40000

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v7, p3

    move-object v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 155
    invoke-virtual/range {v1 .. v10}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startFragmentToSetPassword(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IIIIZLjava/lang/String;IZ)V

    return-void
.end method

.method public startFragmentToSetNumericPassword(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;I)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 131
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startFragmentToSetNumericPassword(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;IZ)V

    return-void
.end method

.method public startFragmentToSetNumericPassword(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;IZ)V
    .locals 10

    move-object v0, p0

    .line 137
    iget-object v1, v0, Lcom/android/settings/MiuiChooseLockSettingsHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v3

    .line 138
    iget-object v1, v0, Lcom/android/settings/MiuiChooseLockSettingsHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    const/high16 v5, 0x20000

    move-object v1, p1

    move v2, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    move/from16 v9, p6

    .line 139
    invoke-virtual/range {v0 .. v9}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startFragmentToSetPassword(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IIIIZLjava/lang/String;IZ)V

    return-void
.end method

.method public startFragmentToSetPassword(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IIIIZLjava/lang/String;IZ)V
    .locals 2

    .line 169
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    .line 170
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 171
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string v1, "lockscreen.password_min"

    .line 174
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "lockscreen.password_max"

    .line 175
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "lockscreen.password_type"

    .line 176
    invoke-virtual {v0, p3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p3, 0x1

    xor-int/lit8 p4, p6, 0x1

    const-string p5, "confirm_credentials"

    .line 177
    invoke-virtual {v0, p5, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p4, "password"

    .line 178
    invoke-virtual {v0, p4, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "android.intent.extra.USER_ID"

    .line 179
    invoke-virtual {v0, p4, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p4, "use_lock_password_to_encrypt_device"

    const/4 p5, 0x0

    .line 181
    invoke-virtual {p0, p4, p5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p6

    .line 180
    invoke-virtual {v0, p4, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p4, "set_keyguard_password"

    .line 183
    invoke-virtual {p0, p4, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    .line 182
    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "add_keyguard_password_then_add_fingerprint"

    .line 185
    invoke-virtual {p0, p3, p5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p4

    .line 184
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "add_keyguard_password_then_add_face_recoginition"

    .line 187
    invoke-virtual {p0, p3, p5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p4

    .line 186
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p3, "requested_min_complexity"

    .line 189
    invoke-virtual {p0, p3, p5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 188
    invoke-virtual {v0, p3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    sget-boolean p0, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-eqz p0, :cond_3

    .line 191
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Bundle;->clear()V

    if-eqz p9, :cond_2

    .line 193
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-class p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 194
    :cond_1
    const-class p0, Lcom/android/settings/ProvisionSetupChooseLockPassword$ProvisionSetupChooseLockPasswordFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 195
    :cond_2
    const-class p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 196
    :goto_0
    sget p3, Lcom/android/settings/R$string;->lockpassword_choose_your_password_header:I

    invoke-static {p1, p0, p2, v0, p3}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_2

    .line 199
    :cond_3
    new-instance p0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    if-eqz p9, :cond_5

    .line 200
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-static {p4}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_4

    const-class p4, Lcom/android/settings/SetupChooseLockPassword;

    goto :goto_1

    :cond_4
    const-class p4, Lcom/android/settings/ProvisionSetupChooseLockPassword;

    goto :goto_1

    .line 201
    :cond_5
    const-class p4, Lcom/android/settings/ChooseLockPassword;

    :goto_1
    invoke-direct {p0, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return-void
.end method

.method public startFragmentToSetPattern(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;I)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 91
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startFragmentToSetPattern(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;IZ)V

    return-void
.end method

.method public startFragmentToSetPattern(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;IZ)V
    .locals 5

    .line 96
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string/jumbo v1, "use_lock_password_to_encrypt_device"

    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "set_keyguard_password"

    const/4 v3, 0x1

    .line 102
    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "add_keyguard_password_then_add_fingerprint"

    .line 103
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "add_keyguard_password_then_add_face_recoginition"

    .line 105
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    xor-int/lit8 p0, p3, 0x1

    const-string p3, "confirm_credentials"

    .line 107
    invoke-virtual {v0, p3, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p0, "password"

    .line 108
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "android.intent.extra.USER_ID"

    .line 109
    invoke-virtual {v0, p0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    sget p0, Lcom/android/settings/R$string;->empty_title:I

    const-string p3, ":android:show_fragment_title"

    invoke-virtual {v0, p3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    sget-boolean p3, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-eqz p3, :cond_3

    .line 112
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Bundle;->clear()V

    if-eqz p6, :cond_2

    .line 114
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-class p3, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 115
    :cond_1
    const-class p3, Lcom/android/settings/ProvisionSetupChooseLockPattern$ProvisionSetupChooseLockPatternFragment;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 116
    :cond_2
    const-class p3, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 117
    :goto_0
    invoke-static {p1, p3, p2, v0, p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_2

    .line 120
    :cond_3
    new-instance p0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    if-eqz p6, :cond_5

    .line 122
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-static {p4}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_4

    const-class p4, Lcom/android/settings/SetupChooseLockPattern;

    goto :goto_1

    :cond_4
    const-class p4, Lcom/android/settings/ProvisionSetupChooseLockPattern;

    goto :goto_1

    .line 123
    :cond_5
    const-class p4, Lcom/android/settings/ChooseLockPattern;

    :goto_1
    invoke-direct {p0, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return-void
.end method

.method public upgradeQuality(ILcom/android/settings/KeyguardSettingsPreferenceFragment;II)I
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/android/settings/MiuiChooseLockSettingsHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {p1, v0, p3, p4}, Lcom/android/settings/compat/QualityCompat;->upgradeQuality(ILandroid/app/admin/DevicePolicyManager;II)I

    move-result p1

    .line 452
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p3, "vpn_password_enable"

    const/4 p4, 0x0

    invoke-static {p2, p3, p4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_0

    .line 455
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->upgradeQualityForKeyStore(I)I

    move-result p1

    :cond_0
    return p1
.end method

.method public utils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/settings/MiuiChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method
