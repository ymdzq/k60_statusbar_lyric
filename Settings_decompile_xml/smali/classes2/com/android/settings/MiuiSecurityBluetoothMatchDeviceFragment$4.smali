.class Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$4;
.super Landroid/os/AsyncTask;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->startSendKeyTask()V
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
.field final synthetic this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$4;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 438
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$4;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    iget-boolean v0, p1, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->isOld:Z

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->doInBackgroundHandle()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 441
    :cond_0
    invoke-static {p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$mgenerateKey(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fputmCachedKeyBytes(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;[B)V

    .line 443
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$4;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmDeviceType(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 444
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$4;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmUnlockProfile(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$4;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmCachedKeyBytes(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->setLock(Ljava/lang/String;)Z

    goto :goto_0

    .line 446
    :cond_1
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$4;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmUnlockProfile(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$4;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmCachedKeyBytes(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->setLock(Ljava/lang/String;)Z

    .line 448
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error to do background "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiSecurityBluetoothMatchDeviceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 427
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 458
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 459
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$4;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->isOld:Z

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->doPostHandle(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 427
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$4;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 431
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 432
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$4;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fputmSetKeyOnReady(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;Z)V

    return-void
.end method
