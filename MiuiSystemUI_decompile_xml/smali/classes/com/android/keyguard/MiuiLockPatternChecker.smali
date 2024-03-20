.class public abstract Lcom/android/keyguard/MiuiLockPatternChecker;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static -$$Nest$smisCredentialEnable(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    .line 2
    move-result p0

    .line 5
    const/high16 v0, 0x10000

    .line 6
    if-eq p0, v0, :cond_1

    .line 8
    const/high16 v0, 0x40000

    .line 10
    if-eq p0, v0, :cond_1

    .line 12
    const/high16 v0, 0x50000

    .line 14
    if-eq p0, v0, :cond_1

    .line 16
    const/high16 v0, 0x60000

    .line 18
    if-eq p0, v0, :cond_1

    .line 20
    const/high16 v0, 0x20000

    .line 22
    if-eq p0, v0, :cond_1

    .line 24
    const/high16 v0, 0x30000

    .line 26
    if-ne p0, v0, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 33
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "check credential enable for userId : "

    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    if-eqz v0, :cond_2

    .line 44
    const-string p1, "   enable"

    .line 46
    goto :goto_2

    .line 48
    :cond_2
    const-string p1, "   disable"

    .line 49
    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string p1, ", passwordQuality = "

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 65
    const-string p1, "miui_keyguard_password"

    .line 66
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return v0
    .line 71
.end method

.method public static checkCredentialForUsers(IILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/keyguard/OnCheckForUsersCallback;Lcom/android/keyguard/OnCheckForUsersCallback;)Lcom/android/keyguard/MiuiLockPatternChecker$1;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/keyguard/MiuiLockPatternChecker$1;

    .line 2
    move-object v0, v8

    .line 4
    move v1, p0

    .line 5
    move v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    move-object v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/MiuiLockPatternChecker$1;-><init>(IILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/keyguard/OnCheckForUsersCallback;Lcom/android/keyguard/OnCheckForUsersCallback;)V

    .line 12
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 15
    const/4 p1, 0x0

    .line 17
    new-array p1, p1, [Ljava/lang/Void;

    .line 18
    invoke-virtual {v8, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 20
    return-object v8
    .line 23
.end method
