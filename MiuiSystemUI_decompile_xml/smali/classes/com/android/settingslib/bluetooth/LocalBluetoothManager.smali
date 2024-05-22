.class public final Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# instance fields
.field public final mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field public final mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

.field public final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field public final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    move-result-object p2

    .line 8
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 9
    new-instance v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 11
    invoke-direct {v6, p2, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 13
    iput-object v6, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 16
    new-instance v7, Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 18
    move-object v0, v7

    .line 20
    move-object v1, p1

    .line 21
    move-object v2, v6

    .line 22
    move-object v3, p2

    .line 23
    move-object v4, p3

    .line 24
    move-object v5, p4

    .line 25
    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V

    .line 26
    iput-object v7, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 29
    new-instance p3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 31
    invoke-direct {p3, p2, p1, v6, v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    .line 33
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 36
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles()V

    .line 38
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readPairedDevices()V

    .line 41
    return-void
    .line 44
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 4

    .line 1
    const-class v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 5
    if-nez v1, :cond_2

    .line 7
    const-class v1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 9
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    sget-object v2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 12
    if-nez v2, :cond_0

    .line 14
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 16
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    new-instance v3, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 22
    invoke-direct {v3, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    .line 24
    sput-object v3, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 27
    :cond_0
    sget-object v2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    const/4 v1, 0x0

    .line 32
    if-nez v2, :cond_1

    .line 33
    monitor-exit v0

    .line 35
    return-object v1

    .line 36
    :cond_1
    :try_start_3
    new-instance v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 37
    invoke-direct {v3, v2, p0, v1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V

    .line 39
    sput-object v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 42
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v1

    .line 46
    throw p0

    .line 47
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    monitor-exit v0

    .line 50
    return-object p0

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    monitor-exit v0

    .line 53
    throw p0
    .line 54
.end method
