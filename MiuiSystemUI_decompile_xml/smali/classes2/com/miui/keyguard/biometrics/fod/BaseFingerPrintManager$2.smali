.class public final Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager$2;->this$0:Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBiometricRunningStateChanged(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager$2;->this$0:Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 8
    invoke-virtual {p1}, Lmiui/stub/MiuiStub$3;->isFingerprintTemporarilyLockout()Z

    .line 10
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 16
    invoke-virtual {p1}, Lmiui/stub/MiuiStub$3;->isUnlockingWithBiometricAllowed()Z

    .line 18
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;->mSideFingerprintGuideView:Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;

    .line 24
    invoke-virtual {p1, p2}, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->updateViewAddState(Z)V

    .line 26
    :cond_0
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;->mShowLockoutView:Z

    .line 29
    if-nez p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 33
    invoke-virtual {p1}, Lmiui/stub/MiuiStub$3;->isUnlockingWithBiometricAllowed()Z

    .line 35
    move-result p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    :cond_1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;->mSideFingerprintGuideView:Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;

    .line 41
    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->updateViewAddState(Z)V

    .line 44
    :cond_2
    return-void
    .line 47
.end method

.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager$2;->this$0:Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;

    .line 2
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 4
    invoke-virtual {p1}, Lmiui/stub/MiuiStub$3;->isFingerprintDetectionRunning()Z

    .line 6
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;->mSideFingerprintGuideView:Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;

    .line 10
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->updateGuideView()V

    .line 14
    :cond_0
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;->mShowLockoutView:Z

    .line 17
    if-nez p1, :cond_1

    .line 19
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 21
    invoke-virtual {p0}, Lmiui/stub/MiuiStub$3;->isUnlockingWithBiometricAllowed()Z

    .line 23
    move-result p0

    .line 26
    if-nez p0, :cond_2

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 29
    invoke-virtual {v0, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->updateViewAddState(Z)V

    .line 30
    :cond_2
    return-void
    .line 33
.end method
