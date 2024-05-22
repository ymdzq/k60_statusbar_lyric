.class public final Lmiui/stub/MiuiProxy$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic val$iKeyguardUpdateMonitorCallback:Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiui/stub/MiuiProxy$1;->val$iKeyguardUpdateMonitorCallback:Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiProxy$1;->val$iKeyguardUpdateMonitorCallback:Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;->onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiProxy$1;->val$iKeyguardUpdateMonitorCallback:Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p2}, Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;->onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiProxy$1;->val$iKeyguardUpdateMonitorCallback:Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1, p2, p3}, Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiProxy$1;->val$iKeyguardUpdateMonitorCallback:Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1, p2, p3}, Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onBiometricRunningStateChanged(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiProxy$1;->val$iKeyguardUpdateMonitorCallback:Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1, p2}, Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;->onBiometricRunningStateChanged(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiProxy$1;->val$iKeyguardUpdateMonitorCallback:Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;->onKeyguardBouncerStateChanged(Z)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onLockedOutStateChanged(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiProxy$1;->val$iKeyguardUpdateMonitorCallback:Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;->onLockedOutStateChanged(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onRefreshBatteryInfo(Lcom/miui/charge/MiuiBatteryStatus;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiProxy$1;->val$iKeyguardUpdateMonitorCallback:Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Ljava/lang/Object;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onStartedWakingUp()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiProxy$1;->val$iKeyguardUpdateMonitorCallback:Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onStrongAuthStateChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiProxy$1;->val$iKeyguardUpdateMonitorCallback:Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;->onStrongAuthStateChanged()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onUserSwitching(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiProxy$1;->val$iKeyguardUpdateMonitorCallback:Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;->onUserSwitching()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method
