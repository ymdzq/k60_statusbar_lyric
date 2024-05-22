.class public final Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;
.super Landroid/bluetooth/BluetoothGroupCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    .line 2
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGroupCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onGroupDiscoveryStatusChanged(III)V
    .locals 0

    .line 1
    const-string p1, "DeviceGroupClientProfile"

    .line 2
    const-string p2, "onGroupDiscoveryStatusChanged()"

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    .line 9
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 11
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 13
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 15
    monitor-enter p1

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 18
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result p2

    .line 29
    if-eqz p2, :cond_0

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object p2

    .line 35
    check-cast p2, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    monitor-exit p1

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
    .line 46
.end method

.method public final onNewGroupFound(ILandroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    .locals 1

    .line 1
    const-string p3, "DeviceGroupClientProfile"

    .line 2
    const-string v0, "onNewGroupFound()"

    .line 4
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    .line 9
    iget-object p3, p3, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 11
    invoke-virtual {p3, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 13
    move-result-object p3

    .line 16
    if-nez p3, :cond_0

    .line 17
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    .line 19
    iget-object p3, p3, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 21
    invoke-virtual {p3, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 23
    move-result-object p3

    .line 26
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    .line 27
    iget-object p2, p2, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 29
    iget-object p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 31
    iget-object v0, p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 33
    monitor-enter v0

    .line 35
    :try_start_0
    invoke-static {p1, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->updateCacheDeviceInfo(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 36
    iget-object p2, p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 39
    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p2

    .line 46
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result p3

    .line 50
    if-eqz p3, :cond_1

    .line 51
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object p3

    .line 56
    check-cast p3, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 57
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    goto :goto_0

    .line 62
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const-string p2, "DeviceGroupClientProfile"

    .line 64
    const-string p3, "Start Group Discovery for Audio capable device"

    .line 66
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    .line 71
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mService:Landroid/bluetooth/BluetoothDeviceGroup;

    .line 73
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceGroup;->startGroupDiscovery(I)Z

    .line 75
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    throw p0
    .line 81
.end method
