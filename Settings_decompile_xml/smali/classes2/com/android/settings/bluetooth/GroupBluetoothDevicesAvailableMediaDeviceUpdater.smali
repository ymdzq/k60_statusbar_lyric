.class public Lcom/android/settings/bluetooth/GroupBluetoothDevicesAvailableMediaDeviceUpdater;
.super Lcom/android/settings/bluetooth/GroupBluetoothGroupDeviceUpdater;
.source "GroupBluetoothDevicesAvailableMediaDeviceUpdater.java"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mGroupId:I

.field private mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;II)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/GroupBluetoothGroupDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;I)V

    .line 54
    iput p4, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesAvailableMediaDeviceUpdater;->mGroupId:I

    .line 55
    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesAvailableMediaDeviceUpdater;->mAudioManager:Landroid/media/AudioManager;

    .line 56
    new-instance p2, Lcom/android/settings/bluetooth/GroupUtils;

    invoke-direct {p2, p1}, Lcom/android/settings/bluetooth/GroupUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesAvailableMediaDeviceUpdater;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    return-void
.end method


# virtual methods
.method protected getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "group_options_active_devices"

    return-object p0
.end method

.method public isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 8

    .line 66
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesAvailableMediaDeviceUpdater;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 77
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->isDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 78
    sget-boolean v3, Lcom/android/settings/bluetooth/GroupBluetoothDeviceUpdater;->DBG:Z

    const-string v5, "GroupBluetoothDevicesAvailableMediaDeviceUpdater"

    if-eqz v3, :cond_2

    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isFilterMatched() current audio profile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedHearingAidDevice()Z

    move-result v6

    if-eqz v6, :cond_3

    return v4

    :cond_3
    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    move v0, v4

    goto :goto_2

    .line 96
    :cond_4
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v0

    goto :goto_2

    .line 99
    :cond_5
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedHfpDevice()Z

    move-result v0

    :goto_2
    if-eqz v3, :cond_7

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFilterMatched "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cachedDevice : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move v0, v4

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->isGroupDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesAvailableMediaDeviceUpdater;->mGroupId:I

    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesAvailableMediaDeviceUpdater;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p0

    if-ne v0, p0, :cond_8

    goto :goto_4

    :cond_8
    move v2, v4

    :goto_4
    return v2
.end method

.method public onAudioModeChanged()V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    return-void
.end method
