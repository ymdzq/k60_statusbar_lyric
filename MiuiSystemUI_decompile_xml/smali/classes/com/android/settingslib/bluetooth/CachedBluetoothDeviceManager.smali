.class public final Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field static sLateBondingTimeoutMillis:I = 0x1388


# instance fields
.field public final mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field final mCachedDevices:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field mCsipDeviceManager:Lcom/android/settingslib/bluetooth/CsipDeviceManager;

.field mHearingAidDeviceManager:Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 10
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mContext:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 14
    new-instance v1, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;

    .line 16
    invoke-direct {v1, p1, p2, v0}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Ljava/util/List;)V

    .line 18
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDeviceManager:Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;

    .line 21
    new-instance p1, Lcom/android/settingslib/bluetooth/CsipDeviceManager;

    .line 23
    invoke-direct {p1, p2, v0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Ljava/util/List;)V

    .line 25
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCsipDeviceManager:Lcom/android/settingslib/bluetooth/CsipDeviceManager;

    .line 28
    return-void
    .line 30
.end method


# virtual methods
.method public final addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 2
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 4
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 7
    move-result-object v1

    .line 10
    if-nez v1, :cond_4

    .line 11
    new-instance v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 13
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mContext:Landroid/content/Context;

    .line 15
    invoke-direct {v1, v2, v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 17
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCsipDeviceManager:Lcom/android/settingslib/bluetooth/CsipDeviceManager;

    .line 20
    invoke-virtual {p1, v1}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->initCsipDeviceIfNeeded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 22
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDeviceManager:Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;

    .line 25
    invoke-virtual {p1, v1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->initHearingAidDeviceIfNeeded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 27
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCsipDeviceManager:Lcom/android/settingslib/bluetooth/CsipDeviceManager;

    .line 30
    invoke-virtual {p1, v1}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->setMemberDeviceIfNeeded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    .line 32
    move-result p1

    .line 35
    if-nez p1, :cond_4

    .line 36
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDeviceManager:Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    .line 43
    move-result-wide v2

    .line 46
    const-wide/16 v4, 0x0

    .line 47
    cmp-long v0, v2, v4

    .line 49
    const/4 v4, 0x1

    .line 51
    const/4 v5, 0x0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    move v0, v4

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move v0, v5

    .line 57
    :goto_0
    if-eqz v0, :cond_3

    .line 58
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 62
    move-result v0

    .line 65
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 66
    if-ltz v0, :cond_2

    .line 68
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v6

    .line 73
    check-cast v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 74
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    .line 76
    move-result-wide v7

    .line 79
    cmp-long v7, v7, v2

    .line 80
    if-nez v7, :cond_1

    .line 82
    goto :goto_1

    .line 84
    :cond_2
    const/4 v6, 0x0

    .line 85
    :goto_1
    if-eqz v6, :cond_3

    .line 86
    iput-object v1, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 88
    goto :goto_2

    .line 90
    :cond_3
    move v4, v5

    .line 91
    :goto_2
    if-nez v4, :cond_4

    .line 92
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 94
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 99
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 101
    invoke-virtual {p1, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 103
    :cond_4
    monitor-exit p0

    .line 106
    return-object v1

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    throw p1
    .line 110
.end method

.method public final declared-synchronized clearNonBondedDevices()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedSubDevices()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 11
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 13
    move-result-object v1

    .line 16
    new-instance v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager$$ExternalSyntheticLambda0;

    .line 17
    invoke-direct {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager$$ExternalSyntheticLambda0;-><init>()V

    .line 19
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 22
    move-result-object v1

    .line 25
    new-instance v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager$$ExternalSyntheticLambda1;

    .line 26
    invoke-direct {v2, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 28
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 31
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    monitor-exit p0

    .line 42
    throw v0
    .line 43
.end method

.method public final clearNonBondedSubDevices()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 7
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 8
    if-ltz v0, :cond_4

    .line 10
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 18
    iget-object v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 20
    check-cast v2, Ljava/util/HashSet;

    .line 22
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 24
    move-result v3

    .line 27
    const/16 v4, 0xa

    .line 28
    if-nez v3, :cond_3

    .line 30
    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 35
    array-length v0, p0

    .line 36
    const/4 v2, 0x0

    .line 37
    :goto_1
    if-ge v2, v0, :cond_2

    .line 38
    aget-object v3, p0, v2

    .line 40
    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 42
    iget-object v5, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 44
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    .line 46
    move-result v5

    .line 49
    if-ne v5, v4, :cond_1

    .line 50
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->release()V

    .line 52
    iget-object v5, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 55
    check-cast v5, Ljava/util/HashSet;

    .line 57
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 62
    goto :goto_1

    .line 64
    :cond_2
    return-void

    .line 65
    :cond_3
    iget-object v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 66
    if-eqz v2, :cond_0

    .line 68
    iget-object v3, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 70
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    .line 72
    move-result v3

    .line 75
    if-ne v3, v4, :cond_0

    .line 76
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->release()V

    .line 78
    const/4 v2, 0x0

    .line 81
    iput-object v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 82
    goto :goto_0

    .line 84
    :cond_4
    return-void
    .line 85
.end method

.method public final declared-synchronized findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    move-result-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v1

    .line 12
    if-eqz v1, :cond_4

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 19
    iget-object v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 21
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v2, :cond_1

    .line 27
    monitor-exit p0

    .line 29
    return-object v1

    .line 30
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    .line 31
    iget-object v3, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 33
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 35
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 38
    move-result v3

    .line 41
    if-nez v3, :cond_3

    .line 42
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v2

    .line 47
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v3

    .line 51
    if-eqz v3, :cond_3

    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 57
    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 58
    iget-object v4, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 60
    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    if-eqz v4, :cond_2

    .line 66
    monitor-exit p0

    .line 68
    return-object v3

    .line 69
    :cond_3
    :try_start_2
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 70
    if-eqz v1, :cond_0

    .line 72
    iget-object v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 74
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    if-eqz v2, :cond_0

    .line 80
    monitor-exit p0

    .line 82
    return-object v1

    .line 83
    :cond_4
    monitor-exit p0

    .line 84
    const/4 p0, 0x0

    .line 85
    return-object p0

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    monitor-exit p0

    .line 88
    throw p1
    .line 89
.end method

.method public final declared-synchronized getCachedDevicesCopy()Ljava/util/Collection;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    .line 10
    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
    .line 14
.end method
