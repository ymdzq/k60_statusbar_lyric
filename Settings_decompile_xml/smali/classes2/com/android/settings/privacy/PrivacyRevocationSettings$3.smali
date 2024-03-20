.class Lcom/android/settings/privacy/PrivacyRevocationSettings$3;
.super Ljava/lang/Object;
.source "PrivacyRevocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacy/PrivacyRevocationSettings;->showRevokeDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/privacy/PrivacyItem;)Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$privacyItem:Lcom/android/settings/privacy/PrivacyItem;


# direct methods
.method constructor <init>(Lcom/android/settings/privacy/PrivacyRevocationSettings;Landroid/content/Context;Lcom/android/settings/privacy/PrivacyItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$3;->this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;

    iput-object p2, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$3;->val$privacyItem:Lcom/android/settings/privacy/PrivacyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 309
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$3;->val$context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/cloud/util/Utils;->isConnected(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 310
    iget-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$3;->val$context:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->privacy_authorize_network_error:I

    invoke-static {p1, p2}, Lcom/android/settings/cloud/util/Utils;->showShortToast(Landroid/content/Context;I)V

    .line 311
    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$3;->this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;

    invoke-static {p0}, Lcom/android/settings/privacy/PrivacyRevocationSettings;->-$$Nest$fgetmAdapter(Lcom/android/settings/privacy/PrivacyRevocationSettings;)Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 314
    :cond_0
    iget-object p2, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$3;->val$context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/privacy/PrivacyNetUtils;->isXiaomiAccountLogin(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "https://appauth.account.xiaomi.com/pass/revokeuser"

    goto :goto_0

    :cond_1
    const-string p2, "https://appauth.account.xiaomi.com/pass/revokedev"

    .line 316
    :goto_0
    iget-object v0, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$3;->this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;

    new-instance v1, Lcom/android/settings/privacy/PrivacyRevocationSettings$PrivacyRevokeAsyncTask;

    iget-object v2, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$3;->this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;

    iget-object v3, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$3;->val$privacyItem:Lcom/android/settings/privacy/PrivacyItem;

    invoke-direct {v1, v2, v3, p2}, Lcom/android/settings/privacy/PrivacyRevocationSettings$PrivacyRevokeAsyncTask;-><init>(Lcom/android/settings/privacy/PrivacyRevocationSettings;Lcom/android/settings/privacy/PrivacyItem;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/settings/privacy/PrivacyRevocationSettings;->-$$Nest$fputmPrivacyRevokeAsyncTask(Lcom/android/settings/privacy/PrivacyRevocationSettings;Lcom/android/settings/privacy/PrivacyRevocationSettings$PrivacyRevokeAsyncTask;)V

    .line 317
    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$3;->this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;

    invoke-static {p0}, Lcom/android/settings/privacy/PrivacyRevocationSettings;->-$$Nest$fgetmPrivacyRevokeAsyncTask(Lcom/android/settings/privacy/PrivacyRevocationSettings;)Lcom/android/settings/privacy/PrivacyRevocationSettings$PrivacyRevokeAsyncTask;

    move-result-object p0

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 318
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "PrivacyRevocationSettings"

    const-string p2, "MiuiSettings privacy modify status:"

    .line 320
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
