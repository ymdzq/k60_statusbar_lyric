.class public final Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$2;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 1
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    if-ne p3, p2, :cond_3

    .line 4
    const/4 p2, 0x1

    .line 6
    const/4 p3, 0x7

    .line 7
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$2;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 8
    if-eq p1, p3, :cond_0

    .line 10
    const/16 p3, 0x9

    .line 12
    if-ne p1, p3, :cond_1

    .line 14
    :cond_0
    iput-boolean p2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceLockedOut:Z

    .line 16
    :cond_1
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mHasFace:Z

    .line 18
    const/4 p3, 0x0

    .line 20
    if-eqz p1, :cond_2

    .line 21
    iget p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceFailConunt:I

    .line 23
    add-int/2addr p1, p2

    .line 25
    iput p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceFailConunt:I

    .line 26
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceLockedOut:Z

    .line 28
    if-nez v0, :cond_2

    .line 30
    const/4 v0, 0x3

    .line 32
    if-lt p1, v0, :cond_2

    .line 33
    const-string/jumbo p1, "support_tee_face_unlock"

    .line 35
    invoke-static {p1, p3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 38
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    iput-boolean p2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceLockedOut:Z

    .line 44
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 46
    iget-object p1, p1, Lmiui/stub/MiuiStub$3;->this$0:Lmiui/stub/MiuiStub;

    .line 48
    iget-object p1, p1, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 50
    iget-object p1, p1, Lmiui/stub/MiuiStub$SysUIProvider;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    .line 52
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 57
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 58
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReeFaceLockout()V

    .line 60
    move p1, p3

    .line 63
    :goto_0
    iget-object p2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mCallbacks:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 66
    move-result v0

    .line 69
    if-ge p1, v0, :cond_2

    .line 70
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object p2

    .line 75
    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 76
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 78
    move-result-object p2

    .line 81
    check-cast p2, Lcom/miui/interfaces/keyguard/FaceUnlockCallback;

    .line 82
    invoke-virtual {p2}, Lcom/miui/interfaces/keyguard/FaceUnlockCallback;->onFaceAuthLocked()V

    .line 84
    add-int/lit8 p1, p1, 0x1

    .line 87
    goto :goto_0

    .line 89
    :cond_2
    iput-boolean p3, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mHasFace:Z

    .line 90
    :cond_3
    return-void
    .line 92
.end method

.method public final onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    if-ne p3, p2, :cond_0

    .line 4
    const/4 p2, 0x5

    .line 6
    if-eq p1, p2, :cond_0

    .line 7
    const/16 p2, 0x2711

    .line 9
    if-eq p1, p2, :cond_0

    .line 11
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$2;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 13
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mHasFace:Z

    .line 16
    :cond_0
    return-void
    .line 18
.end method

.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$2;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 2
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mKeyguardOccluded:Z

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 8
    sget-object p1, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;->FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN_OR_WILL_BE_SHOWN:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 10
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, p1}, Lmiui/stub/MiuiStub$3;->requestFaceAuth(ILcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public final onStartedWakingUp()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$2;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 2
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 4
    sget-object v0, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;->FACE_AUTH_UPDATED_STARTED_WAKING_UP:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, v0}, Lmiui/stub/MiuiStub$3;->requestFaceAuth(ILcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;)V

    .line 9
    return-void
    .line 12
.end method
