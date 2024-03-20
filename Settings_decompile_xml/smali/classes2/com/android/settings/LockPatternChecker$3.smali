.class Lcom/android/settings/LockPatternChecker$3;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockPatternChecker;->checkPatternForUsers(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;Ljava/util/List;Landroid/content/Context;Lcom/android/settings/LockPatternChecker$OnCheckForUsersCallback;)Landroid/os/AsyncTask;
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

.field private mUserIdMatched:I

.field final synthetic val$callback:Lcom/android/settings/LockPatternChecker$OnCheckForUsersCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pattern:Ljava/util/List;

.field final synthetic val$users:Ljava/util/List;

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;Landroid/content/Context;Lcom/android/settings/LockPatternChecker$OnCheckForUsersCallback;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/settings/LockPatternChecker$3;->val$users:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/LockPatternChecker$3;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p3, p0, Lcom/android/settings/LockPatternChecker$3;->val$pattern:Ljava/util/List;

    iput-object p4, p0, Lcom/android/settings/LockPatternChecker$3;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/settings/LockPatternChecker$3;->val$callback:Lcom/android/settings/LockPatternChecker$OnCheckForUsersCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/16 p1, -0x2710

    .line 171
    iput p1, p0, Lcom/android/settings/LockPatternChecker$3;->mUserIdMatched:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 176
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/LockPatternChecker$3;->val$users:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 177
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 178
    iget-object v1, p0, Lcom/android/settings/LockPatternChecker$3;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/settings/LockPatternChecker$3;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/LockPatternChecker$3;->val$pattern:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/android/settings/compat/LockPatternUtilsCompat;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iput v0, p0, Lcom/android/settings/LockPatternChecker$3;->mUserIdMatched:I

    .line 181
    iget-object p1, p0, Lcom/android/settings/LockPatternChecker$3;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/settings/LockPatternChecker;->-$$Nest$smcomputeAttempTimes(Landroid/content/Context;IZ)V

    .line 182
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LockPatternChecker$3;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/settings/LockPatternChecker;->-$$Nest$smcomputeAttempTimes(Landroid/content/Context;IZ)V

    .line 185
    iget-object v1, p0, Lcom/android/settings/LockPatternChecker$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/LockPatternChecker$3;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v1, v2, v0}, Lcom/android/settings/LockPatternChecker;->-$$Nest$smcomputeRetryTimeout(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/LockPatternChecker$3;->mThrottleTimeout:I

    goto :goto_0

    .line 189
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 191
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result p1

    iput p1, p0, Lcom/android/settings/LockPatternChecker$3;->mThrottleTimeout:I

    .line 192
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 169
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/LockPatternChecker$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/settings/LockPatternChecker$3;->val$callback:Lcom/android/settings/LockPatternChecker$OnCheckForUsersCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget v1, p0, Lcom/android/settings/LockPatternChecker$3;->mUserIdMatched:I

    iget p0, p0, Lcom/android/settings/LockPatternChecker$3;->mThrottleTimeout:I

    invoke-interface {v0, p1, v1, p0}, Lcom/android/settings/LockPatternChecker$OnCheckForUsersCallback;->onChecked(ZII)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 169
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/LockPatternChecker$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
