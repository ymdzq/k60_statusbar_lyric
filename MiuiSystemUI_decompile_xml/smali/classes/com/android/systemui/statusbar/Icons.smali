.class public abstract Lcom/android/systemui/statusbar/Icons;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sDarkArray:[I

.field public static final sDarkIconMap:Ljava/util/Map;

.field public static final sIconIndex:I

.field public static final sLightArray:[I

.field public static final sLightIconMap:Ljava/util/Map;

.field public static final sTintArray:[I

.field public static final sTintIconMap:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const/16 v0, 0x100

    .line 2
    new-array v1, v0, [I

    .line 4
    sput-object v1, Lcom/android/systemui/statusbar/Icons;->sLightArray:[I

    .line 6
    new-array v2, v0, [I

    .line 8
    sput-object v2, Lcom/android/systemui/statusbar/Icons;->sTintArray:[I

    .line 10
    new-array v0, v0, [I

    .line 12
    sput-object v0, Lcom/android/systemui/statusbar/Icons;->sDarkArray:[I

    .line 14
    new-instance v3, Ljava/util/HashMap;

    .line 16
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 18
    sput-object v3, Lcom/android/systemui/statusbar/Icons;->sTintIconMap:Ljava/util/Map;

    .line 21
    new-instance v3, Ljava/util/HashMap;

    .line 23
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 25
    sput-object v3, Lcom/android/systemui/statusbar/Icons;->sLightIconMap:Ljava/util/Map;

    .line 28
    new-instance v3, Ljava/util/HashMap;

    .line 30
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 32
    sput-object v3, Lcom/android/systemui/statusbar/Icons;->sDarkIconMap:Ljava/util/Map;

    .line 35
    const v3, 0x7f0817f1    # @drawable/stat_sys_alarm 'res/drawable/stat_sys_alarm.xml'

    .line 37
    const/4 v4, 0x0

    .line 40
    aput v3, v1, v4

    .line 41
    const v3, 0x7f0817f6    # @drawable/stat_sys_alarm_tint 'res/drawable/stat_sys_alarm_tint.xml'

    .line 43
    aput v3, v2, v4

    .line 46
    const/4 v3, 0x0

    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 51
    const v5, 0x7f0817f2    # @drawable/stat_sys_alarm_darkmode 'res/drawable/stat_sys_alarm_darkmode.xml'

    .line 53
    aput v5, v0, v4

    .line 56
    const v4, 0x7f0817f3    # @drawable/stat_sys_alarm_dim 'res/drawable/stat_sys_alarm_dim.xml'

    .line 58
    aput v4, v1, v3

    .line 61
    const v4, 0x7f0817f5    # @drawable/stat_sys_alarm_dim_tint 'res/drawable/stat_sys_alarm_dim_tint.xml'

    .line 63
    aput v4, v2, v3

    .line 66
    add-int/lit8 v4, v3, 0x1

    .line 68
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 70
    const v5, 0x7f0817f4    # @drawable/stat_sys_alarm_dim_darkmode 'res/drawable/stat_sys_alarm_dim_darkmode.xml'

    .line 72
    aput v5, v0, v3

    .line 75
    const v3, 0x7f0817f7    # @drawable/stat_sys_bluetooth_handsfree_battery_1 'res/drawable/stat_sys_bluetooth_handsfree_battery_1.xml'

    .line 77
    aput v3, v1, v4

    .line 80
    const/4 v3, -0x1

    .line 82
    aput v3, v2, v4

    .line 83
    add-int/lit8 v3, v4, 0x1

    .line 85
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 87
    const v5, 0x7f0817f8    # @drawable/stat_sys_bluetooth_handsfree_battery_1_darkmode 'res/drawable/stat_sys_bluetooth_handsfree_battery_1_darkmode.xml'

    .line 89
    aput v5, v0, v4

    .line 92
    const v4, 0x7f0817fa    # @drawable/stat_sys_bluetooth_handsfree_battery_2 'res/drawable/stat_sys_bluetooth_handsfree_battery_2.xml'

    .line 94
    aput v4, v1, v3

    .line 97
    const v4, 0x7f0817fc    # @drawable/stat_sys_bluetooth_handsfree_battery_2_tint 'res/drawable/stat_sys_bluetooth_handsfree_battery_2_tint.xml'

    .line 99
    aput v4, v2, v3

    .line 102
    add-int/lit8 v4, v3, 0x1

    .line 104
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 106
    const v5, 0x7f0817fb    # @drawable/stat_sys_bluetooth_handsfree_battery_2_darkmode 'res/drawable/stat_sys_bluetooth_handsfree_battery_2_darkmode.xml'

    .line 108
    aput v5, v0, v3

    .line 111
    const v3, 0x7f0817fd    # @drawable/stat_sys_bluetooth_handsfree_battery_3 'res/drawable/stat_sys_bluetooth_handsfree_battery_3.xml'

    .line 113
    aput v3, v1, v4

    .line 116
    const v3, 0x7f0817ff    # @drawable/stat_sys_bluetooth_handsfree_battery_3_tint 'res/drawable/stat_sys_bluetooth_handsfree_battery_3_tint.xml'

    .line 118
    aput v3, v2, v4

    .line 121
    add-int/lit8 v3, v4, 0x1

    .line 123
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 125
    const v5, 0x7f0817fe    # @drawable/stat_sys_bluetooth_handsfree_battery_3_darkmode 'res/drawable/stat_sys_bluetooth_handsfree_battery_3_darkmode.xml'

    .line 127
    aput v5, v0, v4

    .line 130
    const v4, 0x7f081800    # @drawable/stat_sys_bluetooth_handsfree_battery_4 'res/drawable/stat_sys_bluetooth_handsfree_battery_4.xml'

    .line 132
    aput v4, v1, v3

    .line 135
    const v4, 0x7f081802    # @drawable/stat_sys_bluetooth_handsfree_battery_4_tint 'res/drawable/stat_sys_bluetooth_handsfree_battery_4_tint.xml'

    .line 137
    aput v4, v2, v3

    .line 140
    add-int/lit8 v4, v3, 0x1

    .line 142
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 144
    const v5, 0x7f081801    # @drawable/stat_sys_bluetooth_handsfree_battery_4_darkmode 'res/drawable/stat_sys_bluetooth_handsfree_battery_4_darkmode.xml'

    .line 146
    aput v5, v0, v3

    .line 149
    const v3, 0x7f081803    # @drawable/stat_sys_bluetooth_handsfree_battery_5 'res/drawable/stat_sys_bluetooth_handsfree_battery_5.xml'

    .line 151
    aput v3, v1, v4

    .line 154
    const v3, 0x7f081805    # @drawable/stat_sys_bluetooth_handsfree_battery_5_tint 'res/drawable/stat_sys_bluetooth_handsfree_battery_5_tint.xml'

    .line 156
    aput v3, v2, v4

    .line 159
    add-int/lit8 v3, v4, 0x1

    .line 161
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 163
    const v5, 0x7f081804    # @drawable/stat_sys_bluetooth_handsfree_battery_5_darkmode 'res/drawable/stat_sys_bluetooth_handsfree_battery_5_darkmode.xml'

    .line 165
    aput v5, v0, v4

    .line 168
    const v4, 0x7f08180b    # @drawable/stat_sys_data_bluetooth 'res/drawable/stat_sys_data_bluetooth.xml'

    .line 170
    aput v4, v1, v3

    .line 173
    const v4, 0x7f081819    # @drawable/stat_sys_data_bluetooth_tint 'res/drawable/stat_sys_data_bluetooth_tint.xml'

    .line 175
    aput v4, v2, v3

    .line 178
    add-int/lit8 v4, v3, 0x1

    .line 180
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 182
    const v5, 0x7f08180f    # @drawable/stat_sys_data_bluetooth_darkmode 'res/drawable/stat_sys_data_bluetooth_darkmode.xml'

    .line 184
    aput v5, v0, v3

    .line 187
    const v3, 0x7f08180c    # @drawable/stat_sys_data_bluetooth_connected 'res/drawable/stat_sys_data_bluetooth_connected.xml'

    .line 189
    aput v3, v1, v4

    .line 192
    const v3, 0x7f08180e    # @drawable/stat_sys_data_bluetooth_connected_tint 'res/drawable/stat_sys_data_bluetooth_connected_tint.xml'

    .line 194
    aput v3, v2, v4

    .line 197
    add-int/lit8 v3, v4, 0x1

    .line 199
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 201
    const v5, 0x7f08180d    # @drawable/stat_sys_data_bluetooth_connected_darkmode 'res/drawable/stat_sys_data_bluetooth_connected_darkmode.xml'

    .line 203
    aput v5, v0, v4

    .line 206
    const v4, 0x7f081810    # @drawable/stat_sys_data_bluetooth_in 'res/drawable/stat_sys_data_bluetooth_in.xml'

    .line 208
    aput v4, v1, v3

    .line 211
    const v4, 0x7f081812    # @drawable/stat_sys_data_bluetooth_in_tint 'res/drawable/stat_sys_data_bluetooth_in_tint.xml'

    .line 213
    aput v4, v2, v3

    .line 216
    add-int/lit8 v4, v3, 0x1

    .line 218
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 220
    const v5, 0x7f081811    # @drawable/stat_sys_data_bluetooth_in_darkmode 'res/drawable/stat_sys_data_bluetooth_in_darkmode.xml'

    .line 222
    aput v5, v0, v3

    .line 225
    const v3, 0x7f081813    # @drawable/stat_sys_data_bluetooth_inout 'res/drawable/stat_sys_data_bluetooth_inout.xml'

    .line 227
    aput v3, v1, v4

    .line 230
    const v3, 0x7f081815    # @drawable/stat_sys_data_bluetooth_inout_tint 'res/drawable/stat_sys_data_bluetooth_inout_tint.xml'

    .line 232
    aput v3, v2, v4

    .line 235
    add-int/lit8 v3, v4, 0x1

    .line 237
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 239
    const v5, 0x7f081814    # @drawable/stat_sys_data_bluetooth_inout_darkmode 'res/drawable/stat_sys_data_bluetooth_inout_darkmode.xml'

    .line 241
    aput v5, v0, v4

    .line 244
    const v4, 0x7f081816    # @drawable/stat_sys_data_bluetooth_out 'res/drawable/stat_sys_data_bluetooth_out.xml'

    .line 246
    aput v4, v1, v3

    .line 249
    const v4, 0x7f081818    # @drawable/stat_sys_data_bluetooth_out_tint 'res/drawable/stat_sys_data_bluetooth_out_tint.xml'

    .line 251
    aput v4, v2, v3

    .line 254
    add-int/lit8 v4, v3, 0x1

    .line 256
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 258
    const v5, 0x7f081817    # @drawable/stat_sys_data_bluetooth_out_darkmode 'res/drawable/stat_sys_data_bluetooth_out_darkmode.xml'

    .line 260
    aput v5, v0, v3

    .line 263
    const v3, 0x7f08181a    # @drawable/stat_sys_data_connected_roam 'res/drawable/stat_sys_data_connected_roam.xml'

    .line 265
    aput v3, v1, v4

    .line 268
    const v3, 0x7f08181f    # @drawable/stat_sys_data_connected_roam_tint 'res/drawable/stat_sys_data_connected_roam_tint.xml'

    .line 270
    aput v3, v2, v4

    .line 273
    add-int/lit8 v3, v4, 0x1

    .line 275
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 277
    const v5, 0x7f08181b    # @drawable/stat_sys_data_connected_roam_darkmode 'res/drawable/stat_sys_data_connected_roam_darkmode.xml'

    .line 279
    aput v5, v0, v4

    .line 282
    const v4, 0x7f081820    # @drawable/stat_sys_data_saver 'res/drawable/stat_sys_data_saver.xml'

    .line 284
    aput v4, v1, v3

    .line 287
    const v4, 0x7f081822    # @drawable/stat_sys_data_saver_tint 'res/drawable/stat_sys_data_saver_tint.xml'

    .line 289
    aput v4, v2, v3

    .line 292
    add-int/lit8 v4, v3, 0x1

    .line 294
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 296
    const v5, 0x7f081821    # @drawable/stat_sys_data_saver_darkmode 'res/drawable/stat_sys_data_saver_darkmode.xml'

    .line 298
    aput v5, v0, v3

    .line 301
    const v3, 0x7f0818b8    # @drawable/stat_sys_signal_volte 'res/drawable/stat_sys_signal_volte.xml'

    .line 303
    aput v3, v1, v4

    .line 306
    const v3, 0x7f0818c3    # @drawable/stat_sys_signal_volte_tint 'res/drawable/stat_sys_signal_volte_tint.xml'

    .line 308
    aput v3, v2, v4

    .line 311
    add-int/lit8 v3, v4, 0x1

    .line 313
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 315
    const v5, 0x7f0818bc    # @drawable/stat_sys_signal_volte_darkmode 'res/drawable/stat_sys_signal_volte_darkmode.xml'

    .line 317
    aput v5, v0, v4

    .line 320
    const v4, 0x7f0818b9    # @drawable/stat_sys_signal_volte_4g 'res/drawable/stat_sys_signal_volte_4g.xml'

    .line 322
    aput v4, v1, v3

    .line 325
    const v4, 0x7f0818bb    # @drawable/stat_sys_signal_volte_4g_tint 'res/drawable/stat_sys_signal_volte_4g_tint.xml'

    .line 327
    aput v4, v2, v3

    .line 330
    add-int/lit8 v4, v3, 0x1

    .line 332
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 334
    const v5, 0x7f0818ba    # @drawable/stat_sys_signal_volte_4g_darkmode 'res/drawable/stat_sys_signal_volte_4g_darkmode.xml'

    .line 336
    aput v5, v0, v3

    .line 339
    const v3, 0x7f0818bd    # @drawable/stat_sys_signal_volte_hd_voice 'res/drawable/stat_sys_signal_volte_hd_voice.xml'

    .line 341
    aput v3, v1, v4

    .line 344
    const v3, 0x7f0818bf    # @drawable/stat_sys_signal_volte_hd_voice_tint 'res/drawable/stat_sys_signal_volte_hd_voice_tint.xml'

    .line 346
    aput v3, v2, v4

    .line 349
    add-int/lit8 v3, v4, 0x1

    .line 351
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 353
    const v5, 0x7f0818be    # @drawable/stat_sys_signal_volte_hd_voice_darkmode 'res/drawable/stat_sys_signal_volte_hd_voice_darkmode.xml'

    .line 355
    aput v5, v0, v4

    .line 358
    const v4, 0x7f0818c0    # @drawable/stat_sys_signal_volte_no_frame 'res/drawable/stat_sys_signal_volte_no_frame.xml'

    .line 360
    aput v4, v1, v3

    .line 363
    const v4, 0x7f0818c2    # @drawable/stat_sys_signal_volte_no_frame_tint 'res/drawable/stat_sys_signal_volte_no_frame_tint.xml'

    .line 365
    aput v4, v2, v3

    .line 368
    add-int/lit8 v4, v3, 0x1

    .line 370
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 372
    const v5, 0x7f0818c1    # @drawable/stat_sys_signal_volte_no_frame_darkmode 'res/drawable/stat_sys_signal_volte_no_frame_darkmode.xml'

    .line 374
    aput v5, v0, v3

    .line 377
    const v3, 0x7f0818c4    # @drawable/stat_sys_signal_vonr 'res/drawable/stat_sys_signal_vonr.xml'

    .line 379
    aput v3, v1, v4

    .line 382
    const v3, 0x7f0818c9    # @drawable/stat_sys_signal_vonr_tint 'res/drawable/stat_sys_signal_vonr_tint.xml'

    .line 384
    aput v3, v2, v4

    .line 387
    add-int/lit8 v3, v4, 0x1

    .line 389
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 391
    const v5, 0x7f0818c5    # @drawable/stat_sys_signal_vonr_darkmode 'res/drawable/stat_sys_signal_vonr_darkmode.xml'

    .line 393
    aput v5, v0, v4

    .line 396
    const v4, 0x7f0818c6    # @drawable/stat_sys_signal_vonr_no_frame 'res/drawable/stat_sys_signal_vonr_no_frame.xml'

    .line 398
    aput v4, v1, v3

    .line 401
    const v4, 0x7f0818c8    # @drawable/stat_sys_signal_vonr_no_frame_tint 'res/drawable/stat_sys_signal_vonr_no_frame_tint.xml'

    .line 403
    aput v4, v2, v3

    .line 406
    add-int/lit8 v4, v3, 0x1

    .line 408
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 410
    const v5, 0x7f0818c7    # @drawable/stat_sys_signal_vonr_no_frame_darkmode 'res/drawable/stat_sys_signal_vonr_no_frame_darkmode.xml'

    .line 412
    aput v5, v0, v3

    .line 415
    const v3, 0x7f081900    # @drawable/stat_sys_vowifi 'res/drawable/stat_sys_vowifi.xml'

    .line 417
    aput v3, v1, v4

    .line 420
    const v3, 0x7f08190b    # @drawable/stat_sys_vowifi_tint 'res/drawable/stat_sys_vowifi_tint.xml'

    .line 422
    aput v3, v2, v4

    .line 425
    add-int/lit8 v3, v4, 0x1

    .line 427
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 429
    const v5, 0x7f08190a    # @drawable/stat_sys_vowifi_darkmode 'res/drawable/stat_sys_vowifi_darkmode.xml'

    .line 431
    aput v5, v0, v4

    .line 434
    const v4, 0x7f081901    # @drawable/stat_sys_vowifi_call 'res/drawable/stat_sys_vowifi_call.xml'

    .line 436
    aput v4, v1, v3

    .line 439
    const v4, 0x7f081909    # @drawable/stat_sys_vowifi_call_tint 'res/drawable/stat_sys_vowifi_call_tint.xml'

    .line 441
    aput v4, v2, v3

    .line 444
    add-int/lit8 v4, v3, 0x1

    .line 446
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 448
    const v5, 0x7f081908    # @drawable/stat_sys_vowifi_call_darkmode 'res/drawable/stat_sys_vowifi_call_darkmode.xml'

    .line 450
    aput v5, v0, v3

    .line 453
    const v3, 0x7f081902    # @drawable/stat_sys_vowifi_call_1 'res/drawable/stat_sys_vowifi_call_1.xml'

    .line 455
    aput v3, v1, v4

    .line 458
    const v3, 0x7f081904    # @drawable/stat_sys_vowifi_call_1_tint 'res/drawable/stat_sys_vowifi_call_1_tint.xml'

    .line 460
    aput v3, v2, v4

    .line 463
    add-int/lit8 v3, v4, 0x1

    .line 465
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 467
    const v5, 0x7f081903    # @drawable/stat_sys_vowifi_call_1_darkmode 'res/drawable/stat_sys_vowifi_call_1_darkmode.xml'

    .line 469
    aput v5, v0, v4

    .line 472
    const v4, 0x7f081905    # @drawable/stat_sys_vowifi_call_2 'res/drawable/stat_sys_vowifi_call_2.xml'

    .line 474
    aput v4, v1, v3

    .line 477
    const v4, 0x7f081907    # @drawable/stat_sys_vowifi_call_2_tint 'res/drawable/stat_sys_vowifi_call_2_tint.xml'

    .line 479
    aput v4, v2, v3

    .line 482
    add-int/lit8 v4, v3, 0x1

    .line 484
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 486
    const v5, 0x7f081906    # @drawable/stat_sys_vowifi_call_2_darkmode 'res/drawable/stat_sys_vowifi_call_2_darkmode.xml'

    .line 488
    aput v5, v0, v3

    .line 491
    const v3, 0x7f08190c    # @drawable/stat_sys_vowifi_wifi 'res/drawable/stat_sys_vowifi_wifi.xml'

    .line 493
    aput v3, v1, v4

    .line 496
    const v3, 0x7f08190e    # @drawable/stat_sys_vowifi_wifi_tint 'res/drawable/stat_sys_vowifi_wifi_tint.xml'

    .line 498
    aput v3, v2, v4

    .line 501
    add-int/lit8 v3, v4, 0x1

    .line 503
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 505
    const v5, 0x7f08190d    # @drawable/stat_sys_vowifi_wifi_darkmode 'res/drawable/stat_sys_vowifi_wifi_darkmode.xml'

    .line 507
    aput v5, v0, v4

    .line 510
    const v4, 0x7f081826    # @drawable/stat_sys_gps_on 'res/drawable/stat_sys_gps_on.xml'

    .line 512
    aput v4, v1, v3

    .line 515
    const v4, 0x7f081828    # @drawable/stat_sys_gps_on_tint 'res/drawable/stat_sys_gps_on_tint.xml'

    .line 517
    aput v4, v2, v3

    .line 520
    add-int/lit8 v4, v3, 0x1

    .line 522
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 524
    const v5, 0x7f081827    # @drawable/stat_sys_gps_on_darkmode 'res/drawable/stat_sys_gps_on_darkmode.xml'

    .line 526
    aput v5, v0, v3

    .line 529
    const v3, 0x7f08182c    # @drawable/stat_sys_headset 'res/drawable/stat_sys_headset.xml'

    .line 531
    aput v3, v1, v4

    .line 534
    const v3, 0x7f08182f    # @drawable/stat_sys_headset_tint 'res/drawable/stat_sys_headset_tint.xml'

    .line 536
    aput v3, v2, v4

    .line 539
    add-int/lit8 v3, v4, 0x1

    .line 541
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 543
    const v5, 0x7f08182d    # @drawable/stat_sys_headset_darkmode 'res/drawable/stat_sys_headset_darkmode.xml'

    .line 545
    aput v5, v0, v4

    .line 548
    const v4, 0x7f081830    # @drawable/stat_sys_headset_without_mic 'res/drawable/stat_sys_headset_without_mic.xml'

    .line 550
    aput v4, v1, v3

    .line 553
    const v4, 0x7f081832    # @drawable/stat_sys_headset_without_mic_tint 'res/drawable/stat_sys_headset_without_mic_tint.xml'

    .line 555
    aput v4, v2, v3

    .line 558
    add-int/lit8 v4, v3, 0x1

    .line 560
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 562
    const v5, 0x7f081831    # @drawable/stat_sys_headset_without_mic_darkmode 'res/drawable/stat_sys_headset_without_mic_darkmode.xml'

    .line 564
    aput v5, v0, v3

    .line 567
    const v3, 0x7f081855    # @drawable/stat_sys_no_sim 'res/drawable/stat_sys_no_sim.xml'

    .line 569
    aput v3, v1, v4

    .line 572
    const v3, 0x7f081857    # @drawable/stat_sys_no_sim_tint 'res/drawable/stat_sys_no_sim_tint.xml'

    .line 574
    aput v3, v2, v4

    .line 577
    add-int/lit8 v3, v4, 0x1

    .line 579
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 581
    const v5, 0x7f081856    # @drawable/stat_sys_no_sim_darkmode 'res/drawable/stat_sys_no_sim_darkmode.xml'

    .line 583
    aput v5, v0, v4

    .line 586
    const v4, 0x7f081864    # @drawable/stat_sys_ringer_silent 'res/drawable/stat_sys_ringer_silent.xml'

    .line 588
    aput v4, v1, v3

    .line 591
    const v4, 0x7f081866    # @drawable/stat_sys_ringer_silent_tint 'res/drawable/stat_sys_ringer_silent_tint.xml'

    .line 593
    aput v4, v2, v3

    .line 596
    add-int/lit8 v4, v3, 0x1

    .line 598
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 600
    const v5, 0x7f081865    # @drawable/stat_sys_ringer_silent_darkmode 'res/drawable/stat_sys_ringer_silent_darkmode.xml'

    .line 602
    aput v5, v0, v3

    .line 605
    const v3, 0x7f081867    # @drawable/stat_sys_ringer_vibrate 'res/drawable/stat_sys_ringer_vibrate.xml'

    .line 607
    aput v3, v1, v4

    .line 610
    const v3, 0x7f081869    # @drawable/stat_sys_ringer_vibrate_tint 'res/drawable/stat_sys_ringer_vibrate_tint.xml'

    .line 612
    aput v3, v2, v4

    .line 615
    add-int/lit8 v3, v4, 0x1

    .line 617
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 619
    const v5, 0x7f081868    # @drawable/stat_sys_ringer_vibrate_darkmode 'res/drawable/stat_sys_ringer_vibrate_darkmode.xml'

    .line 621
    aput v5, v0, v4

    .line 624
    const v4, 0x7f0818b2    # @drawable/stat_sys_signal_null 'res/drawable/stat_sys_signal_null.xml'

    .line 626
    aput v4, v1, v3

    .line 629
    const v4, 0x7f0818b4    # @drawable/stat_sys_signal_null_tint 'res/drawable/stat_sys_signal_null_tint.xml'

    .line 631
    aput v4, v2, v3

    .line 634
    add-int/lit8 v4, v3, 0x1

    .line 636
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 638
    const v5, 0x7f0818b3    # @drawable/stat_sys_signal_null_darkmode 'res/drawable/stat_sys_signal_null_darkmode.xml'

    .line 640
    aput v5, v0, v3

    .line 643
    const v3, 0x7f081873    # @drawable/stat_sys_signal_0 'res/drawable/stat_sys_signal_0.xml'

    .line 645
    aput v3, v1, v4

    .line 648
    const v3, 0x7f081878    # @drawable/stat_sys_signal_0_tint 'res/drawable/stat_sys_signal_0_tint.xml'

    .line 650
    aput v3, v2, v4

    .line 653
    add-int/lit8 v3, v4, 0x1

    .line 655
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 657
    const v5, 0x7f081874    # @drawable/stat_sys_signal_0_darkmode 'res/drawable/stat_sys_signal_0_darkmode.xml'

    .line 659
    aput v5, v0, v4

    .line 662
    const v4, 0x7f081875    # @drawable/stat_sys_signal_0_no_voice 'res/drawable/stat_sys_signal_0_no_voice.xml'

    .line 664
    aput v4, v1, v3

    .line 667
    const v4, 0x7f081877    # @drawable/stat_sys_signal_0_no_voice_tint 'res/drawable/stat_sys_signal_0_no_voice_tint.xml'

    .line 669
    aput v4, v2, v3

    .line 672
    add-int/lit8 v4, v3, 0x1

    .line 674
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 676
    const v5, 0x7f081876    # @drawable/stat_sys_signal_0_no_voice_darkmode 'res/drawable/stat_sys_signal_0_no_voice_darkmode.xml'

    .line 678
    aput v5, v0, v3

    .line 681
    const v3, 0x7f081879    # @drawable/stat_sys_signal_1 'res/drawable/stat_sys_signal_1.xml'

    .line 683
    aput v3, v1, v4

    .line 686
    const v3, 0x7f08187e    # @drawable/stat_sys_signal_1_tint 'res/drawable/stat_sys_signal_1_tint.xml'

    .line 688
    aput v3, v2, v4

    .line 691
    add-int/lit8 v3, v4, 0x1

    .line 693
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 695
    const v5, 0x7f08187a    # @drawable/stat_sys_signal_1_darkmode 'res/drawable/stat_sys_signal_1_darkmode.xml'

    .line 697
    aput v5, v0, v4

    .line 700
    const v4, 0x7f08187b    # @drawable/stat_sys_signal_1_no_voice 'res/drawable/stat_sys_signal_1_no_voice.xml'

    .line 702
    aput v4, v1, v3

    .line 705
    const v4, 0x7f08187d    # @drawable/stat_sys_signal_1_no_voice_tint 'res/drawable/stat_sys_signal_1_no_voice_tint.xml'

    .line 707
    aput v4, v2, v3

    .line 710
    add-int/lit8 v4, v3, 0x1

    .line 712
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 714
    const v5, 0x7f08187c    # @drawable/stat_sys_signal_1_no_voice_darkmode 'res/drawable/stat_sys_signal_1_no_voice_darkmode.xml'

    .line 716
    aput v5, v0, v3

    .line 719
    const v3, 0x7f08187f    # @drawable/stat_sys_signal_2 'res/drawable/stat_sys_signal_2.xml'

    .line 721
    aput v3, v1, v4

    .line 724
    const v3, 0x7f081884    # @drawable/stat_sys_signal_2_tint 'res/drawable/stat_sys_signal_2_tint.xml'

    .line 726
    aput v3, v2, v4

    .line 729
    add-int/lit8 v3, v4, 0x1

    .line 731
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 733
    const v5, 0x7f081880    # @drawable/stat_sys_signal_2_darkmode 'res/drawable/stat_sys_signal_2_darkmode.xml'

    .line 735
    aput v5, v0, v4

    .line 738
    const v4, 0x7f081881    # @drawable/stat_sys_signal_2_no_voice 'res/drawable/stat_sys_signal_2_no_voice.xml'

    .line 740
    aput v4, v1, v3

    .line 743
    const v4, 0x7f081883    # @drawable/stat_sys_signal_2_no_voice_tint 'res/drawable/stat_sys_signal_2_no_voice_tint.xml'

    .line 745
    aput v4, v2, v3

    .line 748
    add-int/lit8 v4, v3, 0x1

    .line 750
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 752
    const v5, 0x7f081882    # @drawable/stat_sys_signal_2_no_voice_darkmode 'res/drawable/stat_sys_signal_2_no_voice_darkmode.xml'

    .line 754
    aput v5, v0, v3

    .line 757
    const v3, 0x7f081885    # @drawable/stat_sys_signal_3 'res/drawable/stat_sys_signal_3.xml'

    .line 759
    aput v3, v1, v4

    .line 762
    const v3, 0x7f08188a    # @drawable/stat_sys_signal_3_tint 'res/drawable/stat_sys_signal_3_tint.xml'

    .line 764
    aput v3, v2, v4

    .line 767
    add-int/lit8 v3, v4, 0x1

    .line 769
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 771
    const v5, 0x7f081886    # @drawable/stat_sys_signal_3_darkmode 'res/drawable/stat_sys_signal_3_darkmode.xml'

    .line 773
    aput v5, v0, v4

    .line 776
    const v4, 0x7f081887    # @drawable/stat_sys_signal_3_no_voice 'res/drawable/stat_sys_signal_3_no_voice.xml'

    .line 778
    aput v4, v1, v3

    .line 781
    const v4, 0x7f081889    # @drawable/stat_sys_signal_3_no_voice_tint 'res/drawable/stat_sys_signal_3_no_voice_tint.xml'

    .line 783
    aput v4, v2, v3

    .line 786
    add-int/lit8 v4, v3, 0x1

    .line 788
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 790
    const v5, 0x7f081888    # @drawable/stat_sys_signal_3_no_voice_darkmode 'res/drawable/stat_sys_signal_3_no_voice_darkmode.xml'

    .line 792
    aput v5, v0, v3

    .line 795
    const v3, 0x7f08188b    # @drawable/stat_sys_signal_4 'res/drawable/stat_sys_signal_4.xml'

    .line 797
    aput v3, v1, v4

    .line 800
    const v3, 0x7f081890    # @drawable/stat_sys_signal_4_tint 'res/drawable/stat_sys_signal_4_tint.xml'

    .line 802
    aput v3, v2, v4

    .line 805
    add-int/lit8 v3, v4, 0x1

    .line 807
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 809
    const v5, 0x7f08188c    # @drawable/stat_sys_signal_4_darkmode 'res/drawable/stat_sys_signal_4_darkmode.xml'

    .line 811
    aput v5, v0, v4

    .line 814
    const v4, 0x7f08188d    # @drawable/stat_sys_signal_4_no_voice 'res/drawable/stat_sys_signal_4_no_voice.xml'

    .line 816
    aput v4, v1, v3

    .line 819
    const v4, 0x7f08188f    # @drawable/stat_sys_signal_4_no_voice_tint 'res/drawable/stat_sys_signal_4_no_voice_tint.xml'

    .line 821
    aput v4, v2, v3

    .line 824
    add-int/lit8 v4, v3, 0x1

    .line 826
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 828
    const v5, 0x7f08188e    # @drawable/stat_sys_signal_4_no_voice_darkmode 'res/drawable/stat_sys_signal_4_no_voice_darkmode.xml'

    .line 830
    aput v5, v0, v3

    .line 833
    const v3, 0x7f081891    # @drawable/stat_sys_signal_5 'res/drawable/stat_sys_signal_5.xml'

    .line 835
    aput v3, v1, v4

    .line 838
    const v3, 0x7f081896    # @drawable/stat_sys_signal_5_tint 'res/drawable/stat_sys_signal_5_tint.xml'

    .line 840
    aput v3, v2, v4

    .line 843
    add-int/lit8 v3, v4, 0x1

    .line 845
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 847
    const v5, 0x7f081892    # @drawable/stat_sys_signal_5_darkmode 'res/drawable/stat_sys_signal_5_darkmode.xml'

    .line 849
    aput v5, v0, v4

    .line 852
    const v4, 0x7f081893    # @drawable/stat_sys_signal_5_no_voice 'res/drawable/stat_sys_signal_5_no_voice.xml'

    .line 854
    aput v4, v1, v3

    .line 857
    const v4, 0x7f081895    # @drawable/stat_sys_signal_5_no_voice_tint 'res/drawable/stat_sys_signal_5_no_voice_tint.xml'

    .line 859
    aput v4, v2, v3

    .line 862
    add-int/lit8 v4, v3, 0x1

    .line 864
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 866
    const v5, 0x7f081894    # @drawable/stat_sys_signal_5_no_voice_darkmode 'res/drawable/stat_sys_signal_5_no_voice_darkmode.xml'

    .line 868
    aput v5, v0, v3

    .line 871
    const v3, 0x7f08189a    # @drawable/stat_sys_signal_flightmode 'res/drawable/stat_sys_signal_flightmode.xml'

    .line 873
    aput v3, v1, v4

    .line 876
    const v3, 0x7f08189c    # @drawable/stat_sys_signal_flightmode_tint 'res/drawable/stat_sys_signal_flightmode_tint.xml'

    .line 878
    aput v3, v2, v4

    .line 881
    add-int/lit8 v3, v4, 0x1

    .line 883
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 885
    const v5, 0x7f08189b    # @drawable/stat_sys_signal_flightmode_darkmode 'res/drawable/stat_sys_signal_flightmode_darkmode.xml'

    .line 887
    aput v5, v0, v4

    .line 890
    const v4, 0x7f08191f    # @drawable/stat_sys_wifi_signal_0 'res/drawable/stat_sys_wifi_signal_0.xml'

    .line 892
    aput v4, v1, v3

    .line 895
    const v4, 0x7f081921    # @drawable/stat_sys_wifi_signal_0_tint 'res/drawable/stat_sys_wifi_signal_0_tint.xml'

    .line 897
    aput v4, v2, v3

    .line 900
    add-int/lit8 v4, v3, 0x1

    .line 902
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 904
    const v5, 0x7f081920    # @drawable/stat_sys_wifi_signal_0_darkmode 'res/drawable/stat_sys_wifi_signal_0_darkmode.xml'

    .line 906
    aput v5, v0, v3

    .line 909
    const v3, 0x7f081834    # @drawable/stat_sys_hotspot_signal_0 'res/drawable/stat_sys_hotspot_signal_0.xml'

    .line 911
    aput v3, v1, v4

    .line 914
    const v3, 0x7f081836    # @drawable/stat_sys_hotspot_signal_0_tint 'res/drawable/stat_sys_hotspot_signal_0_tint.xml'

    .line 916
    aput v3, v2, v4

    .line 919
    add-int/lit8 v3, v4, 0x1

    .line 921
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 923
    const v5, 0x7f081835    # @drawable/stat_sys_hotspot_signal_0_darkmode 'res/drawable/stat_sys_hotspot_signal_0_darkmode.xml'

    .line 925
    aput v5, v0, v4

    .line 928
    const v4, 0x7f081922    # @drawable/stat_sys_wifi_signal_1 'res/drawable/stat_sys_wifi_signal_1.xml'

    .line 930
    aput v4, v1, v3

    .line 933
    const v4, 0x7f081924    # @drawable/stat_sys_wifi_signal_1_tint 'res/drawable/stat_sys_wifi_signal_1_tint.xml'

    .line 935
    aput v4, v2, v3

    .line 938
    add-int/lit8 v4, v3, 0x1

    .line 940
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 942
    const v5, 0x7f081923    # @drawable/stat_sys_wifi_signal_1_darkmode 'res/drawable/stat_sys_wifi_signal_1_darkmode.xml'

    .line 944
    aput v5, v0, v3

    .line 947
    const v3, 0x7f081837    # @drawable/stat_sys_hotspot_signal_1 'res/drawable/stat_sys_hotspot_signal_1.xml'

    .line 949
    aput v3, v1, v4

    .line 952
    const v3, 0x7f081839    # @drawable/stat_sys_hotspot_signal_1_tint 'res/drawable/stat_sys_hotspot_signal_1_tint.xml'

    .line 954
    aput v3, v2, v4

    .line 957
    add-int/lit8 v3, v4, 0x1

    .line 959
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 961
    const v5, 0x7f081838    # @drawable/stat_sys_hotspot_signal_1_darkmode 'res/drawable/stat_sys_hotspot_signal_1_darkmode.xml'

    .line 963
    aput v5, v0, v4

    .line 966
    const v4, 0x7f081925    # @drawable/stat_sys_wifi_signal_2 'res/drawable/stat_sys_wifi_signal_2.xml'

    .line 968
    aput v4, v1, v3

    .line 971
    const v4, 0x7f081927    # @drawable/stat_sys_wifi_signal_2_tint 'res/drawable/stat_sys_wifi_signal_2_tint.xml'

    .line 973
    aput v4, v2, v3

    .line 976
    add-int/lit8 v4, v3, 0x1

    .line 978
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 980
    const v5, 0x7f081926    # @drawable/stat_sys_wifi_signal_2_darkmode 'res/drawable/stat_sys_wifi_signal_2_darkmode.xml'

    .line 982
    aput v5, v0, v3

    .line 985
    const v3, 0x7f08183a    # @drawable/stat_sys_hotspot_signal_2 'res/drawable/stat_sys_hotspot_signal_2.xml'

    .line 987
    aput v3, v1, v4

    .line 990
    const v3, 0x7f08183c    # @drawable/stat_sys_hotspot_signal_2_tint 'res/drawable/stat_sys_hotspot_signal_2_tint.xml'

    .line 992
    aput v3, v2, v4

    .line 995
    add-int/lit8 v3, v4, 0x1

    .line 997
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 999
    const v5, 0x7f08183b    # @drawable/stat_sys_hotspot_signal_2_darkmode 'res/drawable/stat_sys_hotspot_signal_2_darkmode.xml'

    .line 1001
    aput v5, v0, v4

    .line 1004
    const v4, 0x7f081928    # @drawable/stat_sys_wifi_signal_3 'res/drawable/stat_sys_wifi_signal_3.xml'

    .line 1006
    aput v4, v1, v3

    .line 1009
    const v4, 0x7f08192a    # @drawable/stat_sys_wifi_signal_3_tint 'res/drawable/stat_sys_wifi_signal_3_tint.xml'

    .line 1011
    aput v4, v2, v3

    .line 1014
    add-int/lit8 v4, v3, 0x1

    .line 1016
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1018
    const v5, 0x7f081929    # @drawable/stat_sys_wifi_signal_3_darkmode 'res/drawable/stat_sys_wifi_signal_3_darkmode.xml'

    .line 1020
    aput v5, v0, v3

    .line 1023
    const v3, 0x7f08183d    # @drawable/stat_sys_hotspot_signal_3 'res/drawable/stat_sys_hotspot_signal_3.xml'

    .line 1025
    aput v3, v1, v4

    .line 1028
    const v3, 0x7f08183f    # @drawable/stat_sys_hotspot_signal_3_tint 'res/drawable/stat_sys_hotspot_signal_3_tint.xml'

    .line 1030
    aput v3, v2, v4

    .line 1033
    add-int/lit8 v3, v4, 0x1

    .line 1035
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1037
    const v5, 0x7f08183e    # @drawable/stat_sys_hotspot_signal_3_darkmode 'res/drawable/stat_sys_hotspot_signal_3_darkmode.xml'

    .line 1039
    aput v5, v0, v4

    .line 1042
    const v4, 0x7f08192b    # @drawable/stat_sys_wifi_signal_4 'res/drawable/stat_sys_wifi_signal_4.xml'

    .line 1044
    aput v4, v1, v3

    .line 1047
    const v4, 0x7f08192d    # @drawable/stat_sys_wifi_signal_4_tint 'res/drawable/stat_sys_wifi_signal_4_tint.xml'

    .line 1049
    aput v4, v2, v3

    .line 1052
    add-int/lit8 v4, v3, 0x1

    .line 1054
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1056
    const v5, 0x7f08192c    # @drawable/stat_sys_wifi_signal_4_darkmode 'res/drawable/stat_sys_wifi_signal_4_darkmode.xml'

    .line 1058
    aput v5, v0, v3

    .line 1061
    const v3, 0x7f081840    # @drawable/stat_sys_hotspot_signal_4 'res/drawable/stat_sys_hotspot_signal_4.xml'

    .line 1063
    aput v3, v1, v4

    .line 1066
    const v3, 0x7f081842    # @drawable/stat_sys_hotspot_signal_4_tint 'res/drawable/stat_sys_hotspot_signal_4_tint.xml'

    .line 1068
    aput v3, v2, v4

    .line 1071
    add-int/lit8 v3, v4, 0x1

    .line 1073
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1075
    const v5, 0x7f081841    # @drawable/stat_sys_hotspot_signal_4_darkmode 'res/drawable/stat_sys_hotspot_signal_4_darkmode.xml'

    .line 1077
    aput v5, v0, v4

    .line 1080
    const v4, 0x7f081931    # @drawable/stat_sys_wifi_signal_unavailable_0 'res/drawable/stat_sys_wifi_signal_unavailable_0.xml'

    .line 1082
    aput v4, v1, v3

    .line 1085
    const v4, 0x7f081933    # @drawable/stat_sys_wifi_signal_unavailable_0_tint 'res/drawable/stat_sys_wifi_signal_unavailable_0_tint.xml'

    .line 1087
    aput v4, v2, v3

    .line 1090
    add-int/lit8 v4, v3, 0x1

    .line 1092
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1094
    const v5, 0x7f081932    # @drawable/stat_sys_wifi_signal_unavailable_0_darkmode 'res/drawable/stat_sys_wifi_signal_unavailable_0_darkmode.xml'

    .line 1096
    aput v5, v0, v3

    .line 1099
    const v3, 0x7f081934    # @drawable/stat_sys_wifi_signal_unavailable_1 'res/drawable/stat_sys_wifi_signal_unavailable_1.xml'

    .line 1101
    aput v3, v1, v4

    .line 1104
    const v3, 0x7f081936    # @drawable/stat_sys_wifi_signal_unavailable_1_tint 'res/drawable/stat_sys_wifi_signal_unavailable_1_tint.xml'

    .line 1106
    aput v3, v2, v4

    .line 1109
    add-int/lit8 v3, v4, 0x1

    .line 1111
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1113
    const v5, 0x7f081935    # @drawable/stat_sys_wifi_signal_unavailable_1_darkmode 'res/drawable/stat_sys_wifi_signal_unavailable_1_darkmode.xml'

    .line 1115
    aput v5, v0, v4

    .line 1118
    const v4, 0x7f081937    # @drawable/stat_sys_wifi_signal_unavailable_2 'res/drawable/stat_sys_wifi_signal_unavailable_2.xml'

    .line 1120
    aput v4, v1, v3

    .line 1123
    const v4, 0x7f081939    # @drawable/stat_sys_wifi_signal_unavailable_2_tint 'res/drawable/stat_sys_wifi_signal_unavailable_2_tint.xml'

    .line 1125
    aput v4, v2, v3

    .line 1128
    add-int/lit8 v4, v3, 0x1

    .line 1130
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1132
    const v5, 0x7f081938    # @drawable/stat_sys_wifi_signal_unavailable_2_darkmode 'res/drawable/stat_sys_wifi_signal_unavailable_2_darkmode.xml'

    .line 1134
    aput v5, v0, v3

    .line 1137
    const v3, 0x7f08193a    # @drawable/stat_sys_wifi_signal_unavailable_3 'res/drawable/stat_sys_wifi_signal_unavailable_3.xml'

    .line 1139
    aput v3, v1, v4

    .line 1142
    const v3, 0x7f08193c    # @drawable/stat_sys_wifi_signal_unavailable_3_tint 'res/drawable/stat_sys_wifi_signal_unavailable_3_tint.xml'

    .line 1144
    aput v3, v2, v4

    .line 1147
    add-int/lit8 v3, v4, 0x1

    .line 1149
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1151
    const v5, 0x7f08193b    # @drawable/stat_sys_wifi_signal_unavailable_3_darkmode 'res/drawable/stat_sys_wifi_signal_unavailable_3_darkmode.xml'

    .line 1153
    aput v5, v0, v4

    .line 1156
    const v4, 0x7f08193d    # @drawable/stat_sys_wifi_signal_unavailable_4 'res/drawable/stat_sys_wifi_signal_unavailable_4.xml'

    .line 1158
    aput v4, v1, v3

    .line 1161
    const v4, 0x7f08193f    # @drawable/stat_sys_wifi_signal_unavailable_4_tint 'res/drawable/stat_sys_wifi_signal_unavailable_4_tint.xml'

    .line 1163
    aput v4, v2, v3

    .line 1166
    add-int/lit8 v4, v3, 0x1

    .line 1168
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1170
    const v5, 0x7f08193e    # @drawable/stat_sys_wifi_signal_unavailable_4_darkmode 'res/drawable/stat_sys_wifi_signal_unavailable_4_darkmode.xml'

    .line 1172
    aput v5, v0, v3

    .line 1175
    const v3, 0x7f081913    # @drawable/stat_sys_wifi_ap_on 'res/drawable/stat_sys_wifi_ap_on.xml'

    .line 1177
    aput v3, v1, v4

    .line 1180
    const v3, 0x7f081915    # @drawable/stat_sys_wifi_ap_on_tint 'res/drawable/stat_sys_wifi_ap_on_tint.xml'

    .line 1182
    aput v3, v2, v4

    .line 1185
    add-int/lit8 v3, v4, 0x1

    .line 1187
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1189
    const v5, 0x7f081914    # @drawable/stat_sys_wifi_ap_on_darkmode 'res/drawable/stat_sys_wifi_ap_on_darkmode.xml'

    .line 1191
    aput v5, v0, v4

    .line 1194
    const v4, 0x7f08190f    # @drawable/stat_sys_vpn 'res/drawable/stat_sys_vpn.xml'

    .line 1196
    aput v4, v1, v3

    .line 1199
    const v4, 0x7f081912    # @drawable/stat_sys_vpn_tint 'res/drawable/stat_sys_vpn_tint.xml'

    .line 1201
    aput v4, v2, v3

    .line 1204
    add-int/lit8 v4, v3, 0x1

    .line 1206
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1208
    const v5, 0x7f081910    # @drawable/stat_sys_vpn_darkmode 'res/drawable/stat_sys_vpn_darkmode.xml'

    .line 1210
    aput v5, v0, v3

    .line 1213
    const v3, 0x7f08181c    # @drawable/stat_sys_data_connected_roam_small 'res/drawable/stat_sys_data_connected_roam_small.xml'

    .line 1215
    aput v3, v1, v4

    .line 1218
    const v3, 0x7f08181e    # @drawable/stat_sys_data_connected_roam_small_tint 'res/drawable/stat_sys_data_connected_roam_small_tint.xml'

    .line 1220
    aput v3, v2, v4

    .line 1223
    add-int/lit8 v3, v4, 0x1

    .line 1225
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1227
    const v5, 0x7f08181d    # @drawable/stat_sys_data_connected_roam_small_darkmode 'res/drawable/stat_sys_data_connected_roam_small_darkmode.xml'

    .line 1229
    aput v5, v0, v4

    .line 1232
    const v4, 0x7f0817ec    # @drawable/stat_notify_call_mute 'res/drawable/stat_notify_call_mute.xml'

    .line 1234
    aput v4, v1, v3

    .line 1237
    const v4, 0x7f0817ee    # @drawable/stat_notify_call_mute_tint 'res/drawable/stat_notify_call_mute_tint.xml'

    .line 1239
    aput v4, v2, v3

    .line 1242
    add-int/lit8 v4, v3, 0x1

    .line 1244
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1246
    const v5, 0x7f0817ed    # @drawable/stat_notify_call_mute_darkmode 'res/drawable/stat_notify_call_mute_darkmode.xml'

    .line 1248
    aput v5, v0, v3

    .line 1251
    const v3, 0x7f081861    # @drawable/stat_sys_quiet_mode 'res/drawable/stat_sys_quiet_mode.xml'

    .line 1253
    aput v3, v1, v4

    .line 1256
    const v3, 0x7f081863    # @drawable/stat_sys_quiet_mode_tint 'res/drawable/stat_sys_quiet_mode_tint.xml'

    .line 1258
    aput v3, v2, v4

    .line 1261
    add-int/lit8 v3, v4, 0x1

    .line 1263
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1265
    const v5, 0x7f081862    # @drawable/stat_sys_quiet_mode_darkmode 'res/drawable/stat_sys_quiet_mode_darkmode.xml'

    .line 1267
    aput v5, v0, v4

    .line 1270
    const v4, 0x7f0818fa    # @drawable/stat_sys_usb_share 'res/drawable/stat_sys_usb_share.xml'

    .line 1272
    aput v4, v1, v3

    .line 1275
    const v4, 0x7f0818fc    # @drawable/stat_sys_usb_share_tint 'res/drawable/stat_sys_usb_share_tint.xml'

    .line 1277
    aput v4, v2, v3

    .line 1280
    add-int/lit8 v4, v3, 0x1

    .line 1282
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1284
    const v5, 0x7f0818fb    # @drawable/stat_sys_usb_share_darkmode 'res/drawable/stat_sys_usb_share_darkmode.xml'

    .line 1286
    aput v5, v0, v3

    .line 1289
    const v3, 0x7f081849    # @drawable/stat_sys_managed_profile_status 'res/drawable/stat_sys_managed_profile_status.xml'

    .line 1291
    aput v3, v1, v4

    .line 1294
    const v3, 0x7f08184e    # @drawable/stat_sys_managed_profile_status_tint 'res/drawable/stat_sys_managed_profile_status_tint.xml'

    .line 1296
    aput v3, v2, v4

    .line 1299
    add-int/lit8 v3, v4, 0x1

    .line 1301
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1303
    const v5, 0x7f08184a    # @drawable/stat_sys_managed_profile_status_darkmode 'res/drawable/stat_sys_managed_profile_status_darkmode.xml'

    .line 1305
    aput v5, v0, v4

    .line 1308
    const v4, 0x7f08184b    # @drawable/stat_sys_managed_profile_status_off 'res/drawable/stat_sys_managed_profile_status_off.xml'

    .line 1310
    aput v4, v1, v3

    .line 1313
    const v4, 0x7f08184d    # @drawable/stat_sys_managed_profile_status_off_tint 'res/drawable/stat_sys_managed_profile_status_off_tint.xml'

    .line 1315
    aput v4, v2, v3

    .line 1318
    add-int/lit8 v4, v3, 0x1

    .line 1320
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1322
    const v5, 0x7f08184c    # @drawable/stat_sys_managed_profile_status_off_darkmode 'res/drawable/stat_sys_managed_profile_status_off_darkmode.xml'

    .line 1324
    aput v5, v0, v3

    .line 1327
    const v3, 0x7f081846    # @drawable/stat_sys_managed_profile_not_owner_user 'res/drawable/stat_sys_managed_profile_not_owner_user.xml'

    .line 1329
    aput v3, v1, v4

    .line 1332
    const v3, 0x7f081848    # @drawable/stat_sys_managed_profile_not_owner_user_tint 'res/drawable/stat_sys_managed_profile_not_owner_user_tint.xml'

    .line 1334
    aput v3, v2, v4

    .line 1337
    add-int/lit8 v3, v4, 0x1

    .line 1339
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1341
    const v5, 0x7f081847    # @drawable/stat_sys_managed_profile_not_owner_user_darkmode 'res/drawable/stat_sys_managed_profile_not_owner_user_darkmode.xml'

    .line 1343
    aput v5, v0, v4

    .line 1346
    const v4, 0x7f08184f    # @drawable/stat_sys_micphone 'res/drawable/stat_sys_micphone.xml'

    .line 1348
    aput v4, v1, v3

    .line 1351
    const v4, 0x7f081851    # @drawable/stat_sys_micphone_tint 'res/drawable/stat_sys_micphone_tint.xml'

    .line 1353
    aput v4, v2, v3

    .line 1356
    add-int/lit8 v4, v3, 0x1

    .line 1358
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1360
    const v5, 0x7f081850    # @drawable/stat_sys_micphone_darkmode 'res/drawable/stat_sys_micphone_darkmode.xml'

    .line 1362
    aput v5, v0, v3

    .line 1365
    const v3, 0x7f0818fd    # @drawable/stat_sys_volte_no_service 'res/drawable/stat_sys_volte_no_service.xml'

    .line 1367
    aput v3, v1, v4

    .line 1370
    const v3, 0x7f0818ff    # @drawable/stat_sys_volte_no_service_tint 'res/drawable/stat_sys_volte_no_service_tint.xml'

    .line 1372
    aput v3, v2, v4

    .line 1375
    add-int/lit8 v3, v4, 0x1

    .line 1377
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1379
    const v5, 0x7f0818fe    # @drawable/stat_sys_volte_no_service_darkmode 'res/drawable/stat_sys_volte_no_service_darkmode.xml'

    .line 1381
    aput v5, v0, v4

    .line 1384
    const v4, 0x7f0818a6    # @drawable/stat_sys_signal_hd_big 'res/drawable/stat_sys_signal_hd_big.xml'

    .line 1386
    aput v4, v1, v3

    .line 1389
    const v4, 0x7f0818a8    # @drawable/stat_sys_signal_hd_big_tint 'res/drawable/stat_sys_signal_hd_big_tint.xml'

    .line 1391
    aput v4, v2, v3

    .line 1394
    add-int/lit8 v4, v3, 0x1

    .line 1396
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1398
    const v5, 0x7f0818a7    # @drawable/stat_sys_signal_hd_big_darkmode 'res/drawable/stat_sys_signal_hd_big_darkmode.xml'

    .line 1400
    aput v5, v0, v3

    .line 1403
    const v3, 0x7f0818a9    # @drawable/stat_sys_signal_hd_notch 'res/drawable/stat_sys_signal_hd_notch.xml'

    .line 1405
    aput v3, v1, v4

    .line 1408
    const v3, 0x7f0818ab    # @drawable/stat_sys_signal_hd_notch_tint 'res/drawable/stat_sys_signal_hd_notch_tint.xml'

    .line 1410
    aput v3, v2, v4

    .line 1413
    add-int/lit8 v3, v4, 0x1

    .line 1415
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1417
    const v5, 0x7f0818aa    # @drawable/stat_sys_signal_hd_notch_darkmode 'res/drawable/stat_sys_signal_hd_notch_darkmode.xml'

    .line 1419
    aput v5, v0, v4

    .line 1422
    const v4, 0x7f08189d    # @drawable/stat_sys_signal_hd_1 'res/drawable/stat_sys_signal_hd_1.xml'

    .line 1424
    aput v4, v1, v3

    .line 1427
    const v4, 0x7f0818a2    # @drawable/stat_sys_signal_hd_1_tint 'res/drawable/stat_sys_signal_hd_1_tint.xml'

    .line 1429
    aput v4, v2, v3

    .line 1432
    add-int/lit8 v4, v3, 0x1

    .line 1434
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1436
    const v5, 0x7f0818a1    # @drawable/stat_sys_signal_hd_1_darkmode 'res/drawable/stat_sys_signal_hd_1_darkmode.xml'

    .line 1438
    aput v5, v0, v3

    .line 1441
    const v3, 0x7f0818a3    # @drawable/stat_sys_signal_hd_2 'res/drawable/stat_sys_signal_hd_2.xml'

    .line 1443
    aput v3, v1, v4

    .line 1446
    const v3, 0x7f0818a5    # @drawable/stat_sys_signal_hd_2_tint 'res/drawable/stat_sys_signal_hd_2_tint.xml'

    .line 1448
    aput v3, v2, v4

    .line 1451
    add-int/lit8 v3, v4, 0x1

    .line 1453
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1455
    const v5, 0x7f0818a4    # @drawable/stat_sys_signal_hd_2_darkmode 'res/drawable/stat_sys_signal_hd_2_darkmode.xml'

    .line 1457
    aput v5, v0, v4

    .line 1460
    const v4, 0x7f08189e    # @drawable/stat_sys_signal_hd_12 'res/drawable/stat_sys_signal_hd_12.xml'

    .line 1462
    aput v4, v1, v3

    .line 1465
    const v4, 0x7f0818a0    # @drawable/stat_sys_signal_hd_12_tint 'res/drawable/stat_sys_signal_hd_12_tint.xml'

    .line 1467
    aput v4, v2, v3

    .line 1470
    add-int/lit8 v4, v3, 0x1

    .line 1472
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1474
    const v5, 0x7f08189f    # @drawable/stat_sys_signal_hd_12_darkmode 'res/drawable/stat_sys_signal_hd_12_darkmode.xml'

    .line 1476
    aput v5, v0, v3

    .line 1479
    const v3, 0x7f0818ca    # @drawable/stat_sys_slave_wifi_signal_0 'res/drawable/stat_sys_slave_wifi_signal_0.xml'

    .line 1481
    aput v3, v1, v4

    .line 1484
    const v3, 0x7f0818cc    # @drawable/stat_sys_slave_wifi_signal_0_tint 'res/drawable/stat_sys_slave_wifi_signal_0_tint.xml'

    .line 1486
    aput v3, v2, v4

    .line 1489
    add-int/lit8 v3, v4, 0x1

    .line 1491
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1493
    const v5, 0x7f0818cb    # @drawable/stat_sys_slave_wifi_signal_0_darkmode 'res/drawable/stat_sys_slave_wifi_signal_0_darkmode.xml'

    .line 1495
    aput v5, v0, v4

    .line 1498
    const v4, 0x7f0818cd    # @drawable/stat_sys_slave_wifi_signal_1 'res/drawable/stat_sys_slave_wifi_signal_1.xml'

    .line 1500
    aput v4, v1, v3

    .line 1503
    const v4, 0x7f0818cf    # @drawable/stat_sys_slave_wifi_signal_1_tint 'res/drawable/stat_sys_slave_wifi_signal_1_tint.xml'

    .line 1505
    aput v4, v2, v3

    .line 1508
    add-int/lit8 v4, v3, 0x1

    .line 1510
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1512
    const v5, 0x7f0818ce    # @drawable/stat_sys_slave_wifi_signal_1_darkmode 'res/drawable/stat_sys_slave_wifi_signal_1_darkmode.xml'

    .line 1514
    aput v5, v0, v3

    .line 1517
    const v3, 0x7f0818d0    # @drawable/stat_sys_slave_wifi_signal_2 'res/drawable/stat_sys_slave_wifi_signal_2.xml'

    .line 1519
    aput v3, v1, v4

    .line 1522
    const v3, 0x7f0818d2    # @drawable/stat_sys_slave_wifi_signal_2_tint 'res/drawable/stat_sys_slave_wifi_signal_2_tint.xml'

    .line 1524
    aput v3, v2, v4

    .line 1527
    add-int/lit8 v3, v4, 0x1

    .line 1529
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1531
    const v5, 0x7f0818d1    # @drawable/stat_sys_slave_wifi_signal_2_darkmode 'res/drawable/stat_sys_slave_wifi_signal_2_darkmode.xml'

    .line 1533
    aput v5, v0, v4

    .line 1536
    const v4, 0x7f0818d3    # @drawable/stat_sys_slave_wifi_signal_3 'res/drawable/stat_sys_slave_wifi_signal_3.xml'

    .line 1538
    aput v4, v1, v3

    .line 1541
    const v4, 0x7f0818d5    # @drawable/stat_sys_slave_wifi_signal_3_tint 'res/drawable/stat_sys_slave_wifi_signal_3_tint.xml'

    .line 1543
    aput v4, v2, v3

    .line 1546
    add-int/lit8 v4, v3, 0x1

    .line 1548
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1550
    const v5, 0x7f0818d4    # @drawable/stat_sys_slave_wifi_signal_3_darkmode 'res/drawable/stat_sys_slave_wifi_signal_3_darkmode.xml'

    .line 1552
    aput v5, v0, v3

    .line 1555
    const v3, 0x7f0818d6    # @drawable/stat_sys_slave_wifi_signal_4 'res/drawable/stat_sys_slave_wifi_signal_4.xml'

    .line 1557
    aput v3, v1, v4

    .line 1560
    const v3, 0x7f0818d8    # @drawable/stat_sys_slave_wifi_signal_4_tint 'res/drawable/stat_sys_slave_wifi_signal_4_tint.xml'

    .line 1562
    aput v3, v2, v4

    .line 1565
    add-int/lit8 v3, v4, 0x1

    .line 1567
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1569
    const v5, 0x7f0818d7    # @drawable/stat_sys_slave_wifi_signal_4_darkmode 'res/drawable/stat_sys_slave_wifi_signal_4_darkmode.xml'

    .line 1571
    aput v5, v0, v4

    .line 1574
    const v4, 0x7f0818df    # @drawable/stat_sys_sos 'res/drawable/stat_sys_sos.xml'

    .line 1576
    aput v4, v1, v3

    .line 1579
    const v4, 0x7f0818e1    # @drawable/stat_sys_sos_tint 'res/drawable/stat_sys_sos_tint.xml'

    .line 1581
    aput v4, v2, v3

    .line 1584
    add-int/lit8 v4, v3, 0x1

    .line 1586
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1588
    const v5, 0x7f0818e0    # @drawable/stat_sys_sos_darkmode 'res/drawable/stat_sys_sos_darkmode.xml'

    .line 1590
    aput v5, v0, v3

    .line 1593
    const v3, 0x7f0818e8    # @drawable/stat_sys_speech_hd 'res/drawable/stat_sys_speech_hd.xml'

    .line 1595
    aput v3, v1, v4

    .line 1598
    const v3, 0x7f0818ea    # @drawable/stat_sys_speech_hd_tint 'res/drawable/stat_sys_speech_hd_tint.xml'

    .line 1600
    aput v3, v2, v4

    .line 1603
    add-int/lit8 v3, v4, 0x1

    .line 1605
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1607
    const v5, 0x7f0818e9    # @drawable/stat_sys_speech_hd_darkmode 'res/drawable/stat_sys_speech_hd_darkmode.xml'

    .line 1609
    aput v5, v0, v4

    .line 1612
    const v4, 0x7f0818f1    # @drawable/stat_sys_sync 'res/drawable/stat_sys_sync.xml'

    .line 1614
    aput v4, v1, v3

    .line 1617
    const v4, 0x7f0818f3    # @drawable/stat_sys_sync_tint 'res/drawable/stat_sys_sync_tint.xml'

    .line 1619
    aput v4, v2, v3

    .line 1622
    add-int/lit8 v4, v3, 0x1

    .line 1624
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1626
    const v5, 0x7f0818f2    # @drawable/stat_sys_sync_darkmode 'res/drawable/stat_sys_sync_darkmode.xml'

    .line 1628
    aput v5, v0, v3

    .line 1631
    const v3, 0x7f0818f4    # @drawable/stat_sys_tty_mode 'res/drawable/stat_sys_tty_mode.xml'

    .line 1633
    aput v3, v1, v4

    .line 1636
    const v3, 0x7f0818f6    # @drawable/stat_sys_tty_mode_tint 'res/drawable/stat_sys_tty_mode_tint.xml'

    .line 1638
    aput v3, v2, v4

    .line 1641
    add-int/lit8 v3, v4, 0x1

    .line 1643
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1645
    const v5, 0x7f0818f5    # @drawable/stat_sys_tty_mode_darkmode 'res/drawable/stat_sys_tty_mode_darkmode.xml'

    .line 1647
    aput v5, v0, v4

    .line 1650
    const v4, 0x7f081916    # @drawable/stat_sys_wifi_in 'res/drawable/stat_sys_wifi_in.xml'

    .line 1652
    aput v4, v1, v3

    .line 1655
    const v4, 0x7f081918    # @drawable/stat_sys_wifi_in_tint 'res/drawable/stat_sys_wifi_in_tint.xml'

    .line 1657
    aput v4, v2, v3

    .line 1660
    add-int/lit8 v4, v3, 0x1

    .line 1662
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1664
    const v5, 0x7f081917    # @drawable/stat_sys_wifi_in_darkmode 'res/drawable/stat_sys_wifi_in_darkmode.xml'

    .line 1666
    aput v5, v0, v3

    .line 1669
    const v3, 0x7f081919    # @drawable/stat_sys_wifi_inout 'res/drawable/stat_sys_wifi_inout.xml'

    .line 1671
    aput v3, v1, v4

    .line 1674
    const v3, 0x7f08191b    # @drawable/stat_sys_wifi_inout_tint 'res/drawable/stat_sys_wifi_inout_tint.xml'

    .line 1676
    aput v3, v2, v4

    .line 1679
    add-int/lit8 v3, v4, 0x1

    .line 1681
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1683
    const v5, 0x7f08191a    # @drawable/stat_sys_wifi_inout_darkmode 'res/drawable/stat_sys_wifi_inout_darkmode.xml'

    .line 1685
    aput v5, v0, v4

    .line 1688
    const v4, 0x7f08191c    # @drawable/stat_sys_wifi_out 'res/drawable/stat_sys_wifi_out.xml'

    .line 1690
    aput v4, v1, v3

    .line 1693
    const v4, 0x7f08191e    # @drawable/stat_sys_wifi_out_tint 'res/drawable/stat_sys_wifi_out_tint.xml'

    .line 1695
    aput v4, v2, v3

    .line 1698
    add-int/lit8 v4, v3, 0x1

    .line 1700
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1702
    const v5, 0x7f08191d    # @drawable/stat_sys_wifi_out_darkmode 'res/drawable/stat_sys_wifi_out_darkmode.xml'

    .line 1704
    aput v5, v0, v3

    .line 1707
    const v3, 0x7f0817d2    # @drawable/signal_5g_off 'res/drawable/signal_5g_off.xml'

    .line 1709
    aput v3, v1, v4

    .line 1712
    const v3, 0x7f0817d4    # @drawable/signal_5g_off_tint 'res/drawable/signal_5g_off_tint.xml'

    .line 1714
    aput v3, v2, v4

    .line 1717
    add-int/lit8 v3, v4, 0x1

    .line 1719
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1721
    const v5, 0x7f0817d3    # @drawable/signal_5g_off_darkmode 'res/drawable/signal_5g_off_darkmode.xml'

    .line 1723
    aput v5, v0, v4

    .line 1726
    const v4, 0x7f0817d5    # @drawable/signal_5g_on 'res/drawable/signal_5g_on.xml'

    .line 1728
    aput v4, v1, v3

    .line 1731
    const v4, 0x7f0817d7    # @drawable/signal_5g_on_tint 'res/drawable/signal_5g_on_tint.xml'

    .line 1733
    aput v4, v2, v3

    .line 1736
    add-int/lit8 v4, v3, 0x1

    .line 1738
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1740
    const v5, 0x7f0817d6    # @drawable/signal_5g_on_darkmode 'res/drawable/signal_5g_on_darkmode.xml'

    .line 1742
    aput v5, v0, v3

    .line 1745
    const v3, 0x7f081897    # @drawable/stat_sys_signal_data_left 'res/drawable/stat_sys_signal_data_left.xml'

    .line 1747
    aput v3, v1, v4

    .line 1750
    const v3, 0x7f081899    # @drawable/stat_sys_signal_data_left_tint 'res/drawable/stat_sys_signal_data_left_tint.xml'

    .line 1752
    aput v3, v2, v4

    .line 1755
    add-int/lit8 v3, v4, 0x1

    .line 1757
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1759
    const v5, 0x7f081898    # @drawable/stat_sys_signal_data_left_darkmode 'res/drawable/stat_sys_signal_data_left_darkmode.xml'

    .line 1761
    aput v5, v0, v4

    .line 1764
    const v4, 0x7f0818ac    # @drawable/stat_sys_signal_in_left 'res/drawable/stat_sys_signal_in_left.xml'

    .line 1766
    aput v4, v1, v3

    .line 1769
    const v4, 0x7f0818ae    # @drawable/stat_sys_signal_in_left_tint 'res/drawable/stat_sys_signal_in_left_tint.xml'

    .line 1771
    aput v4, v2, v3

    .line 1774
    add-int/lit8 v4, v3, 0x1

    .line 1776
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1778
    const v5, 0x7f0818ad    # @drawable/stat_sys_signal_in_left_darkmode 'res/drawable/stat_sys_signal_in_left_darkmode.xml'

    .line 1780
    aput v5, v0, v3

    .line 1783
    const v3, 0x7f0818b5    # @drawable/stat_sys_signal_out_left 'res/drawable/stat_sys_signal_out_left.xml'

    .line 1785
    aput v3, v1, v4

    .line 1788
    const v3, 0x7f0818b7    # @drawable/stat_sys_signal_out_left_tint 'res/drawable/stat_sys_signal_out_left_tint.xml'

    .line 1790
    aput v3, v2, v4

    .line 1793
    add-int/lit8 v3, v4, 0x1

    .line 1795
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1797
    const v5, 0x7f0818b6    # @drawable/stat_sys_signal_out_left_darkmode 'res/drawable/stat_sys_signal_out_left_darkmode.xml'

    .line 1799
    aput v5, v0, v4

    .line 1802
    const v4, 0x7f0818af    # @drawable/stat_sys_signal_inout_left 'res/drawable/stat_sys_signal_inout_left.xml'

    .line 1804
    aput v4, v1, v3

    .line 1807
    const v4, 0x7f0818b1    # @drawable/stat_sys_signal_inout_left_tint 'res/drawable/stat_sys_signal_inout_left_tint.xml'

    .line 1809
    aput v4, v2, v3

    .line 1812
    add-int/lit8 v4, v3, 0x1

    .line 1814
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1816
    const v5, 0x7f0818b0    # @drawable/stat_sys_signal_inout_left_darkmode 'res/drawable/stat_sys_signal_inout_left_darkmode.xml'

    .line 1818
    aput v5, v0, v3

    .line 1821
    const v3, 0x7f080b4b    # @drawable/battery_meter_charging 'res/drawable/battery_meter_charging.xml'

    .line 1823
    aput v3, v1, v4

    .line 1826
    const v3, 0x7f080b4e    # @drawable/battery_meter_charging_tint 'res/drawable/battery_meter_charging_tint.xml'

    .line 1828
    aput v3, v2, v4

    .line 1831
    add-int/lit8 v3, v4, 0x1

    .line 1833
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1835
    const v5, 0x7f080b4c    # @drawable/battery_meter_charging_dark 'res/drawable/battery_meter_charging_dark.xml'

    .line 1837
    aput v5, v0, v4

    .line 1840
    const v4, 0x7f080b76    # @drawable/battery_meter_quick_charging 'res/drawable/battery_meter_quick_charging.xml'

    .line 1842
    aput v4, v1, v3

    .line 1845
    const v4, 0x7f080b79    # @drawable/battery_meter_quick_charging_tint 'res/drawable/battery_meter_quick_charging_tint.xml'

    .line 1847
    aput v4, v2, v3

    .line 1850
    add-int/lit8 v4, v3, 0x1

    .line 1852
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1854
    const v5, 0x7f080b77    # @drawable/battery_meter_quick_charging_dark 'res/drawable/battery_meter_quick_charging_dark.xml'

    .line 1856
    aput v5, v0, v3

    .line 1859
    const v3, 0x7f0818eb    # @drawable/stat_sys_stealth_mode 'res/drawable/stat_sys_stealth_mode.xml'

    .line 1861
    aput v3, v1, v4

    .line 1864
    const v3, 0x7f0818ed    # @drawable/stat_sys_stealth_mode_tint 'res/drawable/stat_sys_stealth_mode_tint.xml'

    .line 1866
    aput v3, v2, v4

    .line 1869
    add-int/lit8 v3, v4, 0x1

    .line 1871
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1873
    const v5, 0x7f0818ec    # @drawable/stat_sys_stealth_mode_darkmode 'res/drawable/stat_sys_stealth_mode_darkmode.xml'

    .line 1875
    aput v5, v0, v4

    .line 1878
    const v4, 0x7f081852    # @drawable/stat_sys_nfc 'res/drawable/stat_sys_nfc.xml'

    .line 1880
    aput v4, v1, v3

    .line 1883
    const v4, 0x7f081854    # @drawable/stat_sys_nfc_tint 'res/drawable/stat_sys_nfc_tint.xml'

    .line 1885
    aput v4, v2, v3

    .line 1888
    add-int/lit8 v4, v3, 0x1

    .line 1890
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1892
    const v5, 0x7f081853    # @drawable/stat_sys_nfc_darkmode 'res/drawable/stat_sys_nfc_darkmode.xml'

    .line 1894
    aput v5, v0, v3

    .line 1897
    const v3, 0x7f08185e    # @drawable/stat_sys_phone 'res/drawable/stat_sys_phone.xml'

    .line 1899
    aput v3, v1, v4

    .line 1902
    const v3, 0x7f081860    # @drawable/stat_sys_phone_tint 'res/drawable/stat_sys_phone_tint.xml'

    .line 1904
    aput v3, v2, v4

    .line 1907
    add-int/lit8 v3, v4, 0x1

    .line 1909
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1911
    const v5, 0x7f08185f    # @drawable/stat_sys_phone_darkmode 'res/drawable/stat_sys_phone_darkmode.xml'

    .line 1913
    aput v5, v0, v4

    .line 1916
    const v4, 0x7f081858    # @drawable/stat_sys_pad 'res/drawable/stat_sys_pad.xml'

    .line 1918
    aput v4, v1, v3

    .line 1921
    const v4, 0x7f08185a    # @drawable/stat_sys_pad_tint 'res/drawable/stat_sys_pad_tint.xml'

    .line 1923
    aput v4, v2, v3

    .line 1926
    add-int/lit8 v4, v3, 0x1

    .line 1928
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1930
    const v5, 0x7f081859    # @drawable/stat_sys_pad_darkmode 'res/drawable/stat_sys_pad_darkmode.xml'

    .line 1932
    aput v5, v0, v3

    .line 1935
    const v3, 0x7f08185b    # @drawable/stat_sys_pc 'res/drawable/stat_sys_pc.xml'

    .line 1937
    aput v3, v1, v4

    .line 1940
    const v3, 0x7f08185d    # @drawable/stat_sys_pc_tint 'res/drawable/stat_sys_pc_tint.xml'

    .line 1942
    aput v3, v2, v4

    .line 1945
    add-int/lit8 v3, v4, 0x1

    .line 1947
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1949
    const v5, 0x7f08185c    # @drawable/stat_sys_pc_darkmode 'res/drawable/stat_sys_pc_darkmode.xml'

    .line 1951
    aput v5, v0, v4

    .line 1954
    const v4, 0x7f0818f7    # @drawable/stat_sys_tv 'res/drawable/stat_sys_tv.xml'

    .line 1956
    aput v4, v1, v3

    .line 1959
    const v4, 0x7f0818f9    # @drawable/stat_sys_tv_tint 'res/drawable/stat_sys_tv_tint.xml'

    .line 1961
    aput v4, v2, v3

    .line 1964
    add-int/lit8 v4, v3, 0x1

    .line 1966
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1968
    const v5, 0x7f0818f8    # @drawable/stat_sys_tv_darkmode 'res/drawable/stat_sys_tv_darkmode.xml'

    .line 1970
    aput v5, v0, v3

    .line 1973
    const v3, 0x7f081807    # @drawable/stat_sys_car 'res/drawable/stat_sys_car.xml'

    .line 1975
    aput v3, v1, v4

    .line 1978
    const v3, 0x7f081809    # @drawable/stat_sys_car_tint 'res/drawable/stat_sys_car_tint.xml'

    .line 1980
    aput v3, v2, v4

    .line 1983
    add-int/lit8 v3, v4, 0x1

    .line 1985
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 1987
    const v5, 0x7f081808    # @drawable/stat_sys_car_darkmode 'res/drawable/stat_sys_car_darkmode.xml'

    .line 1989
    aput v5, v0, v4

    .line 1992
    const v4, 0x7f081940    # @drawable/stat_sys_wireless_headset 'res/drawable/stat_sys_wireless_headset.xml'

    .line 1994
    aput v4, v1, v3

    .line 1997
    const v4, 0x7f081942    # @drawable/stat_sys_wireless_headset_tint 'res/drawable/stat_sys_wireless_headset_tint.xml'

    .line 1999
    aput v4, v2, v3

    .line 2002
    add-int/lit8 v4, v3, 0x1

    .line 2004
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 2006
    const v5, 0x7f081941    # @drawable/stat_sys_wireless_headset_darkmode 'res/drawable/stat_sys_wireless_headset_darkmode.xml'

    .line 2008
    aput v5, v0, v3

    .line 2011
    const v3, 0x7f0818e2    # @drawable/stat_sys_sound_box 'res/drawable/stat_sys_sound_box.xml'

    .line 2013
    aput v3, v1, v4

    .line 2016
    const v3, 0x7f0818e7    # @drawable/stat_sys_sound_box_tint 'res/drawable/stat_sys_sound_box_tint.xml'

    .line 2018
    aput v3, v2, v4

    .line 2021
    add-int/lit8 v3, v4, 0x1

    .line 2023
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 2025
    const v5, 0x7f0818e3    # @drawable/stat_sys_sound_box_darkmode 'res/drawable/stat_sys_sound_box_darkmode.xml'

    .line 2027
    aput v5, v0, v4

    .line 2030
    const v4, 0x7f0818e4    # @drawable/stat_sys_sound_box_screen 'res/drawable/stat_sys_sound_box_screen.xml'

    .line 2032
    aput v4, v1, v3

    .line 2035
    const v4, 0x7f0818e6    # @drawable/stat_sys_sound_box_screen_tint 'res/drawable/stat_sys_sound_box_screen_tint.xml'

    .line 2037
    aput v4, v2, v3

    .line 2040
    add-int/lit8 v4, v3, 0x1

    .line 2042
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 2044
    const v5, 0x7f0818e5    # @drawable/stat_sys_sound_box_screen_darkmode 'res/drawable/stat_sys_sound_box_screen_darkmode.xml'

    .line 2046
    aput v5, v0, v3

    .line 2049
    const v3, 0x7f0818ee    # @drawable/stat_sys_stereo 'res/drawable/stat_sys_stereo.xml'

    .line 2051
    aput v3, v1, v4

    .line 2054
    const v3, 0x7f0818f0    # @drawable/stat_sys_stereo_tint 'res/drawable/stat_sys_stereo_tint.xml'

    .line 2056
    aput v3, v2, v4

    .line 2059
    add-int/lit8 v3, v4, 0x1

    .line 2061
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 2063
    const v5, 0x7f0818ef    # @drawable/stat_sys_stereo_darkmode 'res/drawable/stat_sys_stereo_darkmode.xml'

    .line 2065
    aput v5, v0, v4

    .line 2068
    const v4, 0x7f081843    # @drawable/stat_sys_house_play 'res/drawable/stat_sys_house_play.xml'

    .line 2070
    aput v4, v1, v3

    .line 2073
    const v4, 0x7f081845    # @drawable/stat_sys_house_play_tint 'res/drawable/stat_sys_house_play_tint.xml'

    .line 2075
    aput v4, v2, v3

    .line 2078
    add-int/lit8 v4, v3, 0x1

    .line 2080
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 2082
    const v5, 0x7f081844    # @drawable/stat_sys_house_play_darkmode 'res/drawable/stat_sys_house_play_darkmode.xml'

    .line 2084
    aput v5, v0, v3

    .line 2087
    const v3, 0x7f0818d9    # @drawable/stat_sys_slt_connected 'res/drawable/stat_sys_slt_connected.xml'

    .line 2089
    aput v3, v1, v4

    .line 2092
    const v3, 0x7f0818db    # @drawable/stat_sys_slt_connected_tint 'res/drawable/stat_sys_slt_connected_tint.xml'

    .line 2094
    aput v3, v2, v4

    .line 2097
    add-int/lit8 v3, v4, 0x1

    .line 2099
    sput v3, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 2101
    const v5, 0x7f0818da    # @drawable/stat_sys_slt_connected_darkmode 'res/drawable/stat_sys_slt_connected_darkmode.xml'

    .line 2103
    aput v5, v0, v4

    .line 2106
    const v4, 0x7f0818dc    # @drawable/stat_sys_slt_disconnected 'res/drawable/stat_sys_slt_disconnected.xml'

    .line 2108
    aput v4, v1, v3

    .line 2111
    const v4, 0x7f0818de    # @drawable/stat_sys_slt_disconnected_tint 'res/drawable/stat_sys_slt_disconnected_tint.xml'

    .line 2113
    aput v4, v2, v3

    .line 2116
    add-int/lit8 v4, v3, 0x1

    .line 2118
    sput v4, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 2120
    const v5, 0x7f0818dd    # @drawable/stat_sys_slt_disconnected_darkmode 'res/drawable/stat_sys_slt_disconnected_darkmode.xml'

    .line 2122
    aput v5, v0, v3

    .line 2125
    const v3, 0x7f081829    # @drawable/stat_sys_han 'res/drawable/stat_sys_han.xml'

    .line 2127
    aput v3, v1, v4

    .line 2130
    const v1, 0x7f08182b    # @drawable/stat_sys_han_tint 'res/drawable/stat_sys_han_tint.xml'

    .line 2132
    aput v1, v2, v4

    .line 2135
    add-int/lit8 v1, v4, 0x1

    .line 2137
    sput v1, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 2139
    const v1, 0x7f08182a    # @drawable/stat_sys_han_darkmode 'res/drawable/stat_sys_han_darkmode.xml'

    .line 2141
    aput v1, v0, v4

    .line 2144
    invoke-static {}, Lcom/android/systemui/statusbar/Icons;->init()V

    .line 2146
    return-void
    .line 2149
.end method

.method public static getDarkDrawableId(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/Icons;->sDarkIconMap:Ljava/util/Map;

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Integer;

    .line 14
    if-nez v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result p0

    .line 22
    :goto_0
    return p0
    .line 23
.end method

.method public static getLightDrawableId(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/Icons;->sLightIconMap:Ljava/util/Map;

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Integer;

    .line 14
    if-nez v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result p0

    .line 22
    :goto_0
    return p0
    .line 23
.end method

.method public static init()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget v1, Lcom/android/systemui/statusbar/Icons;->sIconIndex:I

    .line 3
    if-ge v0, v1, :cond_1

    .line 5
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sLightArray:[I

    .line 7
    aget v1, v1, v0

    .line 9
    sget-object v2, Lcom/android/systemui/statusbar/Icons;->sTintArray:[I

    .line 11
    aget v2, v2, v0

    .line 13
    sget-object v3, Lcom/android/systemui/statusbar/Icons;->sDarkArray:[I

    .line 15
    aget v3, v3, v0

    .line 17
    const/4 v4, -0x1

    .line 19
    sget-object v5, Lcom/android/systemui/statusbar/Icons;->sDarkIconMap:Ljava/util/Map;

    .line 20
    sget-object v6, Lcom/android/systemui/statusbar/Icons;->sLightIconMap:Ljava/util/Map;

    .line 22
    if-eq v2, v4, :cond_0

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v4

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v7

    .line 33
    sget-object v8, Lcom/android/systemui/statusbar/Icons;->sTintIconMap:Ljava/util/Map;

    .line 34
    invoke-interface {v8, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v4

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v7

    .line 46
    invoke-interface {v8, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v4

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v7

    .line 57
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v2

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v4

    .line 68
    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v2

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v4

    .line 79
    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v1

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v2

    .line 90
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 94
    goto :goto_0

    .line 96
    :cond_1
    return-void
    .line 97
.end method
