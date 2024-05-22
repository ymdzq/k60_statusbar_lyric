.class public final Lcom/android/keyguard/MiuiLockPatternChecker$1;
.super Landroid/os/AsyncTask;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mThrottleTimeoutCurrent:I

.field public mThrottleTimeoutOther:I

.field public mUserIdMatched:I

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$credential:Lcom/android/internal/widget/LockscreenCredential;

.field public final synthetic val$currentUserCallback:Lcom/android/keyguard/OnCheckForUsersCallback;

.field public final synthetic val$currentUserId:I

.field public final synthetic val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final synthetic val$otherUserCallback:Lcom/android/keyguard/OnCheckForUsersCallback;

.field public final synthetic val$otherUserId:I


# direct methods
.method public constructor <init>(IILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/keyguard/OnCheckForUsersCallback;Lcom/android/keyguard/OnCheckForUsersCallback;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$context:Landroid/content/Context;

    .line 2
    iput p1, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$currentUserId:I

    .line 4
    iput-object p6, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$currentUserCallback:Lcom/android/keyguard/OnCheckForUsersCallback;

    .line 6
    iput p2, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$otherUserId:I

    .line 8
    iput-object p4, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 10
    iput-object p7, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$otherUserCallback:Lcom/android/keyguard/OnCheckForUsersCallback;

    .line 12
    iput-object p5, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$credential:Lcom/android/internal/widget/LockscreenCredential;

    .line 14
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 16
    const/16 p1, -0x2710

    .line 19
    iput p1, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->mUserIdMatched:I

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    const-string p1, "keyguard_check_password_failed"

    .line 4
    const-string v0, "miui_keyguard_password"

    .line 6
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 8
    move-result-object v1

    .line 11
    const-string v2, "pw_verify_time"

    .line 12
    invoke-virtual {v1, v2}, Lcom/android/keyguard/analytics/AnalyticsHelper;->trackPageStart(Ljava/lang/String;)V

    .line 14
    iget v1, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$currentUserId:I

    .line 17
    iput v1, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->mUserIdMatched:I

    .line 19
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$currentUserCallback:Lcom/android/keyguard/OnCheckForUsersCallback;

    .line 23
    iget-object v5, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 25
    iget-object v6, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$credential:Lcom/android/internal/widget/LockscreenCredential;

    .line 27
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v7, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticLambda1;

    .line 32
    invoke-direct {v7, v4}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/OnCheckForUsersCallback;)V

    .line 34
    invoke-virtual {v5, v6, v1, v7}, Lcom/android/internal/widget/LockPatternUtils;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    .line 37
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    iput v1, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->mUserIdMatched:I

    .line 43
    move v1, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v1, v3

    .line 47
    :goto_0
    if-eqz v1, :cond_1

    .line 48
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_4

    .line 52
    :catch_0
    move-exception v1

    .line 53
    const-string v4, "checkPasswordForUsers failed"

    .line 54
    invoke-static {v0, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 59
    move-result-object v1

    .line 62
    invoke-virtual {v1, p1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->record(Ljava/lang/String;)V

    .line 63
    goto :goto_1

    .line 66
    :catch_1
    move-exception v1

    .line 67
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    .line 68
    move-result v1

    .line 71
    iput v1, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->mThrottleTimeoutCurrent:I

    .line 72
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$otherUserId:I

    .line 74
    iget v4, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$currentUserId:I

    .line 76
    if-ne v1, v4, :cond_2

    .line 78
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 80
    goto :goto_4

    .line 82
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 83
    invoke-static {v4, v1}, Lcom/android/keyguard/MiuiLockPatternChecker;->-$$Nest$smisCredentialEnable(Lcom/android/internal/widget/LockPatternUtils;I)Z

    .line 85
    move-result v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    iget v1, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$otherUserId:I

    .line 91
    iget-object v4, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$otherUserCallback:Lcom/android/keyguard/OnCheckForUsersCallback;

    .line 93
    iget-object v5, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 95
    iget-object v6, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$credential:Lcom/android/internal/widget/LockscreenCredential;

    .line 97
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v7, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticLambda1;

    .line 102
    invoke-direct {v7, v4}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/OnCheckForUsersCallback;)V

    .line 104
    invoke-virtual {v5, v6, v1, v7}, Lcom/android/internal/widget/LockPatternUtils;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    .line 107
    move-result v4

    .line 110
    if-eqz v4, :cond_3

    .line 111
    iput v1, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->mUserIdMatched:I

    .line 113
    goto :goto_2

    .line 115
    :cond_3
    move v2, v3

    .line 116
    :goto_2
    if-eqz v2, :cond_4

    .line 117
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 119
    goto :goto_4

    .line 121
    :catch_2
    move-exception p0

    .line 122
    const-string v1, "checkPasswordForUsers other users failed"

    .line 123
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 128
    move-result-object p0

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->record(Ljava/lang/String;)V

    .line 132
    goto :goto_3

    .line 135
    :catch_3
    move-exception p1

    .line 136
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    .line 137
    move-result p1

    .line 140
    iput p1, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->mThrottleTimeoutOther:I

    .line 141
    :cond_4
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 143
    :goto_4
    return-object p0
    .line 145
.end method

.method public final onCancelled(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/MiuiLockPatternChecker$1;->onCheckedCallback(ZZ)V

    .line 9
    return-void
    .line 12
.end method

.method public final onCheckedCallback(ZZ)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->mThrottleTimeoutOther:I

    .line 2
    iget v1, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->mThrottleTimeoutCurrent:I

    .line 4
    if-le v0, v1, :cond_0

    .line 6
    iget v1, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$otherUserId:I

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$currentUserId:I

    .line 11
    move v5, v1

    .line 13
    move v1, v0

    .line 14
    move v0, v5

    .line 15
    :goto_0
    const-string v2, "checkPasswordForUsers onChecked; result = "

    .line 16
    const-string v3, ",isCancelled:"

    .line 18
    const-string v4, ", mUserIdMatched = "

    .line 20
    invoke-static {v2, p1, v3, p2, v4}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object p2

    .line 25
    iget v2, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->mUserIdMatched:I

    .line 26
    const-string v3, ", mUserIdLocked: "

    .line 28
    const-string v4, ", mThrottleTimeout = "

    .line 30
    invoke-static {p2, v2, v3, v1, v4}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 41
    const-string v2, "miui_keyguard_password"

    .line 42
    invoke-static {v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p2, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->val$currentUserCallback:Lcom/android/keyguard/OnCheckForUsersCallback;

    .line 47
    iget p0, p0, Lcom/android/keyguard/MiuiLockPatternChecker$1;->mUserIdMatched:I

    .line 49
    invoke-interface {p2, p0, v0, v1, p1}, Lcom/android/keyguard/OnCheckForUsersCallback;->onChecked(IIIZ)V

    .line 51
    return-void
    .line 54
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/MiuiLockPatternChecker$1;->onCheckedCallback(ZZ)V

    .line 9
    return-void
    .line 12
.end method
