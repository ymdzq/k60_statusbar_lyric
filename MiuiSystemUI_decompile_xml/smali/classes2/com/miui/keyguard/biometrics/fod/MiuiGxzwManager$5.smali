.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;


# instance fields
.field public final mDelayRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5$$ExternalSyntheticLambda0;

.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5$$ExternalSyntheticLambda0;

    .line 7
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;I)V

    .line 10
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;->mDelayRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5$$ExternalSyntheticLambda0;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    if-ne p1, v0, :cond_1

    .line 4
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 7
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mCallbacks:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 14
    if-ge p1, v1, :cond_1

    .line 15
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mCallbacks:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 23
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwCallback;

    .line 29
    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwCallback;->onGxzwAuthFailed()V

    .line 33
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    return-void
    .line 39
.end method

.method public final onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    if-ne p1, v0, :cond_2

    .line 4
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 7
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mCallbacks:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 14
    if-ge p1, v1, :cond_1

    .line 15
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mCallbacks:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 23
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwCallback;

    .line 29
    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwCallback;->onGxzwAuthSucceeded()V

    .line 33
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 39
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 41
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMainHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;

    .line 45
    const/4 v1, 0x7

    .line 47
    invoke-direct {v0, p0, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;I)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    :cond_2
    return-void
    .line 54
.end method

.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 5

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    if-ne p3, v0, :cond_5

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    .line 6
    const-string v0, "onFingerprintError: msgId = "

    .line 8
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v0, ", errString = "

    .line 16
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p3

    .line 27
    const-string v0, "MiuiGxzwManager"

    .line 28
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 p3, 0x1

    .line 33
    const/16 v0, 0x9

    .line 34
    const/4 v1, 0x7

    .line 36
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 37
    if-eq p1, v1, :cond_0

    .line 39
    if-ne p1, v0, :cond_2

    .line 41
    :cond_0
    iget-boolean v3, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mShowed:Z

    .line 43
    if-nez v3, :cond_2

    .line 45
    if-nez v3, :cond_2

    .line 47
    iget-object v3, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mKeyguardUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

    .line 49
    invoke-virtual {v3}, Lmiui/stub/MiuiStub$13;->isKeyguardShowing()Z

    .line 51
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    iget-object v3, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mKeyguardUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 57
    invoke-virtual {v3}, Lmiui/stub/MiuiStub$3;->isKeyguardGoingAway()Z

    .line 59
    move-result v3

    .line 62
    if-nez v3, :cond_2

    .line 63
    iget-object v3, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mKeyguardUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

    .line 65
    invoke-virtual {v3}, Lmiui/stub/MiuiStub$13;->isKeyguardOccluded()Z

    .line 67
    move-result v3

    .line 70
    if-eqz v3, :cond_1

    .line 71
    iget-boolean v3, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mDozing:Z

    .line 73
    if-eqz v3, :cond_2

    .line 75
    :cond_1
    iget-boolean v3, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mBouncer:Z

    .line 77
    if-nez v3, :cond_2

    .line 79
    invoke-virtual {v2, p3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->setKeyguardAuthen(Z)V

    .line 81
    const/4 v3, 0x0

    .line 84
    invoke-virtual {v2, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->showGxzwView(Z)V

    .line 85
    iget-object v4, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 88
    invoke-virtual {v4, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    .line 90
    iget-object v4, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 93
    if-eqz v4, :cond_2

    .line 95
    invoke-virtual {v4, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->setEnrolling(Z)V

    .line 97
    :cond_2
    if-eq p1, v1, :cond_3

    .line 100
    if-ne p1, v0, :cond_4

    .line 102
    :cond_3
    iget-object p1, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mHandler:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;

    .line 104
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;->mDelayRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5$$ExternalSyntheticLambda0;

    .line 106
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    iput-boolean p3, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mFingerprintLockout:Z

    .line 111
    invoke-virtual {v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->updateGxzwState()V

    .line 113
    :cond_4
    iget-boolean p0, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mDozing:Z

    .line 116
    if-nez p0, :cond_5

    .line 118
    invoke-static {v2, p2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->-$$Nest$mhandleGxzwLowPosition(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;Ljava/lang/String;)V

    .line 120
    :cond_5
    return-void
    .line 123
.end method

.method public final onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    if-ne p3, p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 6
    invoke-static {p0, p2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->-$$Nest$mhandleGxzwLowPosition(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;Ljava/lang/String;)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final onBiometricRunningStateChanged(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 2

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    if-eqz p2, :cond_0

    .line 6
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 8
    iget-object p2, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mHandler:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;

    .line 10
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;->mDelayRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5$$ExternalSyntheticLambda0;

    .line 12
    invoke-virtual {p2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mHandler:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;

    .line 17
    const-wide/16 v0, 0xc8

    .line 19
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    :cond_0
    return-void
    .line 24
.end method

.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 5

    .line 1
    const-string v0, "onKeyguardBouncerChanged: bouncer = "

    .line 2
    const-string v1, "MiuiGxzwManager"

    .line 4
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 9
    iput-boolean p1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mBouncer:Z

    .line 11
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->updateGxzwState()V

    .line 13
    sget-boolean v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SUPPORT_NO_TOUCH_MODE:Z

    .line 16
    const/4 v2, 0x1

    .line 18
    if-nez v1, :cond_2

    .line 19
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mKeyguardUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 21
    invoke-virtual {v1}, Lmiui/stub/MiuiStub$3;->isFingerprintTemporarilyLockout()Z

    .line 23
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mKeyguardUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

    .line 29
    invoke-virtual {v1}, Lmiui/stub/MiuiStub$13;->isKeyguardShowing()Z

    .line 31
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mKeyguardUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 37
    iget-object v1, v1, Lmiui/stub/MiuiStub$3;->this$0:Lmiui/stub/MiuiStub;

    .line 39
    iget-object v1, v1, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 41
    iget-object v1, v1, Lmiui/stub/MiuiStub$SysUIProvider;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    .line 43
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 48
    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 49
    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 51
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 53
    move-result v3

    .line 56
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 57
    move-result v1

    .line 60
    and-int/2addr v1, v2

    .line 61
    if-nez v1, :cond_0

    .line 62
    move v1, v2

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v1, 0x0

    .line 66
    :goto_0
    if-nez v1, :cond_2

    .line 67
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mKeyguardUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 69
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 71
    move-result v3

    .line 74
    invoke-virtual {v1, v3}, Lmiui/stub/MiuiStub$3;->isUnlockWithFingerprintPossible(I)Z

    .line 75
    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    :cond_1
    const-class v1, Lcom/miui/systemui/MiuiUiOffloadThread;

    .line 81
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 86
    check-cast v1, Lcom/miui/systemui/MiuiUiOffloadThread;

    .line 87
    new-instance v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5$$ExternalSyntheticLambda0;

    .line 89
    invoke-direct {v3, p0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;I)V

    .line 91
    invoke-virtual {v1, v3}, Lcom/miui/systemui/MiuiUiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 94
    :cond_2
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isGxzwLowPosition()Z

    .line 97
    move-result p0

    .line 100
    if-eqz p0, :cond_3

    .line 101
    if-eqz p1, :cond_3

    .line 103
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 105
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 107
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMainHandler:Landroid/os/Handler;

    .line 109
    new-instance v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;

    .line 111
    const/4 v4, 0x4

    .line 113
    invoke-direct {v3, p0, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;I)V

    .line 114
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    :cond_3
    if-eqz p1, :cond_4

    .line 120
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 122
    invoke-virtual {p0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->onTouchUp(Z)V

    .line 124
    :cond_4
    return-void
    .line 127
.end method

.method public final onLockedOutStateChanged(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 6
    iget-object v0, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mKeyguardUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 8
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$3;->isKeyguardGoingAway()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    iget-object v0, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mHandler:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;

    .line 16
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;->mDelayRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5$$ExternalSyntheticLambda0;

    .line 18
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mHandler:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$3;

    .line 23
    const-wide/16 v0, 0xc8

    .line 25
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    :cond_0
    return-void
    .line 30
.end method

.method public final onUserSwitching()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 2
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 4
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->onTouchUp(Z)V

    .line 7
    return-void
    .line 10
.end method
