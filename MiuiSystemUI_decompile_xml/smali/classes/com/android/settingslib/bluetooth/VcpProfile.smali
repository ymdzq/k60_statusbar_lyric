.class public final Lcom/android/settingslib/bluetooth/VcpProfile;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# instance fields
.field public mIsProfileReady:Z

.field public final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field public mService:Landroid/bluetooth/BluetoothVcp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 7
    move-result-object p2

    .line 10
    new-instance v0, Lcom/android/settingslib/bluetooth/VcpProfile$VcpServiceListener;

    .line 11
    invoke-direct {v0, p0}, Lcom/android/settingslib/bluetooth/VcpProfile$VcpServiceListener;-><init>(Lcom/android/settingslib/bluetooth/VcpProfile;)V

    .line 13
    const/16 p0, 0x22

    .line 16
    invoke-virtual {p2, p1, v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 18
    return-void
    .line 21
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
    const-string v1, "VcpProfile"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mService:Landroid/bluetooth/BluetoothVcp;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 13
    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mService:Landroid/bluetooth/BluetoothVcp;

    .line 17
    const/16 v3, 0x22

    .line 19
    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 21
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mService:Landroid/bluetooth/BluetoothVcp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    const-string v0, "Error cleaning up Vcp proxy"

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
    const/4 p0, -0x1

    .line 2
    return p0
    .line 3
.end method

.method public final getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mService:Landroid/bluetooth/BluetoothVcp;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothVcp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
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
    const/16 p0, 0x22

    .line 2
    return p0
    .line 4
.end method

.method public final isProfileReady()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mIsProfileReady:Z

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
    const-string p0, "VCP"

    .line 2
    return-object p0
    .line 4
.end method
