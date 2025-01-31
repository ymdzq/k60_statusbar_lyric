.class public Lcom/android/settings/password/ConfirmDeviceCredentialActivity;
.super Lcom/android/settingslib/core/lifecycle/ObservableActivity;
.source "ConfirmDeviceCredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ConfirmDeviceCredentialActivity"


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

.field private mCheckDevicePolicyManager:Z

.field private mContext:Landroid/content/Context;

.field private mCredentialMode:I

.field private mDetails:Ljava/lang/CharSequence;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mGoingToBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTaskOverlay:Z

.field private mTitle:Ljava/lang/String;

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mWaitingForBiometricCallback:Z


# direct methods
.method public static synthetic $r8$lambda$3MgwD4kWtou5aP4tFsq7ve_CwH8(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->lambda$getTitleFromCredentialType$3()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8J6W1ijBNgxgJ7sHf5aNN9ne7BM(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->lambda$getDetailsFromCredentialType$6()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GYcs_1dQRZLPJl5fP6445TcVSDQ(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->lambda$getDetailsFromCredentialType$4()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RKZngJq4CW9Kcv4dtbJl3r9h1-o(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->lambda$getTitleFromCredentialType$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fCzVlxV1y1EZO5CdPpbE5hBuUcw(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->lambda$getDetailsFromCredentialType$5()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f_wISk5AcSUvKPRi2_ziO1XW7ec(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->lambda$getTitleFromCredentialType$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iUfFLJ39_4zcpYaVJZFUZQ_Ij5Y(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->lambda$new$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDevicePolicyManager(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGoingToBackground(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mGoingToBackground:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrustManager(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/app/trust/TrustManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTrustManager:Landroid/app/trust/TrustManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/os/UserManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingForBiometricCallback(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmWaitingForBiometricCallback(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowConfirmCredentials(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;-><init>()V

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mExecutor:Ljava/util/concurrent/Executor;

    .line 100
    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method private getDetailsFromCredentialType(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 374
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    const-string p0, "Settings.WORK_PROFILE_CONFIRM_PASSWORD"

    invoke-virtual {p1, p0, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 380
    :cond_1
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_generic:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p2, :cond_3

    .line 357
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    const-string p0, "Settings.WORK_PROFILE_CONFIRM_PIN"

    invoke-virtual {p1, p0, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 362
    :cond_3
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_generic:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p2, :cond_5

    .line 365
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    const-string p0, "Settings.WORK_PROFILE_CONFIRM_PATTERN"

    invoke-virtual {p1, p0, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 371
    :cond_5
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pattern_generic:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTitleFromCredentialType(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 331
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    const-string p0, "Settings.CONFIRM_WORK_PROFILE_PASSWORD_HEADER"

    invoke-virtual {p1, p0, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 347
    :cond_1
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p2, :cond_3

    .line 294
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    const-string p0, "Settings.CONFIRM_WORK_PROFILE_PIN_HEADER"

    invoke-virtual {p1, p0, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 309
    :cond_3
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p2, :cond_5

    .line 312
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    const-string p0, "Settings.CONFIRM_WORK_PROFILE_PATTERN_HEADER"

    invoke-virtual {p1, p0, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 328
    :cond_5
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pattern_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTitleFromOrganizationName(I)Ljava/lang/String;
    .locals 1

    const-string v0, "device_policy"

    .line 477
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 480
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 481
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private isBiometricAllowed(II)Z
    .locals 0

    .line 416
    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isStrongAuthRequired(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 417
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->hasPendingEscrowToken(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInternalActivity()Z
    .locals 0

    .line 473
    instance-of p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;

    return p0
.end method

.method private isStrongAuthRequired(I)Z
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    .line 412
    invoke-virtual {p1, p0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$getDetailsFromCredentialType$4()Ljava/lang/String;
    .locals 1

    .line 358
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_generic_profile:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDetailsFromCredentialType$5()Ljava/lang/String;
    .locals 1

    .line 367
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_pattern_generic_profile:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDetailsFromCredentialType$6()Ljava/lang/String;
    .locals 1

    .line 376
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_generic_profile:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getTitleFromCredentialType$1()Ljava/lang/String;
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTS Verifier"

    .line 300
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Cts Verifier"

    return-object p0

    .line 303
    :cond_0
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_work_pin_header:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getTitleFromCredentialType$2()Ljava/lang/String;
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTS Verifier"

    .line 319
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Cts Verifier"

    return-object p0

    .line 322
    :cond_0
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_work_pattern_header:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getTitleFromCredentialType$3()Ljava/lang/String;
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTS Verifier"

    .line 338
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Cts Verifier"

    return-object p0

    .line 341
    :cond_0
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_work_password_header:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showBiometricPrompt(Landroid/hardware/biometrics/PromptInfo;)V
    .locals 4

    .line 421
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment"

    .line 422
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/BiometricFragment;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    if-nez v0, :cond_0

    .line 426
    invoke-static {p1}, Lcom/android/settings/password/BiometricFragment;->newInstance(Landroid/hardware/biometrics/PromptInfo;)Lcom/android/settings/password/BiometricFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 429
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/password/BiometricFragment;->setCallbacks(Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    .line 430
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/settings/password/BiometricFragment;->setUser(I)V

    if-eqz p1, :cond_1

    .line 433
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    .line 434
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method private showConfirmCredentials()V
    .locals 4

    .line 443
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    .line 444
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setHeader(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/CharSequence;

    .line 445
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 446
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setExternal(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    .line 447
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTaskOverlay:Z

    .line 448
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTaskOverlay(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 460
    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCredentialMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 461
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForceVerifyPath(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    goto :goto_0

    :cond_0
    if-ne v2, v1, :cond_1

    .line 463
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 466
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v1, "No pin/pattern/pass set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 467
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 469
    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 156
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 161
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 162
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    .line 163
    const-class p1, Landroid/app/trust/TrustManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/trust/TrustManager;

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 164
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 167
    iput-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mContext:Landroid/content/Context;

    const-string v1, "check_dpm"

    .line 169
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCheckDevicePolicyManager:Z

    const-string v1, "android.app.extra.TITLE"

    .line 170
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    const-string v1, "android.app.extra.DESCRIPTION"

    .line 171
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/CharSequence;

    const-string v1, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    .line 172
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.action.CONFIRM_FRP_CREDENTIAL"

    .line 174
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "android.app.action.CONFIRM_REMOTE_DEVICE_CREDENTIAL"

    .line 176
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 177
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const-string v4, "android.app.KeyguardManager.FORCE_TASK_OVERLAY"

    .line 178
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTaskOverlay:Z

    .line 180
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    iput v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    .line 181
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 185
    sget-object v6, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v7, "Invalid intent extra"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    iget v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v4

    .line 190
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v6

    .line 193
    iget-object v7, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    if-nez v7, :cond_2

    if-eqz v6, :cond_2

    .line 194
    iget v7, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-direct {p0, v7}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getTitleFromOrganizationName(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    .line 197
    :cond_2
    new-instance v7, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {v7}, Landroid/hardware/biometrics/PromptInfo;-><init>()V

    .line 198
    iget-object v8, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/hardware/biometrics/PromptInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v8, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/hardware/biometrics/PromptInfo;->setDescription(Ljava/lang/CharSequence;)V

    .line 200
    iget-boolean v8, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCheckDevicePolicyManager:Z

    invoke-virtual {v7, v8}, Landroid/hardware/biometrics/PromptInfo;->setDisallowBiometricsIfPolicyExists(Z)V

    .line 202
    iget-object v8, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mContext:Landroid/content/Context;

    invoke-static {v8, v4}, Lcom/android/settings/Utils;->getCredentialType(Landroid/content/Context;I)I

    move-result v8

    .line 204
    iget-object v9, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    if-nez v9, :cond_3

    .line 206
    invoke-direct {p0, v8, v6}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getTitleFromCredentialType(IZ)Ljava/lang/String;

    move-result-object v9

    .line 205
    invoke-virtual {v7, v9}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialTitle(Ljava/lang/CharSequence;)V

    .line 208
    :cond_3
    iget-object v9, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/CharSequence;

    if-nez v9, :cond_4

    .line 210
    invoke-direct {p0, v8, v6}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getDetailsFromCredentialType(IZ)Ljava/lang/String;

    move-result-object v8

    .line 209
    invoke-virtual {v7, v8}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialSubtitle(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 219
    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {p1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    .line 221
    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setHeader(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/CharSequence;

    .line 222
    invoke-virtual {p1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 223
    invoke-virtual {p1, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setAlternateButton(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 224
    invoke-virtual {p1, v5}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setExternal(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    const/16 v1, -0x270f

    .line 225
    invoke-virtual {p1, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p1

    move v10, v0

    move v0, p1

    move p1, v10

    goto/16 :goto_4

    :cond_5
    if-eqz v3, :cond_6

    const-string v0, "android.app.extra.REMOTE_LOCKSCREEN_VALIDATION_SESSION"

    .line 228
    const-class v2, Landroid/app/RemoteLockscreenValidationSession;

    .line 229
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteLockscreenValidationSession;

    const-string v2, "android.intent.extra.COMPONENT_NAME"

    .line 232
    const-class v3, Landroid/content/ComponentName;

    .line 233
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    const-string v3, "android.app.extra.CHECKBOX_LABEL"

    .line 235
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 236
    new-instance v3, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v3, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    .line 239
    invoke-virtual {v3, v5}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRemoteLockscreenValidation(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 240
    invoke-virtual {v3, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRemoteLockscreenValidationSession(Landroid/app/RemoteLockscreenValidationSession;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRemoteLockscreenValidationServiceComponent(Landroid/content/ComponentName;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0, v5}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v5}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    .line 245
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setHeader(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/CharSequence;

    .line 246
    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setCheckboxLabel(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 248
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setAlternateButton(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 249
    invoke-virtual {p0, v5}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setExternal(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    return-void

    :cond_6
    if-eqz v6, :cond_8

    .line 252
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x2

    .line 253
    iput p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCredentialMode:I

    .line 254
    iget p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-direct {p0, v4, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isBiometricAllowed(II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 255
    invoke-direct {p0, v7}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showBiometricPrompt(Landroid/hardware/biometrics/PromptInfo;)V

    goto :goto_2

    .line 258
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    goto :goto_3

    .line 262
    :cond_8
    iput v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCredentialMode:I

    .line 263
    iget p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-direct {p0, v4, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isBiometricAllowed(II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 266
    invoke-direct {p0, v7}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showBiometricPrompt(Landroid/hardware/biometrics/PromptInfo;)V

    :goto_2
    move p1, v5

    goto :goto_4

    .line 269
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    :goto_3
    move p1, v0

    move v0, v5

    :goto_4
    if-eqz v0, :cond_a

    .line 275
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_5

    :cond_a
    if-eqz p1, :cond_b

    .line 278
    iput-boolean v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    goto :goto_5

    .line 280
    :cond_b
    sget-object p1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v0, "No pattern, password or PIN set."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 281
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 282
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_5
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 395
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onPause()V

    .line 396
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mGoingToBackground:Z

    .line 398
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    if-nez v0, :cond_1

    .line 399
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mGoingToBackground:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 387
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStart()V

    const/4 v0, 0x1

    .line 390
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    return-void
.end method
