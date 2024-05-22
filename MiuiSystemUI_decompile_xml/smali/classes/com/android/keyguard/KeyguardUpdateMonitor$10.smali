.class public final Lcom/android/keyguard/KeyguardUpdateMonitor$10;
.super Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLockoutReset(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    .line 4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    iget-object v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardFingerprintWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 9
    if-nez v0, :cond_0

    .line 11
    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 13
    const-string v0, "power"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 20
    check-cast p1, Landroid/os/PowerManager;

    .line 21
    if-eqz p1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 25
    const/4 v1, 0x1

    .line 27
    const-string v2, "fingerprint"

    .line 28
    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 30
    move-result-object p1

    .line 33
    iput-object p1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardFingerprintWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 36
    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardFingerprintWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 38
    if-eqz p1, :cond_1

    .line 40
    const-wide/16 v0, 0x3e8

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 47
    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintLockoutReset(I)V

    .line 50
    return-void
    .line 53
.end method
