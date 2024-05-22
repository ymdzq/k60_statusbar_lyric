.class public abstract Lcom/android/settingslib/mobile/TelephonyIcons;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final ICON_NAME_TO_ICON:Ljava/util/Map;

.field public static final LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final WFC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 2
    const-string v1, "CARRIER_NETWORK_CHANGE"

    .line 4
    const v2, 0x7f130251    # @string/carrier_network_change_mode 'Carrier network changing'

    .line 6
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v1, v2, v3}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 10
    new-instance v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 13
    const v2, 0x7f130347    # @string/data_connection_3g '3G'

    .line 15
    const v4, 0x7f080ece    # @drawable/ic_3g_mobiledata 'res/drawable/ic_3g_mobiledata.xml'

    .line 18
    const-string v5, "3G"

    .line 21
    invoke-direct {v1, v5, v2, v4}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 23
    sput-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 26
    new-instance v2, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 28
    const-string v4, "WFC"

    .line 30
    invoke-direct {v2, v4, v3, v3}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 32
    sput-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->WFC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 35
    new-instance v4, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 37
    const-string v5, "Unknown"

    .line 39
    invoke-direct {v4, v5, v3, v3}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 41
    sput-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 44
    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 46
    const v6, 0x7f130354    # @string/data_connection_edge 'EDGE'

    .line 48
    const v7, 0x7f080fef    # @drawable/ic_e_mobiledata 'res/drawable/ic_e_mobiledata.xml'

    .line 51
    const-string v8, "E"

    .line 54
    invoke-direct {v5, v8, v6, v7}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 56
    sput-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 59
    new-instance v6, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 61
    const v7, 0x7f130353    # @string/data_connection_cdma '1X'

    .line 63
    const v8, 0x7f080ecd    # @drawable/ic_1x_mobiledata 'res/drawable/ic_1x_mobiledata.xml'

    .line 66
    const-string v9, "1X"

    .line 69
    invoke-direct {v6, v9, v7, v8}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 71
    sput-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 74
    new-instance v7, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 76
    const v8, 0x7f130355    # @string/data_connection_gprs 'GPRS'

    .line 78
    const v9, 0x7f080ff9    # @drawable/ic_g_mobiledata 'res/drawable/ic_g_mobiledata.xml'

    .line 81
    const-string v10, "G"

    .line 84
    invoke-direct {v7, v10, v8, v9}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 86
    sput-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 89
    new-instance v8, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 91
    const v9, 0x7f130345    # @string/data_connection_3_5g 'H'

    .line 93
    const v10, 0x7f08101b    # @drawable/ic_h_mobiledata 'res/drawable/ic_h_mobiledata.xml'

    .line 96
    const-string v11, "H"

    .line 99
    invoke-direct {v8, v11, v9, v10}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 101
    sput-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 104
    new-instance v9, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 106
    const v10, 0x7f130346    # @string/data_connection_3_5g_plus 'H+'

    .line 108
    const v11, 0x7f08101c    # @drawable/ic_h_plus_mobiledata 'res/drawable/ic_h_plus_mobiledata.xml'

    .line 111
    const-string v12, "H+"

    .line 114
    invoke-direct {v9, v12, v10, v11}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 116
    sput-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 119
    new-instance v10, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 121
    const v11, 0x7f130348    # @string/data_connection_4g '4G'

    .line 123
    const v12, 0x7f080ed1    # @drawable/ic_4g_mobiledata 'res/drawable/ic_4g_mobiledata.xml'

    .line 126
    const-string v13, "4G"

    .line 129
    invoke-direct {v10, v13, v11, v12}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 131
    sput-object v10, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 134
    new-instance v11, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 136
    const v12, 0x7f13034b    # @string/data_connection_4g_plus '4G+'

    .line 138
    const v13, 0x7f080ed2    # @drawable/ic_4g_plus_mobiledata 'res/drawable/ic_4g_plus_mobiledata.xml'

    .line 141
    const-string v14, "4G+"

    .line 144
    invoke-direct {v11, v14, v12, v13}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 146
    sput-object v11, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 149
    new-instance v12, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 151
    const v13, 0x7f130356    # @string/data_connection_lte 'LTE'

    .line 153
    const v14, 0x7f08103d    # @drawable/ic_lte_mobiledata 'res/drawable/ic_lte_mobiledata.xml'

    .line 156
    const-string v15, "LTE"

    .line 159
    invoke-direct {v12, v15, v13, v14}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 161
    sput-object v12, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 164
    new-instance v13, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 166
    const v14, 0x7f130357    # @string/data_connection_lte_plus 'LTE+'

    .line 168
    const v15, 0x7f08103e    # @drawable/ic_lte_plus_mobiledata 'res/drawable/ic_lte_plus_mobiledata.xml'

    .line 171
    const-string v3, "LTE+"

    .line 174
    invoke-direct {v13, v3, v14, v15}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 176
    sput-object v13, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 179
    new-instance v3, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 181
    const v14, 0x7f130349    # @string/data_connection_4g_lte '4G LTE'

    .line 183
    const v15, 0x7f080ecf    # @drawable/ic_4g_lte_mobiledata 'res/drawable/ic_4g_lte_mobiledata.xml'

    .line 186
    move-object/from16 v17, v13

    .line 189
    const-string v13, "4G LTE"

    .line 191
    invoke-direct {v3, v13, v14, v15}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 193
    sput-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 196
    new-instance v13, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 198
    const v14, 0x7f13034a    # @string/data_connection_4g_lte_plus '4G LTE+'

    .line 200
    const v15, 0x7f080ed0    # @drawable/ic_4g_lte_plus_mobiledata 'res/drawable/ic_4g_lte_plus_mobiledata.xml'

    .line 203
    move-object/from16 v18, v12

    .line 206
    const-string v12, "4G LTE+"

    .line 208
    invoke-direct {v13, v12, v14, v15}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 210
    sput-object v13, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 213
    new-instance v12, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 215
    const v14, 0x7f130351    # @string/data_connection_5ge_html '<i>5G <small>E</small></i>'

    .line 217
    const v15, 0x7f080ed3    # @drawable/ic_5g_e_mobiledata 'res/drawable/ic_5g_e_mobiledata.xml'

    .line 220
    move-object/from16 v19, v13

    .line 223
    const-string v13, "5Ge"

    .line 225
    invoke-direct {v12, v13, v14, v15}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 227
    sput-object v12, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 230
    new-instance v13, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 232
    const v14, 0x7f13034c    # @string/data_connection_5g '5G'

    .line 234
    const v15, 0x7f080ed4    # @drawable/ic_5g_mobiledata 'res/drawable/ic_5g_mobiledata.xml'

    .line 237
    move-object/from16 v20, v12

    .line 240
    const-string v12, "5G"

    .line 242
    invoke-direct {v13, v12, v14, v15}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 244
    sput-object v13, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 247
    new-instance v12, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 249
    const v14, 0x7f13034e    # @string/data_connection_5g_plus '5G+'

    .line 251
    const v15, 0x7f080ed5    # @drawable/ic_5g_plus_mobiledata 'res/drawable/ic_5g_plus_mobiledata.xml'

    .line 254
    move-object/from16 v21, v13

    .line 257
    const-string v13, "5G_PLUS"

    .line 259
    invoke-direct {v12, v13, v14, v15}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 261
    sput-object v12, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 264
    new-instance v13, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 266
    const-string v14, "DataDisabled"

    .line 268
    const v15, 0x7f130256    # @string/cell_data_off_content_description 'Mobile data off'

    .line 270
    move-object/from16 v22, v12

    .line 273
    const/4 v12, 0x0

    .line 275
    invoke-direct {v13, v14, v15, v12}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 276
    sput-object v13, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 279
    new-instance v14, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 281
    const-string v15, "NotDefaultData"

    .line 283
    move-object/from16 v16, v13

    .line 285
    const v13, 0x7f130863    # @string/not_default_data_content_description 'Not set to use data'

    .line 287
    invoke-direct {v14, v15, v13, v12}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 290
    sput-object v14, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 293
    new-instance v12, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 295
    const v13, 0x7f130352    # @string/data_connection_carrier_wifi 'W+'

    .line 297
    const v15, 0x7f080f0b    # @drawable/ic_carrier_wifi 'res/drawable/ic_carrier_wifi.xml'

    .line 300
    move-object/from16 v23, v14

    .line 303
    const-string v14, "CWF"

    .line 305
    invoke-direct {v12, v14, v13, v15}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 307
    sput-object v12, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 310
    new-instance v12, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 312
    const v13, 0x7f130350    # @string/data_connection_5g_uwb '5GUWB'

    .line 314
    const v14, 0x7f080ed7    # @drawable/ic_5g_uwb_mobiledata 'res/drawable/ic_5g_uwb_mobiledata.xml'

    .line 317
    const-string v15, "5GUWB"

    .line 320
    invoke-direct {v12, v15, v13, v14}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    .line 322
    new-instance v13, Ljava/util/HashMap;

    .line 325
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 327
    sput-object v13, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    .line 330
    const-string v14, "carrier_network_change"

    .line 332
    invoke-virtual {v13, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v0, "3g"

    .line 337
    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string/jumbo v0, "wfc"

    .line 342
    invoke-virtual {v13, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string/jumbo v0, "unknown"

    .line 348
    invoke-virtual {v13, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v0, "e"

    .line 354
    invoke-virtual {v13, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v0, "1x"

    .line 359
    invoke-virtual {v13, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v0, "g"

    .line 364
    invoke-virtual {v13, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v0, "h"

    .line 369
    invoke-virtual {v13, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v0, "h+"

    .line 374
    invoke-virtual {v13, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v0, "4g"

    .line 379
    invoke-virtual {v13, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v0, "4g+"

    .line 384
    invoke-virtual {v13, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v0, "4glte"

    .line 389
    invoke-virtual {v13, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v0, "4glte+"

    .line 394
    move-object/from16 v1, v19

    .line 396
    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v0, "5ge"

    .line 401
    move-object/from16 v1, v20

    .line 403
    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v0, "lte"

    .line 408
    move-object/from16 v1, v18

    .line 410
    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v0, "lte+"

    .line 415
    move-object/from16 v1, v17

    .line 417
    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v0, "5g"

    .line 422
    move-object/from16 v1, v21

    .line 424
    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v0, "5g_plus"

    .line 429
    move-object/from16 v1, v22

    .line 431
    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v0, "5guwb"

    .line 436
    invoke-virtual {v13, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v0, "datadisable"

    .line 441
    move-object/from16 v1, v16

    .line 443
    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v0, "notdefaultdata"

    .line 448
    move-object/from16 v1, v23

    .line 450
    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    return-void
    .line 455
.end method
