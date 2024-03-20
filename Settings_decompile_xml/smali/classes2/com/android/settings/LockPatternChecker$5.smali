.class Lcom/android/settings/LockPatternChecker$5;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILandroid/content/Context;Lcom/android/settings/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mThrottleTimeout:I

.field final synthetic val$callback:Lcom/android/settings/LockPatternChecker$OnCheckCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILandroid/content/Context;Lcom/android/settings/LockPatternChecker$OnCheckCallback;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/android/settings/LockPatternChecker$5;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/settings/LockPatternChecker$5;->val$password:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/LockPatternChecker$5;->val$userId:I

    iput-object p4, p0, Lcom/android/settings/LockPatternChecker$5;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/settings/LockPatternChecker$5;->val$callback:Lcom/android/settings/LockPatternChecker$OnCheckCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 272
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/LockPatternChecker$5;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/settings/LockPatternChecker$5;->val$password:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/LockPatternChecker$5;->val$userId:I

    invoke-static {p1, v0, v1}, Lcom/android/settings/compat/LockPatternUtilsCompat;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/settings/LockPatternChecker$5;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/LockPatternChecker$5;->val$userId:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/LockPatternChecker;->-$$Nest$smcomputeAttempTimes(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockPatternChecker$5;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/LockPatternChecker$5;->val$userId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/LockPatternChecker;->-$$Nest$smcomputeAttempTimes(Landroid/content/Context;IZ)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/LockPatternChecker$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/LockPatternChecker$5;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/LockPatternChecker$5;->val$userId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/LockPatternChecker;->-$$Nest$smcomputeRetryTimeout(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/LockPatternChecker$5;->mThrottleTimeout:I

    .line 279
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string v0, "LockPatternChecker"

    const-string v1, "Failed to decrypt blob"

    .line 284
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    iget-object p1, p0, Lcom/android/settings/LockPatternChecker$5;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/LockPatternChecker$5;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/LockPatternChecker$5;->val$userId:I

    invoke-static {p1, v0, v1}, Lcom/android/settings/LockPatternChecker;->-$$Nest$smcomputeRetryTimeout(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/LockPatternChecker$5;->mThrottleTimeout:I

    .line 286
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :catch_1
    move-exception p1

    .line 281
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result p1

    iput p1, p0, Lcom/android/settings/LockPatternChecker$5;->mThrottleTimeout:I

    .line 282
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 266
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/LockPatternChecker$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/settings/LockPatternChecker$5;->val$callback:Lcom/android/settings/LockPatternChecker$OnCheckCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget p0, p0, Lcom/android/settings/LockPatternChecker$5;->mThrottleTimeout:I

    invoke-interface {v0, p1, p0}, Lcom/android/settings/LockPatternChecker$OnCheckCallback;->onChecked(ZI)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 266
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/LockPatternChecker$5;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
