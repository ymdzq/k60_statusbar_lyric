.class Lcom/android/settings/LockPatternChecker$7;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZILcom/android/settings/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
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

.field final synthetic val$isPattern:Z

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZILcom/android/settings/LockPatternChecker$OnVerifyCallback;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/android/settings/LockPatternChecker$7;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/settings/LockPatternChecker$7;->val$password:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/settings/LockPatternChecker$7;->val$isPattern:Z

    iput p4, p0, Lcom/android/settings/LockPatternChecker$7;->val$userId:I

    iput-object p5, p0, Lcom/android/settings/LockPatternChecker$7;->val$callback:Lcom/android/settings/LockPatternChecker$OnVerifyCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 412
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/LockPatternChecker$7;->doInBackground([Ljava/lang/Void;)[B

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 3

    .line 418
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/LockPatternChecker$7;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/settings/LockPatternChecker$7;->val$password:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/settings/LockPatternChecker$7;->val$isPattern:Z

    iget v2, p0, Lcom/android/settings/LockPatternChecker$7;->val$userId:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/compat/LockPatternUtilsCompat;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZI)[B

    move-result-object p0
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 420
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result p1

    iput p1, p0, Lcom/android/settings/LockPatternChecker$7;->mThrottleTimeout:I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 412
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/settings/LockPatternChecker$7;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/android/settings/LockPatternChecker$7;->val$callback:Lcom/android/settings/LockPatternChecker$OnVerifyCallback;

    iget p0, p0, Lcom/android/settings/LockPatternChecker$7;->mThrottleTimeout:I

    invoke-interface {v0, p1, p0}, Lcom/android/settings/LockPatternChecker$OnVerifyCallback;->onVerified([BI)V

    return-void
.end method
