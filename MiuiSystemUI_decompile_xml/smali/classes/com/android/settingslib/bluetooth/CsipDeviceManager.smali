.class public final Lcom/android/settingslib/bluetooth/CsipDeviceManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mCachedDevices:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 5
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 7
    return-void
    .line 9
.end method

.method public static isValidGroupId(I)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
    .line 8
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "CsipDeviceManager"

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public addMemberDevicesIntoMainDevice(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    const-string p0, "addMemberDevicesIntoMainDevice: No main device. Do nothing."

    .line 5
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 7
    return v0

    .line 10
    :cond_0
    iget-object v1, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 11
    invoke-virtual {p0, p2}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->findMainDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 13
    move-result-object v2

    .line 16
    const/4 v3, 0x1

    .line 17
    if-nez v2, :cond_1

    .line 18
    move v4, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v4, v0

    .line 22
    :goto_0
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 23
    if-nez v4, :cond_2

    .line 25
    const-string v4, "addMemberDevicesIntoMainDevice: The PreferredMainDevice have the mainDevice. Do switch relationship between the mainDeviceOfPreferredMainDevice and PreferredMainDevice"

    .line 27
    invoke-static {v4}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 29
    iget-object v4, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 32
    invoke-virtual {v4, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 34
    iget-object v4, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 37
    iget-short v6, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 39
    iget-boolean v7, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 41
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->release()V

    .line 43
    iget-object v8, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 46
    iput-object v8, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 48
    iget-short v8, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 50
    iput-short v8, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 52
    iget-boolean v8, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 54
    iput-boolean v8, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 56
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 58
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->release()V

    .line 61
    iput-object v4, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 64
    iput-short v6, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 66
    iput-boolean v7, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 68
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 70
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 73
    iget-object p2, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 76
    invoke-virtual {p2, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 78
    move p2, v3

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move p2, v0

    .line 83
    :goto_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 84
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 86
    move-result-object v2

    .line 89
    new-instance v4, Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda0;

    .line 90
    invoke-direct {v4, p1}, Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 92
    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 95
    move-result-object p1

    .line 98
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 99
    move-result-object v2

    .line 102
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 103
    move-result-object p1

    .line 106
    check-cast p1, Ljava/util/List;

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 109
    move-result v2

    .line 112
    if-le v2, v3, :cond_3

    .line 113
    move v0, v3

    .line 115
    :cond_3
    iget-object v2, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 116
    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 118
    move-result-object v2

    .line 121
    if-eqz v0, :cond_8

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 124
    move-result-object p1

    .line 127
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    move-result v0

    .line 131
    if-eqz v0, :cond_8

    .line 132
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    move-result-object v0

    .line 137
    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 138
    iget-object v4, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 140
    if-eqz v4, :cond_4

    .line 142
    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v4

    .line 147
    if-eqz v4, :cond_5

    .line 148
    goto :goto_2

    .line 150
    :cond_5
    iget-object p2, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 151
    check-cast p2, Ljava/util/HashSet;

    .line 153
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object v4

    .line 158
    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v6

    .line 162
    if-eqz v6, :cond_7

    .line 163
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v6

    .line 168
    check-cast v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 169
    invoke-virtual {v6, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result v7

    .line 174
    if-nez v7, :cond_6

    .line 175
    invoke-virtual {v2, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->addMemberDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 177
    goto :goto_3

    .line 180
    :cond_7
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 181
    invoke-virtual {v2, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->addMemberDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 184
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 187
    iget-object p2, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 190
    invoke-virtual {p2, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 192
    move p2, v3

    .line 195
    goto :goto_2

    .line 196
    :cond_8
    if-eqz p2, :cond_9

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    .line 199
    const-string v0, "addMemberDevicesIntoMainDevice: After changed, CachedBluetoothDevice list: "

    .line 201
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object p0

    .line 212
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 213
    :cond_9
    return p2
    .line 216
.end method

.method public final findMainDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 4
    if-nez p0, :cond_0

    .line 6
    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 23
    iget v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 25
    invoke-static {v1}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->isValidGroupId(I)Z

    .line 27
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 33
    check-cast v1, Ljava/util/HashSet;

    .line 35
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 37
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v1

    .line 47
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 57
    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 58
    if-eqz v2, :cond_3

    .line 60
    invoke-virtual {v2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    return-object v0

    .line 68
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 69
    return-object p0
    .line 70
.end method

.method public final getBaseGroupId(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 4
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mCsipSetCoordinatorProfile:Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    .line 6
    const/4 v0, -0x1

    .line 8
    if-eqz p0, :cond_3

    .line 9
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;->mService:Landroid/bluetooth/BluetoothCsipSetCoordinator;

    .line 11
    if-eqz p0, :cond_1

    .line 13
    if-nez p1, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getGroupUuidMapByDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/util/Map;

    .line 18
    move-result-object p0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 23
    :goto_1
    if-nez p0, :cond_2

    .line 24
    return v0

    .line 26
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 27
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 44
    check-cast p0, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 50
    check-cast p0, Ljava/lang/Integer;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result p0

    .line 56
    return p0

    .line 57
    :cond_3
    return v0
    .line 58
.end method

.method public getGroupDevicesFromAllOfDevicesList(I)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->isValidGroupId(I)Z

    .line 7
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    return-object v0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 30
    iget v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 32
    if-eq p1, v2, :cond_1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    goto :goto_0

    .line 45
    :cond_2
    return-object v0
    .line 46
.end method

.method public getPreferredMainDevice(ILjava/util/List;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_a

    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 5
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    goto/16 :goto_4

    .line 11
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 13
    move-result-object v1

    .line 16
    new-instance v2, Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda1;

    .line 17
    const/4 v3, 0x0

    .line 19
    invoke-direct {v2, v3}, Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda1;-><init>(I)V

    .line 20
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 23
    move-result-object v1

    .line 26
    new-instance v2, Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda1;

    .line 27
    const/4 v4, 0x1

    .line 29
    invoke-direct {v2, v4}, Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda1;-><init>(I)V

    .line 30
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 33
    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 37
    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 44
    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 45
    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 49
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    const-string p0, "getPreferredMainDevice: The connected DUAL mode device"

    .line 55
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 57
    return-object v1

    .line 60
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 61
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 63
    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 65
    if-eqz v2, :cond_3

    .line 67
    const-string v4, "getConnectedGroupLeadDevice"

    .line 69
    const-string v5, "LeAudioProfile"

    .line 71
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LeAudioProfile;->mService:Landroid/bluetooth/BluetoothLeAudio;

    .line 76
    if-nez v2, :cond_2

    .line 78
    const-string p1, "No service."

    .line 80
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothLeAudio;->getConnectedGroupLeadDevice(I)Landroid/bluetooth/BluetoothDevice;

    .line 86
    move-result-object p1

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    :goto_0
    move-object p1, v0

    .line 91
    :goto_1
    if-eqz p1, :cond_4

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    const-string v4, "getPreferredMainDevice: The LeadDevice from LE profile is "

    .line 96
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    .line 101
    move-result-object v4

    .line 104
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 111
    invoke-static {v2}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 112
    :cond_4
    if-eqz p1, :cond_5

    .line 115
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 119
    move-result-object p0

    .line 122
    goto :goto_2

    .line 123
    :cond_5
    move-object p0, v0

    .line 124
    :goto_2
    if-nez p0, :cond_6

    .line 125
    const-string p0, "getPreferredMainDevice: The LeadDevice is not in the all of devices list"

    .line 127
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 129
    goto :goto_3

    .line 132
    :cond_6
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 133
    move-result p1

    .line 136
    if-eqz p1, :cond_7

    .line 137
    const-string p1, "getPreferredMainDevice: The connected LeadDevice from LE profile"

    .line 139
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 141
    return-object p0

    .line 144
    :cond_7
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 145
    move-result-object p0

    .line 148
    new-instance p1, Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda1;

    .line 149
    const/4 v2, 0x2

    .line 151
    invoke-direct {p1, v2}, Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda1;-><init>(I)V

    .line 152
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 155
    move-result-object p0

    .line 158
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 159
    move-result-object p0

    .line 162
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    move-result-object p0

    .line 166
    check-cast p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 167
    if-eqz p0, :cond_8

    .line 169
    const-string p1, "getPreferredMainDevice: One of the connected devices."

    .line 171
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 173
    return-object p0

    .line 176
    :cond_8
    if-eqz v1, :cond_9

    .line 177
    const-string p0, "getPreferredMainDevice: The DUAL mode device."

    .line 179
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 181
    return-object v1

    .line 184
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 185
    move-result p0

    .line 188
    if-nez p0, :cond_a

    .line 189
    const-string p0, "getPreferredMainDevice: One of the group devices."

    .line 191
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 193
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    move-result-object p0

    .line 199
    check-cast p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 200
    return-object p0

    .line 202
    :cond_a
    :goto_4
    return-object v0
    .line 203
.end method

.method public final initCsipDeviceIfNeeded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->getBaseGroupId(Landroid/bluetooth/BluetoothDevice;)I

    .line 4
    move-result p0

    .line 7
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->isValidGroupId(I)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "initCsipDeviceIfNeeded: "

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " (group: "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, ")"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setGroupId(I)V

    .line 44
    :cond_0
    return-void
    .line 47
.end method

.method public onGroupIdChanged(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->isValidGroupId(I)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const-string p0, "onGroupIdChanged: groupId is invalid"

    .line 8
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 10
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->updateRelationshipOfGroupDevices(I)Z

    .line 14
    return-void
    .line 17
.end method

.method public final setMemberDeviceIfNeeded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 2
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->isValidGroupId(I)Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string v2, "getCachedDevice: groupId: "

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 24
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 27
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 29
    move-result v1

    .line 32
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 33
    if-ltz v1, :cond_1

    .line 35
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 40
    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 41
    iget v3, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 43
    if-ne v3, v0, :cond_0

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    const-string v0, "getCachedDevice: found cachedDevice with the groupId: "

    .line 49
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v0, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 54
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 67
    goto :goto_0

    .line 70
    :cond_1
    const/4 v2, 0x0

    .line 71
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v0, "setMemberDeviceIfNeeded, main: "

    .line 74
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const-string v0, ", member: "

    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 94
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 95
    if-eqz v2, :cond_2

    .line 98
    invoke-virtual {v2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->addMemberDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 100
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 106
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 107
    const/4 p0, 0x1

    .line 110
    return p0

    .line 111
    :cond_2
    const/4 p0, 0x0

    .line 112
    return p0
    .line 113
.end method

.method public final updateCsipDevices()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 23
    iget v3, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 25
    invoke-static {v3}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->isValidGroupId(I)Z

    .line 27
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    iget-object v3, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 33
    invoke-virtual {p0, v3}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->getBaseGroupId(Landroid/bluetooth/BluetoothDevice;)I

    .line 35
    move-result v3

    .line 38
    invoke-static {v3}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->isValidGroupId(I)Z

    .line 39
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 43
    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setGroupId(I)V

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v0

    .line 59
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/Integer;

    .line 70
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result v1

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->onGroupIdChanged(I)V

    .line 76
    goto :goto_1

    .line 79
    :cond_2
    return-void
    .line 80
.end method

.method public updateRelationshipOfGroupDevices(I)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->isValidGroupId(I)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const-string p0, "The device is not group."

    .line 8
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 10
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v1, "updateRelationshipOfGroupDevices: mCachedDevices list ="

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->getGroupDevicesFromAllOfDevicesList(I)Ljava/util/List;

    .line 39
    move-result-object v0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->getPreferredMainDevice(ILjava/util/List;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 43
    move-result-object v1

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    const-string v3, "The preferredMainDevice= "

    .line 49
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string v3, " and the groupDevicesList of groupId= "

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v3, " ="

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p1, v1}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->addMemberDevicesIntoMainDevice(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    .line 80
    move-result p0

    .line 83
    return p0
    .line 84
.end method
