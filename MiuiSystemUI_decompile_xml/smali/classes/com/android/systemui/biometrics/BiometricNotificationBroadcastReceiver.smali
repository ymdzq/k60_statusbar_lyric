.class public final Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mNotificationDialogFactory:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;->mNotificationDialogFactory:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string p2, "fingerprint_action_show_reenroll_dialog"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result p2

    .line 14
    if-nez p2, :cond_1

    .line 15
    const-string p2, "face_action_show_reenroll_dialog"

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;->mNotificationDialogFactory:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;

    .line 26
    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 30
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 34
    sget-object p0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {p2, v0, p0}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->createReenrollDialog(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/SystemUIDialog;Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 42
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;->mNotificationDialogFactory:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;

    .line 49
    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 53
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 57
    sget-object p0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-static {p2, v0, p0}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->createReenrollDialog(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/SystemUIDialog;Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 65
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 68
    :goto_0
    return-void
    .line 71
.end method
