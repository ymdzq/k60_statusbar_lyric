.class Lcom/android/settings/MiuiMasterClear$AccountStartActivityCallback;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiMasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountStartActivityCallback"
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
.field private mRequestCode:I

.field final synthetic this$0:Lcom/android/settings/MiuiMasterClear;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiMasterClear;I)V
    .locals 0

    .line 1222
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$AccountStartActivityCallback;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    iput p2, p0, Lcom/android/settings/MiuiMasterClear$AccountStartActivityCallback;->mRequestCode:I

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1228
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$AccountStartActivityCallback;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetmAccountManagerFuture(Lcom/android/settings/MiuiMasterClear;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    if-eq v0, p1, :cond_0

    return-void

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$AccountStartActivityCallback;->this$0:Lcom/android/settings/MiuiMasterClear;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fputmAccountManagerFuture(Lcom/android/settings/MiuiMasterClear;Landroid/accounts/AccountManagerFuture;)V

    .line 1235
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1239
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1238
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1237
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    :goto_0
    if-eqz v1, :cond_1

    .line 1242
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$AccountStartActivityCallback;->this$0:Lcom/android/settings/MiuiMasterClear;

    iget p0, p0, Lcom/android/settings/MiuiMasterClear$AccountStartActivityCallback;->mRequestCode:I

    invoke-virtual {p1, v1, p0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method
