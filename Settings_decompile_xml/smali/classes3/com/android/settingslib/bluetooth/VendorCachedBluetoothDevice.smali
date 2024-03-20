.class public Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;
.super Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
.source "VendorCachedBluetoothDevice.java"


# static fields
.field private static mVcbdEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBleBroadcastReceiverStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BleBroadcastSourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

.field private mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

.field private mScanRes:Landroid/bluetooth/le/ScanResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mVcbdEntries:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 1

    .line 101
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mScanRes:Landroid/bluetooth/le/ScanResult;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mBleBroadcastReceiverStates:Ljava/util/Map;

    .line 79
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 143
    new-instance p1, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice$1;-><init>(Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;)V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    .line 102
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 103
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mBleBroadcastReceiverStates:Ljava/util/Map;

    .line 104
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->InitializeSAManager()V

    return-void
.end method

.method public static getVendorCachedBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;
    .locals 2

    .line 87
    sget-object v0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mVcbdEntries:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 92
    new-instance v0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;-><init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    const-string p1, "VendorCachedBluetoothDevice"

    const-string v1, "getVendorCachedBluetoothDevice: created new Instance"

    .line 94
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object p1, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mVcbdEntries:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method InitializeSAManager()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getBCProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/BCProfile;

    .line 182
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/bluetooth/BCProfile;->getBSAManager(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    return-void
.end method

.method cleanUpSAMananger()V
    .locals 1

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    .line 188
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mBleBroadcastReceiverStates:Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 189
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public getAllBleBroadcastreceiverStates()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BleBroadcastSourceInfo;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    const/4 v1, 0x0

    const-string v2, "VendorCachedBluetoothDevice"

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->InitializeSAManager()V

    .line 228
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-nez v0, :cond_0

    const-string p0, "SA Manager cant be initialized"

    .line 229
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->getAllBroadcastSourceInformation()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "getAllBleBroadcastreceiverStates: no src Info"

    .line 235
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 238
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 240
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 241
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getNumberOfBleBroadcastReceiverStates()I
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->InitializeSAManager()V

    .line 211
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-nez v0, :cond_0

    return v1

    .line 215
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->getAllBroadcastSourceInformation()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 217
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 220
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNumberOfBleBroadcastReceiverStates:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VendorCachedBluetoothDevice"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getScanAssistManager()Landroid/bluetooth/BleBroadcastAudioScanAssistManager;
    .locals 0

    .line 176
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->InitializeSAManager()V

    .line 177
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    return-object p0
.end method

.method public getScanResult()Landroid/bluetooth/le/ScanResult;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mScanRes:Landroid/bluetooth/le/ScanResult;

    return-object p0
.end method

.method public isBroadcastAudioSynced()Z
    .locals 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    const-string v1, "VendorCachedBluetoothDevice"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->InitializeSAManager()V

    .line 264
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-nez v0, :cond_0

    const-string p0, "SA Manager cant be initialized"

    .line 265
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 269
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->getAllBroadcastSourceInformation()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "isBroadcastAudioSynced: no src Info"

    .line 271
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    move v0, v2

    .line 274
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 275
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 276
    invoke-virtual {v3}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAudioSyncState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "isAudioSynced: false"

    .line 281
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method onBroadcastReceiverStateChanged(Landroid/bluetooth/BleBroadcastSourceInfo;II)V
    .locals 0

    .line 249
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->updateBroadcastreceiverStates(Landroid/bluetooth/BleBroadcastSourceInfo;II)V

    return-void
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProfileStateChanged: profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newProfileState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VendorCachedBluetoothDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    instance-of p1, p1, Lcom/android/settingslib/bluetooth/BCProfile;

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->cleanUpSAMananger()V

    .line 139
    invoke-super {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    :cond_0
    return-void
.end method

.method public setScanResult(Landroid/bluetooth/le/ScanResult;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mScanRes:Landroid/bluetooth/le/ScanResult;

    return-void
.end method

.method updateBroadcastreceiverStates(Landroid/bluetooth/BleBroadcastSourceInfo;II)V
    .locals 2

    .line 195
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateBroadcastreceiverStates index: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "VendorCachedBluetoothDevice"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mBleBroadcastReceiverStates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/bluetooth/BleBroadcastSourceInfo;

    if-eqz p3, :cond_0

    const-string/jumbo p3, "updateBroadcastreceiverStates: Replacing receiver State Information"

    .line 198
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mBleBroadcastReceiverStates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 201
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBroadcastreceiverStates: New entry for index: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->mBleBroadcastReceiverStates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :goto_0
    invoke-super {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    return-void
.end method
