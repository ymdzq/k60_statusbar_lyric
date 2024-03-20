.class Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;
.super Landroid/bluetooth/BluetoothGroupCallback;
.source "DeviceGroupClientProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGroupCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupDiscoveryStatusChanged(III)V
    .locals 2

    const-string v0, "DeviceGroupClientProfile"

    const-string v1, "onGroupDiscoveryStatusChanged()"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->-$$Nest$fgetmProfileManager(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchGroupDiscoveryStatusChanged(III)V

    return-void
.end method

.method public onNewGroupFound(ILandroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    .locals 2

    const-string v0, "onNewGroupFound()"

    const-string v1, "DeviceGroupClientProfile"

    .line 102
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 109
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->-$$Nest$fgetmProfileManager(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p2

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p2, v0, p1, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchNewGroupFound(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;ILjava/util/UUID;)V

    const-string p2, "Start Group Discovery for Audio capable device"

    .line 111
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->-$$Nest$fgetmService(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)Landroid/bluetooth/BluetoothDeviceGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceGroup;->startGroupDiscovery(I)Z

    return-void
.end method
