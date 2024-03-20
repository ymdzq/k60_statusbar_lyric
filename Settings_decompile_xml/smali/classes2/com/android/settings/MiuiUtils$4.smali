.class Lcom/android/settings/MiuiUtils$4;
.super Ljava/lang/Object;
.source "MiuiUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiUtils;->handleForgetPasswordRequestForSSpace(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/security/MiuiLockPatternUtils;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$callback:Landroid/accounts/AccountManagerCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 993
    iput-object p1, p0, Lcom/android/settings/MiuiUtils$4;->val$act:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/settings/MiuiUtils$4;->val$callback:Landroid/accounts/AccountManagerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 996
    iget-object p1, p0, Lcom/android/settings/MiuiUtils$4;->val$act:Landroid/app/Activity;

    invoke-static {p1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 997
    iget-object p1, p0, Lcom/android/settings/MiuiUtils$4;->val$act:Landroid/app/Activity;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 998
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p1, "verify_only"

    const/4 p2, 0x1

    .line 999
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1000
    iget-object v3, p0, Lcom/android/settings/MiuiUtils$4;->val$act:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/settings/MiuiUtils$4;->val$callback:Landroid/accounts/AccountManagerCallback;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method
