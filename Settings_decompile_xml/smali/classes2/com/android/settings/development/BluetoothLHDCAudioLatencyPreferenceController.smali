.class public Lcom/android/settings/development/BluetoothLHDCAudioLatencyPreferenceController;
.super Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.source "BluetoothLHDCAudioLatencyPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    return-void
.end method


# virtual methods
.method protected getCurrentA2dpSettingIndex(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 2

    .line 95
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific2()J

    move-result-wide p0

    long-to-int p0, p0

    const p1, 0xc000

    and-int v0, p0, p1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    and-int/lit16 p0, p0, 0xff

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const/4 p1, 0x2

    if-le p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, p0

    :goto_1
    return v1
.end method

.method protected getDefaultIndex()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected getListSummaries()[Ljava/lang/String;
    .locals 1

    .line 56
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->bluetooth_a2dp_codec_lhdc_latency_summaries:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getListValues()[Ljava/lang/String;
    .locals 1

    .line 50
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->bluetooth_a2dp_codec_lhdc_latency_values:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "bluetooth_select_a2dp_codec_lhdc_latency"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected writeConfigurationValues(Ljava/lang/Object;)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    const v1, 0xc000

    if-gt p1, v0, :cond_0

    or-int/2addr v1, p1

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter p1

    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getCodecConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v2

    const/16 v3, 0x13

    if-eq v2, v3, :cond_1

    .line 80
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    .line 81
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    .line 82
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_2

    .line 83
    :cond_1
    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p0, v1}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecSpecific2Value(I)V

    .line 85
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
