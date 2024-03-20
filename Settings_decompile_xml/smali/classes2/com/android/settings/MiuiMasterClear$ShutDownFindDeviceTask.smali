.class Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;
.super Landroid/os/AsyncTask;
.source "MiuiMasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiMasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutDownFindDeviceTask"
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

    .line 1252
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1253
    iput-object p2, p0, Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;->mAppContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 1265
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;->mAppContext:Landroid/content/Context;

    .line 1266
    invoke-static {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->obtain(Landroid/content/Context;)Lmiui/cloud/finddevice/FindDeviceStatusManager;

    move-result-object p0

    .line 1268
    :try_start_0
    invoke-virtual {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    invoke-virtual {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    .line 1282
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1276
    :try_start_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 1277
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1279
    invoke-virtual {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    return-object p1

    :catch_1
    move-exception p1

    .line 1273
    :try_start_2
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 1274
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1279
    invoke-virtual {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    return-object p1

    :catch_2
    move-exception p1

    .line 1270
    :try_start_3
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 1271
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1279
    invoke-virtual {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    return-object p1

    :goto_0
    invoke-virtual {p0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    .line 1280
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1249
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 1289
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fputmShutDownFindDeviceTask(Lcom/android/settings/MiuiMasterClear;Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;)V

    .line 1291
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 1293
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1297
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1298
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$mshowFinalConfirmation(Lcom/android/settings/MiuiMasterClear;)V

    goto :goto_0

    .line 1300
    :cond_1
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$malertShutDownFindDeviceFailure(Lcom/android/settings/MiuiMasterClear;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1249
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 1258
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    .line 1259
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    sget v2, Lcom/android/settings/R$string;->shuting_down_find_device:I

    .line 1260
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 1259
    invoke-static {v0, v2, v1}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    return-void
.end method
