.class Lcom/android/settings/bluetooth/GattProfile$2;
.super Ljava/lang/Object;
.source "GattProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/GattProfile;->getBondDevices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/GattProfile;

.field final synthetic val$bd:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/GattProfile;Landroid/bluetooth/BluetoothDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/android/settings/bluetooth/GattProfile$2;->this$0:Lcom/android/settings/bluetooth/GattProfile;

    iput-object p2, p0, Lcom/android/settings/bluetooth/GattProfile$2;->val$bd:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/android/settings/bluetooth/GattProfile$2;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/settings/bluetooth/GattProfile$2;->this$0:Lcom/android/settings/bluetooth/GattProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/GattProfile$2;->val$bd:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/GattProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/GattProfile$2;->this$0:Lcom/android/settings/bluetooth/GattProfile;

    invoke-static {v0}, Lcom/android/settings/bluetooth/GattProfile;->-$$Nest$fgetmDeviceManager(Lcom/android/settings/bluetooth/GattProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/GattProfile$2;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_1
    return-void
.end method
