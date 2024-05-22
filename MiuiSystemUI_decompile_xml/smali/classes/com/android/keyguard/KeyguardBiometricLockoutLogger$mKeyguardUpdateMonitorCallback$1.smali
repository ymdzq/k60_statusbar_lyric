.class public final Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardBiometricLockoutLogger;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/KeyguardBiometricLockoutLogger;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLockedOutStateChanged(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/KeyguardBiometricLockoutLogger;

    .line 4
    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockedOut()Z

    .line 10
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->fingerprintLockedOut:Z

    .line 16
    if-nez v0, :cond_0

    .line 18
    sget-object v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_FINGERPRINT_LOCKED_OUT:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    .line 20
    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->access$log(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    if-nez p1, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->fingerprintLockedOut:Z

    .line 28
    if-eqz v0, :cond_1

    .line 30
    sget-object v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_FINGERPRINT_LOCKED_OUT_RESET:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    .line 32
    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->access$log(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;)V

    .line 34
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->fingerprintLockedOut:Z

    .line 37
    goto :goto_2

    .line 39
    :cond_2
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 40
    if-ne p1, v0, :cond_5

    .line 42
    iget-object p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockedOutPermanent:Z

    .line 49
    if-eqz p1, :cond_3

    .line 51
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->faceLockedOut:Z

    .line 53
    if-nez v0, :cond_3

    .line 55
    sget-object v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_FACE_LOCKED_OUT:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    .line 57
    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->access$log(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;)V

    .line 59
    goto :goto_1

    .line 62
    :cond_3
    if-nez p1, :cond_4

    .line 63
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->faceLockedOut:Z

    .line 65
    if-eqz v0, :cond_4

    .line 67
    sget-object v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_FACE_LOCKED_OUT_RESET:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    .line 69
    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->access$log(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;)V

    .line 71
    :cond_4
    :goto_1
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->faceLockedOut:Z

    .line 74
    :cond_5
    :goto_2
    return-void
    .line 76
.end method

.method public final onStrongAuthStateChanged(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    move-result v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/KeyguardBiometricLockoutLogger;

    .line 9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 15
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 19
    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 21
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    .line 23
    move-result p1

    .line 26
    and-int/lit8 v1, p1, 0x2

    .line 27
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v1, :cond_1

    .line 31
    move v1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v1, v3

    .line 35
    :goto_0
    if-nez v1, :cond_4

    .line 36
    and-int/lit8 v1, p1, 0x20

    .line 38
    if-eqz v1, :cond_2

    .line 40
    move v1, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v1, v3

    .line 44
    :goto_1
    if-eqz v1, :cond_3

    .line 45
    goto :goto_2

    .line 47
    :cond_3
    move v1, v3

    .line 48
    goto :goto_3

    .line 49
    :cond_4
    :goto_2
    move v1, v2

    .line 50
    :goto_3
    and-int/2addr p1, v2

    .line 51
    if-eqz p1, :cond_5

    .line 52
    move p1, v2

    .line 54
    goto :goto_4

    .line 55
    :cond_5
    move p1, v3

    .line 56
    :goto_4
    if-nez p1, :cond_7

    .line 57
    if-eqz v1, :cond_6

    .line 59
    goto :goto_5

    .line 61
    :cond_6
    move p1, v3

    .line 62
    goto :goto_6

    .line 63
    :cond_7
    :goto_5
    move p1, v2

    .line 64
    :goto_6
    if-eqz p1, :cond_8

    .line 65
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->encryptedOrLockdown:Z

    .line 67
    if-nez v1, :cond_8

    .line 69
    sget-object v1, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_ENCRYPTED_OR_LOCKDOWN:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    .line 71
    invoke-static {p0, v1}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->access$log(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;)V

    .line 73
    :cond_8
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->encryptedOrLockdown:Z

    .line 76
    and-int/lit8 p1, v0, 0x40

    .line 78
    if-eqz p1, :cond_9

    .line 80
    move p1, v2

    .line 82
    goto :goto_7

    .line 83
    :cond_9
    move p1, v3

    .line 84
    :goto_7
    if-eqz p1, :cond_a

    .line 85
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->unattendedUpdate:Z

    .line 87
    if-nez v1, :cond_a

    .line 89
    sget-object v1, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_UNATTENDED_UPDATE:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    .line 91
    invoke-static {p0, v1}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->access$log(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;)V

    .line 93
    :cond_a
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->unattendedUpdate:Z

    .line 96
    and-int/lit8 p1, v0, 0x10

    .line 98
    if-eqz p1, :cond_b

    .line 100
    move p1, v2

    .line 102
    goto :goto_8

    .line 103
    :cond_b
    move p1, v3

    .line 104
    :goto_8
    if-nez p1, :cond_e

    .line 105
    and-int/lit16 p1, v0, 0x80

    .line 107
    if-eqz p1, :cond_c

    .line 109
    move p1, v2

    .line 111
    goto :goto_9

    .line 112
    :cond_c
    move p1, v3

    .line 113
    :goto_9
    if-eqz p1, :cond_d

    .line 114
    goto :goto_a

    .line 116
    :cond_d
    move v2, v3

    .line 117
    :cond_e
    :goto_a
    if-eqz v2, :cond_f

    .line 118
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->timeout:Z

    .line 120
    if-nez p1, :cond_f

    .line 122
    sget-object p1, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_TIMEOUT:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    .line 124
    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->access$log(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;)V

    .line 126
    :cond_f
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->timeout:Z

    .line 129
    return-void
    .line 131
.end method
