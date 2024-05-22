.class public final Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static createReenrollDialog(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/SystemUIDialog;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    const v0, 0x7f1303f9    # @string/face_re_enroll_dialog_title 'Set up Face Unlock'

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    const v0, 0x7f1303f8    # @string/face_re_enroll_dialog_content 'To set up Face Unlock again, your current face model will be deleted.\n\nYou’ll need to set up this fe ...'

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 28
    if-ne p2, v0, :cond_2

    .line 30
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 37
    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 38
    const v2, 0x7f130432    # @string/fingerprint_re_enroll_dialog_title 'Set up Fingerprint Unlock'

    .line 40
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 46
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    .line 50
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 54
    move-result v0

    .line 57
    if-ne v0, v1, :cond_1

    .line 58
    const v0, 0x7f130431    # @string/fingerprint_re_enroll_dialog_content_singular 'To set up Fingerprint Unlock again, your current fingerprint images and model will be deleted.\n\nAfte ...'

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 67
    goto :goto_0

    .line 70
    :cond_1
    const v0, 0x7f130430    # @string/fingerprint_re_enroll_dialog_content 'To set up Fingerprint Unlock again, your current fingerprint images and models will be deleted.\n\nAft ...'

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 78
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;

    .line 81
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 83
    const p0, 0x7f1301a6    # @string/biometric_re_enroll_dialog_confirm 'Set up'

    .line 86
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 89
    new-instance p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda1;

    .line 92
    const/4 p2, 0x0

    .line 94
    invoke-direct {p0, p2}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda1;-><init>(I)V

    .line 95
    const/4 p2, -0x2

    .line 98
    const v0, 0x7f1301a5    # @string/biometric_re_enroll_dialog_cancel 'Not now'

    .line 99
    invoke-virtual {p1, p2, v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V

    .line 102
    return-void
    .line 105
.end method

.method public static createReenrollFailureDialog(Landroid/content/Context;Landroid/hardware/biometrics/BiometricSourceType;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 4
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 7
    if-ne p1, v1, :cond_0

    .line 9
    const p1, 0x7f1303fc    # @string/face_reenroll_failure_dialog_content 'Couldn’t set up face unlock. Go to Settings to try again.'

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 22
    if-ne p1, v1, :cond_1

    .line 24
    const p1, 0x7f130435    # @string/fingerprint_reenroll_failure_dialog_content 'Couldn’t set up fingerprint unlock. Go to Settings to try again.'

    .line 26
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 33
    :cond_1
    :goto_0
    new-instance p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda1;

    .line 36
    const/4 p1, 0x1

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda1;-><init>(I)V

    .line 39
    const p1, 0x7f1308a7    # @string/ok '@android:string/ok'

    .line 42
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 45
    return-object v0
    .line 48
.end method
