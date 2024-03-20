.class public final Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/media/LocalMediaManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/media/LocalMediaManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getMutingExpectedDevice()Lcom/android/settingslib/media/BluetoothMediaDevice;
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 2
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 4
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_9

    .line 7
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mAudioManager:Landroid/media/AudioManager;

    .line 9
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    .line 11
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    goto/16 :goto_3

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 19
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getMostRecentlyConnectedDevices()Ljava/util/List;

    .line 21
    move-result-object v0

    .line 24
    iget-object v2, p0, Lcom/android/settingslib/media/LocalMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 25
    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 32
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v3

    .line 36
    if-eqz v3, :cond_8

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 42
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 43
    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 45
    move-result-object v6

    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz v6, :cond_5

    .line 50
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    .line 52
    move-result v4

    .line 55
    const/16 v5, 0xc

    .line 56
    if-ne v4, v5, :cond_5

    .line 58
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 60
    move-result v4

    .line 63
    if-nez v4, :cond_5

    .line 64
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    .line 66
    move-result-object v4

    .line 69
    check-cast v4, Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object v4

    .line 75
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v5

    .line 79
    const/4 v7, 0x1

    .line 80
    if-eqz v5, :cond_4

    .line 81
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v5

    .line 86
    check-cast v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 87
    instance-of v8, v5, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 89
    if-nez v8, :cond_3

    .line 91
    instance-of v8, v5, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 93
    if-nez v8, :cond_3

    .line 95
    instance-of v5, v5, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 97
    if-eqz v5, :cond_2

    .line 99
    :cond_3
    move v4, v7

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    move v4, v3

    .line 103
    :goto_0
    if-eqz v4, :cond_5

    .line 104
    goto :goto_1

    .line 106
    :cond_5
    move v7, v3

    .line 107
    :goto_1
    if-eqz v7, :cond_1

    .line 108
    iget-object v4, p0, Lcom/android/settingslib/media/LocalMediaManager;->mAudioManager:Landroid/media/AudioManager;

    .line 110
    invoke-virtual {v4}, Landroid/media/AudioManager;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    .line 112
    move-result-object v4

    .line 115
    if-eqz v4, :cond_7

    .line 116
    if-nez v6, :cond_6

    .line 118
    goto :goto_2

    .line 120
    :cond_6
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 121
    move-result-object v3

    .line 124
    invoke-virtual {v4}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 125
    move-result-object v4

    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v3

    .line 132
    :cond_7
    :goto_2
    if-eqz v3, :cond_1

    .line 133
    new-instance v0, Lcom/android/settingslib/media/BluetoothMediaDevice;

    .line 135
    iget-object v5, p0, Lcom/android/settingslib/media/LocalMediaManager;->mContext:Landroid/content/Context;

    .line 137
    const/4 v7, 0x0

    .line 139
    const/4 v8, 0x0

    .line 140
    iget-object v9, p0, Lcom/android/settingslib/media/LocalMediaManager;->mPackageName:Ljava/lang/String;

    .line 141
    move-object v4, v0

    .line 143
    invoke-direct/range {v4 .. v9}, Lcom/android/settingslib/media/BluetoothMediaDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;)V

    .line 144
    return-object v0

    .line 147
    :cond_8
    return-object v1

    .line 148
    :cond_9
    :goto_3
    const-string p0, "LocalMediaManager"

    .line 149
    const-string v0, "BluetoothAdapter is null or muting expected device not exist"

    .line 151
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v1
    .line 156
.end method
