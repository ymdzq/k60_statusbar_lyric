.class public final Lcom/android/settings/LockPatternChecker;
.super Ljava/lang/Object;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LockPatternChecker$OnVerifyCallback;,
        Lcom/android/settings/LockPatternChecker$OnCheckCallback;,
        Lcom/android/settings/LockPatternChecker$OnCheckForUsersCallback;
    }
.end annotation


# static fields
.field private static final CURRENT_DEVICE:Ljava/lang/String;

.field private static final IS_NEED_COMPUTE_ATTEMPT_TIMES_DEVICE:Z


# direct methods
.method static bridge synthetic -$$Nest$smcomputeAttempTimes(Landroid/content/Context;IZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/LockPatternChecker;->computeAttempTimes(Landroid/content/Context;IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smcomputeRetryTimeout(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/LockPatternChecker;->computeRetryTimeout(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 30
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/LockPatternChecker;->CURRENT_DEVICE:Ljava/lang/String;

    const-string v1, "libra"

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "aqua"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "kenzo"

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "kate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/settings/LockPatternChecker;->IS_NEED_COMPUTE_ATTEMPT_TIMES_DEVICE:Z

    return-void
.end method

.method public static checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILandroid/content/Context;Lcom/android/settings/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/android/settings/LockPatternChecker$OnCheckCallback;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 266
    new-instance v6, Lcom/android/settings/LockPatternChecker$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/LockPatternChecker$5;-><init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILandroid/content/Context;Lcom/android/settings/LockPatternChecker$OnCheckCallback;)V

    .line 295
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v6, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v6
.end method

.method public static checkPasswordForUsers(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;Lcom/android/settings/LockPatternChecker$OnCheckForUsersCallback;)Landroid/os/AsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/settings/LockPatternChecker$OnCheckForUsersCallback;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 304
    new-instance v6, Lcom/android/settings/LockPatternChecker$6;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/LockPatternChecker$6;-><init>(Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;Landroid/content/Context;Lcom/android/settings/LockPatternChecker$OnCheckForUsersCallback;)V

    .line 336
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v6, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v6
.end method

.method public static checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILandroid/content/Context;Lcom/android/settings/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I",
            "Landroid/content/Context;",
            "Lcom/android/settings/LockPatternChecker$OnCheckCallback;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 135
    new-instance v6, Lcom/android/settings/LockPatternChecker$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/LockPatternChecker$2;-><init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILandroid/content/Context;Lcom/android/settings/LockPatternChecker$OnCheckCallback;)V

    .line 160
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v6, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v6
.end method

.method public static checkPatternForUsers(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;Ljava/util/List;Landroid/content/Context;Lcom/android/settings/LockPatternChecker$OnCheckForUsersCallback;)Landroid/os/AsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/settings/LockPatternChecker$OnCheckForUsersCallback;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 169
    new-instance v6, Lcom/android/settings/LockPatternChecker$3;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/LockPatternChecker$3;-><init>(Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;Landroid/content/Context;Lcom/android/settings/LockPatternChecker$OnCheckForUsersCallback;)V

    .line 201
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v6, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v6
.end method

.method private static computeAttempTimes(Landroid/content/Context;IZ)V
    .locals 2

    .line 348
    sget-boolean v0, Lcom/android/settings/LockPatternChecker;->IS_NEED_COMPUTE_ATTEMPT_TIMES_DEVICE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v1, Landroid/provider/MiuiSettings$Secure;->UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String;

    invoke-static {p2, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    add-int/lit8 v0, p2, 0x1

    .line 353
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p2, Landroid/provider/MiuiSettings$Secure;->UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String;

    invoke-static {p0, p2, v0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private static computeRetryTimeout(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)I
    .locals 4

    .line 377
    sget-boolean v0, Lcom/android/settings/LockPatternChecker;->IS_NEED_COMPUTE_ATTEMPT_TIMES_DEVICE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 381
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Landroid/provider/MiuiSettings$Secure;->UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String;

    invoke-static {p0, v0, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x5

    const/16 v2, 0x7530

    if-ne p0, v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    const/16 v0, 0xa

    const/16 v3, 0x1e

    if-lt p0, v0, :cond_2

    if-ge p0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x8c

    if-lt p0, v3, :cond_3

    if-ge p0, v0, :cond_3

    sub-int/2addr p0, v3

    int-to-double v0, p0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 389
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x40dd4c0000000000L    # 30000.0

    mul-double/2addr v0, v2

    double-to-int v1, v0

    goto :goto_1

    :cond_3
    if-lt p0, v0, :cond_4

    const v1, 0x5265c00

    :cond_4
    :goto_1
    if-lez v1, :cond_5

    const/16 p0, 0x8

    .line 396
    invoke-virtual {p1, p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    :cond_5
    return v1
.end method

.method public static verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILandroid/content/Context;Lcom/android/settings/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/lang/String;",
            "JI",
            "Landroid/content/Context;",
            "Lcom/android/settings/LockPatternChecker$OnVerifyCallback;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 221
    new-instance v8, Lcom/android/settings/LockPatternChecker$4;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-wide v4, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/LockPatternChecker$4;-><init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;IJLandroid/content/Context;Lcom/android/settings/LockPatternChecker$OnVerifyCallback;)V

    .line 249
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v8, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v8
.end method

.method public static verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILandroid/content/Context;Lcom/android/settings/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;JI",
            "Landroid/content/Context;",
            "Lcom/android/settings/LockPatternChecker$OnVerifyCallback;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 89
    new-instance v8, Lcom/android/settings/LockPatternChecker$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-wide v4, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/LockPatternChecker$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;IJLandroid/content/Context;Lcom/android/settings/LockPatternChecker$OnVerifyCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 117
    invoke-virtual {v8, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v8
.end method

.method public static verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZILcom/android/settings/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/lang/String;",
            "ZI",
            "Lcom/android/settings/LockPatternChecker$OnVerifyCallback;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 412
    new-instance v6, Lcom/android/settings/LockPatternChecker$7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/LockPatternChecker$7;-><init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZILcom/android/settings/LockPatternChecker$OnVerifyCallback;)V

    .line 430
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v6, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v6
.end method
