.class public abstract Lcom/android/settingslib/wifi/WifiUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field static final ACTION_WIFI_DIALOG:Ljava/lang/String; = "com.android.settings.WIFI_DIALOG"

.field static final EXTRA_CHOSEN_WIFI_ENTRY_KEY:Ljava/lang/String; = "key_chosen_wifientry_key"

.field static final EXTRA_CONNECT_FOR_CALLER:Ljava/lang/String; = "connect_for_caller"

.field public static final NO_INTERNET_WIFI_PIE:[I

.field public static final WIFI_PIE:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const v0, 0x10805a7    # @android:drawable/jog_dial_arrow_short_left_and_right

    .line 2
    const v1, 0x10805a8    # @android:drawable/jog_dial_arrow_short_right

    .line 5
    const v2, 0x10805a6    # @android:drawable/jog_dial_arrow_short_left

    .line 8
    const v3, 0x10805a9    # @android:drawable/jog_dial_bg

    .line 11
    const v4, 0x10805aa    # @android:drawable/jog_dial_dimple

    .line 14
    filled-new-array {v2, v0, v1, v3, v4}, [I

    .line 17
    move-result-object v0

    .line 20
    sput-object v0, Lcom/android/settingslib/wifi/WifiUtils;->WIFI_PIE:[I

    .line 21
    const v0, 0x7f081104    # @drawable/ic_no_internet_wifi_signal_1 'res/drawable/ic_no_internet_wifi_signal_1.xml'

    .line 23
    const v1, 0x7f081105    # @drawable/ic_no_internet_wifi_signal_2 'res/drawable/ic_no_internet_wifi_signal_2.xml'

    .line 26
    const v2, 0x7f081103    # @drawable/ic_no_internet_wifi_signal_0 'res/drawable/ic_no_internet_wifi_signal_0.xml'

    .line 29
    const v3, 0x7f081106    # @drawable/ic_no_internet_wifi_signal_3 'res/drawable/ic_no_internet_wifi_signal_3.xml'

    .line 32
    const v4, 0x7f081107    # @drawable/ic_no_internet_wifi_signal_4 'res/drawable/ic_no_internet_wifi_signal_4.xml'

    .line 35
    filled-new-array {v2, v0, v1, v3, v4}, [I

    .line 38
    move-result-object v0

    .line 41
    sput-object v0, Lcom/android/settingslib/wifi/WifiUtils;->NO_INTERNET_WIFI_PIE:[I

    .line 42
    return-void
    .line 44
.end method

.method public static getVisibilityStatus(Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/String;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    .line 31
    move-result v7

    .line 34
    if-eqz v7, :cond_2

    .line 35
    if-eqz v1, :cond_2

    .line 37
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 39
    move-result-object v7

    .line 42
    if-eqz v7, :cond_0

    .line 43
    const-string v8, " "

    .line 45
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_0
    const-string v8, " standard = "

    .line 53
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 58
    move-result v8

    .line 61
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v8, " rssi="

    .line 65
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 70
    move-result v8

    .line 73
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v8, "  score="

    .line 77
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getScore()I

    .line 82
    move-result v8

    .line 85
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    iget v8, v0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 89
    if-eqz v8, :cond_1

    .line 91
    const-string v8, " speed="

    .line 93
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget v8, v0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 98
    invoke-virtual {v0, v8}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(I)Ljava/lang/String;

    .line 100
    move-result-object v8

    .line 103
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_1
    const-string v8, " tx=%.1f,"

    .line 107
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSuccessfulTxPacketsPerSecond()D

    .line 109
    move-result-wide v9

    .line 112
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 113
    move-result-object v9

    .line 116
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 117
    move-result-object v9

    .line 120
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    move-result-object v8

    .line 124
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v8, "%.1f,"

    .line 128
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRetriedTxPacketsPerSecond()D

    .line 130
    move-result-wide v9

    .line 133
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 134
    move-result-object v9

    .line 137
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 138
    move-result-object v9

    .line 141
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    move-result-object v8

    .line 145
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v8, "%.1f "

    .line 149
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLostTxPacketsPerSecond()D

    .line 151
    move-result-wide v9

    .line 154
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 155
    move-result-object v9

    .line 158
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 159
    move-result-object v9

    .line 162
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    move-result-object v8

    .line 166
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string/jumbo v8, "rx=%.1f"

    .line 170
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSuccessfulRxPacketsPerSecond()D

    .line 173
    move-result-wide v9

    .line 176
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 177
    move-result-object v1

    .line 180
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 181
    move-result-object v1

    .line 184
    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    move-result-object v1

    .line 188
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    goto :goto_0

    .line 192
    :cond_2
    const/4 v7, 0x0

    .line 193
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 194
    move-result-wide v8

    .line 197
    new-instance v1, Landroid/util/ArraySet;

    .line 198
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 200
    iget-object v10, v0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    .line 203
    monitor-enter v10

    .line 205
    :try_start_0
    iget-object v11, v0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 206
    invoke-virtual {v1, v11}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 208
    iget-object v11, v0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    .line 211
    invoke-virtual {v1, v11}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 213
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 217
    move-result-object v1

    .line 220
    const/4 v10, 0x0

    .line 221
    const/16 v11, -0x7f

    .line 222
    move-object/from16 v16, v2

    .line 224
    move-object/from16 v17, v5

    .line 226
    move v12, v10

    .line 228
    move v13, v12

    .line 229
    move v2, v11

    .line 230
    move v5, v2

    .line 231
    move v14, v5

    .line 232
    move v15, v14

    .line 233
    move v11, v13

    .line 234
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    move-result v18

    .line 238
    move/from16 v19, v5

    .line 239
    if-eqz v18, :cond_e

    .line 241
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    move-result-object v18

    .line 246
    move-object/from16 v5, v18

    .line 247
    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 249
    if-nez v5, :cond_3

    .line 251
    move/from16 v5, v19

    .line 253
    goto :goto_1

    .line 255
    :cond_3
    move-object/from16 v18, v1

    .line 256
    iget v1, v5, Landroid/net/wifi/ScanResult;->frequency:I

    .line 258
    move/from16 v20, v12

    .line 260
    const/16 v12, 0x172f

    .line 262
    if-lt v1, v12, :cond_6

    .line 264
    const/16 v12, 0x1bcb

    .line 266
    if-gt v1, v12, :cond_6

    .line 268
    add-int/lit8 v13, v13, 0x1

    .line 270
    iget v1, v5, Landroid/net/wifi/ScanResult;->level:I

    .line 272
    if-le v1, v2, :cond_4

    .line 274
    move v2, v1

    .line 276
    :cond_4
    const/4 v1, 0x4

    .line 277
    if-gt v13, v1, :cond_5

    .line 278
    invoke-static {v0, v5, v7, v8, v9}, Lcom/android/settingslib/wifi/WifiUtils;->verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;

    .line 280
    move-result-object v1

    .line 283
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_5
    :goto_2
    move-object/from16 v21, v6

    .line 287
    move-object/from16 v1, v17

    .line 289
    move/from16 v5, v19

    .line 291
    goto/16 :goto_5

    .line 293
    :cond_6
    const/16 v12, 0x1324

    .line 295
    if-lt v1, v12, :cond_8

    .line 297
    const/16 v12, 0x170c

    .line 299
    if-gt v1, v12, :cond_8

    .line 301
    add-int/lit8 v11, v11, 0x1

    .line 303
    iget v1, v5, Landroid/net/wifi/ScanResult;->level:I

    .line 305
    if-le v1, v15, :cond_7

    .line 307
    move v15, v1

    .line 309
    :cond_7
    const/4 v1, 0x4

    .line 310
    if-gt v11, v1, :cond_5

    .line 311
    invoke-static {v0, v5, v7, v8, v9}, Lcom/android/settingslib/wifi/WifiUtils;->verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;

    .line 313
    move-result-object v1

    .line 316
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    goto :goto_2

    .line 320
    :cond_8
    const/16 v12, 0x960

    .line 321
    if-lt v1, v12, :cond_a

    .line 323
    const/16 v12, 0x9c4

    .line 325
    if-gt v1, v12, :cond_a

    .line 327
    add-int/lit8 v10, v10, 0x1

    .line 329
    iget v1, v5, Landroid/net/wifi/ScanResult;->level:I

    .line 331
    if-le v1, v14, :cond_9

    .line 333
    move v14, v1

    .line 335
    :cond_9
    const/4 v1, 0x4

    .line 336
    if-gt v10, v1, :cond_5

    .line 337
    invoke-static {v0, v5, v7, v8, v9}, Lcom/android/settingslib/wifi/WifiUtils;->verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;

    .line 339
    move-result-object v1

    .line 342
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    goto :goto_2

    .line 346
    :cond_a
    const v12, 0xe3d0

    .line 347
    if-lt v1, v12, :cond_d

    .line 350
    const v12, 0x11238

    .line 352
    if-gt v1, v12, :cond_d

    .line 355
    add-int/lit8 v12, v20, 0x1

    .line 357
    iget v1, v5, Landroid/net/wifi/ScanResult;->level:I

    .line 359
    move-object/from16 v21, v6

    .line 361
    move/from16 v6, v19

    .line 363
    if-le v1, v6, :cond_b

    .line 365
    goto :goto_3

    .line 367
    :cond_b
    move v1, v6

    .line 368
    :goto_3
    const/4 v6, 0x4

    .line 369
    if-gt v12, v6, :cond_c

    .line 370
    invoke-static {v0, v5, v7, v8, v9}, Lcom/android/settingslib/wifi/WifiUtils;->verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;

    .line 372
    move-result-object v5

    .line 375
    move-object/from16 v6, v17

    .line 376
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    goto :goto_4

    .line 381
    :cond_c
    move-object/from16 v6, v17

    .line 382
    :goto_4
    move v5, v1

    .line 384
    move-object v1, v6

    .line 385
    goto :goto_6

    .line 386
    :cond_d
    move-object/from16 v21, v6

    .line 387
    move-object/from16 v1, v17

    .line 389
    move/from16 v6, v19

    .line 391
    move v5, v6

    .line 393
    :goto_5
    move/from16 v12, v20

    .line 394
    :goto_6
    move-object/from16 v17, v1

    .line 396
    move-object/from16 v1, v18

    .line 398
    move-object/from16 v6, v21

    .line 400
    goto/16 :goto_1

    .line 402
    :cond_e
    move-object/from16 v21, v6

    .line 404
    move/from16 v20, v12

    .line 406
    move-object/from16 v1, v17

    .line 408
    move/from16 v6, v19

    .line 410
    const-string v0, " ["

    .line 412
    move-object/from16 v5, v16

    .line 414
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    if-lez v10, :cond_10

    .line 419
    const-string v0, "("

    .line 421
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 426
    const-string v0, ")"

    .line 429
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const/4 v0, 0x4

    .line 434
    if-le v10, v0, :cond_f

    .line 435
    const-string v0, "max="

    .line 437
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    const-string v0, ","

    .line 445
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    move-result-object v0

    .line 453
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :cond_10
    const-string v0, ";"

    .line 457
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    if-lez v11, :cond_12

    .line 462
    const-string v0, "("

    .line 464
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    const-string v0, ")"

    .line 472
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const/4 v0, 0x4

    .line 477
    if-le v11, v0, :cond_11

    .line 478
    const-string v0, "max="

    .line 480
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 485
    const-string v0, ","

    .line 488
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_11
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    move-result-object v0

    .line 496
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :cond_12
    const-string v0, ";"

    .line 500
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    if-lez v20, :cond_14

    .line 505
    const-string v0, "("

    .line 507
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    move/from16 v12, v20

    .line 512
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 514
    const-string v0, ")"

    .line 517
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const/4 v0, 0x4

    .line 522
    if-le v12, v0, :cond_13

    .line 523
    const-string v0, "max="

    .line 525
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    const-string v0, ","

    .line 533
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    move-result-object v0

    .line 541
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_14
    const-string v0, ";"

    .line 545
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    if-lez v13, :cond_16

    .line 550
    const-string v0, "("

    .line 552
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    const-string v0, ")"

    .line 560
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    const/4 v0, 0x4

    .line 565
    if-le v13, v0, :cond_15

    .line 566
    const-string v0, "max="

    .line 568
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    const-string v0, ","

    .line 576
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :cond_15
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    move-result-object v0

    .line 584
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_16
    const-string v0, "]"

    .line 588
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    move-result-object v0

    .line 596
    return-object v0

    .line 597
    :catchall_0
    move-exception v0

    .line 598
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    throw v0
    .line 600
.end method

.method public static verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, " \n{"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    const-string p2, "*"

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_0
    const-string p2, "="

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget p2, p1, Landroid/net/wifi/ScanResult;->frequency:I

    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string p2, ","

    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    .line 47
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 49
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 54
    check-cast v1, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    .line 55
    if-nez v1, :cond_1

    .line 57
    const/4 v1, 0x0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, v1, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->mScore:Landroid/net/ScoredNetwork;

    .line 61
    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    .line 63
    invoke-virtual {v1, v2}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    .line 65
    move-result v1

    .line 68
    :goto_0
    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(I)Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_2
    iget-wide p0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 81
    const-wide/16 v1, 0x3e8

    .line 83
    div-long/2addr p0, v1

    .line 85
    sub-long/2addr p3, p0

    .line 86
    long-to-int p0, p3

    .line 87
    div-int/lit16 p0, p0, 0x3e8

    .line 88
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo p0, "s}"

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 105
    return-object p0
    .line 106
.end method
