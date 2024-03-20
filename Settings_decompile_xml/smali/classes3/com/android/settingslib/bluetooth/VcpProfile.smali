.class public Lcom/android/settingslib/bluetooth/VcpProfile;
.super Ljava/lang/Object;
.source "VcpProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/VcpProfile$VcpServiceListener;
    }
.end annotation


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothVcp;


# direct methods
.method static bridge synthetic -$$Nest$fgetmProfileManager(Lcom/android/settingslib/bluetooth/VcpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsProfileReady(Lcom/android/settingslib/bluetooth/VcpProfile;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mIsProfileReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/android/settingslib/bluetooth/VcpProfile;Landroid/bluetooth/BluetoothVcp;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mService:Landroid/bluetooth/BluetoothVcp;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 92
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 93
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 94
    new-instance p3, Lcom/android/settingslib/bluetooth/VcpProfile$VcpServiceListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/bluetooth/VcpProfile$VcpServiceListener;-><init>(Lcom/android/settingslib/bluetooth/VcpProfile;Lcom/android/settingslib/bluetooth/VcpProfile$VcpServiceListener-IA;)V

    const/16 p0, 0x22

    invoke-virtual {p2, p1, p3, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method


# virtual methods
.method public accessProfileEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected finalize()V
    .locals 4

    const-string v0, "finalize()"

    const-string v1, "VcpProfile"

    .line 198
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mService:Landroid/bluetooth/BluetoothVcp;

    if-eqz v0, :cond_0

    .line 201
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mService:Landroid/bluetooth/BluetoothVcp;

    const/16 v3, 0x22

    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mService:Landroid/bluetooth/BluetoothVcp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Error cleaning up Vcp proxy"

    .line 205
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getAbsoluteVolume(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mService:Landroid/bluetooth/BluetoothVcp;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothVcp;->getAbsoluteVolume(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getConnectionMode(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mService:Landroid/bluetooth/BluetoothVcp;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 117
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothVcp;->getConnectionMode(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mService:Landroid/bluetooth/BluetoothVcp;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothVcp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 186
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_vcp:I

    return p0
.end method

.method public getOrdinal()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getProfileId()I
    .locals 0

    .line 0
    const/16 p0, 0x22

    return p0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isProfileReady()Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setAbsoluteVolume(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mService:Landroid/bluetooth/BluetoothVcp;

    if-nez p0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothVcp;->setAbsoluteVolume(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "VCP"

    return-object p0
.end method
