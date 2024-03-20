.class public final Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# instance fields
.field public final mCallingPackage:Ljava/lang/String;

.field public final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field public final mGroupCallback:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;

.field public mIsProfileReady:Z

.field public final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field public mService:Landroid/bluetooth/BluetoothDeviceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;-><init>(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)V

    .line 7
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mGroupCallback:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;

    .line 10
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 12
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 14
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 19
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mCallingPackage:Ljava/lang/String;

    .line 20
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 22
    move-result-object p2

    .line 25
    new-instance p3, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;

    .line 26
    invoke-direct {p3, p0}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;-><init>(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)V

    .line 28
    const/16 p0, 0x20

    .line 31
    invoke-virtual {p2, p1, p3, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 33
    return-void
    .line 36
.end method


# virtual methods
.method public final accessProfileEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final finalize()V
    .locals 4

    .line 1
    const-string v0, "finalize()"

    .line 2
    const-string v1, "DeviceGroupClientProfile"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mService:Landroid/bluetooth/BluetoothDeviceGroup;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 13
    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mService:Landroid/bluetooth/BluetoothDeviceGroup;

    .line 17
    const/16 v3, 0x20

    .line 19
    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 21
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mService:Landroid/bluetooth/BluetoothDeviceGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    const-string v0, "Error cleaning up BluetoothDeviceGroup proxy Object"

    .line 29
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    :cond_0
    :goto_0
    return-void
    .line 34
.end method

.method public final getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getProfileId()I
    .locals 0

    .line 1
    const/16 p0, 0x20

    .line 2
    return p0
    .line 4
.end method

.method public final isProfileReady()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mIsProfileReady:Z

    .line 2
    return p0
    .line 4
.end method

.method public final setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "DeviceGroup Client"

    .line 2
    return-object p0
    .line 4
.end method
