.class Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$3;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "MiuiSecurityBluetoothMatchDeviceFragment"

    .line 254
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 255
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 256
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$3;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v2}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "android.bluetooth.device.extra.BOND_STATE"

    const/16 v2, 0xa

    .line 258
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v1, 0xb

    if-eq p2, v1, :cond_3

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eq p2, v1, :cond_1

    .line 275
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$3;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    iput-boolean v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->bonding:Z

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    .line 262
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$3;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    iput-boolean v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->bonding:Z

    .line 263
    iget-boolean p2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->isOld:Z

    if-nez p2, :cond_2

    .line 264
    invoke-static {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$msetKeyToDevice(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    .line 265
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onReceive:BOND_BONDED: calling connectGatt device="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 280
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handle bond failed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
