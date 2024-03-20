.class Lcom/android/settings/privacypassword/AddAccountActivity$1;
.super Ljava/lang/Object;
.source "AddAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacypassword/AddAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacypassword/AddAccountActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/privacypassword/AddAccountActivity;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity$1;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity$1;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    .line 215
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "booleanResult"

    .line 216
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 217
    iget-object p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity$1;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-static {p1, v2}, Lcom/android/settings/privacypassword/AddAccountActivity;->-$$Nest$fputmResultIsOk(Lcom/android/settings/privacypassword/AddAccountActivity;Z)V

    .line 218
    iget-object p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity$1;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-static {p1, v1}, Lcom/android/settings/privacypassword/AddAccountActivity;->-$$Nest$fputmIsCancelLogin(Lcom/android/settings/privacypassword/AddAccountActivity;Z)V

    .line 219
    iget-object p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity$1;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-static {p1}, Lcom/android/settings/privacypassword/AddAccountActivity;->-$$Nest$fgetmIsStartModify(Lcom/android/settings/privacypassword/AddAccountActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity$1;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-static {p1}, Lcom/android/settings/privacypassword/AddAccountActivity;->-$$Nest$fgetmPasswordManager(Lcom/android/settings/privacypassword/AddAccountActivity;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object p1

    invoke-static {v0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->loginedXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bindXiaoMiAccount(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->bind_xiaomi_account_success:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 225
    iget-object p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity$1;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-static {p1}, Lcom/android/settings/privacypassword/AddAccountActivity;->-$$Nest$mgetAnalyticBindingResultKey(Lcom/android/settings/privacypassword/AddAccountActivity;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "not_logged_binding"

    invoke-static {p1, v0}, Lcom/android/settings/privacypassword/analytics/AnalyticHelper;->statsForgetPageBindingResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object p0, p0, Lcom/android/settings/privacypassword/AddAccountActivity$1;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->finish()V

    goto :goto_0

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity$1;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-static {p1, v1}, Lcom/android/settings/privacypassword/AddAccountActivity;->-$$Nest$fputmResultIsOk(Lcom/android/settings/privacypassword/AddAccountActivity;Z)V

    .line 229
    iget-object p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity$1;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-static {p1, v2}, Lcom/android/settings/privacypassword/AddAccountActivity;->-$$Nest$fputmIsCancelLogin(Lcom/android/settings/privacypassword/AddAccountActivity;Z)V

    .line 230
    iget-object p0, p0, Lcom/android/settings/privacypassword/AddAccountActivity$1;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-static {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->-$$Nest$fgetmPasswordManager(Lcom/android/settings/privacypassword/AddAccountActivity;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bindXiaoMiAccount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AddAccountActivity"

    const-string v0, "fail loginXiaomiAccount"

    .line 233
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
