.class public abstract Lcom/android/keyguard/CrossEndsUnlockController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static sKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field public static sKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public static sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public static sLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public static sPendingLockCheck:Landroid/os/AsyncTask;

.field public static sSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;


# direct methods
.method public static onGeneralChecked(IIIZ)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    sget-object p1, Lcom/android/keyguard/CrossEndsUnlockController;->sKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 5
    const/4 v1, 0x1

    .line 7
    invoke-interface {p1, p0, v0, p2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIIZ)V

    .line 8
    sget-object p1, Lcom/android/keyguard/CrossEndsUnlockController;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 11
    const/16 p2, 0xb

    .line 13
    invoke-virtual {p1, p2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 15
    sget-object p1, Lcom/android/keyguard/CrossEndsUnlockController;->sKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 18
    sget-object p2, Lcom/android/keyguard/CrossEndsUnlockController;->sSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 20
    invoke-interface {p1, p0, p2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    sget-object v1, Lcom/android/keyguard/CrossEndsUnlockController;->sKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 26
    invoke-interface {v1, p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIIZ)V

    .line 28
    if-lez p1, :cond_1

    .line 31
    sget-object p0, Lcom/android/keyguard/CrossEndsUnlockController;->sLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 33
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    .line 35
    move-result-wide p0

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    move-result-wide v0

    .line 42
    sget-object v2, Lcom/android/keyguard/CrossEndsUnlockController;->sKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 43
    sub-long/2addr p0, v0

    .line 45
    invoke-interface {v2, p2, p0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->handleAttemptLockout(IJ)V

    .line 46
    :cond_1
    :goto_0
    const-class p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 49
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 54
    check-cast p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 55
    const-string/jumbo p1, "unlock_remote"

    .line 57
    invoke-virtual {p0, p1, p3}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->setKeyguardUnlockWay(Ljava/lang/String;Z)V

    .line 60
    return-void
    .line 63
.end method
