.class Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;
.super Landroid/os/AsyncTask;
.source "MiuiFactoryResetReceived.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiFactoryResetReceived;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckFindDeviceStatusTask"
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
.field private mActivity:Landroid/app/Activity;

.field private mAppContext:Landroid/content/Context;

.field private mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/settings/MiuiFactoryResetReceived;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiFactoryResetReceived;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiFactoryResetReceived;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->mAppContext:Landroid/content/Context;

    .line 179
    iput-object p3, p0, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    const-string p1, "MiuiFactoryResetR"

    const-string v0, "CheckFindDeviceStatusTask"

    .line 191
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p0, p0, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->mAppContext:Landroid/content/Context;

    .line 193
    invoke-static {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->obtain(Landroid/content/Context;)Lmiui/cloud/finddevice/FindDeviceStatusManager;

    move-result-object p0

    const/4 p1, 0x0

    .line 195
    :try_start_0
    invoke-virtual {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->isOpen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-virtual {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 200
    :try_start_1
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    invoke-virtual {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    return-object p1

    :catch_1
    move-exception v0

    .line 197
    :try_start_2
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    invoke-virtual {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    return-object p1

    :goto_0
    invoke-virtual {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    .line 204
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 174
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6

    .line 209
    iget-object v0, p0, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiFactoryResetReceived;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/MiuiFactoryResetReceived;->-$$Nest$fputmCheckFindDeviceStatusTask(Lcom/android/settings/MiuiFactoryResetReceived;Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    if-nez p1, :cond_0

    .line 214
    iget-object p0, p0, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiFactoryResetReceived;

    invoke-static {p0}, Lcom/android/settings/MiuiFactoryResetReceived;->-$$Nest$malertCheckFindDeviceStatusFailure(Lcom/android/settings/MiuiFactoryResetReceived;)V

    return-void

    .line 218
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 219
    iget-object p0, p0, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiFactoryResetReceived;

    invoke-static {p0}, Lcom/android/settings/MiuiFactoryResetReceived;->-$$Nest$mshowFinalConfirmation(Lcom/android/settings/MiuiFactoryResetReceived;)V

    goto :goto_0

    .line 221
    :cond_1
    iget-object p1, p0, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 226
    iget-object p1, p0, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiFactoryResetReceived;

    invoke-static {p1}, Lcom/android/settings/MiuiFactoryResetReceived;->-$$Nest$fgetmAccountManagerFuture(Lcom/android/settings/MiuiFactoryResetReceived;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 228
    iget-object p1, p0, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiFactoryResetReceived;

    invoke-static {p1}, Lcom/android/settings/MiuiFactoryResetReceived;->-$$Nest$fgetmAccountManagerFuture(Lcom/android/settings/MiuiFactoryResetReceived;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/accounts/AccountManagerFuture;->cancel(Z)Z

    .line 231
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p1, "verify_only"

    const/4 v0, 0x0

    .line 232
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "service_id"

    const-string/jumbo v0, "micloudfind"

    .line 233
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object p1, p0, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiFactoryResetReceived;

    iget-object v0, p0, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v4, Lcom/android/settings/MiuiFactoryResetReceived$AccountStartActivityCallback;

    iget-object p0, p0, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiFactoryResetReceived;

    const/16 v5, 0x3a

    invoke-direct {v4, p0, v5}, Lcom/android/settings/MiuiFactoryResetReceived$AccountStartActivityCallback;-><init>(Lcom/android/settings/MiuiFactoryResetReceived;I)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/MiuiFactoryResetReceived;->-$$Nest$fputmAccountManagerFuture(Lcom/android/settings/MiuiFactoryResetReceived;Landroid/accounts/AccountManagerFuture;)V

    :goto_0
    return-void

    .line 223
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Find device is open, but there is no Xiaomi account. "

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 174
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiFactoryResetReceived;

    sget v2, Lcom/android/settings/R$string;->checking_find_device_status:I

    .line 186
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 185
    invoke-static {v0, v2, v1}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiFactoryResetReceived$CheckFindDeviceStatusTask;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    return-void
.end method
