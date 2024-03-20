.class public final Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mCachedDevices:Ljava/util/List;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mRoutingHelper:Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 3
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 4
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 5
    new-instance p2, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;

    invoke-direct {p2, p1}, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mRoutingHelper:Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Ljava/util/List;Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 8
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 9
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 10
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mRoutingHelper:Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;

    return-void
.end method


# virtual methods
.method public final findMainDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 18
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    .line 20
    move-result-wide v1

    .line 23
    const-wide/16 v3, 0x0

    .line 24
    cmp-long v1, v1, v3

    .line 26
    if-eqz v1, :cond_1

    .line 28
    const/4 v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-eqz v1, :cond_0

    .line 33
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 35
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    return-object v0

    .line 45
    :cond_2
    const/4 p0, 0x0

    .line 46
    return-object p0
    .line 47
.end method

.method public final initHearingAidDeviceIfNeeded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 4
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 6
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 8
    const-wide/16 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    .line 15
    if-eqz v1, :cond_2

    .line 17
    if-nez v0, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    .line 22
    move-result-wide v0

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    move-wide v0, v2

    .line 27
    :goto_1
    cmp-long v2, v0, v2

    .line 28
    if-eqz v2, :cond_3

    .line 30
    const/4 v2, 0x1

    .line 32
    goto :goto_2

    .line 33
    :cond_3
    const/4 v2, 0x0

    .line 34
    :goto_2
    if-eqz v2, :cond_8

    .line 35
    iget-object v2, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 37
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 39
    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 41
    const-string v4, "Proxy not attached to HearingAidService"

    .line 43
    const-string v5, "HearingAidProfile"

    .line 45
    const-string v6, "HearingAidDeviceManager"

    .line 47
    const/4 v7, -0x1

    .line 49
    if-nez v3, :cond_4

    .line 50
    const-string v2, "HearingAidProfile is not supported and not ready to fetch device side"

    .line 52
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    goto :goto_3

    .line 57
    :cond_4
    iget-object v3, v3, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    .line 58
    if-nez v3, :cond_5

    .line 60
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_3
    move v2, v7

    .line 65
    goto :goto_4

    .line 66
    :cond_5
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I

    .line 67
    move-result v2

    .line 70
    :goto_4
    sget-object v3, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING:Landroid/util/SparseIntArray;

    .line 71
    invoke-virtual {v3, v2, v7}, Landroid/util/SparseIntArray;->get(II)I

    .line 73
    move-result v2

    .line 76
    iget-object v3, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 77
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 79
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 81
    if-nez p0, :cond_6

    .line 83
    const-string p0, "HearingAidProfile is not supported and not ready to fetch device mode"

    .line 85
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    goto :goto_5

    .line 90
    :cond_6
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    .line 91
    if-nez p0, :cond_7

    .line 93
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_5
    move p0, v7

    .line 98
    goto :goto_6

    .line 99
    :cond_7
    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I

    .line 100
    move-result p0

    .line 103
    :goto_6
    sget-object v3, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_MODE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;

    .line 104
    invoke-virtual {v3, p0, v7}, Landroid/util/SparseIntArray;->get(II)I

    .line 106
    move-result p0

    .line 109
    new-instance v3, Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 110
    invoke-direct {v3, v2, p0, v0, v1}, Lcom/android/settingslib/bluetooth/HearingAidInfo;-><init>(IIJ)V

    .line 112
    iput-object v3, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 115
    :cond_8
    return-void
    .line 117
.end method

.method public final onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 11

    .line 1
    const/16 v0, 0x15

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    const/16 v0, 0x16

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->CALL_ROUTING_ATTRIBUTES:[I

    .line 21
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V

    .line 23
    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->MEDIA_ROUTING_ATTRIBUTES:[I

    .line 26
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V

    .line 28
    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->RINGTONE_ROUTING_ATTRIBUTE:[I

    .line 31
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V

    .line 33
    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->SYSTEM_SOUNDS_ROUTING_ATTRIBUTES:[I

    .line 36
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V

    .line 38
    goto/16 :goto_6

    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mRoutingHelper:Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    iget-object v3, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 48
    const/4 v4, 0x1

    .line 50
    if-eqz v3, :cond_2

    .line 51
    move v3, v4

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v3, v2

    .line 55
    :goto_1
    if-nez v3, :cond_3

    .line 56
    goto :goto_5

    .line 58
    :cond_3
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 59
    const/4 v3, 0x2

    .line 61
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    .line 62
    move-result-object v0

    .line 65
    array-length v3, v0

    .line 66
    move v5, v2

    .line 67
    :goto_2
    if-ge v5, v3, :cond_9

    .line 68
    aget-object v6, v0, v5

    .line 70
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 72
    move-result v7

    .line 75
    const/16 v8, 0x17

    .line 76
    if-eq v7, v8, :cond_4

    .line 78
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 80
    move-result v7

    .line 83
    const/16 v8, 0x1a

    .line 84
    if-ne v7, v8, :cond_8

    .line 86
    :cond_4
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    .line 88
    move-result-object v7

    .line 91
    iget-object v8, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 92
    iget-object v9, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 94
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 96
    move-result-object v10

    .line 99
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v10

    .line 103
    if-nez v10, :cond_7

    .line 104
    if-eqz v8, :cond_5

    .line 106
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 108
    move-result-object v8

    .line 111
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v8

    .line 115
    if-nez v8, :cond_7

    .line 116
    :cond_5
    check-cast v9, Ljava/util/HashSet;

    .line 118
    invoke-virtual {v9}, Ljava/util/HashSet;->isEmpty()Z

    .line 120
    move-result v8

    .line 123
    if-nez v8, :cond_6

    .line 124
    invoke-interface {v9}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 126
    move-result-object v8

    .line 129
    new-instance v9, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper$$ExternalSyntheticLambda0;

    .line 130
    invoke-direct {v9, v7}, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 135
    move-result v7

    .line 138
    if-eqz v7, :cond_6

    .line 139
    goto :goto_3

    .line 141
    :cond_6
    move v7, v2

    .line 142
    goto :goto_4

    .line 143
    :cond_7
    :goto_3
    move v7, v4

    .line 144
    :goto_4
    if-eqz v7, :cond_8

    .line 145
    new-instance v1, Landroid/media/AudioDeviceAttributes;

    .line 147
    invoke-direct {v1, v6}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 149
    goto :goto_5

    .line 152
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 153
    goto :goto_2

    .line 155
    :cond_9
    :goto_5
    if-nez v1, :cond_a

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    .line 158
    const-string v0, "Can not find expected AudioDeviceAttributes for hearing device: "

    .line 160
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 165
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    .line 167
    move-result-object p1

    .line 170
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object p0

    .line 177
    const-string p1, "HearingAidDeviceManager"

    .line 178
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    goto :goto_6

    .line 183
    :cond_a
    const-string p1, "hearing_aid_call_routing"

    .line 184
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 186
    invoke-static {v0, p1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 188
    move-result p1

    .line 191
    const-string v3, "hearing_aid_media_routing"

    .line 192
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 194
    move-result v3

    .line 197
    const-string v4, "hearing_aid_ringtone_routing"

    .line 198
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 200
    move-result v4

    .line 203
    const-string v5, "hearing_aid_system_sounds_routing"

    .line 204
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 206
    move-result v0

    .line 209
    sget-object v2, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->CALL_ROUTING_ATTRIBUTES:[I

    .line 210
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V

    .line 212
    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->MEDIA_ROUTING_ATTRIBUTES:[I

    .line 215
    invoke-virtual {p0, v3, v1, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V

    .line 217
    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->RINGTONE_ROUTING_ATTRIBUTE:[I

    .line 220
    invoke-virtual {p0, v4, v1, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V

    .line 222
    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->SYSTEM_SOUNDS_ROUTING_ATTRIBUTES:[I

    .line 225
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V

    .line 227
    :goto_6
    return-void
    .line 230
.end method

.method public onHiSyncIdChanged(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    const/4 v2, -0x1

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ltz v1, :cond_3

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v4

    .line 17
    check-cast v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 18
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    .line 20
    move-result-wide v5

    .line 23
    cmp-long v5, v5, p1

    .line 24
    if-eqz v5, :cond_0

    .line 26
    goto :goto_1

    .line 28
    :cond_0
    if-ne v3, v2, :cond_1

    .line 29
    move v3, v1

    .line 31
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 35
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 44
    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 45
    move-object v2, v1

    .line 47
    move v1, v3

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 53
    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 54
    move-object v7, v4

    .line 56
    move-object v4, v2

    .line 57
    move-object v2, v7

    .line 58
    :goto_2
    iput-object v2, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    const-string v1, "onHiSyncIdChanged: removed from UI device ="

    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", with hiSyncId="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 85
    const-string p2, "HearingAidDeviceManager"

    .line 86
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 91
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 93
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 95
    :cond_3
    return-void
    .line 98
.end method

.method public final onProfileConnectionStateChangedIfProcessed(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz p1, :cond_2

    .line 5
    const/4 v2, 0x2

    .line 7
    if-eq p1, v2, :cond_0

    .line 8
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    .line 11
    move-result-wide v2

    .line 14
    invoke-virtual {p0, v2, v3}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->onHiSyncIdChanged(J)V

    .line 15
    invoke-virtual {p0, p2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->findMainDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 18
    move-result-object p0

    .line 21
    if-eqz p0, :cond_5

    .line 22
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 24
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 34
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->switchSubDeviceContent()V

    .line 39
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 42
    iget-object p1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 45
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 47
    :goto_0
    return v1

    .line 50
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->findMainDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 51
    move-result-object p0

    .line 54
    iget-boolean p1, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mUnpairing:Z

    .line 55
    if-eqz p1, :cond_3

    .line 57
    return v1

    .line 59
    :cond_3
    if-eqz p0, :cond_4

    .line 60
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 62
    return v1

    .line 65
    :cond_4
    iget-object p0, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 66
    if-eqz p0, :cond_5

    .line 68
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 70
    move-result p0

    .line 73
    if-eqz p0, :cond_5

    .line 74
    iget-object p0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 76
    invoke-virtual {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 78
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->switchSubDeviceContent()V

    .line 81
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 84
    iget-object p0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 87
    invoke-virtual {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 89
    return v1

    .line 92
    :cond_5
    :goto_1
    const/4 p0, 0x0

    .line 93
    return p0
    .line 94
.end method

.method public final setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mRoutingHelper:Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    array-length v1, p3

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    array-length v1, p3

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_0

    .line 15
    aget v3, p3, v2

    .line 17
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    .line 19
    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 21
    invoke-virtual {v4, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 24
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 28
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;->getAudioProductStrategies()Ljava/util/List;

    .line 38
    move-result-object p3

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p3

    .line 50
    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 60
    check-cast v2, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v3

    .line 66
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v4

    .line 70
    if-eqz v4, :cond_1

    .line 71
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v4

    .line 76
    check-cast v4, Landroid/media/AudioAttributes;

    .line 77
    invoke-virtual {v2, v4}, Landroid/media/audiopolicy/AudioProductStrategy;->supportsAudioAttributes(Landroid/media/AudioAttributes;)Z

    .line 79
    move-result v4

    .line 82
    if-eqz v4, :cond_2

    .line 83
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    goto :goto_1

    .line 88
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 89
    move-result-object p3

    .line 92
    invoke-interface {p3}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    .line 93
    move-result-object p3

    .line 96
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 97
    move-result-object v0

    .line 100
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 101
    move-result-object p3

    .line 104
    check-cast p3, Ljava/util/List;

    .line 105
    if-eqz p1, :cond_7

    .line 107
    const/4 v0, 0x1

    .line 109
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 110
    if-eq p1, v0, :cond_5

    .line 112
    const/4 p2, 0x2

    .line 114
    if-ne p1, p2, :cond_4

    .line 115
    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;->removePreferredDeviceForStrategies(Ljava/util/List;)Z

    .line 117
    move-result p0

    .line 120
    sget-object p2, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->DEVICE_SPEAKER_OUT:Landroid/media/AudioDeviceAttributes;

    .line 121
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 123
    move-result-object v2

    .line 126
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    move-result v3

    .line 130
    if-eqz v3, :cond_6

    .line 131
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    move-result-object v3

    .line 136
    check-cast v3, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 137
    invoke-virtual {v1, v3, p2}, Landroid/media/AudioManager;->setPreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)Z

    .line 139
    move-result v3

    .line 142
    and-int/2addr v0, v3

    .line 143
    goto :goto_2

    .line 144
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 145
    const-string p2, "Unexpected routingValue: "

    .line 147
    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 152
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    throw p0

    .line 156
    :cond_5
    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;->removePreferredDeviceForStrategies(Ljava/util/List;)Z

    .line 157
    move-result p0

    .line 160
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 161
    move-result-object v2

    .line 164
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    move-result v3

    .line 168
    if-eqz v3, :cond_6

    .line 169
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    move-result-object v3

    .line 174
    check-cast v3, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 175
    invoke-virtual {v1, v3, p2}, Landroid/media/AudioManager;->setPreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)Z

    .line 177
    move-result v3

    .line 180
    and-int/2addr v0, v3

    .line 181
    goto :goto_3

    .line 182
    :cond_6
    and-int/2addr p0, v0

    .line 183
    goto :goto_4

    .line 184
    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;->removePreferredDeviceForStrategies(Ljava/util/List;)Z

    .line 185
    move-result p0

    .line 188
    :goto_4
    if-nez p0, :cond_8

    .line 189
    new-instance p0, Ljava/lang/StringBuilder;

    .line 191
    const-string/jumbo p2, "routingStrategies: "

    .line 193
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 199
    move-result-object p2

    .line 202
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string/jumbo p2, "routingValue: "

    .line 206
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    const-string p1, " fail to configure AudioProductStrategy"

    .line 215
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object p0

    .line 223
    const-string p1, "HearingAidDeviceManager"

    .line 224
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_8
    return-void
    .line 229
.end method

.method public final updateHearingAidsDevices()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

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
    if-eqz v2, :cond_a

    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 23
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    .line 25
    move-result-wide v3

    .line 28
    const-wide/16 v5, 0x0

    .line 29
    cmp-long v3, v3, v5

    .line 31
    const/4 v4, 0x1

    .line 33
    const/4 v7, 0x0

    .line 34
    if-eqz v3, :cond_1

    .line 35
    move v3, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v3, v7

    .line 39
    :goto_1
    if-nez v3, :cond_0

    .line 40
    iget-object v3, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 42
    iget-object v8, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 44
    iget-object v9, v8, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 46
    iget-object v9, v9, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 48
    if-nez v9, :cond_2

    .line 50
    goto :goto_2

    .line 52
    :cond_2
    iget-object v9, v9, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    .line 53
    if-eqz v9, :cond_4

    .line 55
    if-nez v3, :cond_3

    .line 57
    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual {v9, v3}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    .line 60
    move-result-wide v9

    .line 63
    goto :goto_3

    .line 64
    :cond_4
    :goto_2
    move-wide v9, v5

    .line 65
    :goto_3
    cmp-long v3, v9, v5

    .line 66
    if-eqz v3, :cond_5

    .line 68
    goto :goto_4

    .line 70
    :cond_5
    move v4, v7

    .line 71
    :goto_4
    if-eqz v4, :cond_0

    .line 72
    iget-object v3, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 74
    iget-object v4, v8, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 76
    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 78
    const-string v5, "Proxy not attached to HearingAidService"

    .line 80
    const-string v6, "HearingAidProfile"

    .line 82
    const-string v7, "HearingAidDeviceManager"

    .line 84
    const/4 v11, -0x1

    .line 86
    if-nez v4, :cond_6

    .line 87
    const-string v3, "HearingAidProfile is not supported and not ready to fetch device side"

    .line 89
    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    goto :goto_5

    .line 94
    :cond_6
    iget-object v4, v4, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    .line 95
    if-nez v4, :cond_7

    .line 97
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_5
    move v3, v11

    .line 102
    goto :goto_6

    .line 103
    :cond_7
    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I

    .line 104
    move-result v3

    .line 107
    :goto_6
    sget-object v4, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING:Landroid/util/SparseIntArray;

    .line 108
    invoke-virtual {v4, v3, v11}, Landroid/util/SparseIntArray;->get(II)I

    .line 110
    move-result v3

    .line 113
    iget-object v4, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 114
    iget-object v8, v8, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 116
    iget-object v8, v8, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 118
    if-nez v8, :cond_8

    .line 120
    const-string v4, "HearingAidProfile is not supported and not ready to fetch device mode"

    .line 122
    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    goto :goto_7

    .line 127
    :cond_8
    iget-object v7, v8, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    .line 128
    if-nez v7, :cond_9

    .line 130
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_7
    move v4, v11

    .line 135
    goto :goto_8

    .line 136
    :cond_9
    invoke-virtual {v7, v4}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I

    .line 137
    move-result v4

    .line 140
    :goto_8
    sget-object v5, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_MODE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;

    .line 141
    invoke-virtual {v5, v4, v11}, Landroid/util/SparseIntArray;->get(II)I

    .line 143
    move-result v4

    .line 146
    new-instance v5, Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 147
    invoke-direct {v5, v3, v4, v9, v10}, Lcom/android/settingslib/bluetooth/HearingAidInfo;-><init>(IIJ)V

    .line 149
    iput-object v5, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 152
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 154
    move-result-object v2

    .line 157
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    goto/16 :goto_0

    .line 161
    :cond_a
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 163
    move-result-object v0

    .line 166
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    move-result v1

    .line 170
    if-eqz v1, :cond_b

    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    move-result-object v1

    .line 176
    check-cast v1, Ljava/lang/Long;

    .line 177
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 179
    move-result-wide v1

    .line 182
    invoke-virtual {p0, v1, v2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->onHiSyncIdChanged(J)V

    .line 183
    goto :goto_9

    .line 186
    :cond_b
    return-void
    .line 187
.end method
