.class public abstract Lcom/android/settingslib/bluetooth/BluetoothUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static sErrorListener:Lcom/android/systemui/keyboard/KeyboardUI$BluetoothErrorListener;


# direct methods
.method public static getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x6

    .line 6
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    .line 7
    move-result-object p0

    .line 10
    if-nez p0, :cond_1

    .line 11
    return v0

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 14
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 19
    move-result p0

    .line 22
    return p0
    .line 23
.end method

.method public static getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    .line 8
    move-result v1

    .line 11
    const/16 v2, 0x100

    .line 12
    if-eq v1, v2, :cond_5

    .line 14
    const/16 v2, 0x200

    .line 16
    if-eq v1, v2, :cond_4

    .line 18
    const/16 v2, 0x500

    .line 20
    if-eq v1, v2, :cond_1

    .line 22
    const/16 v2, 0x600

    .line 24
    if-eq v1, v2, :cond_0

    .line 26
    iget-boolean v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsLeAudioEnabled:Z

    .line 28
    if-nez v1, :cond_6

    .line 30
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getClassOfDevice()I

    .line 32
    move-result v1

    .line 35
    const/16 v2, 0x4000

    .line 36
    and-int/2addr v1, v2

    .line 38
    if-ne v1, v2, :cond_6

    .line 39
    new-instance p1, Landroid/util/Pair;

    .line 41
    const v0, 0x7f080ee3    # @drawable/ic_adv_audio 'res/drawable/ic_adv_audio.xml'

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 46
    move-result-object v0

    .line 49
    const v1, 0x7f13020a    # @string/bluetooth_talkback_group 'Group Devices'

    .line 50
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    return-object p1

    .line 60
    :cond_0
    new-instance p1, Landroid/util/Pair;

    .line 61
    const v0, 0x108055e    # @android:drawable/ic_signal_wifi_transient_animation

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 66
    move-result-object v0

    .line 69
    const v1, 0x7f13020d    # @string/bluetooth_talkback_imaging 'Imaging'

    .line 70
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    return-object p1

    .line 80
    :cond_1
    new-instance p1, Landroid/util/Pair;

    .line 81
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    .line 83
    move-result v0

    .line 86
    const/16 v1, 0x540

    .line 87
    if-eq v0, v1, :cond_3

    .line 89
    const/16 v1, 0x580

    .line 91
    if-eq v0, v1, :cond_2

    .line 93
    const/16 v1, 0x5c0

    .line 95
    if-eq v0, v1, :cond_3

    .line 97
    const v0, 0x1080354    # @android:drawable/ic_btn_square_browser_zoom_fit_page_disabled

    .line 99
    goto :goto_0

    .line 102
    :cond_2
    const v0, 0x1080356    # @android:drawable/ic_btn_square_browser_zoom_page_overview

    .line 103
    goto :goto_0

    .line 106
    :cond_3
    const v0, 0x1080418    # @android:drawable/ic_lockscreen_text_activated

    .line 107
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 110
    move-result-object v0

    .line 113
    const v1, 0x7f13020e    # @string/bluetooth_talkback_input_peripheral 'Input Peripheral'

    .line 114
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 120
    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    return-object p1

    .line 124
    :cond_4
    new-instance p1, Landroid/util/Pair;

    .line 125
    const v0, 0x108053c    # @android:drawable/ic_qs_dnd

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 130
    move-result-object v0

    .line 133
    const v1, 0x7f13020f    # @string/bluetooth_talkback_phone 'Phone'

    .line 134
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 140
    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    return-object p1

    .line 144
    :cond_5
    new-instance p1, Landroid/util/Pair;

    .line 145
    const v0, 0x1080353    # @android:drawable/ic_btn_square_browser_zoom_fit_page

    .line 147
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 150
    move-result-object v0

    .line 153
    const v1, 0x7f130209    # @string/bluetooth_talkback_computer 'Computer'

    .line 154
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 157
    move-result-object p0

    .line 160
    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    return-object p1

    .line 164
    :cond_6
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    .line 165
    move-result-object p1

    .line 168
    check-cast p1, Ljava/util/ArrayList;

    .line 169
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 171
    move-result-object p1

    .line 174
    const/4 v1, 0x0

    .line 175
    move v2, v1

    .line 176
    :cond_7
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    move-result v3

    .line 180
    const/4 v4, 0x0

    .line 181
    if-eqz v3, :cond_a

    .line 182
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    move-result-object v3

    .line 187
    check-cast v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 188
    invoke-interface {v3, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    .line 190
    move-result v5

    .line 193
    if-eqz v5, :cond_7

    .line 194
    instance-of v6, v3, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 196
    if-nez v6, :cond_9

    .line 198
    instance-of v3, v3, Lcom/android/settingslib/bluetooth/HapClientProfile;

    .line 200
    if-eqz v3, :cond_8

    .line 202
    goto :goto_2

    .line 204
    :cond_8
    if-nez v2, :cond_7

    .line 205
    move v2, v5

    .line 207
    goto :goto_1

    .line 208
    :cond_9
    :goto_2
    new-instance p1, Landroid/util/Pair;

    .line 209
    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 211
    move-result-object p0

    .line 214
    invoke-direct {p1, p0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    return-object p1

    .line 218
    :cond_a
    if-eqz v2, :cond_b

    .line 219
    new-instance p1, Landroid/util/Pair;

    .line 221
    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 223
    move-result-object p0

    .line 226
    invoke-direct {p1, p0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    return-object p1

    .line 230
    :cond_b
    if-eqz v0, :cond_d

    .line 231
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    .line 233
    move-result p1

    .line 236
    if-eqz p1, :cond_c

    .line 237
    new-instance p1, Landroid/util/Pair;

    .line 239
    const v0, 0x1080351    # @android:drawable/ic_btn_round_more_normal

    .line 241
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 244
    move-result-object v0

    .line 247
    const v1, 0x7f13020c    # @string/bluetooth_talkback_headset 'Headset'

    .line 248
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 251
    move-result-object p0

    .line 254
    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    return-object p1

    .line 258
    :cond_c
    const/4 p1, 0x1

    .line 259
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    .line 260
    move-result p1

    .line 263
    if-eqz p1, :cond_d

    .line 264
    new-instance p1, Landroid/util/Pair;

    .line 266
    const v0, 0x1080350    # @android:drawable/ic_btn_round_more_disabled

    .line 268
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 271
    move-result-object v0

    .line 274
    const v1, 0x7f13020b    # @string/bluetooth_talkback_headphone 'Headphone'

    .line 275
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 278
    move-result-object p0

    .line 281
    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    return-object p1

    .line 285
    :cond_d
    new-instance p1, Landroid/util/Pair;

    .line 286
    const v0, 0x108055c    # @android:drawable/ic_signal_cellular_alt_24px

    .line 288
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 291
    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 295
    move-result-object v0

    .line 298
    const v1, 0x7f130208    # @string/bluetooth_talkback_bluetooth 'Bluetooth'

    .line 299
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 302
    move-result-object p0

    .line 305
    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    return-object p1
    .line 309
.end method

.method public static getIntMetaData(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    .line 6
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    return v0

    .line 12
    :cond_1
    :try_start_0
    new-instance p1, Ljava/lang/String;

    .line 13
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return p0

    .line 22
    :catch_0
    return v0
    .line 23
.end method

.method public static getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    .line 6
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    return-object v0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/String;

    .line 13
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    .line 15
    return-object p1
    .line 18
.end method

.method public static isAdvancedDetailsHeader(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "settings_ui"

    .line 2
    const-string v1, "bt_advanced_header_enabled"

    .line 5
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v3, "BluetoothUtils"

    .line 13
    if-nez v0, :cond_0

    .line 15
    const-string v0, "isAdvancedDetailsHeader: advancedEnabled is false"

    .line 17
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    if-nez v0, :cond_1

    .line 25
    return v1

    .line 27
    :cond_1
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;)Z

    .line 28
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    const-string v0, "isAdvancedDetailsHeader: untetheredHeadset is true"

    .line 34
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    move v0, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v0, v1

    .line 41
    :goto_1
    if-eqz v0, :cond_3

    .line 42
    return v2

    .line 44
    :cond_3
    const/16 v0, 0x11

    .line 45
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    const-string v0, "Untethered Headset"

    .line 51
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 53
    move-result v0

    .line 56
    if-nez v0, :cond_5

    .line 57
    const-string v0, "Watch"

    .line 59
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 61
    move-result v0

    .line 64
    if-nez v0, :cond_5

    .line 65
    const-string v0, "Default"

    .line 67
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 69
    move-result v0

    .line 72
    if-nez v0, :cond_5

    .line 73
    const-string v0, "Stylus"

    .line 75
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 77
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    goto :goto_2

    .line 83
    :cond_4
    return v1

    .line 84
    :cond_5
    :goto_2
    const-string v0, "isAdvancedDetailsHeader: deviceType is "

    .line 85
    invoke-static {v0, p0, v3}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return v2
    .line 90
.end method

.method public static isAdvancedUntetheredDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "settings_ui"

    .line 2
    const-string v1, "bt_advanced_header_enabled"

    .line 5
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v3, "BluetoothUtils"

    .line 13
    if-nez v0, :cond_0

    .line 15
    const-string v0, "isAdvancedDetailsHeader: advancedEnabled is false"

    .line 17
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    if-nez v0, :cond_1

    .line 25
    return v1

    .line 27
    :cond_1
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;)Z

    .line 28
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    const-string v0, "isAdvancedDetailsHeader: untetheredHeadset is true"

    .line 34
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    move v0, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v0, v1

    .line 41
    :goto_1
    if-eqz v0, :cond_3

    .line 42
    return v2

    .line 44
    :cond_3
    const/16 v0, 0x11

    .line 45
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    const-string v0, "Untethered Headset"

    .line 51
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 53
    move-result p0

    .line 56
    if-eqz p0, :cond_4

    .line 57
    const-string p0, "isAdvancedUntetheredDevice: is untethered device "

    .line 59
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v2

    .line 64
    :cond_4
    return v1
    .line 65
.end method
