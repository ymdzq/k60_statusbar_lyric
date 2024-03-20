.class public Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# instance fields
.field public final mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1
    const-string p1, "LocalBluetoothProfileManager"

    .line 2
    if-nez p3, :cond_0

    .line 4
    const-string p0, "StateChangedHandler receives state-change for invalid device"

    .line 6
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 12
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 14
    invoke-virtual {v1, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 16
    move-result-object v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    const-string v2, "StateChangedHandler found new device: "

    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 35
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object p1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 39
    invoke-virtual {p1, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 41
    move-result-object v1

    .line 44
    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->onReceiveInternal(Landroid/content/Intent;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 45
    return-void
    .line 48
.end method

.method public onReceiveInternal(Landroid/content/Intent;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 11

    .line 1
    const-string v0, "android.bluetooth.profile.extra.STATE"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    move-result v0

    .line 8
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 9
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 11
    move-result p1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v0, :cond_0

    .line 16
    if-ne p1, v2, :cond_0

    .line 18
    const-string p1, "LocalBluetoothProfileManager"

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    const-string v4, "Failed to connect "

    .line 24
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v4, " device"

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 42
    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 46
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 48
    const/4 v3, 0x2

    .line 50
    const/4 v4, -0x1

    .line 51
    const-wide/16 v5, 0x0

    .line 52
    if-eqz p1, :cond_6

    .line 54
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 56
    instance-of p1, p1, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 58
    if-eqz p1, :cond_6

    .line 60
    if-ne v0, v3, :cond_6

    .line 62
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    .line 64
    move-result-wide v7

    .line 67
    cmp-long p1, v7, v5

    .line 68
    if-nez p1, :cond_5

    .line 70
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 72
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 74
    iget-object v7, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 76
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    .line 78
    if-eqz p1, :cond_2

    .line 80
    if-nez v7, :cond_1

    .line 82
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p1, v7}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    .line 85
    move-result-wide v7

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    :goto_0
    move-wide v7, v5

    .line 90
    :goto_1
    cmp-long p1, v7, v5

    .line 91
    if-eqz p1, :cond_5

    .line 93
    iget-object p1, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 95
    iget-object v9, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 97
    iget-object v9, v9, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 99
    iget-object v9, v9, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    .line 101
    if-nez v9, :cond_3

    .line 103
    const-string v9, "HearingAidProfile"

    .line 105
    const-string v10, "Proxy not attached to HearingAidService"

    .line 107
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    move v9, v4

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    invoke-virtual {v9, p1}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I

    .line 114
    move-result v9

    .line 117
    :goto_2
    sget-object v10, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING:Landroid/util/SparseIntArray;

    .line 118
    invoke-virtual {v10, v9, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 120
    move-result v9

    .line 123
    iget-object v10, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 124
    iget-object v10, v10, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 126
    iget-object v10, v10, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    .line 128
    if-nez v10, :cond_4

    .line 130
    const-string p1, "HearingAidProfile"

    .line 132
    const-string v10, "Proxy not attached to HearingAidService"

    .line 134
    invoke-static {p1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    move p1, v4

    .line 139
    goto :goto_3

    .line 140
    :cond_4
    invoke-virtual {v10, p1}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I

    .line 141
    move-result p1

    .line 144
    :goto_3
    sget-object v10, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_MODE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;

    .line 145
    invoke-virtual {v10, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 147
    move-result p1

    .line 150
    new-instance v10, Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 151
    invoke-direct {v10, v9, p1, v7, v8}, Lcom/android/settingslib/bluetooth/HearingAidInfo;-><init>(IIJ)V

    .line 153
    iput-object v10, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 156
    :cond_5
    invoke-static {p2}, Lcom/android/settingslib/bluetooth/HearingAidStatsLogUtils;->logHearingAidInfo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 158
    :cond_6
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 161
    iget-object v7, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    .line 163
    if-eqz v7, :cond_7

    .line 165
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 167
    instance-of v7, v7, Lcom/android/settingslib/bluetooth/HapClientProfile;

    .line 169
    if-eqz v7, :cond_7

    .line 171
    move v7, v2

    .line 173
    goto :goto_4

    .line 174
    :cond_7
    move v7, v1

    .line 175
    :goto_4
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 176
    if-eqz p1, :cond_8

    .line 178
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 180
    instance-of p1, p1, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 182
    if-eqz p1, :cond_8

    .line 184
    move p1, v2

    .line 186
    goto :goto_5

    .line 187
    :cond_8
    move p1, v1

    .line 188
    :goto_5
    if-nez v7, :cond_a

    .line 189
    if-eqz p1, :cond_9

    .line 191
    goto :goto_6

    .line 193
    :cond_9
    move p1, v1

    .line 194
    goto :goto_7

    .line 195
    :cond_a
    :goto_6
    move p1, v2

    .line 196
    :goto_7
    if-eqz p1, :cond_16

    .line 197
    if-ne v0, v3, :cond_16

    .line 199
    iget-object p1, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 201
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    .line 203
    if-eqz p1, :cond_b

    .line 205
    iget-object v7, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 207
    invoke-virtual {p1, v7}, Lcom/android/settingslib/bluetooth/HapClientProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    .line 209
    move-result p1

    .line 212
    if-ne p1, v3, :cond_b

    .line 213
    move p1, v2

    .line 215
    goto :goto_8

    .line 216
    :cond_b
    move p1, v1

    .line 217
    :goto_8
    if-eqz p1, :cond_d

    .line 218
    iget-object p1, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 220
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 222
    if-eqz p1, :cond_c

    .line 224
    iget-object v7, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 226
    invoke-virtual {p1, v7}, Lcom/android/settingslib/bluetooth/LeAudioProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    .line 228
    move-result p1

    .line 231
    if-ne p1, v3, :cond_c

    .line 232
    move p1, v2

    .line 234
    goto :goto_9

    .line 235
    :cond_c
    move p1, v1

    .line 236
    :goto_9
    if-eqz p1, :cond_d

    .line 237
    move p1, v2

    .line 239
    goto :goto_a

    .line 240
    :cond_d
    move p1, v1

    .line 241
    :goto_a
    if-eqz p1, :cond_16

    .line 242
    iget-object p1, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 244
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 246
    iget-object v7, v7, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 248
    iget-object v7, v7, Lcom/android/settingslib/bluetooth/LeAudioProfile;->mService:Landroid/bluetooth/BluetoothLeAudio;

    .line 250
    if-eqz v7, :cond_f

    .line 252
    if-nez p1, :cond_e

    .line 254
    goto :goto_b

    .line 256
    :cond_e
    invoke-virtual {v7, p1}, Landroid/bluetooth/BluetoothLeAudio;->getAudioLocation(Landroid/bluetooth/BluetoothDevice;)I

    .line 257
    move-result v7

    .line 260
    goto :goto_c

    .line 261
    :cond_f
    :goto_b
    move v7, v1

    .line 262
    :goto_c
    sget-object v8, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING:Landroid/util/SparseIntArray;

    .line 263
    const v8, 0x5451451

    .line 265
    and-int/2addr v8, v7

    .line 268
    if-eqz v8, :cond_10

    .line 269
    move v8, v2

    .line 271
    goto :goto_d

    .line 272
    :cond_10
    move v8, v1

    .line 273
    :goto_d
    const v9, 0xa8a28a2

    .line 274
    and-int/2addr v7, v9

    .line 277
    if-eqz v7, :cond_11

    .line 278
    move v7, v2

    .line 280
    goto :goto_e

    .line 281
    :cond_11
    move v7, v1

    .line 282
    :goto_e
    if-eqz v8, :cond_12

    .line 283
    if-eqz v7, :cond_12

    .line 285
    move v7, v3

    .line 287
    goto :goto_f

    .line 288
    :cond_12
    if-eqz v8, :cond_13

    .line 289
    move v7, v1

    .line 291
    goto :goto_f

    .line 292
    :cond_13
    if-eqz v7, :cond_14

    .line 293
    move v7, v2

    .line 295
    goto :goto_f

    .line 296
    :cond_14
    move v7, v4

    .line 297
    :goto_f
    iget-object v8, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 298
    iget-object v8, v8, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    .line 300
    iget-object v8, v8, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    .line 302
    if-nez v8, :cond_15

    .line 304
    move p1, v4

    .line 306
    goto :goto_10

    .line 307
    :cond_15
    invoke-virtual {v8, p1}, Landroid/bluetooth/BluetoothHapClient;->getHearingAidType(Landroid/bluetooth/BluetoothDevice;)I

    .line 308
    move-result p1

    .line 311
    :goto_10
    sget-object v8, Lcom/android/settingslib/bluetooth/HearingAidInfo;->HAP_DEVICE_TYPE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;

    .line 312
    invoke-virtual {v8, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 314
    move-result p1

    .line 317
    new-instance v8, Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 318
    invoke-direct {v8, v7, p1, v5, v6}, Lcom/android/settingslib/bluetooth/HearingAidInfo;-><init>(IIJ)V

    .line 320
    iput-object v8, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 323
    invoke-static {p2}, Lcom/android/settingslib/bluetooth/HearingAidStatsLogUtils;->logHearingAidInfo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 325
    :cond_16
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 328
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mCsipSetCoordinatorProfile:Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    .line 330
    if-eqz p1, :cond_19

    .line 332
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 334
    instance-of v7, v7, Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    .line 336
    if-eqz v7, :cond_19

    .line 338
    if-ne v0, v3, :cond_19

    .line 340
    iget v7, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 342
    if-ne v7, v4, :cond_19

    .line 344
    iget-object v7, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 346
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;->mService:Landroid/bluetooth/BluetoothCsipSetCoordinator;

    .line 348
    if-eqz p1, :cond_18

    .line 350
    if-nez v7, :cond_17

    .line 352
    goto :goto_11

    .line 354
    :cond_17
    invoke-virtual {p1, v7}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getGroupUuidMapByDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/util/Map;

    .line 355
    move-result-object p1

    .line 358
    goto :goto_12

    .line 359
    :cond_18
    :goto_11
    const/4 p1, 0x0

    .line 360
    :goto_12
    if-eqz p1, :cond_19

    .line 361
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 363
    move-result-object p1

    .line 366
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 367
    move-result-object p1

    .line 370
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    move-result v7

    .line 374
    if-eqz v7, :cond_19

    .line 375
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    move-result-object p1

    .line 380
    check-cast p1, Ljava/util/Map$Entry;

    .line 381
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 383
    move-result-object p1

    .line 386
    check-cast p1, Ljava/lang/Integer;

    .line 387
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 389
    move-result p1

    .line 392
    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setGroupId(I)V

    .line 393
    :cond_19
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 396
    invoke-virtual {p2, p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 398
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    .line 401
    move-result-wide v7

    .line 404
    cmp-long p1, v7, v5

    .line 405
    if-nez p1, :cond_1a

    .line 407
    iget p1, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 409
    if-eq p1, v4, :cond_1f

    .line 411
    :cond_1a
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 413
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 415
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 417
    invoke-interface {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    .line 419
    move-result v4

    .line 422
    monitor-enter p1

    .line 423
    const/16 v5, 0x15

    .line 424
    if-ne v4, v5, :cond_1b

    .line 426
    :try_start_0
    iget-object v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDeviceManager:Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;

    .line 428
    invoke-virtual {v1, v0, p2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->onProfileConnectionStateChangedIfProcessed(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    .line 430
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    monitor-exit p1

    .line 434
    goto :goto_15

    .line 435
    :cond_1b
    if-eq v4, v2, :cond_1d

    .line 436
    if-eq v4, v3, :cond_1d

    .line 438
    const/16 v5, 0x16

    .line 440
    if-eq v4, v5, :cond_1d

    .line 442
    const/16 v5, 0x19

    .line 444
    if-ne v4, v5, :cond_1c

    .line 446
    goto :goto_13

    .line 448
    :cond_1c
    monitor-exit p1

    .line 449
    goto :goto_15

    .line 450
    :cond_1d
    :goto_13
    :try_start_1
    iget-object v4, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCsipDeviceManager:Lcom/android/settingslib/bluetooth/CsipDeviceManager;

    .line 451
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    new-instance v5, Ljava/lang/StringBuilder;

    .line 456
    const-string v6, "onProfileConnectionStateChangedIfProcessed: "

    .line 458
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 463
    const-string v6, ", state: "

    .line 466
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    move-result-object v5

    .line 477
    invoke-static {v5}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->log(Ljava/lang/String;)V

    .line 478
    if-eq v0, v3, :cond_1e

    .line 481
    if-eqz v0, :cond_1e

    .line 483
    goto :goto_14

    .line 485
    :cond_1e
    iget v1, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 486
    invoke-virtual {v4, v1}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->updateRelationshipOfGroupDevices(I)Z

    .line 488
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    :goto_14
    monitor-exit p1

    .line 492
    :goto_15
    xor-int/2addr v2, v1

    .line 493
    :cond_1f
    if-eqz v2, :cond_20

    .line 494
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 496
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 499
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 501
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 503
    invoke-interface {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    .line 505
    move-result p0

    .line 508
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 509
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 511
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 513
    move-result-object p1

    .line 516
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 517
    move-result v1

    .line 520
    if-eqz v1, :cond_20

    .line 521
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 523
    move-result-object v1

    .line 526
    check-cast v1, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 527
    invoke-interface {v1, p2, v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V

    .line 529
    goto :goto_16

    .line 532
    :cond_20
    return-void

    .line 533
    :catchall_0
    move-exception p0

    .line 534
    monitor-exit p1

    .line 535
    throw p0
    .line 536
.end method
