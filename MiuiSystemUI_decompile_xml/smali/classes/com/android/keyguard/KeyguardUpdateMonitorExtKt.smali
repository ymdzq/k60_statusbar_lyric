.class public abstract Lcom/android/keyguard/KeyguardUpdateMonitorExtKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final hasUserAuthenticatedSinceBoot(Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 2
    move-result p0

    .line 5
    const/4 p1, 0x1

    .line 6
    and-int/2addr p0, p1

    .line 7
    if-nez p0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
    .line 12
.end method
