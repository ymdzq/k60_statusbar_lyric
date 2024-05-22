.class public abstract Lcom/android/systemui/dagger/SettingsLibraryModule_ProvideLocalBluetoothControllerFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideLocalBluetoothController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 4

    .line 1
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2
    const-class v1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 4
    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 7
    if-nez v2, :cond_0

    .line 9
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 11
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    new-instance v3, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 17
    invoke-direct {v3, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    .line 19
    sput-object v3, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 22
    :cond_0
    sget-object v2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v1

    .line 26
    if-nez v2, :cond_1

    .line 27
    const/4 p0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 31
    invoke-direct {v1, v2, p0, p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V

    .line 33
    move-object p0, v1

    .line 36
    :goto_0
    return-object p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v1

    .line 39
    throw p0
    .line 40
.end method
