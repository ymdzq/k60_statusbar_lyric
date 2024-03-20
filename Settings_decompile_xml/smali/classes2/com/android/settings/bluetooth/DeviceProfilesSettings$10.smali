.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$10;
.super Landroid/content/BroadcastReceiver;
.source "DeviceProfilesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .line 1910
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$10;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBluetoothAudioRepairResultReceiver.Receive intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceProfilesSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.xiaomi.bluetooth.BLUETOOTH_RESTRICT_STATE"

    const/4 v2, 0x0

    .line 1917
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1924
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p0, "Received intent with null action"

    .line 1926
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1930
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    .line 1931
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$10;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAudioRepairingDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1932
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$10;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAudioRepairingDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 1933
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$10;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmAudioRepairingDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lmiuix/appcompat/app/ProgressDialog;)V

    .line 1934
    new-instance p2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1935
    sget p1, Lcom/android/settings/R$string;->bt_audiorepair_open_dialog_title:I

    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1936
    sget p1, Lcom/android/settings/R$string;->bt_audiorepair_dialog_open_success:I

    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 1937
    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const p1, 0x104000a    # @android:string/ok

    .line 1938
    invoke-virtual {p2, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1939
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$10;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmAudioRepairDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lmiuix/appcompat/app/AlertDialog;)V

    .line 1940
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$10;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAudioRepairDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/android/settings/bluetooth/DeviceProfilesSettings$10$1;

    invoke-direct {p2, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$10$1;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings$10;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1947
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$10;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAudioRepairDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method
