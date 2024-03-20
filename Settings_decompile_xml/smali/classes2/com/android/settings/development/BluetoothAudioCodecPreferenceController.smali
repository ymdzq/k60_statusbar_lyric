.class public Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;
.super Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.source "BluetoothAudioCodecPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    return-void
.end method

.method private getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 235
    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 239
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object p0

    .line 240
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected getCurrentA2dpSettingIndex(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 1

    .line 189
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, p1, :cond_2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x7

    if-eq p0, p1, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 p1, 0x13

    if-eq p0, p1, :cond_2

    packed-switch p0, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xb

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x9

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xa

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_0

    :cond_2
    move p1, v0

    :cond_3
    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDefaultIndex()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected getListSummaries()[Ljava/lang/String;
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->bluetooth_a2dp_codec_summaries:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getListValues()[Ljava/lang/String;
    .locals 1

    .line 48
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->bluetooth_a2dp_codec_titles:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "bluetooth_select_a2dp_codec"

    return-object p0
.end method

.method protected writeConfigurationValues(Ljava/lang/Object;)V
    .locals 12

    .line 65
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0xe

    const/16 v1, 0xc

    const/16 v2, 0xd

    const/16 v3, 0x13

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const v10, 0xf4240

    const/4 v11, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 170
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter p1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 177
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 160
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter p1

    .line 161
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 167
    :cond_1
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_2
    move v0, v1

    goto/16 :goto_2

    :pswitch_3
    move v0, v2

    goto/16 :goto_2

    :pswitch_4
    move v0, v3

    goto :goto_2

    :pswitch_5
    move v0, v4

    goto :goto_2

    :pswitch_6
    move v0, v5

    goto :goto_2

    :pswitch_7
    move v0, v6

    goto :goto_2

    :pswitch_8
    move v0, v7

    goto :goto_2

    :pswitch_9
    move v0, v8

    goto :goto_2

    :pswitch_a
    move v0, v9

    goto :goto_2

    :pswitch_b
    move v0, v11

    goto :goto_2

    .line 71
    :pswitch_c
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 72
    iget-object v10, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v10, p1}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_d
    move v0, v1

    goto :goto_0

    :pswitch_e
    move v0, v2

    goto :goto_0

    :pswitch_f
    move v0, v3

    goto :goto_0

    :pswitch_10
    move v0, v4

    goto :goto_0

    :pswitch_11
    move v0, v5

    goto :goto_0

    :pswitch_12
    move v0, v6

    goto :goto_0

    :pswitch_13
    move v0, v7

    goto :goto_0

    :pswitch_14
    move v0, v8

    goto :goto_0

    :pswitch_15
    move v0, v9

    :goto_0
    :pswitch_16
    move v10, v11

    goto :goto_2

    :goto_1
    :pswitch_17
    move v0, v11

    move v10, v0

    .line 183
    :goto_2
    :pswitch_18
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p1, v0}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecType(I)V

    .line 184
    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p0, v10}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecPriority(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_18
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_16
    .end packed-switch
.end method
