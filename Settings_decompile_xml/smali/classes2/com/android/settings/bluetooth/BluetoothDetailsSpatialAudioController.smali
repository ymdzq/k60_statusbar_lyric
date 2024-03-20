.class public Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsSpatialAudioController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field mAudioDevice:Landroid/media/AudioDeviceAttributes;

.field private mIsAvailable:Z

.field mProfilesContainer:Landroidx/preference/PreferenceCategory;

.field private final mSpatializer:Landroid/media/Spatializer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 64
    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 65
    invoke-virtual {p1}, Landroid/media/AudioManager;->getSpatializer()Landroid/media/Spatializer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->getAvailableDevice()V

    return-void
.end method

.method private getAvailableDevice()V
    .locals 8

    .line 155
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 158
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    .line 159
    new-instance v1, Landroid/media/AudioDeviceAttributes;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 162
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-direct {v1, v2, v4, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    .line 163
    new-instance v3, Landroid/media/AudioDeviceAttributes;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 166
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1b

    invoke-direct {v3, v2, v5, v4}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    .line 167
    new-instance v4, Landroid/media/AudioDeviceAttributes;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 170
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v2, v6, v5}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    .line 171
    new-instance v5, Landroid/media/AudioDeviceAttributes;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 174
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x17

    invoke-direct {v5, v2, v7, v6}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x1

    .line 176
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mIsAvailable:Z

    .line 177
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v2, v1}, Landroid/media/Spatializer;->isAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    goto :goto_0

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v1, v3}, Landroid/media/Spatializer;->isAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    goto :goto_0

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v1, v4}, Landroid/media/Spatializer;->isAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    goto :goto_0

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v1, v0}, Landroid/media/Spatializer;->isAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    goto :goto_0

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v0, v5}, Landroid/media/Spatializer;->isAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mIsAvailable:Z

    .line 187
    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    .line 190
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAvailableDevice() device : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 191
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    .line 192
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is available : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mIsAvailable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothSpatialAudioController"

    .line 190
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method createHeadTrackingPreference(Landroid/content/Context;)Landroidx/preference/SwitchPreference;
    .locals 2

    .line 146
    new-instance v0, Landroidx/preference/SwitchPreference;

    invoke-direct {v0, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "head_tracking"

    .line 147
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 148
    sget v1, Lcom/android/settings/R$string;->bluetooth_details_head_tracking_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    sget v1, Lcom/android/settings/R$string;->bluetooth_details_head_tracking_summary:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method createSpatialAudioPreference(Landroid/content/Context;)Landroidx/preference/SwitchPreference;
    .locals 2

    .line 136
    new-instance v0, Landroidx/preference/SwitchPreference;

    invoke-direct {v0, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "spatial_audio"

    .line 137
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 138
    sget v1, Lcom/android/settings/R$string;->bluetooth_details_spatial_audio_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    sget v1, Lcom/android/settings/R$string;->bluetooth_details_spatial_audio_summary:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "spatial_audio_group"

    return-object p0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->refresh()V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mIsAvailable:Z

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 77
    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 78
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spatial_audio"

    .line 79
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p1, v0}, Landroid/media/Spatializer;->addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p1, v0}, Landroid/media/Spatializer;->removeCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->refresh()V

    return v2

    :cond_1
    const-string v1, "head_tracking"

    .line 87
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0, p1, p0}, Landroid/media/Spatializer;->setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V

    return v2

    :cond_2
    const-string p0, "BluetoothSpatialAudioController"

    const-string p1, "invalid key name."

    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected refresh()V
    .locals 6

    .line 109
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v1, "spatial_audio"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->createSpatialAudioPreference(Landroid/content/Context;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v1}, Landroid/media/Spatializer;->getCompatibleAudioDevices()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refresh() isSpatialAudioOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothSpatialAudioController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    const-string v2, "head_tracking"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->createHeadTrackingPreference(Landroid/content/Context;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    .line 122
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    .line 126
    invoke-virtual {v1, v2}, Landroid/media/Spatializer;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 127
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refresh() has head tracker : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v4, v5}, Landroid/media/Spatializer;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v1, p0}, Landroid/media/Spatializer;->isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method setAvailableDevice(Landroid/media/AudioDeviceAttributes;)V
    .locals 1

    .line 198
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    .line 199
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v0, p1}, Landroid/media/Spatializer;->isAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mIsAvailable:Z

    return-void
.end method
