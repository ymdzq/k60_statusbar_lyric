.class public Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedUpdater;
.super Lcom/android/settings/bluetooth/GroupBluetoothDeviceUpdater;
.source "GroupBluetoothDevicesConnectedUpdater.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mGroupId:I

.field private mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

.field private mMetricsCategory:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;II)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/GroupBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;I)V

    .line 59
    iput p4, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedUpdater;->mGroupId:I

    .line 60
    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedUpdater;->mAudioManager:Landroid/media/AudioManager;

    .line 61
    new-instance p2, Lcom/android/settings/bluetooth/GroupUtils;

    invoke-direct {p2, p1}, Lcom/android/settings/bluetooth/GroupUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedUpdater;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    .line 62
    iput p3, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedUpdater;->mMetricsCategory:I

    return-void
.end method


# virtual methods
.method protected getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "group_devices_connected"

    return-object p0
.end method

.method public isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 7

    .line 75
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedUpdater;->mAudioManager:Landroid/media/AudioManager;

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

    .line 86
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->isDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v3

    const-string v4, "GroupBluetoothDevicesConnectedUpdater"

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    .line 87
    sget-boolean v3, Lcom/android/settings/bluetooth/GroupBluetoothDeviceUpdater;->DBG:Z

    if-eqz v3, :cond_2

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFilterMatched() current audio profile : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedHearingAidDevice()Z

    move-result v3

    if-eqz v3, :cond_3

    return v5

    :cond_3
    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_3

    .line 105
    :cond_4
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v0

    goto :goto_2

    .line 108
    :cond_5
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedHfpDevice()Z

    move-result v0

    :goto_2
    xor-int/2addr v0, v2

    goto :goto_4

    :cond_6
    :goto_3
    move v0, v5

    .line 112
    :goto_4
    sget-boolean v1, Lcom/android/settings/bluetooth/GroupBluetoothDeviceUpdater;->DBG:Z

    if-eqz v1, :cond_7

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFilterMatche cachedDevice : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isFilterMatched : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v0, :cond_8

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->isGroupDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedUpdater;->mGroupId:I

    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedUpdater;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p0

    if-ne v0, p0, :cond_8

    goto :goto_5

    :cond_8
    move v2, v5

    :goto_5
    return v2
.end method

.method public onAudioModeChanged()V
    .locals 2

    .line 67
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupBluetoothDeviceUpdater;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "GroupBluetoothDevicesConnectedUpdater"

    const-string/jumbo v1, "onAudioModeChanged "

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 128
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupBluetoothDeviceUpdater;->DBG:Z

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreferenceClick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupBluetoothDevicesConnectedUpdater"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedUpdater;->mMetricsCategory:I

    invoke-virtual {v0, p1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 132
    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 133
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setActive()Z

    move-result p0

    return p0
.end method
