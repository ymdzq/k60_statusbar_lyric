.class Lcom/android/settings/LockPatternChecker$4;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILandroid/content/Context;Lcom/android/settings/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private mThrottleTimeout:I

.field final synthetic val$callback:Lcom/android/settings/LockPatternChecker$OnVerifyCallback;

.field final synthetic val$challenge:J

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;IJLandroid/content/Context;Lcom/android/settings/LockPatternChecker$OnVerifyCallback;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/android/settings/LockPatternChecker$4;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/settings/LockPatternChecker$4;->val$password:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/LockPatternChecker$4;->val$userId:I

    iput-wide p4, p0, Lcom/android/settings/LockPatternChecker$4;->val$challenge:J

    iput-object p6, p0, Lcom/android/settings/LockPatternChecker$4;->val$context:Landroid/content/Context;

    iput-object p7, p0, Lcom/android/settings/LockPatternChecker$4;->val$callback:Lcom/android/settings/LockPatternChecker$OnVerifyCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 221
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/LockPatternChecker$4;->doInBackground([Ljava/lang/Void;)[B

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 6

    .line 228
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/LockPatternChecker$4;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/settings/LockPatternChecker$4;->val$password:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/LockPatternChecker$4;->val$userId:I

    invoke-static {p1, v0, v1}, Lcom/android/settings/compat/LockPatternUtilsCompat;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    move-result-wide v1

    .line 230
    iget-object v0, p0, Lcom/android/settings/LockPatternChecker$4;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-wide v3, p0, Lcom/android/settings/LockPatternChecker$4;->val$challenge:J

    iget v5, p0, Lcom/android/settings/LockPatternChecker$4;->val$userId:I

    invoke-static/range {v0 .. v5}, Lcom/android/settings/compat/LockPatternUtilsCompat;->verifyGatekeeperPasswordHandle(Lcom/android/internal/widget/LockPatternUtils;JJI)[B

    move-result-object v0

    .line 231
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 232
    iget-object p1, p0, Lcom/android/settings/LockPatternChecker$4;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/LockPatternChecker$4;->val$userId:I

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/android/settings/LockPatternChecker;->-$$Nest$smcomputeAttempTimes(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/android/settings/LockPatternChecker$4;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/LockPatternChecker$4;->val$userId:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/settings/LockPatternChecker;->-$$Nest$smcomputeAttempTimes(Landroid/content/Context;IZ)V

    .line 235
    iget-object v1, p0, Lcom/android/settings/LockPatternChecker$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/LockPatternChecker$4;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/LockPatternChecker$4;->val$userId:I

    invoke-static {v1, v2, v3}, Lcom/android/settings/LockPatternChecker;->-$$Nest$smcomputeRetryTimeout(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/settings/LockPatternChecker$4;->mThrottleTimeout:I
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 239
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result p1

    iput p1, p0, Lcom/android/settings/LockPatternChecker$4;->mThrottleTimeout:I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 221
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/settings/LockPatternChecker$4;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/android/settings/LockPatternChecker$4;->val$callback:Lcom/android/settings/LockPatternChecker$OnVerifyCallback;

    iget p0, p0, Lcom/android/settings/LockPatternChecker$4;->mThrottleTimeout:I

    invoke-interface {v0, p1, p0}, Lcom/android/settings/LockPatternChecker$OnVerifyCallback;->onVerified([BI)V

    return-void
.end method
