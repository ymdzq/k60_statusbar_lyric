.class Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;
.super Landroid/os/AsyncTask;
.source "MiuiMasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiMasterClear;
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
.field private mAppContext:Landroid/content/Context;

.field private mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/settings/MiuiMasterClear;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiMasterClear;Landroid/content/Context;)V
    .locals 0

    .line 1143
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1144
    iput-object p2, p0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->mAppContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 1156
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->mAppContext:Landroid/content/Context;

    .line 1157
    invoke-static {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->obtain(Landroid/content/Context;)Lmiui/cloud/finddevice/FindDeviceStatusManager;

    move-result-object p0

    const/4 p1, 0x0

    .line 1159
    :try_start_0
    invoke-virtual {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->isOpen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    invoke-virtual {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1164
    :try_start_1
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1167
    invoke-virtual {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    return-object p1

    :catch_1
    move-exception v0

    .line 1161
    :try_start_2
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1167
    invoke-virtual {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    return-object p1

    :goto_0
    invoke-virtual {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    .line 1168
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1140
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 7

    .line 1175
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fputmCheckFindDeviceStatusTask(Lcom/android/settings/MiuiMasterClear;Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;)V

    .line 1177
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 1179
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 1184
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$malertCheckFindDeviceStatusFailure(Lcom/android/settings/MiuiMasterClear;)V

    return-void

    .line 1188
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1189
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$mshowFinalConfirmation(Lcom/android/settings/MiuiMasterClear;)V

    goto :goto_0

    .line 1192
    :cond_2
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 1194
    invoke-static {p1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1199
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetmAccountManagerFuture(Lcom/android/settings/MiuiMasterClear;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1201
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetmAccountManagerFuture(Lcom/android/settings/MiuiMasterClear;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/accounts/AccountManagerFuture;->cancel(Z)Z

    .line 1204
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "verify_only"

    const/4 v3, 0x0

    .line 1205
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "service_id"

    const-string/jumbo v3, "micloudfind"

    .line 1206
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iget-object v6, p0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v4, Lcom/android/settings/MiuiMasterClear$AccountStartActivityCallback;

    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    const/16 p1, 0x3a

    invoke-direct {v4, p0, p1}, Lcom/android/settings/MiuiMasterClear$AccountStartActivityCallback;-><init>(Lcom/android/settings/MiuiMasterClear;I)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fputmAccountManagerFuture(Lcom/android/settings/MiuiMasterClear;Landroid/accounts/AccountManagerFuture;)V

    :goto_0
    return-void

    .line 1196
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Find device is open, but there is no Xiaomi account. "

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1140
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 1149
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    .line 1150
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    sget v2, Lcom/android/settings/R$string;->checking_find_device_status:I

    .line 1151
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 1150
    invoke-static {v0, v2, v1}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    return-void
.end method
