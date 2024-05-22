.class public final synthetic Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda6;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onFingerprintDetected(IIZ)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda6;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 7
    if-eqz p1, :cond_0

    .line 9
    const-class p1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 11
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 16
    check-cast p1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 17
    check-cast p1, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 19
    const/4 v0, 0x0

    .line 21
    const/4 v1, -0x1

    .line 22
    const/16 v2, 0xd2

    .line 23
    const/16 v3, 0x3c

    .line 25
    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(ILjava/lang/String;II)V

    .line 27
    :cond_0
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 30
    const-string v0, "KeyGuardUpdateMonitor#handlerBiometricDetected"

    .line 32
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 37
    const-string v0, "KeyGuardUpdateMonitor#onBiometricDetected"

    .line 40
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    .line 45
    move v1, v0

    .line 46
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 49
    move-result v2

    .line 52
    if-ge v1, v2, :cond_2

    .line 53
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 60
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 61
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 66
    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 67
    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricDetected()V

    .line 71
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 77
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 80
    if-ne p1, v1, :cond_3

    .line 82
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 84
    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logFingerprintDetected(IZ)V

    .line 86
    goto :goto_1

    .line 89
    :cond_3
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 90
    if-ne p1, v1, :cond_4

    .line 92
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 94
    invoke-virtual {p1, p2, p3}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logFaceDetected(IZ)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 99
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 102
    return-void
    .line 105
.end method
