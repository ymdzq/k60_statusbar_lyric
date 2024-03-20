.class public Lcom/android/settings/biometrics/BiometricEnrollActivity;
.super Landroid/app/Activity;
.source "BiometricEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;
    }
.end annotation


# instance fields
.field private mConfirmingCredentials:Z

.field private mGkPwHandle:Ljava/lang/Long;

.field private mHasFeatureFace:Z

.field private mHasFeatureFingerprint:Z

.field private mIsEnrollActionLogged:Z

.field private mIsFaceEnrollable:Z

.field private mIsFingerprintEnrollable:Z

.field private mIsSingleEnrolling:Z

.field private mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

.field private mParentalOptions:Landroid/os/Bundle;

.field private mParentalOptionsRequired:Z

.field private mPassThroughExtrasFromChosenLockInSuw:Landroid/os/Bundle;

.field private mSkipReturnToParent:Z

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 123
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mPassThroughExtrasFromChosenLockInSuw:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    .line 129
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFingerprintEnrollable:Z

    .line 132
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mSkipReturnToParent:Z

    return-void
.end method

.method private finishOrLaunchHandToParent(I)V
    .locals 1

    .line 573
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz v0, :cond_1

    .line 574
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mSkipReturnToParent:Z

    if-nez p1, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchHandoffToParent()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 577
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->newResultIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 578
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finish()V

    goto :goto_0

    .line 581
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->newResultIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 582
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finish()V

    :goto_0
    return-void
.end method

.method private handleOnActivityResultWhileConsenting(IILandroid/content/Intent;)V
    .locals 4

    .line 444
    sget v0, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget v1, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "BiometricEnrollActivity"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_0

    .line 487
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown consenting requestCode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", finishing"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finish()V

    goto/16 :goto_1

    :cond_0
    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Unknown or cancelled parental consent"

    .line 481
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->newResultIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finish()V

    goto :goto_1

    .line 464
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    invoke-virtual {p1, p0, v2, p2, p3}, Lcom/android/settings/biometrics/ParentalConsentHelper;->launchNext(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 467
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    invoke-virtual {p1}, Lcom/android/settings/biometrics/ParentalConsentHelper;->getConsentResult()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    const/4 p1, 0x0

    .line 468
    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    .line 469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Enrollment consent options set, starting enrollment: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    const/16 p2, 0xfff

    .line 477
    invoke-direct {p0, p2, p1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->startEnrollWith(IZ)V

    goto :goto_1

    .line 449
    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    .line 450
    invoke-static {p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->isSuccessfulConfirmOrChooseCredential(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 451
    invoke-direct {p0, p3}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->updateGatekeeperPasswordHandle(Landroid/content/Intent;)V

    .line 452
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    invoke-virtual {p1, p0, v2}, Lcom/android/settings/biometrics/ParentalConsentHelper;->launchNext(Landroid/app/Activity;I)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Nothing to prompt for consent (no modalities enabled)!"

    .line 453
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finish()V

    goto :goto_1

    .line 457
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown result for set/choose lock: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finish()V

    :cond_5
    :goto_1
    return-void
.end method

.method private handleOnActivityResultWhileEnrolling(IILandroid/content/Intent;)V
    .locals 5

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnActivityResultWhileEnrolling, request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricEnrollActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eq p1, v3, :cond_7

    const/4 v4, 0x2

    if-eq p1, v4, :cond_7

    const/4 p3, 0x4

    if-eq p1, p3, :cond_6

    const/4 p3, 0x5

    if-eq p1, p3, :cond_2

    if-eq p1, v2, :cond_0

    .line 553
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown enrolling requestCode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", finishing"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finish()V

    goto/16 :goto_0

    .line 545
    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsSingleEnrolling:Z

    if-nez p2, :cond_1

    .line 546
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFingerprintEnrollable:Z

    if-eqz p1, :cond_1

    .line 547
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFingerprintOnlyEnroll()V

    goto/16 :goto_0

    .line 549
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finishOrLaunchHandToParent(I)V

    goto/16 :goto_0

    .line 525
    :cond_2
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsSingleEnrolling:Z

    if-ne p2, v3, :cond_3

    .line 530
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->updateFingerprintEnrollable(Z)V

    :cond_3
    if-eq p2, v4, :cond_4

    if-ne p2, v3, :cond_5

    .line 532
    :cond_4
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    if-eqz p1, :cond_5

    .line 538
    invoke-static {p0, v2}, Lcom/google/android/setupdesign/transition/TransitionHelper;->applyForwardTransition(Landroid/app/Activity;I)V

    .line 539
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFaceOnlyEnroll()V

    goto :goto_0

    .line 541
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finishOrLaunchHandToParent(I)V

    goto :goto_0

    :cond_6
    const/4 p1, -0x1

    .line 500
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->newResultIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finish()V

    goto :goto_0

    .line 505
    :cond_7
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    .line 507
    invoke-static {p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->isSuccessfulConfirmOrChooseCredential(II)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 508
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFingerprintEnrollable:Z

    if-eqz p1, :cond_a

    .line 511
    :cond_8
    invoke-static {p0, v2}, Lcom/google/android/setupdesign/transition/TransitionHelper;->applyForwardTransition(Landroid/app/Activity;I)V

    .line 512
    invoke-direct {p0, p3}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->updateGatekeeperPasswordHandle(Landroid/content/Intent;)V

    .line 513
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFingerprintEnrollable:Z

    if-eqz p1, :cond_9

    .line 514
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFingerprintOnlyEnroll()V

    goto :goto_0

    .line 516
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFaceOnlyEnroll()V

    goto :goto_0

    .line 519
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown result for set/choose lock: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->newResultIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 521
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finish()V

    :goto_0
    return-void
.end method

.method private static isSuccessfulChooseCredential(II)Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSuccessfulConfirmCredential(II)Z
    .locals 1

    .line 0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSuccessfulConfirmOrChooseCredential(II)Z
    .locals 1

    .line 601
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->isSuccessfulChooseCredential(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->isSuccessfulConfirmCredential(II)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private launchChooseLock()V
    .locals 4

    const-string v0, "BiometricEnrollActivity"

    const-string v1, "launchChooseLock"

    .line 649
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getChooseLockIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hide_insecure_options"

    const/4 v2, 0x1

    .line 652
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "request_gk_pw_handle"

    .line 653
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 654
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFingerprintEnrollable:Z

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    if-eqz v3, :cond_0

    const-string v1, "for_biometrics"

    .line 655
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 656
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    if-eqz v3, :cond_1

    const-string v1, "for_face"

    .line 657
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const-string v1, "for_fingerprint"

    .line 659
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 662
    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_3

    const-string v3, "android.intent.extra.USER_ID"

    .line 663
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    :cond_3
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchConfirmLock()V
    .locals 3

    const-string v0, "BiometricEnrollActivity"

    const-string v1, "launchConfirmLock"

    .line 669
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x2

    .line 672
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 673
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 674
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 675
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 676
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 677
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 679
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-nez v0, :cond_1

    .line 683
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finish()V

    :cond_1
    return-void
.end method

.method private launchCredentialOnlyEnroll()V
    .locals 2

    .line 704
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/MiuiSecurityChooseUnlock;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 705
    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchSingleSensorEnrollActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchFaceOnlyEnroll()V
    .locals 2

    .line 724
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsSingleEnrolling:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 725
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsSingleEnrolling:Z

    .line 726
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getFaceIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x6

    .line 727
    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchSingleSensorEnrollActivity(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private launchFingerprintOnlyEnroll()V
    .locals 3

    .line 709
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsSingleEnrolling:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 710
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsSingleEnrolling:Z

    .line 713
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "skip_intro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getFingerprintFindSensorIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 717
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getFingerprintIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    const/4 v1, 0x5

    .line 719
    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchSingleSensorEnrollActivity(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private launchHandoffToParent()V
    .locals 2

    .line 732
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getHandoffToParentIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    .line 733
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchSingleSensorEnrollActivity(Landroid/content/Intent;I)V
    .locals 7

    .line 690
    instance-of v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 694
    iget-object v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    iget v6, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/settings/biometrics/BiometricUtils;->launchEnrollForResult(Landroid/app/Activity;Landroid/content/Intent;I[BLjava/lang/Long;I)V

    return-void
.end method

.method private newResultIntent()Landroid/content/Intent;
    .locals 4

    .line 588
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 589
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 590
    invoke-virtual {v1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "consent_status"

    .line 591
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result consent status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricEnrollActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mPassThroughExtrasFromChosenLockInSuw:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    .line 595
    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method private setOrConfirmCredentialsNow()V
    .locals 1

    .line 624
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 625
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    .line 626
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->userHasPassword(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchChooseLock()V

    goto :goto_0

    .line 629
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchConfirmLock()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startEnrollWith(IZ)V
    .locals 6
    .param p1    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    const-string v0, "BiometricEnrollActivity"

    if-nez p2, :cond_0

    .line 329
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-nez v1, :cond_0

    .line 330
    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricManager;

    .line 331
    invoke-virtual {v1, p1}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected result (has enrollments): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finish()V

    return-void

    .line 339
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    .line 340
    iget-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    .line 341
    iget-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz v3, :cond_4

    .line 342
    iget-object v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 346
    invoke-static {v3}, Lcom/android/settings/biometrics/ParentalConsentHelper;->hasFaceConsent(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    if-eqz v2, :cond_2

    .line 347
    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    .line 348
    invoke-static {v2}, Lcom/android/settings/biometrics/ParentalConsentHelper;->hasFingerprintConsent(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_1

    .line 343
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "consent options required, but not set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    if-nez p2, :cond_5

    const v3, 0x8000

    if-ne p1, v3, :cond_5

    .line 353
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchCredentialOnlyEnroll()V

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finish()V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    .line 369
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFingerprintOnlyEnroll()V

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    .line 371
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFaceOnlyEnroll()V

    goto :goto_3

    .line 373
    :cond_7
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz p1, :cond_8

    const-string p1, "No consent for any modality: skipping enrollment"

    .line 374
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 375
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->newResultIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    .line 377
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state, finishing (was SUW: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finish()V

    :goto_3
    return-void
.end method

.method private updateFingerprintEnrollable(Z)V
    .locals 6

    .line 298
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    if-eqz v0, :cond_3

    .line 299
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.provider.extra.BIOMETRIC_AUTHENTICATORS_ALLOWED"

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 302
    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 304
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v2

    .line 305
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$integer;->suw_max_fingerprints_enrollable:I

    .line 306
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 307
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v3, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    .line 312
    :goto_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p1, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    const/4 v2, 0x2

    const/4 v5, 0x1

    if-ne p1, v2, :cond_1

    move p1, v5

    goto :goto_1

    :cond_1
    move p1, v4

    .line 313
    :goto_1
    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    .line 314
    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    iput-boolean v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFingerprintEnrollable:Z

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_3

    .line 318
    iput-boolean v4, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFingerprintEnrollable:Z

    :cond_3
    return-void
.end method

.method private updateGatekeeperPasswordHandle(Landroid/content/Intent;)V
    .locals 2

    .line 635
    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    .line 636
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    if-eqz p0, :cond_0

    .line 637
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/ParentalConsentHelper;->updateGatekeeperHandle(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private userHasPassword(I)Z
    .locals 2

    .line 642
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 643
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 644
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 565
    instance-of v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    if-nez v1, :cond_0

    .line 566
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    .line 569
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 401
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 403
    invoke-static {p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->isSuccessfulChooseCredential(II)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 404
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 405
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mPassThroughExtrasFromChosenLockInSuw:Landroid/os/Bundle;

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityResult(requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricEnrollActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    .line 417
    invoke-static {p0, v0}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/4 v4, 0x2

    .line 419
    invoke-static {p0, v4}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-eqz v0, :cond_3

    .line 421
    iget-boolean v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    if-eqz v4, :cond_4

    .line 424
    iget-boolean v6, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    .line 426
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "faceConsentRequired: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", fpConsentRequired: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasFeatureFace: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasFeatureFingerprint: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", faceEnrollable: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", fpEnrollable: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFingerprintEnrollable:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    invoke-virtual {v0, v5, v2}, Lcom/android/settings/biometrics/ParentalConsentHelper;->setConsentRequirement(ZZ)V

    .line 435
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->handleOnActivityResultWhileConsenting(IILandroid/content/Intent;)V

    goto :goto_4

    .line 437
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->handleOnActivityResultWhileEnrolling(IILandroid/content/Intent;)V

    :goto_4
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    .line 618
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p2

    .line 619
    sget v0, Lcom/android/settings/R$style;->SetupWizardPartnerResource:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 620
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 144
    instance-of v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    if-eqz v1, :cond_0

    const-string v1, "android.intent.extra.USER_ID"

    .line 145
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v2, "confirming_credentials"

    .line 157
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    const-string v2, "is_single_enrolling"

    .line 159
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsSingleEnrolling:Z

    const-string/jumbo v2, "pass_through_extras_from_chosen_lock_in_suw"

    .line 161
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mPassThroughExtrasFromChosenLockInSuw:Landroid/os/Bundle;

    const-string v2, "enroll_action_logged"

    .line 163
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsEnrollActionLogged:Z

    const-string v2, "enroll_preferences"

    .line 165
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    const-string v2, "gk_pw_handle"

    .line 166
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    .line 172
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsEnrollActionLogged:Z

    const/16 v2, 0xf

    const/16 v3, 0xff

    const-string v4, "android.provider.extra.BIOMETRIC_AUTHENTICATORS_ALLOWED"

    const/4 v5, 0x1

    if-nez p1, :cond_7

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v6, "android.settings.BIOMETRIC_ENROLL"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 173
    iput-boolean v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsEnrollActionLogged:Z

    .line 179
    const-class p1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricManager;

    if-eqz p1, :cond_3

    .line 181
    invoke-virtual {p1, v2}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result v6

    .line 182
    invoke-virtual {p1, v3}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result v7

    const v8, 0x8000

    .line 183
    invoke-virtual {p1, v8}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result p1

    goto :goto_1

    :cond_3
    const/16 v6, 0xc

    move p1, v6

    move v7, p1

    :goto_1
    const/16 v8, 0x163

    if-nez v6, :cond_4

    move v9, v5

    goto :goto_2

    :cond_4
    move v9, v1

    :goto_2
    if-nez v7, :cond_5

    move v10, v5

    goto :goto_3

    :cond_5
    move v10, v1

    :goto_3
    if-nez p1, :cond_6

    move v11, v5

    goto :goto_4

    :cond_6
    move v11, v1

    .line 194
    :goto_4
    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    .line 195
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 190
    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZZZI)V

    :cond_7
    const-string/jumbo p1, "theme"

    .line 199
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    .line 202
    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getThemeString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    .line 200
    invoke-virtual {v0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v6, "android.hardware.fingerprint"

    .line 206
    invoke-virtual {p1, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    const-string v6, "android.hardware.biometrics.face"

    .line 207
    invoke-virtual {p1, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authenticators: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricManager;->authenticatorToStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricEnrollActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "require_consent"

    .line 214
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    const-string/jumbo v3, "skip_return_to_parent"

    .line 215
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mSkipReturnToParent:Z

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    .line 219
    iget-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    if-eqz v3, :cond_9

    move v3, v5

    goto :goto_5

    :cond_9
    move v3, v1

    .line 221
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parentalOptionsRequired: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", skipReturnToParent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mSkipReturnToParent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isSetupWizard: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isMultiSensor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-boolean v6, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    const/4 v7, 0x2

    if-eqz v6, :cond_10

    .line 227
    const-class v6, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/face/FaceManager;

    .line 229
    invoke-virtual {v6}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v8

    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/settings/R$integer;->suw_max_faces_enrollable:I

    .line 231
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 232
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_10

    .line 233
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/face/FaceSensorPropertiesInternal;

    if-eqz v0, :cond_a

    goto :goto_6

    .line 235
    :cond_a
    iget v9, v8, Landroid/hardware/face/FaceSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    .line 236
    :goto_6
    iget v8, v8, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    if-ne v8, v7, :cond_b

    move v8, v5

    goto :goto_7

    :cond_b
    move v8, v1

    .line 238
    :goto_7
    iget v10, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    .line 239
    invoke-virtual {v6, v10}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v9, :cond_c

    move v6, v5

    goto :goto_8

    :cond_c
    move v6, v1

    :goto_8
    iput-boolean v6, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    if-ne p1, v2, :cond_d

    if-nez v8, :cond_d

    .line 243
    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    :cond_d
    if-nez v0, :cond_f

    .line 246
    iget-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz v2, :cond_e

    .line 247
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_9

    :cond_e
    move v2, v1

    goto :goto_a

    :cond_f
    :goto_9
    move v2, v5

    :goto_a
    if-eqz v2, :cond_10

    if-eqz v3, :cond_10

    .line 248
    iget-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    if-eqz v2, :cond_10

    .line 251
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    .line 252
    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFaceFeatureProvider()Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    move-result-object v2

    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/biometrics/face/FaceFeatureProvider;->isSetupWizardSupported(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config_suw_support_face_enroll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_10
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->updateFingerprintEnrollable(Z)V

    if-eqz v0, :cond_11

    .line 263
    iget-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz v2, :cond_11

    const-string p1, "Enrollment with parental consent is not supported when launched  directly from SuW - skipping enrollment"

    .line 264
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0, v7}, Landroid/app/Activity;->setResult(I)V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finish()V

    return-void

    :cond_11
    if-eqz v0, :cond_13

    .line 276
    iget-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz v2, :cond_13

    const/16 v2, 0xa

    .line 277
    invoke-static {p0, v2}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    if-eqz v2, :cond_12

    move v1, v5

    :cond_12
    if-eqz v1, :cond_13

    const-string p1, "Consent was already setup - skipping enrollment"

    .line 281
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0, v7}, Landroid/app/Activity;->setResult(I)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finish()V

    return-void

    .line 288
    :cond_13
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    if-nez v1, :cond_14

    .line 289
    new-instance p1, Lcom/android/settings/biometrics/ParentalConsentHelper;

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    invoke-direct {p1, v0}, Lcom/android/settings/biometrics/ParentalConsentHelper;-><init>(Ljava/lang/Long;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    .line 290
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->setOrConfirmCredentialsNow()V

    goto :goto_b

    .line 293
    :cond_14
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->startEnrollWith(IZ)V

    :goto_b
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 385
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "confirming_credentials"

    .line 386
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_single_enrolling"

    .line 387
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsSingleEnrolling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "pass_through_extras_from_chosen_lock_in_suw"

    .line 388
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mPassThroughExtrasFromChosenLockInSuw:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "enroll_action_logged"

    .line 390
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsEnrollActionLogged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 391
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "enroll_preferences"

    .line 392
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 394
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    if-eqz p0, :cond_1

    const-string v0, "gk_pw_handle"

    .line 395
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method
