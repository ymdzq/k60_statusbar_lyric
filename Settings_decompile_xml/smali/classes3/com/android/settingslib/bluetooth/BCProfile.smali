.class public Lcom/android/settingslib/bluetooth/BCProfile;
.super Ljava/lang/Object;
.source "BCProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/BCProfile$BassclientServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "BCProfile"

.field private static final ORDINAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BCProfile"

.field private static V:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothSyncHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmProfileManager(Lcom/android/settingslib/bluetooth/BCProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsProfileReady(Lcom/android/settingslib/bluetooth/BCProfile;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mIsProfileReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/android/settingslib/bluetooth/BCProfile;Landroid/bluetooth/BluetoothSyncHelper;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 130
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 131
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/bluetooth/BCProfile$BassclientServiceListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/bluetooth/BCProfile$BassclientServiceListener;-><init>(Lcom/android/settingslib/bluetooth/BCProfile;Lcom/android/settingslib/bluetooth/BCProfile$BassclientServiceListener-IA;)V

    const/16 p0, 0x23

    invoke-virtual {p2, p1, p3, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private getDevicesByStates([I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    if-nez p0, :cond_0

    .line 181
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 183
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static isBASeeker(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    if-eqz p0, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "0000184F-0000-1000-8000-00805F9B34FB"

    .line 292
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 293
    invoke-static {}, Lcom/android/settingslib/bluetooth/BCProfile;->isBCSupported()Z

    move-result v1

    const-string v2, "BCProfile"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    .line 295
    array-length v1, p0

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v5, p0, v3

    .line 296
    invoke-virtual {v5, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "SD uuid present"

    .line 297
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v4

    .line 303
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isBASeeker returns:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method static isBCSupported()Z
    .locals 3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BassClientProfile: isBCSupported returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BCProfile"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public accessProfileEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BCProfile Connect to  device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BCProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 189
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BCProfile disonnect to  device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BCProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 196
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothSyncHelper;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 199
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method protected finalize()V
    .locals 4

    const-string v0, "finalize()"

    const-string v1, "BCProfile"

    .line 267
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    if-eqz v0, :cond_0

    .line 270
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    const/16 v3, 0x23

    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Error cleaning up BAss client proxy"

    .line 274
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getBSAManager(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    if-nez p0, :cond_0

    const-string p0, "BCProfile"

    const-string p1, "getBroadcastAudioScanAssistManager: service is null"

    .line 242
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 245
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothSyncHelper;->getBleBroadcastAudioScanAssistManager(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object p0

    return-object p0
.end method

.method public getConnectableDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 172
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/BCProfile;->getDevicesByStates([I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    .line 156
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/BCProfile;->getDevicesByStates([I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 0
    const/16 p0, 0x64

    return p0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 206
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 0
    const p0, 0x1080352    # @android:drawable/ic_btn_search_go

    return p0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 236
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_bc:I

    return p0
.end method

.method public getOrdinal()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 211
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getProfileId()I
    .locals 0

    .line 0
    const/16 p0, 0x23

    return p0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/BCProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    .line 258
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getConnectionStateSummary(I)I

    move-result p0

    return p0

    .line 255
    :cond_0
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_bc_profile_summary_connected:I

    return p0

    .line 252
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_bc_profile_summary_use_for:I

    return p0
.end method

.method public isAutoConnectable()Z
    .locals 2

    .line 142
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string p0, "BCProfile"

    const-string v1, "isAutoConnectable return false"

    .line 143
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 114
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 117
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isProfileReady()Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BCProfile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BCProfile"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothSyncHelper;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 103
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothSyncHelper;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothSyncHelper;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 217
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSyncHelper;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-eq p2, v0, :cond_2

    .line 219
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BCProfile;->mService:Landroid/bluetooth/BluetoothSyncHelper;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothSyncHelper;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    .line 223
    invoke-virtual {v0, p1, p0}, Landroid/bluetooth/BluetoothSyncHelper;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "BCProfile"

    return-object p0
.end method
