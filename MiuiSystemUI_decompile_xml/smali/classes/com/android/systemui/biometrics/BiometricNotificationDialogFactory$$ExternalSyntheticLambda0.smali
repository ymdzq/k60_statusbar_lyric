.class public final synthetic Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/hardware/biometrics/BiometricSourceType;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/biometrics/BiometricSourceType;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/biometrics/BiometricSourceType;

    .line 4
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 6
    const-string v0, "BiometricNotificationDialogFactory"

    .line 8
    if-ne p0, p2, :cond_2

    .line 10
    const-class p0, Landroid/hardware/face/FaceManager;

    .line 12
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Landroid/hardware/face/FaceManager;

    .line 18
    if-nez p0, :cond_0

    .line 20
    const-string p0, "Not launching enrollment. Face manager was null!"

    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object p0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 27
    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->createReenrollFailureDialog(Landroid/content/Context;Landroid/hardware/biometrics/BiometricSourceType;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 29
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 37
    move-result p2

    .line 40
    invoke-virtual {p0, p2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    .line 41
    move-result p2

    .line 44
    if-nez p2, :cond_1

    .line 45
    sget-object p0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 47
    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->createReenrollFailureDialog(Landroid/content/Context;Landroid/hardware/biometrics/BiometricSourceType;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 53
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 57
    move-result p2

    .line 60
    new-instance v0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$2;

    .line 61
    invoke-direct {v0, p1}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$2;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p0, p2, v0}, Landroid/hardware/face/FaceManager;->removeAll(ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    .line 66
    goto :goto_0

    .line 69
    :cond_2
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 70
    if-ne p0, p2, :cond_5

    .line 72
    const-class p0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 74
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    move-result-object p0

    .line 79
    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 80
    if-nez p0, :cond_3

    .line 82
    const-string p0, "Not launching enrollment. Fingerprint manager was null!"

    .line 84
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object p0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 89
    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->createReenrollFailureDialog(Landroid/content/Context;Landroid/hardware/biometrics/BiometricSourceType;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 91
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 95
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 99
    move-result p2

    .line 102
    invoke-virtual {p0, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplates(I)Z

    .line 103
    move-result p2

    .line 106
    if-nez p2, :cond_4

    .line 107
    sget-object p0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 109
    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->createReenrollFailureDialog(Landroid/content/Context;Landroid/hardware/biometrics/BiometricSourceType;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 111
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 115
    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 119
    move-result p2

    .line 122
    new-instance v0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$1;

    .line 123
    invoke-direct {v0, p1}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$1;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {p0, p2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 128
    :cond_5
    :goto_0
    return-void
    .line 131
.end method
