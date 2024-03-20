.class public final Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;


# instance fields
.field public final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mAdapterHandler:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter$AdapterHandler;

.field public mLastTimeOperate:J

.field public mNewState:I

.field public mPreState:I

.field public mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field public mState:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/high16 v0, -0x80000000

    .line 5
    iput v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 7
    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mLastTimeOperate:J

    .line 11
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mPreState:I

    .line 14
    iput v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mNewState:I

    .line 16
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 18
    new-instance p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter$AdapterHandler;

    .line 20
    invoke-direct {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter$AdapterHandler;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapterHandler:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter$AdapterHandler;

    .line 25
    return-void
    .line 27
.end method

.method public static getBluetoothRestrictState(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    move-result-object p0

    .line 8
    const-string v1, "bluetooth_restricte_state"

    .line 9
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result p0

    .line 14
    const-string v1, "getBluetoothRestrictState enable = "

    .line 15
    const-string v2, "LocalBluetoothAdapter"

    .line 17
    invoke-static {v1, p0, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    move p0, v0

    .line 23
    :goto_0
    const/4 v1, 0x1

    .line 24
    if-ne p0, v1, :cond_1

    .line 25
    move v0, v1

    .line 27
    :cond_1
    return v0
    .line 28
.end method

.method public static isSupportBluetoothRestrict(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    move-result-object p0

    .line 8
    const-string v1, "enable_bluetooth_restricte"

    .line 9
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result p0

    .line 14
    const-string v1, "isSupportBluetoothRestrict = "

    .line 15
    const-string v2, "LocalBluetoothAdapter"

    .line 17
    invoke-static {v1, p0, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    move p0, v0

    .line 23
    :goto_0
    const/4 v1, 0x1

    .line 24
    if-ne p0, v1, :cond_1

    .line 25
    move v0, v1

    .line 27
    :cond_1
    return v0
    .line 28
.end method


# virtual methods
.method public final disConeectAllDevices(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 2
    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 6
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 8
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 10
    move-result-object p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 16
    move-result v0

    .line 19
    if-lez v0, :cond_1

    .line 20
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p0

    .line 25
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 36
    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 38
    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    const-string v2, "disConeectAllDevices   = "

    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->toString()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v2, "  cachedDevice.getConnectionState() = "

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 63
    move-result v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 73
    const-string v2, "LocalBluetoothAdapter"

    .line 74
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 79
    move-result v1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 85
    goto :goto_0

    .line 88
    :cond_1
    return-void
    .line 89
.end method

.method public final sendRestrictStateChanged(IILandroid/content/Context;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapterHandler:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter$AdapterHandler;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v1

    .line 7
    const-string/jumbo v3, "sendRestrictStateChanged Change: "

    .line 8
    const-string v4, "mLastTimeOperate: "

    .line 11
    invoke-static {v3, p2, v4}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v3

    .line 16
    iget-wide v4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mLastTimeOperate:J

    .line 17
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    const-string v4, "curTime: "

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 33
    const-string v4, "LocalBluetoothAdapter"

    .line 34
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/16 v3, 0x14

    .line 39
    :try_start_0
    invoke-virtual {v0, v3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 41
    move-result-object v4

    .line 44
    iput-object p3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    iget-wide v5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mLastTimeOperate:J

    .line 47
    sub-long v7, v1, v5

    .line 49
    const-wide/16 v9, 0x0

    .line 51
    cmp-long p3, v5, v9

    .line 53
    if-lez p3, :cond_3

    .line 55
    const-wide/16 v5, 0x5dc

    .line 57
    cmp-long p3, v7, v5

    .line 59
    if-ltz p3, :cond_0

    .line 61
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 64
    move-result p3

    .line 67
    if-eqz p3, :cond_2

    .line 68
    iget p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mPreState:I

    .line 70
    if-ne p3, p1, :cond_1

    .line 72
    iget p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mNewState:I

    .line 74
    if-ne p3, p2, :cond_1

    .line 76
    return-void

    .line 78
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    :cond_2
    sub-long/2addr v5, v7

    .line 82
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 83
    goto :goto_1

    .line 86
    :cond_3
    :goto_0
    invoke-virtual {v0, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 87
    :goto_1
    iput-wide v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mLastTimeOperate:J

    .line 90
    iput p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mPreState:I

    .line 92
    iput p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mNewState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_2

    .line 96
    :catch_0
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    :goto_2
    return-void
    .line 101
.end method

.method public final setBluetoothStateInt(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    iput p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const/16 v0, 0xc

    .line 12
    if-ne p1, v0, :cond_1

    .line 14
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 16
    if-eqz p0, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles()V

    .line 20
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 23
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readPairedDevices()V

    .line 25
    :cond_1
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1
    .line 31
.end method
