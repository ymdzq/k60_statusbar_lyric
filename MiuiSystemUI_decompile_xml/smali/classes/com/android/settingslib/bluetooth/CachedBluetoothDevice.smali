.class public final Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mCallbacks:Ljava/util/Collection;

.field public mConnectAttempted:J

.field public final mContext:Landroid/content/Context;

.field public mDevice:Landroid/bluetooth/BluetoothDevice;

.field mDrawableCache:Landroid/util/LruCache;

.field public mGroupId:I

.field public final mHandler:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$1;

.field public mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

.field public mIsA2dpProfileConnectedFail:Z

.field public mIsActiveDeviceA2dp:Z

.field public mIsActiveDeviceHeadset:Z

.field public mIsActiveDeviceHearingAid:Z

.field public mIsActiveDeviceLeAudio:Z

.field public mIsGroupDevice:Z

.field public mIsHeadsetProfileConnectedFail:Z

.field public mIsHearingAidProfileConnectedFail:Z

.field public mIsLeAudioEnabled:Z

.field public mIsLeAudioProfileConnectedFail:Z

.field public mJustDiscovered:Z

.field public final mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mLocalNapRoleConnected:Z

.field public final mMemberDevices:Ljava/util/Set;

.field public final mProfileLock:Ljava/lang/Object;

.field public final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field public final mProfiles:Ljava/util/Collection;

.field public mQGroupId:I

.field public final mRemovedProfiles:Ljava/util/Collection;

.field public mRssi:S

.field public mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public mTwspBatteryLevel:I

.field public mTwspBatteryState:I

.field public mType:I

.field public mUnpairing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/Collection;

    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/Collection;

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 31
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsA2dpProfileConnectedFail:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsHeadsetProfileConnectedFail:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsHearingAidProfileConnectedFail:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsLeAudioProfileConnectedFail:Z

    .line 48
    new-instance v1, Ljava/util/HashSet;

    .line 50
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 55
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsGroupDevice:Z

    .line 57
    const/4 v1, -0x1

    .line 59
    iput v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mType:I

    .line 60
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsLeAudioEnabled:Z

    .line 62
    new-instance v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$1;

    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 66
    move-result-object v3

    .line 69
    invoke-direct {v2, p0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$1;-><init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/os/Looper;)V

    .line 70
    iput-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHandler:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$1;

    .line 73
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 77
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 81
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 83
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 85
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 87
    iput v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 90
    iput v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mQGroupId:I

    .line 92
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 94
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    .line 98
    move-result-wide p1

    .line 101
    const-wide/16 v2, 0x400

    .line 102
    div-long/2addr p1, v2

    .line 104
    long-to-int p1, p1

    .line 105
    div-int/lit8 p1, p1, 0x8

    .line 106
    new-instance p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$2;

    .line 108
    invoke-direct {p2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$2;-><init>(I)V

    .line 110
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDrawableCache:Landroid/util/LruCache;

    .line 113
    iput v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mTwspBatteryState:I

    .line 115
    iput v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mTwspBatteryLevel:I

    .line 117
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mUnpairing:Z

    .line 119
    return-void
    .line 121
.end method


# virtual methods
.method public final addMemberDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    const-string v1, " addMemberDevice = "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    const-string v1, "CachedBluetoothDevice"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 27
    check-cast p0, Ljava/util/HashSet;

    .line 29
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
    .line 34
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 8
    move-result v1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    .line 16
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/16 v3, 0xc

    .line 22
    if-ne v0, v3, :cond_1

    .line 24
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v2

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    .line 29
    move-result v4

    .line 32
    if-ne v4, v3, :cond_2

    .line 33
    goto :goto_1

    .line 35
    :cond_2
    move v1, v2

    .line 36
    :goto_1
    sub-int/2addr v0, v1

    .line 37
    if-eqz v0, :cond_3

    .line 38
    goto :goto_2

    .line 40
    :cond_3
    iget-boolean v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 41
    iget-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 43
    sub-int/2addr v0, v1

    .line 45
    if-eqz v0, :cond_4

    .line 46
    goto :goto_2

    .line 48
    :cond_4
    iget-short v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 49
    iget-short v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 51
    sub-int/2addr v0, v1

    .line 53
    if-eqz v0, :cond_5

    .line 54
    goto :goto_2

    .line 56
    :cond_5
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 65
    move-result v0

    .line 68
    :goto_2
    return v0
    .line 69
.end method

.method public final connect$1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()V

    .line 10
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    return-void

    .line 18
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "connect: mConnectAttempted = "

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget-wide v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    const-string v1, "CachedBluetoothDevice"

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectDevice()V

    .line 46
    return-void
    .line 49
.end method

.method public final connectDevice()V
    .locals 5

    .line 1
    const-string v0, "connect "

    .line 2
    const-string v1, "No profiles. Maybe we will connect later for device "

    .line 4
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    .line 6
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/Collection;

    .line 9
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 13
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    const-string v0, "CachedBluetoothDevice"

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 26
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    monitor-exit v2

    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 40
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isBondingInitiatedLocally()Z

    .line 42
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    const-string v1, "CachedBluetoothDevice"

    .line 48
    const-string/jumbo v3, "reset BondingInitiatedLocally flag"

    .line 50
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 56
    const/4 v3, 0x0

    .line 58
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->setBondingInitiatedLocally(Z)V

    .line 59
    :cond_1
    const-string v1, "CachedBluetoothDevice"

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 75
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 79
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->connect()I

    .line 81
    iget v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 84
    const/4 v1, -0x1

    .line 86
    if-eq v0, v1, :cond_2

    .line 87
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 89
    check-cast p0, Ljava/util/HashSet;

    .line 91
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object p0

    .line 96
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    move-result v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object v0

    .line 106
    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 107
    const-string v1, "CachedBluetoothDevice"

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    const-string v4, "connect the member:"

    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v3

    .line 127
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect$1()V

    .line 131
    goto :goto_0

    .line 134
    :cond_2
    monitor-exit v2

    .line 135
    return-void

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    throw p0
    .line 139
.end method

.method public final disconnect()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 5
    const/4 v2, -0x1

    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 10
    check-cast v1, Ljava/util/HashSet;

    .line 12
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 28
    const-string v3, "CachedBluetoothDevice"

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v5, "Disconnect the member:"

    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 48
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 52
    goto :goto_0

    .line 55
    :cond_0
    const-string v1, "CachedBluetoothDevice"

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v3, "Disconnect "

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 74
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 78
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->disconnect()I

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 84
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    .line 86
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    .line 90
    move-result v1

    .line 93
    if-eqz v1, :cond_1

    .line 94
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 96
    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 99
    :cond_1
    return-void

    .line 102
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    throw p0

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    goto :goto_1
    .line 106
.end method

.method public final dispatchAttributesChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;

    .line 18
    invoke-interface {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 9
    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 11
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 13
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 20
    return p0
    .line 21
.end method

.method public final fetchActiveDevices()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 2
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 8
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 17
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 20
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 22
    if-eqz v0, :cond_3

    .line 24
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 26
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 28
    if-nez v0, :cond_1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    .line 34
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    move-result v2

    .line 41
    if-lez v2, :cond_2

    .line 42
    const/4 v2, 0x0

    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 48
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 49
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 52
    :goto_1
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v0

    .line 56
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 59
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 61
    if-eqz v0, :cond_5

    .line 63
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 65
    if-nez v0, :cond_4

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    goto :goto_2

    .line 74
    :cond_4
    const/16 v1, 0x15

    .line 75
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    .line 77
    move-result-object v0

    .line 80
    :goto_2
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 83
    move-result v0

    .line 86
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 89
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 91
    if-eqz v0, :cond_7

    .line 93
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LeAudioProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 95
    if-nez v0, :cond_6

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    .line 99
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    goto :goto_3

    .line 104
    :cond_6
    const/16 v1, 0x16

    .line 105
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    .line 107
    move-result-object v0

    .line 110
    :goto_3
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 113
    move-result v0

    .line 116
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    .line 117
    :cond_7
    return-void
    .line 119
.end method

.method public final fillData()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->updateProfiles()V

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchActiveDevices()V

    .line 5
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 8
    const-string v1, "bluetooth_phonebook_permission"

    .line 10
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 13
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 17
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 22
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 23
    move-result v1

    .line 26
    const/4 v3, 0x2

    .line 27
    const/4 v4, 0x1

    .line 28
    if-nez v1, :cond_0

    .line 29
    goto :goto_1

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 32
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    .line 34
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 40
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 45
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 46
    move-result v1

    .line 49
    if-ne v1, v4, :cond_1

    .line 50
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 52
    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 54
    goto :goto_0

    .line 57
    :cond_1
    if-ne v1, v3, :cond_2

    .line 58
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 60
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 62
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 65
    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 69
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 74
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 81
    const-string v1, "bluetooth_message_permission"

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 85
    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 89
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 94
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 95
    move-result v1

    .line 98
    if-nez v1, :cond_3

    .line 99
    goto :goto_3

    .line 101
    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 102
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    .line 104
    move-result v1

    .line 107
    if-nez v1, :cond_5

    .line 108
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 110
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 115
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 116
    move-result v1

    .line 119
    if-ne v1, v4, :cond_4

    .line 120
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 122
    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 124
    goto :goto_2

    .line 127
    :cond_4
    if-ne v1, v3, :cond_5

    .line 128
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 130
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 132
    :cond_5
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 135
    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 139
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 141
    move-result-object v1

    .line 144
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    :goto_3
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 151
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 153
    if-eqz v0, :cond_6

    .line 155
    move v2, v4

    .line 157
    :cond_6
    iput-boolean v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsLeAudioEnabled:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 160
    return-void
    .line 163
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getBondState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getBtClass()Landroid/bluetooth/BluetoothClass;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getConnectableProfiles()Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    const-string v1, "com.android.settingslib.bluetooth.BCProfile"

    .line 7
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    const-string v1, "CachedBluetoothDevice"

    .line 14
    const-string v2, "no BCProfileClass: exists"

    .line 16
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 v1, 0x0

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    .line 22
    monitor-enter v2

    .line 24
    :try_start_1
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/Collection;

    .line 25
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v3

    .line 32
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v4

    .line 36
    if-eqz v4, :cond_3

    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 42
    check-cast v4, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 43
    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 47
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBASeeker()Z

    .line 53
    move-result v5

    .line 56
    if-eqz v5, :cond_1

    .line 57
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_1

    .line 62
    :cond_1
    const-string v4, "CachedBluetoothDevice"

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v6, "BC profile is not enabled for"

    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v5

    .line 83
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    goto :goto_1

    .line 87
    :cond_2
    invoke-interface {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->accessProfileEnabled()Z

    .line 88
    move-result v5

    .line 91
    if-eqz v5, :cond_0

    .line 92
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_1

    .line 97
    :cond_3
    monitor-exit v2

    .line 98
    return-object v0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw p0
    .line 102
.end method

.method public final getConnectionSummary()Ljava/lang/String;
    .locals 15

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "anonymizedAddress="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 9
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " mIsA2dpProfileConnectedFail="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsA2dpProfileConnectedFail:Z

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, " mIsHearingAidProfileConnectedFail="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsHearingAidProfileConnectedFail:Z

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, " mIsLeAudioProfileConnectedFail="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsLeAudioProfileConnectedFail:Z

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, " mIsHeadsetProfileConnectedFail="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsHeadsetProfileConnectedFail:Z

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, " isConnectedSapDevice()="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 63
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settingslib/bluetooth/SapProfile;

    .line 65
    const/4 v2, 0x2

    .line 67
    const/4 v3, 0x1

    .line 68
    const/4 v4, 0x0

    .line 69
    if-eqz v1, :cond_0

    .line 70
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 72
    invoke-virtual {v1, v5}, Lcom/android/settingslib/bluetooth/SapProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    .line 74
    move-result v1

    .line 77
    if-ne v1, v2, :cond_0

    .line 78
    move v1, v3

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    move v1, v4

    .line 82
    :goto_0
    const-string v5, "CachedBluetoothDevice"

    .line 83
    invoke-static {v0, v1, v5}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 85
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsA2dpProfileConnectedFail:Z

    .line 88
    if-nez v0, :cond_4

    .line 90
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsHearingAidProfileConnectedFail:Z

    .line 92
    if-nez v0, :cond_4

    .line 94
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 96
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settingslib/bluetooth/SapProfile;

    .line 98
    if-eqz v0, :cond_1

    .line 100
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 102
    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/SapProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    .line 104
    move-result v0

    .line 107
    if-ne v0, v2, :cond_1

    .line 108
    move v0, v3

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    move v0, v4

    .line 112
    :goto_1
    if-nez v0, :cond_2

    .line 113
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsHeadsetProfileConnectedFail:Z

    .line 115
    if-nez v0, :cond_4

    .line 117
    :cond_2
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsLeAudioProfileConnectedFail:Z

    .line 119
    if-eqz v0, :cond_3

    .line 121
    goto :goto_2

    .line 123
    :cond_3
    move v0, v4

    .line 124
    goto :goto_3

    .line 125
    :cond_4
    :goto_2
    move v0, v3

    .line 126
    :goto_3
    if-eqz v0, :cond_5

    .line 127
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 129
    move-result v0

    .line 132
    if-eqz v0, :cond_5

    .line 133
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 135
    const v0, 0x7f130927    # @string/profile_connect_timeout_subtext 'Problem connecting. Turn device off & back on'

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 140
    move-result-object p0

    .line 143
    goto/16 :goto_18

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    .line 146
    monitor-enter v0

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    .line 149
    move-result-object v1

    .line 152
    check-cast v1, Ljava/util/ArrayList;

    .line 153
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object v1

    .line 158
    move v6, v3

    .line 159
    move v7, v6

    .line 160
    move v8, v7

    .line 161
    move v9, v8

    .line 162
    move v5, v4

    .line 163
    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    move-result v10

    .line 167
    const/4 v11, 0x3

    .line 168
    if-eqz v10, :cond_13

    .line 169
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    move-result-object v10

    .line 174
    check-cast v10, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 175
    invoke-virtual {p0, v10}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    .line 177
    move-result v12

    .line 180
    if-eqz v12, :cond_d

    .line 181
    if-eq v12, v3, :cond_8

    .line 183
    if-eq v12, v2, :cond_7

    .line 185
    if-eq v12, v11, :cond_8

    .line 187
    goto :goto_4

    .line 189
    :cond_7
    move v5, v3

    .line 190
    goto :goto_4

    .line 191
    :cond_8
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 192
    if-eqz v12, :cond_c

    .line 194
    if-eq v12, v3, :cond_b

    .line 196
    if-eq v12, v2, :cond_a

    .line 198
    if-eq v12, v11, :cond_9

    .line 200
    goto :goto_5

    .line 202
    :cond_9
    const v4, 0x7f1301c1    # @string/bluetooth_disconnecting 'Disconnecting…'

    .line 203
    goto :goto_5

    .line 206
    :cond_a
    const v4, 0x7f1301b5    # @string/bluetooth_connected 'Connected%1$s'

    .line 207
    goto :goto_5

    .line 210
    :cond_b
    const v4, 0x7f1301bd    # @string/bluetooth_connecting 'Connecting…'

    .line 211
    goto :goto_5

    .line 214
    :cond_c
    const v4, 0x7f1301c0    # @string/bluetooth_disconnected 'Disconnected'

    .line 215
    :goto_5
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 218
    move-result-object p0

    .line 221
    monitor-exit v0

    .line 222
    goto/16 :goto_18

    .line 223
    :cond_d
    invoke-interface {v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    .line 225
    move-result v11

    .line 228
    if-eqz v11, :cond_6

    .line 229
    instance-of v11, v10, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 231
    if-nez v11, :cond_12

    .line 233
    instance-of v11, v10, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    .line 235
    if-eqz v11, :cond_e

    .line 237
    goto :goto_7

    .line 239
    :cond_e
    instance-of v11, v10, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 240
    if-nez v11, :cond_11

    .line 242
    instance-of v11, v10, Lcom/android/settingslib/bluetooth/HfpClientProfile;

    .line 244
    if-eqz v11, :cond_f

    .line 246
    goto :goto_6

    .line 248
    :cond_f
    instance-of v11, v10, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 249
    if-eqz v11, :cond_10

    .line 251
    move v8, v4

    .line 253
    goto :goto_4

    .line 254
    :cond_10
    instance-of v10, v10, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 255
    if-eqz v10, :cond_6

    .line 257
    move v9, v4

    .line 259
    goto :goto_4

    .line 260
    :cond_11
    :goto_6
    move v7, v4

    .line 261
    goto :goto_4

    .line 262
    :cond_12
    :goto_7
    move v6, v4

    .line 263
    goto :goto_4

    .line 264
    :cond_13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 266
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    .line 268
    move-result v0

    .line 271
    const/4 v1, -0x1

    .line 272
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 273
    if-eqz v0, :cond_15

    .line 275
    iget v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mTwspBatteryState:I

    .line 277
    if-eq v0, v1, :cond_15

    .line 279
    iget v12, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mTwspBatteryLevel:I

    .line 281
    if-eq v12, v1, :cond_15

    .line 283
    const-string v12, "TWSP: "

    .line 285
    if-ne v0, v3, :cond_14

    .line 287
    const-string v0, "Charging, "

    .line 289
    goto :goto_8

    .line 291
    :cond_14
    const-string v0, "Discharging, "

    .line 292
    :goto_8
    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    move-result-object v0

    .line 297
    iget v12, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mTwspBatteryLevel:I

    .line 298
    int-to-double v12, v12

    .line 300
    div-double/2addr v12, v10

    .line 301
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 302
    move-result-object v14

    .line 305
    invoke-virtual {v14, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 306
    move-result-object v12

    .line 309
    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    move-result-object v0

    .line 313
    const-string v12, "CachedBluetoothDevice"

    .line 314
    new-instance v13, Ljava/lang/StringBuilder;

    .line 316
    const-string v14, "UI string"

    .line 318
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    move-result-object v13

    .line 329
    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    goto :goto_9

    .line 333
    :cond_15
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 334
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    .line 336
    move-result v0

    .line 339
    if-le v0, v1, :cond_16

    .line 340
    int-to-double v12, v0

    .line 342
    div-double/2addr v12, v10

    .line 343
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 344
    move-result-object v0

    .line 347
    invoke-virtual {v0, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 348
    move-result-object v0

    .line 351
    goto :goto_9

    .line 352
    :cond_16
    const/4 v0, 0x0

    .line 353
    :goto_9
    const/16 v12, 0xb

    .line 354
    const v13, 0x7f1301d6    # @string/bluetooth_pairing 'Pairing…'

    .line 356
    if-eqz v5, :cond_2e

    .line 359
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 361
    invoke-static {v5}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;)Z

    .line 363
    move-result v5

    .line 366
    if-eqz v5, :cond_17

    .line 367
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 369
    const/16 v5, 0xa

    .line 371
    invoke-static {v1, v5}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getIntMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    .line 373
    move-result v1

    .line 376
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 377
    invoke-static {v5, v12}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getIntMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    .line 379
    move-result v5

    .line 382
    goto :goto_a

    .line 383
    :cond_17
    move v5, v1

    .line 384
    :goto_a
    if-ltz v1, :cond_18

    .line 385
    if-ltz v5, :cond_18

    .line 387
    move v14, v3

    .line 389
    goto :goto_b

    .line 390
    :cond_18
    move v14, v4

    .line 391
    :goto_b
    if-eqz v14, :cond_19

    .line 392
    const v14, 0x7f1301b2    # @string/bluetooth_battery_level_untethered 'L: %1$s battery, R: %2$s battery'

    .line 394
    goto :goto_c

    .line 397
    :cond_19
    if-eqz v0, :cond_1a

    .line 398
    const v14, 0x7f1301b1    # @string/bluetooth_battery_level '%1$s battery'

    .line 400
    goto :goto_c

    .line 403
    :cond_1a
    move v14, v13

    .line 404
    :goto_c
    if-nez v6, :cond_1b

    .line 405
    if-nez v7, :cond_1b

    .line 407
    if-nez v8, :cond_1b

    .line 409
    if-eqz v9, :cond_2f

    .line 411
    :cond_1b
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 413
    const-class v7, Landroid/media/AudioManager;

    .line 415
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 417
    move-result-object v6

    .line 420
    check-cast v6, Landroid/media/AudioManager;

    .line 421
    invoke-virtual {v6}, Landroid/media/AudioManager;->getMode()I

    .line 423
    move-result v6

    .line 426
    if-eq v6, v3, :cond_1d

    .line 427
    if-eq v6, v2, :cond_1d

    .line 429
    const/4 v7, 0x3

    .line 431
    if-ne v6, v7, :cond_1c

    .line 432
    goto :goto_d

    .line 434
    :cond_1c
    move v6, v4

    .line 435
    goto :goto_e

    .line 436
    :cond_1d
    :goto_d
    move v6, v3

    .line 437
    :goto_e
    iget-boolean v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    .line 438
    const v8, 0x7f1301b0    # @string/bluetooth_active_no_battery_level 'Active'

    .line 440
    if-nez v7, :cond_20

    .line 443
    iget-boolean v9, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    .line 445
    if-eqz v9, :cond_1e

    .line 447
    if-nez v6, :cond_20

    .line 449
    :cond_1e
    iget-boolean v9, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    .line 451
    if-eqz v9, :cond_1f

    .line 453
    if-eqz v6, :cond_20

    .line 455
    :cond_1f
    iget-boolean v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    .line 457
    if-eqz v6, :cond_24

    .line 459
    :cond_20
    if-ltz v1, :cond_21

    .line 461
    if-ltz v5, :cond_21

    .line 463
    move v6, v3

    .line 465
    goto :goto_f

    .line 466
    :cond_21
    move v6, v4

    .line 467
    :goto_f
    if-eqz v6, :cond_22

    .line 468
    const v14, 0x7f1301af    # @string/bluetooth_active_battery_level_untethered 'Active, L: %1$s battery, R: %2$s battery'

    .line 470
    goto :goto_10

    .line 473
    :cond_22
    if-eqz v0, :cond_23

    .line 474
    const v14, 0x7f1301ae    # @string/bluetooth_active_battery_level 'Active, %1$s battery'

    .line 476
    goto :goto_10

    .line 479
    :cond_23
    move v14, v8

    .line 480
    :cond_24
    :goto_10
    iget-boolean v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    .line 481
    if-eqz v6, :cond_26

    .line 483
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 485
    iget-object v6, v6, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    .line 487
    if-eqz v6, :cond_25

    .line 489
    iget-object v9, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 491
    invoke-virtual {v6, v9}, Lcom/android/settingslib/bluetooth/HapClientProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    .line 493
    move-result v6

    .line 496
    if-ne v6, v2, :cond_25

    .line 497
    move v6, v3

    .line 499
    goto :goto_11

    .line 500
    :cond_25
    move v6, v4

    .line 501
    :goto_11
    if-eqz v6, :cond_26

    .line 502
    move v6, v3

    .line 504
    goto :goto_12

    .line 505
    :cond_26
    move v6, v4

    .line 506
    :goto_12
    if-nez v7, :cond_27

    .line 507
    if-eqz v6, :cond_2f

    .line 509
    :cond_27
    if-ne v14, v8, :cond_2f

    .line 511
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 513
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 515
    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 517
    move-result-object v6

    .line 520
    new-instance v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$$ExternalSyntheticLambda0;

    .line 521
    invoke-direct {v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$$ExternalSyntheticLambda0;-><init>()V

    .line 523
    invoke-interface {v6, v9}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 526
    move-result v6

    .line 529
    if-eqz v6, :cond_28

    .line 530
    goto :goto_14

    .line 532
    :cond_28
    if-eqz v7, :cond_29

    .line 533
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 535
    move-result v6

    .line 538
    if-eqz v6, :cond_29

    .line 539
    goto :goto_14

    .line 541
    :cond_29
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 542
    if-eqz v6, :cond_2a

    .line 544
    iget v6, v6, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mSide:I

    .line 546
    goto :goto_13

    .line 548
    :cond_2a
    const/4 v6, -0x1

    .line 549
    :goto_13
    if-ne v6, v2, :cond_2b

    .line 550
    :goto_14
    const v14, 0x7f1301c9    # @string/bluetooth_hearing_aid_left_and_right_active 'Active, left and right'

    .line 552
    goto :goto_15

    .line 555
    :cond_2b
    if-nez v6, :cond_2c

    .line 556
    const v14, 0x7f1301c8    # @string/bluetooth_hearing_aid_left_active 'Active, left only'

    .line 558
    goto :goto_15

    .line 561
    :cond_2c
    if-ne v6, v3, :cond_2d

    .line 562
    const v14, 0x7f1301cc    # @string/bluetooth_hearing_aid_right_active 'Active, right only'

    .line 564
    goto :goto_15

    .line 567
    :cond_2d
    move v14, v8

    .line 568
    goto :goto_15

    .line 569
    :cond_2e
    const/4 v1, -0x1

    .line 570
    const/4 v5, -0x1

    .line 571
    move v14, v13

    .line 572
    :cond_2f
    :goto_15
    if-ne v14, v13, :cond_31

    .line 573
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    .line 575
    move-result v2

    .line 578
    if-ne v2, v12, :cond_30

    .line 579
    goto :goto_16

    .line 581
    :cond_30
    const/4 p0, 0x0

    .line 582
    goto :goto_18

    .line 583
    :cond_31
    :goto_16
    if-ltz v1, :cond_32

    .line 584
    if-ltz v5, :cond_32

    .line 586
    goto :goto_17

    .line 588
    :cond_32
    move v3, v4

    .line 589
    :goto_17
    if-eqz v3, :cond_33

    .line 590
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 592
    int-to-double v0, v1

    .line 594
    div-double/2addr v0, v10

    .line 595
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 596
    move-result-object v2

    .line 599
    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 600
    move-result-object v0

    .line 603
    int-to-double v1, v5

    .line 604
    div-double/2addr v1, v10

    .line 605
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 606
    move-result-object v3

    .line 609
    invoke-virtual {v3, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 610
    move-result-object v1

    .line 613
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 614
    move-result-object v0

    .line 617
    invoke-virtual {p0, v14, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 618
    move-result-object p0

    .line 621
    goto :goto_18

    .line 622
    :cond_33
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 623
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 625
    move-result-object v0

    .line 628
    invoke-virtual {p0, v14, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 629
    move-result-object p0

    .line 632
    :goto_18
    return-object p0

    .line 633
    :catchall_0
    move-exception p0

    .line 634
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    throw p0
    .line 636
.end method

.method public final getHiSyncId()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-wide v0, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mHiSyncId:J

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const-wide/16 v0, 0x0

    .line 9
    :goto_0
    return-wide v0
    .line 11
.end method

.method public final getMaxConnectionState()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    .line 5
    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 25
    check-cast v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 26
    invoke-virtual {p0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    .line 28
    move-result v3

    .line 31
    if-le v3, v2, :cond_0

    .line 32
    move v2, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    return v2

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
    .line 40
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    :cond_0
    return-object v0
    .line 18
.end method

.method public final getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4
    invoke-interface {p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    .line 6
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public final getProfiles()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/Collection;

    .line 4
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public isActiveDevice(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    const/16 v0, 0x15

    .line 8
    if-eq p1, v0, :cond_1

    .line 10
    const/16 v0, 0x16

    .line 12
    if-eq p1, v0, :cond_0

    .line 14
    const-string p0, "getActiveDevice: unknown profile "

    .line 16
    const-string v0, "CachedBluetoothDevice"

    .line 18
    invoke-static {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_0
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    .line 25
    return p0

    .line 27
    :cond_1
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    .line 28
    return p0

    .line 30
    :cond_2
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    .line 31
    return p0

    .line 33
    :cond_3
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    .line 34
    return p0
    .line 36
.end method

.method public final isBASeeker()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    const-string p0, "CachedBluetoothDevice"

    .line 7
    const-string v0, "isBASeeker: mDevice is null"

    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return v1

    .line 14
    :cond_0
    const-string v0, "com.android.settingslib.bluetooth.BCProfile"

    .line 15
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    move-result-object v0

    .line 20
    const-string v2, "isBASeeker"

    .line 21
    const/4 v3, 0x1

    .line 23
    new-array v4, v3, [Ljava/lang/Class;

    .line 24
    const-class v5, Landroid/bluetooth/BluetoothDevice;

    .line 26
    aput-object v5, v4, v1

    .line 28
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    move-result-object v0

    .line 33
    new-array v2, v3, [Ljava/lang/Object;

    .line 34
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 36
    aput-object p0, v2, v1

    .line 38
    const/4 p0, 0x0

    .line 40
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 44
    check-cast p0, Ljava/lang/Boolean;

    .line 45
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 53
    :goto_0
    return v1
    .line 56
.end method

.method public final isBusy()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/Collection;

    .line 5
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v2, :cond_2

    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 22
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    .line 24
    move-result v2

    .line 27
    if-eq v2, v3, :cond_1

    .line 28
    const/4 v4, 0x3

    .line 30
    if-ne v2, v4, :cond_0

    .line 31
    :cond_1
    monitor-exit v0

    .line 33
    return v3

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    .line 35
    move-result p0

    .line 38
    const/16 v1, 0xb

    .line 39
    if-ne p0, v1, :cond_3

    .line 41
    goto :goto_0

    .line 43
    :cond_3
    const/4 v3, 0x0

    .line 44
    :goto_0
    monitor-exit v0

    .line 45
    return v3

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
    .line 49
.end method

.method public final isConnected()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/Collection;

    .line 5
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 21
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    .line 23
    move-result v2

    .line 26
    const/4 v3, 0x2

    .line 27
    if-ne v2, v3, :cond_0

    .line 28
    monitor-exit v0

    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1
    monitor-exit v0

    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
    .line 38
.end method

.method public final isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    .line 2
    move-result p0

    .line 5
    const/4 p1, 0x2

    .line 6
    if-ne p0, p1, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public final onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V
    .locals 8

    .line 1
    const-string v0, "onProfileStateChanged(): unknown profile state : "

    .line 2
    const-string v1, "CachedBluetoothDevice"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    const-string v3, "onProfileStateChanged: profile "

    .line 8
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v3, ", device "

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 21
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v3, ", newProfileState "

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 41
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 45
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 47
    move-result v1

    .line 50
    const/16 v2, 0xd

    .line 51
    if-ne v1, v2, :cond_0

    .line 53
    const-string p0, "CachedBluetoothDevice"

    .line 55
    const-string p1, " BT Turninig Off...Profile conn state change ignored..."

    .line 57
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    .line 63
    monitor-enter v1

    .line 65
    :try_start_0
    instance-of v2, p1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 66
    const/4 v3, 0x1

    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v5, 0x2

    .line 70
    if-nez v2, :cond_1

    .line 71
    instance-of v2, p1, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 73
    if-nez v2, :cond_1

    .line 75
    instance-of v2, p1, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 77
    if-nez v2, :cond_1

    .line 79
    instance-of v2, p1, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 81
    if-eqz v2, :cond_6

    .line 83
    :cond_1
    invoke-interface {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    .line 85
    move-result v2

    .line 88
    invoke-virtual {p0, v2, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setProfileConnectedStatus(IZ)V

    .line 89
    if-eqz p2, :cond_5

    .line 92
    if-eq p2, v3, :cond_4

    .line 94
    if-eq p2, v5, :cond_3

    .line 96
    const/4 v2, 0x3

    .line 98
    if-eq p2, v2, :cond_2

    .line 99
    const-string v2, "CachedBluetoothDevice"

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 114
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHandler:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$1;

    .line 119
    invoke-interface {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    .line 121
    move-result v2

    .line 124
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 125
    move-result v0

    .line 128
    if-eqz v0, :cond_6

    .line 129
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHandler:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$1;

    .line 131
    invoke-interface {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    .line 133
    move-result v2

    .line 136
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHandler:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$1;

    .line 141
    invoke-interface {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    .line 143
    move-result v2

    .line 146
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    goto :goto_0

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHandler:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$1;

    .line 151
    invoke-interface {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    .line 153
    move-result v2

    .line 156
    const-wide/32 v6, 0xea60

    .line 157
    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 160
    goto :goto_0

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHandler:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$1;

    .line 164
    invoke-interface {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    .line 166
    move-result v2

    .line 169
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 170
    move-result v0

    .line 173
    if-eqz v0, :cond_6

    .line 174
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHandler:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$1;

    .line 176
    invoke-interface {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    .line 178
    move-result v2

    .line 181
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 185
    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    .line 187
    move-result v0

    .line 190
    if-lez v0, :cond_6

    .line 191
    const-string v0, "CachedBluetoothDevice"

    .line 193
    const-string v2, "onProfileStateChanged(): Failed to connect profile"

    .line 195
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-interface {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    .line 200
    move-result v0

    .line 203
    invoke-virtual {p0, v0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setProfileConnectedStatus(IZ)V

    .line 204
    :cond_6
    :goto_0
    if-ne p2, v5, :cond_9

    .line 207
    instance-of p2, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    .line 209
    if-eqz p2, :cond_7

    .line 211
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 213
    invoke-interface {p1, p2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 215
    :cond_7
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/Collection;

    .line 218
    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 220
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 222
    move-result p2

    .line 225
    if-nez p2, :cond_d

    .line 226
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/Collection;

    .line 228
    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 230
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 232
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/Collection;

    .line 235
    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 237
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    instance-of p2, p1, Lcom/android/settingslib/bluetooth/PanProfile;

    .line 242
    if-eqz p2, :cond_d

    .line 244
    check-cast p1, Lcom/android/settingslib/bluetooth/PanProfile;

    .line 246
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 248
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    .line 250
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 252
    move-result v0

    .line 255
    if-eqz v0, :cond_8

    .line 256
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    move-result-object p1

    .line 261
    check-cast p1, Ljava/lang/Integer;

    .line 262
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 264
    move-result p1

    .line 267
    if-ne p1, v3, :cond_8

    .line 268
    move v4, v3

    .line 270
    goto :goto_1

    .line 271
    :catchall_0
    move-exception p0

    .line 272
    goto :goto_4

    .line 273
    :cond_8
    :goto_1
    if-eqz v4, :cond_d

    .line 274
    iput-boolean v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    .line 276
    goto :goto_3

    .line 278
    :cond_9
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    .line 279
    if-eqz v0, :cond_a

    .line 281
    if-nez p2, :cond_a

    .line 283
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 285
    invoke-interface {p1, p2, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 287
    goto :goto_3

    .line 290
    :cond_a
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    .line 291
    if-eqz v0, :cond_c

    .line 293
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/PanProfile;

    .line 295
    if-eqz v0, :cond_c

    .line 297
    move-object v0, p1

    .line 299
    check-cast v0, Lcom/android/settingslib/bluetooth/PanProfile;

    .line 300
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 302
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    .line 304
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 306
    move-result v5

    .line 309
    if-eqz v5, :cond_b

    .line 310
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    move-result-object v0

    .line 315
    check-cast v0, Ljava/lang/Integer;

    .line 316
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 318
    move-result v0

    .line 321
    if-ne v0, v3, :cond_b

    .line 322
    goto :goto_2

    .line 324
    :cond_b
    move v3, v4

    .line 325
    :goto_2
    if-eqz v3, :cond_c

    .line 326
    if-nez p2, :cond_c

    .line 328
    const-string p2, "CachedBluetoothDevice"

    .line 330
    const-string v0, "Removing PanProfile from device after NAP disconnect"

    .line 332
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/Collection;

    .line 337
    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 339
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 341
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/Collection;

    .line 344
    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 346
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iput-boolean v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    .line 351
    goto :goto_3

    .line 353
    :cond_c
    instance-of p1, p1, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 354
    if-eqz p1, :cond_d

    .line 356
    if-nez p2, :cond_d

    .line 358
    const/4 p1, -0x1

    .line 360
    iput p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mTwspBatteryState:I

    .line 361
    iput p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mTwspBatteryLevel:I

    .line 363
    :cond_d
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchActiveDevices()V

    .line 366
    return-void

    .line 369
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    throw p0
    .line 371
.end method

.method public final refresh()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$$ExternalSyntheticLambda1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$$ExternalSyntheticLambda1;-><init>(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 5
    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 8
    return-void
    .line 11
.end method

.method public final release()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHandler:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$1;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    return-void
    .line 8
.end method

.method public final setDeviceType(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mType:I

    .line 2
    if-eq p1, v0, :cond_4

    .line 4
    iput p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mType:I

    .line 6
    const/4 v0, 0x0

    .line 8
    const/4 v1, -0x1

    .line 9
    if-eq p1, v1, :cond_3

    .line 10
    const/16 v2, 0x64

    .line 12
    if-ne p1, v2, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/16 v2, 0x65

    .line 17
    if-ne p1, v2, :cond_1

    .line 19
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsGroupDevice:Z

    .line 21
    iput v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mQGroupId:I

    .line 23
    goto :goto_1

    .line 25
    :cond_1
    if-ltz p1, :cond_2

    .line 26
    const/16 v0, 0xf

    .line 28
    if-gt p1, v0, :cond_2

    .line 30
    iput p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mQGroupId:I

    .line 32
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsGroupDevice:Z

    .line 35
    goto :goto_1

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v0, "setDeviceType error type "

    .line 40
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    iget p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mType:I

    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 54
    const-string p1, "CachedBluetoothDevice"

    .line 55
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    goto :goto_1

    .line 60
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsGroupDevice:Z

    .line 61
    iput v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mQGroupId:I

    .line 63
    :cond_4
    :goto_1
    return-void
    .line 65
.end method

.method public final setGroupId(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 7
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " set GroupId "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    const-string v1, "CachedBluetoothDevice"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iput p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 33
    return-void
    .line 35
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 15
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 20
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 23
    check-cast p0, Ljava/util/HashSet;

    .line 25
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 41
    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    return-void
    .line 47
.end method

.method public setProfileConnectedStatus(IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    const/16 v0, 0x15

    .line 8
    if-eq p1, v0, :cond_1

    .line 10
    const/16 v0, 0x16

    .line 12
    if-eq p1, v0, :cond_0

    .line 14
    const-string/jumbo p0, "setProfileConnectedStatus(): unknown profile id : "

    .line 16
    const-string p2, "CachedBluetoothDevice"

    .line 19
    invoke-static {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    iput-boolean p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsLeAudioProfileConnectedFail:Z

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    iput-boolean p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsHearingAidProfileConnectedFail:Z

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    iput-boolean p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsA2dpProfileConnectedFail:Z

    .line 31
    goto :goto_0

    .line 33
    :cond_3
    iput-boolean p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsHeadsetProfileConnectedFail:Z

    .line 34
    :goto_0
    return-void
    .line 36
.end method

.method public final startPairing()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 10
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 15
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    .line 17
    return-void
    .line 20
.end method

.method public final switchSubDeviceContent()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    iget-short v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 4
    iget-boolean v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 6
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 8
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->release()V

    .line 10
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 13
    iget-object v5, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 15
    iput-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 17
    iget-short v5, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 19
    iput-short v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 21
    iget-boolean v5, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 23
    iput-boolean v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 25
    iget-object v5, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 27
    iput-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 29
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->release()V

    .line 31
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 34
    iput-object v0, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 36
    iput-short v1, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 38
    iput-boolean v2, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 40
    iput-object v3, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 42
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchActiveDevices()V

    .line 44
    return-void
    .line 47
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "CachedBluetoothDevice{anonymizedAddress="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 9
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", name="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ", groupId="

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, ", member="

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo p0, "}"

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 59
    return-object p0
    .line 60
.end method

.method public final unpair()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0xb

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 10
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 12
    :cond_0
    const/16 v1, 0xa

    .line 15
    if-eq v0, v1, :cond_3

    .line 17
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 19
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    .line 21
    move-result v1

    .line 24
    const-string v2, "Command sent successfully:REMOVE_BOND "

    .line 25
    const-string v3, "CachedBluetoothDevice"

    .line 27
    if-eqz v1, :cond_2

    .line 29
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 31
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    .line 33
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 39
    move-result-object v1

    .line 42
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 43
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 48
    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 49
    move-result-object v1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v1, 0x0

    .line 54
    :goto_0
    if-eqz v1, :cond_2

    .line 55
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 57
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 71
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 78
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_2
    if-eqz v0, :cond_3

    .line 82
    const/4 v1, 0x1

    .line 84
    iput-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mUnpairing:Z

    .line 85
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 87
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDrawableCache:Landroid/util/LruCache;

    .line 93
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    const-string v2, "Address:"

    .line 105
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 110
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 125
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_3
    return-void
    .line 129
.end method

.method public final updateProfiles()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    .line 4
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 11
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getUuidsList()Ljava/util/List;

    .line 13
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    move-result v2

    .line 20
    new-array v3, v2, [Landroid/os/ParcelUuid;

    .line 21
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 23
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 26
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    .line 28
    move-result v1

    .line 31
    const/16 v2, 0xc

    .line 32
    if-eq v1, v2, :cond_1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 37
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    .line 39
    move-result-object v1

    .line 42
    sget-object v2, Lcom/android/settingslib/bluetooth/PbapServerProfile;->PBAB_CLIENT_UUIDS:[Landroid/os/ParcelUuid;

    .line 43
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    .line 45
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 51
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    .line 53
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    .line 56
    monitor-enter v8

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 59
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/Collection;

    .line 61
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/Collection;

    .line 63
    iget-boolean v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    .line 65
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 67
    move-object v2, v0

    .line 69
    invoke-virtual/range {v1 .. v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V

    .line 70
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    const-string v1, "CachedBluetoothDevice"

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v3, "updating profiles for "

    .line 78
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 84
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 96
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 100
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    .line 102
    move-result-object p0

    .line 105
    if-eqz p0, :cond_3

    .line 106
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    .line 108
    :cond_3
    array-length p0, v0

    .line 111
    const/4 v1, 0x0

    .line 112
    :goto_1
    if-ge v1, p0, :cond_4

    .line 113
    aget-object v2, v0, v1

    .line 115
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    add-int/lit8 v1, v1, 0x1

    .line 120
    goto :goto_1

    .line 122
    :cond_4
    return-void

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    throw p0
    .line 126
.end method
