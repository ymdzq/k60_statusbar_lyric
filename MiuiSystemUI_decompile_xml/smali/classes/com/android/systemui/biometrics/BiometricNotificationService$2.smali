.class public final Lcom/android/systemui/biometrics/BiometricNotificationService$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/BiometricNotificationService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/BiometricNotificationService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$2;->this$0:Lcom/android/systemui/biometrics/BiometricNotificationService;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1
    const/16 p2, 0x10

    .line 2
    if-ne p1, p2, :cond_0

    .line 4
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 6
    if-ne p3, p1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$2;->this$0:Lcom/android/systemui/biometrics/BiometricNotificationService;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    move-result-object p0

    .line 17
    const/4 p1, 0x1

    .line 18
    const/4 p2, -0x2

    .line 19
    const-string p3, "face_unlock_re_enroll"

    .line 20
    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 22
    :cond_0
    return-void
    .line 25
.end method

.method public final onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    if-ne p3, p2, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$2;->this$0:Lcom/android/systemui/biometrics/BiometricNotificationService;

    .line 6
    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintReEnrollNotification:Lcom/android/systemui/biometrics/FingerprintReEnrollNotificationImpl;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const/16 p2, 0xc

    .line 13
    const/4 p3, 0x1

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    move p1, p3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    if-eqz p1, :cond_1

    .line 21
    iput-boolean p3, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintReenrollRequired:Z

    .line 23
    :cond_1
    return-void
    .line 25
.end method
