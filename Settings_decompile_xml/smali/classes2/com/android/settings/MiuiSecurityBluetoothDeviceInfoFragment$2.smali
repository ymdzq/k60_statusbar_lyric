.class Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$2;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothDeviceInfoFragment.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$2;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(I)V
    .locals 3

    .line 124
    invoke-static {}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectionState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 127
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$2;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->-$$Nest$fgetmUnlockProfile(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$2;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->-$$Nest$fgetmUnlockListener(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->registerUnlockListener(Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;)V

    .line 128
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$2;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->-$$Nest$fputmIsConnected(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;Z)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$2;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->-$$Nest$fputmIsConnected(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;Z)V

    :goto_0
    return-void
.end method
