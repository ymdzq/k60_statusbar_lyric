.class public final Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthRippleController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;I)V
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    invoke-static {p2}, Landroid/hardware/biometrics/BiometricFingerprintConstants;->shouldDisableUdfpsDisplayMode(I)Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    if-eqz p2, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 16
    check-cast p0, Lcom/android/systemui/biometrics/AuthRippleView;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 8
    check-cast p0, Lcom/android/systemui/biometrics/AuthRippleView;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 1
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    if-ne p2, p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 8
    check-cast p0, Lcom/android/systemui/biometrics/AuthRippleView;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    check-cast p0, Lcom/android/systemui/biometrics/AuthRippleView;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :cond_0
    return-void
    .line 13
.end method
