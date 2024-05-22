.class public final Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter$updateItemsRunnable$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

.field public final synthetic this$1:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter$updateItemsRunnable$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter$updateItemsRunnable$1;->this$1:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v0, v1, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter$updateItemsRunnable$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 9
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getDevices()Ljava/util/Collection;

    .line 15
    move-result-object v0

    .line 18
    if-eqz v0, :cond_35

    .line 19
    iget-object v3, v1, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter$updateItemsRunnable$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v4

    .line 26
    const/4 v0, 0x0

    .line 27
    move v5, v0

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_35

    .line 33
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 38
    move-object v6, v0

    .line 39
    check-cast v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v0

    .line 45
    const/16 v7, 0x14

    .line 46
    if-ge v0, v7, :cond_0

    .line 48
    iget-object v0, v3, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 50
    move-object v7, v0

    .line 52
    check-cast v7, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 53
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    .line 55
    const-string/jumbo v8, "value is "

    .line 57
    const-string v9, ""

    .line 60
    const/4 v10, 0x1

    .line 62
    const-string v11, "BluetoothController"

    .line 63
    iget-object v12, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 65
    if-eqz v6, :cond_7

    .line 67
    :try_start_0
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 69
    move-result-object v13

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    move-result-object v14

    .line 76
    const-string v15, "miui_qcom_adv_audio_unicast"

    .line 77
    invoke-static {v14, v15}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v14

    .line 82
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    move-result v15

    .line 86
    if-nez v15, :cond_2

    .line 87
    const-string/jumbo v15, "true"

    .line 89
    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 92
    move-result v14

    .line 95
    if-eqz v14, :cond_2

    .line 96
    iget-object v0, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 98
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    move-result-object v7

    .line 103
    const-string v8, "getSpecificCodecStatus"

    .line 104
    new-array v13, v10, [Ljava/lang/Class;

    .line 106
    const-class v14, Ljava/lang/String;

    .line 108
    const/4 v15, 0x0

    .line 110
    aput-object v14, v13, v15

    .line 111
    invoke-virtual {v7, v8, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 113
    move-result-object v7

    .line 116
    new-array v8, v10, [Ljava/lang/Object;

    .line 117
    const-string v13, "LE_SECONDARY"

    .line 119
    aput-object v13, v8, v15

    .line 121
    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 131
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    const/4 v7, 0x2

    .line 135
    if-eq v0, v7, :cond_1

    .line 136
    move v0, v10

    .line 138
    goto :goto_1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    :cond_1
    const/4 v0, 0x0

    .line 144
    :goto_1
    if-eqz v0, :cond_7

    .line 145
    iget v0, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 147
    const/4 v7, -0x1

    .line 149
    if-eq v0, v7, :cond_6

    .line 150
    const-string v0, "main null"

    .line 152
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    goto/16 :goto_5

    .line 157
    :cond_2
    sget-boolean v14, Lcom/miui/utils/configs/MiuiConfigs;->SUPPORT_LEAUDIO_CG:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 159
    if-eqz v14, :cond_5

    .line 161
    :try_start_3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 163
    move-result-object v0

    .line 166
    const-string v14, "ble_audio_address"

    .line 167
    invoke-static {v0, v14}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 172
    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 175
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 178
    if-eqz v0, :cond_3

    .line 179
    move v0, v10

    .line 181
    goto :goto_2

    .line 182
    :catch_1
    move-exception v0

    .line 183
    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    .line 184
    const-string v15, "isDualModeDevice Exception "

    .line 186
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 197
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_3
    const/4 v0, 0x0

    .line 201
    :goto_2
    if-eqz v0, :cond_5

    .line 202
    invoke-virtual {v7, v13}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->findBrAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    move-result-object v0

    .line 207
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    move-result v7

    .line 211
    if-nez v7, :cond_4

    .line 212
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    move-result v0

    .line 217
    if-nez v0, :cond_4

    .line 218
    move v0, v10

    .line 220
    goto :goto_3

    .line 221
    :cond_4
    const/4 v0, 0x0

    .line 222
    :goto_3
    if-eqz v0, :cond_5

    .line 223
    goto :goto_4

    .line 225
    :cond_5
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 226
    move-result-object v0

    .line 229
    const-string/jumbo v7, "three_mac_for_ble_f"

    .line 230
    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    move-result-object v0

    .line 236
    new-instance v7, Ljava/lang/StringBuilder;

    .line 237
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v8, " myMac is "

    .line 245
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v7

    .line 256
    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz v0, :cond_7

    .line 260
    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 262
    move-result v7

    .line 265
    if-eqz v7, :cond_7

    .line 266
    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 268
    move-result v0

    .line 271
    div-int/lit8 v0, v0, 0x12

    .line 272
    rem-int/lit8 v0, v0, 0x3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 274
    if-eqz v0, :cond_7

    .line 276
    :cond_6
    :goto_4
    move v0, v10

    .line 278
    goto :goto_6

    .line 279
    :catch_2
    move-exception v0

    .line 280
    const-string v7, " isBleAudioDevice Exception "

    .line 281
    invoke-static {v7, v0, v11}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 283
    :cond_7
    :goto_5
    const/4 v0, 0x0

    .line 286
    :goto_6
    if-nez v0, :cond_0

    .line 287
    new-instance v7, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;

    .line 289
    invoke-direct {v7}, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;-><init>()V

    .line 291
    iput-boolean v10, v7, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->selectable:Z

    .line 294
    const v0, 0x7f08113a    # @drawable/ic_qs_bluetooth_on 'res/drawable/ic_qs_bluetooth_on.xml'

    .line 296
    iput v0, v7, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->iconRes:I

    .line 299
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 301
    move-result-object v0

    .line 304
    iput-object v0, v7, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->title:Ljava/lang/CharSequence;

    .line 305
    iget-object v0, v3, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 307
    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 309
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    .line 314
    move-result v0

    .line 317
    if-nez v0, :cond_9

    .line 318
    iget-object v0, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 320
    :try_start_5
    check-cast v0, Ljava/util/HashSet;

    .line 322
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 324
    move-result-object v0

    .line 327
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    move-result v8

    .line 331
    if-eqz v8, :cond_9

    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    move-result-object v8

    .line 337
    check-cast v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 338
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    .line 340
    move-result v13

    .line 343
    if-eqz v13, :cond_8

    .line 344
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    .line 346
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 349
    goto :goto_7

    .line 350
    :catch_3
    move-exception v0

    .line 351
    const-string v8, "Exception "

    .line 352
    invoke-static {v8, v0, v11}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 354
    :cond_9
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    .line 357
    move-result-object v0

    .line 360
    :goto_7
    if-nez v0, :cond_a

    .line 361
    goto :goto_8

    .line 363
    :cond_a
    move-object v9, v0

    .line 364
    :goto_8
    iput-object v6, v7, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->tag:Ljava/lang/Object;

    .line 365
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 367
    move-result-object v0

    .line 370
    if-eqz v0, :cond_e

    .line 371
    sget-object v8, Lcom/android/systemui/controlcenter/utils/BluetoothUtils;->MI_WATCH_DEVICE_NAME_LIST:[Ljava/lang/String;

    .line 373
    const/4 v11, 0x0

    .line 375
    :goto_9
    const/4 v13, 0x4

    .line 376
    if-ge v11, v13, :cond_c

    .line 377
    aget-object v13, v8, v11

    .line 379
    invoke-static {v0, v13}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 381
    move-result v13

    .line 384
    if-eqz v13, :cond_b

    .line 385
    goto :goto_b

    .line 387
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 388
    goto :goto_9

    .line 390
    :cond_c
    sget-object v8, Lcom/android/systemui/controlcenter/utils/BluetoothUtils;->MI_BRAND_DEVICE_NAME_LIST:[Ljava/lang/String;

    .line 391
    const/4 v11, 0x0

    .line 393
    :goto_a
    const/4 v13, 0x5

    .line 394
    if-ge v11, v13, :cond_e

    .line 395
    aget-object v13, v8, v11

    .line 397
    invoke-static {v0, v13}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 399
    move-result v13

    .line 402
    if-eqz v13, :cond_d

    .line 403
    :goto_b
    const v0, 0x7f081128    # @drawable/ic_qs_bluetooth_device_bracelet 'res/drawable/ic_qs_bluetooth_device_bracelet.xml'

    .line 405
    goto/16 :goto_16

    .line 408
    :cond_d
    add-int/lit8 v11, v11, 0x1

    .line 410
    goto :goto_a

    .line 412
    :cond_e
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    .line 413
    move-result-object v0

    .line 416
    const/16 v8, 0x5c0

    .line 417
    const/16 v11, 0x580

    .line 419
    const/16 v13, 0x540

    .line 421
    if-eqz v0, :cond_15

    .line 423
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    .line 425
    move-result v14

    .line 428
    const/16 v15, 0x100

    .line 429
    if-eq v14, v15, :cond_14

    .line 431
    const/16 v15, 0x200

    .line 433
    if-eq v14, v15, :cond_13

    .line 435
    const/16 v15, 0x500

    .line 437
    if-eq v14, v15, :cond_11

    .line 439
    const/16 v0, 0x600

    .line 441
    if-eq v14, v0, :cond_10

    .line 443
    const/16 v0, 0x1500

    .line 445
    if-eq v14, v0, :cond_f

    .line 447
    goto :goto_c

    .line 449
    :cond_f
    const v0, 0x7f08112e    # @drawable/ic_qs_bluetooth_device_hearing_aid 'res/drawable/ic_qs_bluetooth_device_hearing_aid.xml'

    .line 450
    goto/16 :goto_16

    .line 453
    :cond_10
    const v0, 0x7f08112f    # @drawable/ic_qs_bluetooth_device_imaging 'res/drawable/ic_qs_bluetooth_device_imaging.xml'

    .line 455
    goto/16 :goto_16

    .line 458
    :cond_11
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    .line 460
    move-result v0

    .line 463
    const/16 v14, 0x51c

    .line 464
    if-eq v0, v14, :cond_12

    .line 466
    if-eq v0, v13, :cond_1f

    .line 468
    if-eq v0, v11, :cond_22

    .line 470
    if-eq v0, v8, :cond_1f

    .line 472
    goto/16 :goto_14

    .line 474
    :cond_12
    const v0, 0x7f081136    # @drawable/ic_qs_bluetooth_device_pen 'res/drawable/ic_qs_bluetooth_device_pen.xml'

    .line 476
    goto/16 :goto_16

    .line 479
    :cond_13
    const v0, 0x7f08112a    # @drawable/ic_qs_bluetooth_device_cellphone 'res/drawable/ic_qs_bluetooth_device_cellphone.xml'

    .line 481
    goto/16 :goto_16

    .line 484
    :cond_14
    const v0, 0x7f081131    # @drawable/ic_qs_bluetooth_device_laptop 'res/drawable/ic_qs_bluetooth_device_laptop.xml'

    .line 486
    goto/16 :goto_16

    .line 489
    :cond_15
    :goto_c
    iget-object v0, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 491
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    .line 493
    move-result-object v14

    .line 496
    if-eqz v14, :cond_16

    .line 497
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    .line 499
    move-result v14

    .line 502
    const/16 v15, 0x420

    .line 503
    if-ne v14, v15, :cond_16

    .line 505
    move v14, v10

    .line 507
    goto :goto_d

    .line 508
    :cond_16
    const/4 v14, 0x0

    .line 509
    :goto_d
    if-eqz v14, :cond_18

    .line 510
    if-eqz v0, :cond_17

    .line 512
    const-string v14, "bluetooth_eir_manufacture"

    .line 514
    invoke-virtual {v0, v14}, Landroid/bluetooth/BluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    .line 516
    move-result v0

    .line 519
    const/16 v14, 0x38f

    .line 520
    if-ne v0, v14, :cond_17

    .line 522
    move v0, v10

    .line 524
    goto :goto_e

    .line 525
    :cond_17
    const/4 v0, 0x0

    .line 526
    :goto_e
    if-eqz v0, :cond_18

    .line 527
    const v0, 0x7f081129    # @drawable/ic_qs_bluetooth_device_car 'res/drawable/ic_qs_bluetooth_device_car.xml'

    .line 529
    goto/16 :goto_16

    .line 532
    :cond_18
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    .line 534
    move-result-object v0

    .line 537
    check-cast v0, Ljava/util/ArrayList;

    .line 538
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 540
    move-result-object v0

    .line 543
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 544
    move-result v14

    .line 547
    if-eqz v14, :cond_28

    .line 548
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 550
    move-result-object v14

    .line 553
    check-cast v14, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 554
    instance-of v15, v14, Lcom/android/settingslib/bluetooth/HidProfile;

    .line 556
    if-eqz v15, :cond_24

    .line 558
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    .line 560
    move-result-object v0

    .line 563
    if-eqz v0, :cond_1a

    .line 564
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    .line 566
    move-result v0

    .line 569
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 570
    move-result-object v0

    .line 573
    goto :goto_f

    .line 574
    :cond_1a
    const/4 v0, 0x0

    .line 575
    :goto_f
    if-nez v0, :cond_1b

    .line 576
    goto :goto_10

    .line 578
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 579
    move-result v14

    .line 582
    if-ne v14, v13, :cond_1c

    .line 583
    goto :goto_11

    .line 585
    :cond_1c
    :goto_10
    if-nez v0, :cond_1d

    .line 586
    goto :goto_12

    .line 588
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 589
    move-result v13

    .line 592
    if-ne v13, v8, :cond_1e

    .line 593
    :goto_11
    move v8, v10

    .line 595
    goto :goto_13

    .line 596
    :cond_1e
    :goto_12
    const/4 v8, 0x0

    .line 597
    :goto_13
    if-eqz v8, :cond_20

    .line 598
    :cond_1f
    const v0, 0x7f081130    # @drawable/ic_qs_bluetooth_device_keyboard 'res/drawable/ic_qs_bluetooth_device_keyboard.xml'

    .line 600
    goto :goto_16

    .line 603
    :cond_20
    if-nez v0, :cond_21

    .line 604
    goto :goto_14

    .line 606
    :cond_21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 607
    move-result v0

    .line 610
    if-ne v0, v11, :cond_23

    .line 611
    :cond_22
    const v0, 0x7f081137    # @drawable/ic_qs_bluetooth_device_pointing 'res/drawable/ic_qs_bluetooth_device_pointing.xml'

    .line 613
    goto :goto_16

    .line 616
    :cond_23
    :goto_14
    const v0, 0x7f081133    # @drawable/ic_qs_bluetooth_device_misc 'res/drawable/ic_qs_bluetooth_device_misc.xml'

    .line 617
    goto :goto_16

    .line 620
    :cond_24
    instance-of v15, v14, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 621
    if-eqz v15, :cond_25

    .line 623
    const/4 v0, 0x0

    .line 625
    goto :goto_18

    .line 626
    :cond_25
    instance-of v15, v14, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 627
    if-eqz v15, :cond_26

    .line 629
    const/4 v0, 0x0

    .line 631
    goto :goto_1b

    .line 632
    :cond_26
    instance-of v15, v14, Lcom/android/settingslib/bluetooth/PanProfile;

    .line 633
    if-eqz v15, :cond_27

    .line 635
    goto :goto_15

    .line 637
    :cond_27
    const-string v15, "DUN Server"

    .line 638
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 640
    move-result-object v14

    .line 643
    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 644
    move-result v14

    .line 647
    if-eqz v14, :cond_19

    .line 648
    :goto_15
    const v0, 0x7f081135    # @drawable/ic_qs_bluetooth_device_network 'res/drawable/ic_qs_bluetooth_device_network.xml'

    .line 650
    :goto_16
    const/4 v8, 0x0

    .line 653
    goto :goto_1c

    .line 654
    :cond_28
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    .line 655
    move-result-object v0

    .line 658
    const/4 v8, 0x0

    .line 659
    if-eqz v0, :cond_29

    .line 660
    invoke-virtual {v0, v8}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    .line 662
    move-result v0

    .line 665
    if-ne v0, v10, :cond_29

    .line 666
    move v0, v10

    .line 668
    goto :goto_17

    .line 669
    :cond_29
    move v0, v8

    .line 670
    :goto_17
    if-eqz v0, :cond_2a

    .line 671
    move v0, v8

    .line 673
    :goto_18
    const v8, 0x7f08112d    # @drawable/ic_qs_bluetooth_device_headset 'res/drawable/ic_qs_bluetooth_device_headset.xml'

    .line 674
    :goto_19
    move/from16 v16, v8

    .line 677
    move v8, v0

    .line 679
    move/from16 v0, v16

    .line 680
    goto :goto_1c

    .line 682
    :cond_2a
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    .line 683
    move-result-object v0

    .line 686
    if-eqz v0, :cond_2b

    .line 687
    invoke-virtual {v0, v10}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    .line 689
    move-result v0

    .line 692
    if-ne v0, v10, :cond_2b

    .line 693
    move v0, v10

    .line 695
    goto :goto_1a

    .line 696
    :cond_2b
    move v0, v8

    .line 697
    :goto_1a
    if-eqz v0, :cond_2c

    .line 698
    move v0, v8

    .line 700
    :goto_1b
    const v8, 0x7f08112c    # @drawable/ic_qs_bluetooth_device_headphones 'res/drawable/ic_qs_bluetooth_device_headphones.xml'

    .line 701
    goto :goto_19

    .line 704
    :cond_2c
    const v0, 0x7f08112b    # @drawable/ic_qs_bluetooth_device_common 'res/drawable/ic_qs_bluetooth_device_common.xml'

    .line 705
    :goto_1c
    iput v0, v7, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->iconRes:I

    .line 708
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    .line 710
    move-result v0

    .line 713
    if-eq v0, v10, :cond_32

    .line 714
    const/4 v6, 0x2

    .line 716
    if-eq v0, v6, :cond_2f

    .line 717
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 719
    move-result v0

    .line 722
    if-nez v0, :cond_2d

    .line 723
    goto :goto_1d

    .line 725
    :cond_2d
    move v10, v8

    .line 726
    :goto_1d
    if-eqz v10, :cond_2e

    .line 727
    const v0, 0x7f1309fa    # @string/quick_settings_state_saved 'Saved'

    .line 729
    invoke-virtual {v12, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 732
    move-result-object v9

    .line 735
    :cond_2e
    iput-object v9, v7, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->summary:Ljava/lang/CharSequence;

    .line 736
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    goto/16 :goto_0

    .line 741
    :cond_2f
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 743
    move-result v0

    .line 746
    if-nez v0, :cond_30

    .line 747
    move v8, v10

    .line 749
    :cond_30
    if-eqz v8, :cond_31

    .line 750
    const v0, 0x7f130939    # @string/qs_control_big_tile_state_connected 'Connected'

    .line 752
    invoke-virtual {v12, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 755
    move-result-object v9

    .line 758
    :cond_31
    iput-object v9, v7, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->summary:Ljava/lang/CharSequence;

    .line 759
    iput-boolean v10, v7, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->clickToDisconnect:Z

    .line 761
    iput-boolean v10, v7, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->selected:Z

    .line 763
    invoke-virtual {v2, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 765
    add-int/lit8 v5, v5, 0x1

    .line 768
    goto/16 :goto_0

    .line 770
    :cond_32
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 772
    move-result v0

    .line 775
    if-nez v0, :cond_33

    .line 776
    goto :goto_1e

    .line 778
    :cond_33
    move v10, v8

    .line 779
    :goto_1e
    if-eqz v10, :cond_34

    .line 780
    const v0, 0x7f13093a    # @string/qs_control_big_tile_state_connecting 'Connecting…'

    .line 782
    invoke-virtual {v12, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 785
    move-result-object v9

    .line 788
    :cond_34
    iput-object v9, v7, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->summary:Ljava/lang/CharSequence;

    .line 789
    invoke-virtual {v2, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 791
    goto/16 :goto_0

    .line 794
    :cond_35
    iget-object v0, v1, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter$updateItemsRunnable$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 796
    iget-object v3, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 798
    new-instance v4, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter$updateItemsRunnable$1$2;

    .line 800
    iget-object v1, v1, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter$updateItemsRunnable$1;->this$1:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;

    .line 802
    invoke-direct {v4, v0, v1, v2}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter$updateItemsRunnable$1$2;-><init>(Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;Ljava/util/ArrayList;)V

    .line 804
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 807
    return-void
    .line 810
.end method
