.class public final Lcom/android/keyguard/KeyguardBiometricLockoutLogger;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static final Companion:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$Companion;


# instance fields
.field public encryptedOrLockdown:Z

.field public faceLockedOut:Z

.field public fingerprintLockedOut:Z

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final sessionTracker:Lcom/android/systemui/log/SessionTracker;

.field public timeout:Z

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public unattendedUpdate:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$Companion;

    .line 2
    invoke-direct {v0}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$Companion;-><init>()V

    .line 4
    sput-object v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->Companion:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$Companion;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/log/SessionTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    iput-object p3, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->sessionTracker:Lcom/android/systemui/log/SessionTracker;

    .line 9
    new-instance p1, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1;

    .line 11
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1;-><init>(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;)V

    .line 13
    iput-object p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 16
    return-void
    .line 18
.end method

.method public static final access$log(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->sessionTracker:Lcom/android/systemui/log/SessionTracker;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    .line 5
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 9
    invoke-interface {p0, p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 11
    return-void
    .line 14
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->fingerprintLockedOut:Z

    .line 2
    const-string v0, "  mFingerprintLockedOut="

    .line 4
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 6
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->faceLockedOut:Z

    .line 9
    const-string v0, "  mFaceLockedOut="

    .line 11
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 13
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->encryptedOrLockdown:Z

    .line 16
    const-string v0, "  mIsEncryptedOrLockdown="

    .line 18
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 20
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->unattendedUpdate:Z

    .line 23
    const-string v0, "  mIsUnattendedUpdate="

    .line 25
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 27
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->timeout:Z

    .line 30
    const-string p2, "  mIsTimeout="

    .line 32
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 34
    return-void
    .line 37
.end method

.method public final start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 4
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    .line 8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    iget-object p0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 15
    return-void
    .line 18
.end method
