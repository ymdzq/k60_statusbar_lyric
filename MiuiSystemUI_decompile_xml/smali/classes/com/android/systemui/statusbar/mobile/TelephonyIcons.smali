.class public abstract Lcom/android/systemui/statusbar/mobile/TelephonyIcons;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

.field public static final E:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

.field public static final FIVE_G_KR_OFF:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

.field public static final FIVE_G_KR_ON:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

.field public static final FIVE_G_UWB:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

.field public static final FOUR_G:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_PLUS:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

.field public static final G:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

.field public static final H:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

.field public static final H_PLUS:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

.field public static final LTE_CA_5G_E:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

.field public static final MOBILE_CALL_STRENGTH_ICONS:[I

.field public static final NR_5G:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

.field public static final NR_5G_PLUS:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

.field public static final ONE_X:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

.field public static final TELEPHONY_SIGNAL_NO_VOICE_STRENGTH:[I

.field public static final TELEPHONY_SIGNAL_STRENGTH:[I

.field public static final THREE_G:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

.field public static final UNKNOWN:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

.field public static final WFC:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;


# direct methods
.method public static constructor <clinit>()V
    .locals 29

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_0

    .line 5
    sput-object v1, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[I

    .line 8
    new-array v1, v0, [I

    .line 10
    fill-array-data v1, :array_1

    .line 12
    sput-object v1, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->TELEPHONY_SIGNAL_NO_VOICE_STRENGTH:[I

    .line 15
    new-array v0, v0, [I

    .line 17
    fill-array-data v0, :array_2

    .line 19
    const v1, 0x7f080ff9    # @drawable/ic_g_mobiledata 'res/drawable/ic_g_mobiledata.xml'

    .line 22
    const v9, 0x7f080fef    # @drawable/ic_e_mobiledata 'res/drawable/ic_e_mobiledata.xml'

    .line 25
    const v10, 0x7f08101b    # @drawable/ic_h_mobiledata 'res/drawable/ic_h_mobiledata.xml'

    .line 28
    const v11, 0x7f08101c    # @drawable/ic_h_plus_mobiledata 'res/drawable/ic_h_plus_mobiledata.xml'

    .line 31
    const v12, 0x7f080ece    # @drawable/ic_3g_mobiledata 'res/drawable/ic_3g_mobiledata.xml'

    .line 34
    const v13, 0x7f080ed1    # @drawable/ic_4g_mobiledata 'res/drawable/ic_4g_mobiledata.xml'

    .line 37
    const v14, 0x7f080ed2    # @drawable/ic_4g_plus_mobiledata 'res/drawable/ic_4g_plus_mobiledata.xml'

    .line 40
    const v15, 0x7f080ed3    # @drawable/ic_5g_e_mobiledata 'res/drawable/ic_5g_e_mobiledata.xml'

    .line 43
    const v16, 0x7f080ecd    # @drawable/ic_1x_mobiledata 'res/drawable/ic_1x_mobiledata.xml'

    .line 46
    const v17, 0x7f080ed4    # @drawable/ic_5g_mobiledata 'res/drawable/ic_5g_mobiledata.xml'

    .line 49
    const v18, 0x7f080ed5    # @drawable/ic_5g_plus_mobiledata 'res/drawable/ic_5g_plus_mobiledata.xml'

    .line 52
    new-instance v19, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 55
    const-string v3, "CARRIER_NETWORK_CHANGE"

    .line 57
    const/16 v20, 0x0

    .line 59
    aget v21, v0, v20

    .line 61
    const v6, 0x7f130251    # @string/carrier_network_change_mode 'Carrier network changing'

    .line 63
    const/4 v7, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    move-object/from16 v2, v19

    .line 68
    move-object v4, v0

    .line 70
    move/from16 v5, v21

    .line 71
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIIII)V

    .line 73
    sput-object v19, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 76
    new-instance v19, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 78
    const-string v3, "3G"

    .line 80
    const v6, 0x7f130347    # @string/data_connection_3g '3G'

    .line 82
    const/4 v8, 0x3

    .line 85
    move-object/from16 v2, v19

    .line 86
    move v7, v12

    .line 88
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIIII)V

    .line 89
    sput-object v19, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 92
    new-instance v12, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 94
    const-string v3, "WFC"

    .line 96
    const/16 v19, 0x0

    .line 98
    const/16 v22, 0x0

    .line 100
    const/16 v23, 0x0

    .line 102
    const/4 v6, 0x0

    .line 104
    const/4 v7, 0x0

    .line 105
    const/4 v8, 0x0

    .line 106
    move-object v2, v12

    .line 107
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIIII)V

    .line 108
    sput-object v12, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 111
    new-instance v12, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 113
    const-string v3, "Unknown"

    .line 115
    move-object v2, v12

    .line 117
    move/from16 v6, v19

    .line 118
    move/from16 v7, v22

    .line 120
    move/from16 v8, v23

    .line 122
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIIII)V

    .line 124
    sput-object v12, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 127
    new-instance v12, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 129
    const-string v3, "E"

    .line 131
    const v6, 0x7f130354    # @string/data_connection_edge 'EDGE'

    .line 133
    const/4 v8, 0x2

    .line 136
    move-object v2, v12

    .line 137
    move v7, v9

    .line 138
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIIII)V

    .line 139
    sput-object v12, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->E:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 142
    new-instance v9, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 144
    const-string v3, "1X"

    .line 146
    const v6, 0x7f130353    # @string/data_connection_cdma '1X'

    .line 148
    const/16 v8, 0x8

    .line 151
    move-object v2, v9

    .line 153
    move/from16 v7, v16

    .line 154
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIIII)V

    .line 156
    sput-object v9, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 159
    new-instance v9, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 161
    const-string v3, "G"

    .line 163
    const v6, 0x7f130355    # @string/data_connection_gprs 'GPRS'

    .line 165
    const/4 v8, 0x1

    .line 168
    move-object v2, v9

    .line 169
    move v7, v1

    .line 170
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIIII)V

    .line 171
    sput-object v9, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->G:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 174
    new-instance v1, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 176
    const-string v3, "H"

    .line 178
    const v6, 0x7f130345    # @string/data_connection_3_5g 'H'

    .line 180
    const/4 v8, 0x4

    .line 183
    move-object v2, v1

    .line 184
    move v7, v10

    .line 185
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIIII)V

    .line 186
    sput-object v1, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->H:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 189
    new-instance v1, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 191
    const-string v3, "H+"

    .line 193
    const v6, 0x7f130346    # @string/data_connection_3_5g_plus 'H+'

    .line 195
    const/4 v8, 0x5

    .line 198
    move-object v2, v1

    .line 199
    move v7, v11

    .line 200
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIIII)V

    .line 201
    sput-object v1, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 204
    new-instance v1, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 206
    const-string v3, "4G"

    .line 208
    const v6, 0x7f130348    # @string/data_connection_4g '4G'

    .line 210
    const/4 v8, 0x6

    .line 213
    move-object v2, v1

    .line 214
    move v7, v13

    .line 215
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIIII)V

    .line 216
    sput-object v1, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 219
    new-instance v1, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 221
    const-string v3, "4G+"

    .line 223
    const v6, 0x7f13034b    # @string/data_connection_4g_plus '4G+'

    .line 225
    const/4 v8, 0x7

    .line 228
    move-object v2, v1

    .line 229
    move v7, v14

    .line 230
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIIII)V

    .line 231
    sput-object v1, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 234
    new-instance v1, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 236
    const-string v3, "5Ge"

    .line 238
    const v6, 0x7f130351    # @string/data_connection_5ge_html '<i>5G <small>E</small></i>'

    .line 240
    const/16 v8, 0xa

    .line 243
    move-object v2, v1

    .line 245
    move v7, v15

    .line 246
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIIII)V

    .line 247
    sput-object v1, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 250
    new-instance v1, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 252
    const-string v3, "5G_UWB"

    .line 254
    const v9, 0x7f13034c    # @string/data_connection_5g '5G'

    .line 256
    const/16 v10, 0xb

    .line 259
    const v6, 0x7f13034c    # @string/data_connection_5g '5G'

    .line 261
    const v7, 0x7f080ed4    # @drawable/ic_5g_mobiledata 'res/drawable/ic_5g_mobiledata.xml'

    .line 264
    const/16 v8, 0xb

    .line 267
    move-object v2, v1

    .line 269
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIIII)V

    .line 270
    sput-object v1, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->FIVE_G_UWB:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 273
    new-instance v1, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 275
    const-string v3, "NR_5G"

    .line 277
    move-object v2, v1

    .line 279
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIIII)V

    .line 280
    sput-object v1, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 283
    new-instance v1, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 285
    const-string v23, "5GKrOn"

    .line 287
    sget-object v4, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 289
    aget v5, v4, v20

    .line 291
    const v26, 0x7f13034c    # @string/data_connection_5g '5G'

    .line 293
    const v27, 0x7f080ed4    # @drawable/ic_5g_mobiledata 'res/drawable/ic_5g_mobiledata.xml'

    .line 296
    const/16 v28, 0xb

    .line 299
    move-object/from16 v22, v1

    .line 301
    move-object/from16 v24, v4

    .line 303
    move/from16 v25, v5

    .line 305
    invoke-direct/range {v22 .. v28}, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIIII)V

    .line 307
    sput-object v1, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->FIVE_G_KR_ON:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 310
    new-instance v1, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 312
    const-string v3, "5GKrOff"

    .line 314
    move-object v2, v1

    .line 316
    move v6, v9

    .line 317
    move/from16 v7, v17

    .line 318
    move v8, v10

    .line 320
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIIII)V

    .line 321
    sput-object v1, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->FIVE_G_KR_OFF:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 324
    new-instance v1, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 326
    const-string v3, "NR_5G_PLUS"

    .line 328
    const v6, 0x7f13034e    # @string/data_connection_5g_plus '5G+'

    .line 330
    const/16 v8, 0xc

    .line 333
    move-object v2, v1

    .line 335
    move-object v4, v0

    .line 336
    move/from16 v5, v21

    .line 337
    move/from16 v7, v18

    .line 339
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[IIIII)V

    .line 341
    sput-object v1, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->NR_5G_PLUS:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 344
    const v0, 0x7f081076    # @drawable/ic_mobile_call_strength_1 'res/drawable/ic_mobile_call_strength_1.xml'

    .line 346
    const v1, 0x7f081077    # @drawable/ic_mobile_call_strength_2 'res/drawable/ic_mobile_call_strength_2.xml'

    .line 349
    const v2, 0x7f081075    # @drawable/ic_mobile_call_strength_0 'res/drawable/ic_mobile_call_strength_0.xml'

    .line 352
    const v3, 0x7f081078    # @drawable/ic_mobile_call_strength_3 'res/drawable/ic_mobile_call_strength_3.xml'

    .line 355
    const v4, 0x7f081079    # @drawable/ic_mobile_call_strength_4 'res/drawable/ic_mobile_call_strength_4.xml'

    .line 358
    filled-new-array {v2, v0, v1, v3, v4}, [I

    .line 361
    move-result-object v0

    .line 364
    sput-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->MOBILE_CALL_STRENGTH_ICONS:[I

    .line 365
    return-void

    .line 367
    :array_0
    .array-data 4
        0x7f081873    # @drawable/stat_sys_signal_0 'res/drawable/stat_sys_signal_0.xml'
        0x7f081879    # @drawable/stat_sys_signal_1 'res/drawable/stat_sys_signal_1.xml'
        0x7f08187f    # @drawable/stat_sys_signal_2 'res/drawable/stat_sys_signal_2.xml'
        0x7f081885    # @drawable/stat_sys_signal_3 'res/drawable/stat_sys_signal_3.xml'
        0x7f08188b    # @drawable/stat_sys_signal_4 'res/drawable/stat_sys_signal_4.xml'
        0x7f081891    # @drawable/stat_sys_signal_5 'res/drawable/stat_sys_signal_5.xml'
    .end array-data

    .line 368
    :array_1
    .array-data 4
        0x7f081875    # @drawable/stat_sys_signal_0_no_voice 'res/drawable/stat_sys_signal_0_no_voice.xml'
        0x7f08187b    # @drawable/stat_sys_signal_1_no_voice 'res/drawable/stat_sys_signal_1_no_voice.xml'
        0x7f081881    # @drawable/stat_sys_signal_2_no_voice 'res/drawable/stat_sys_signal_2_no_voice.xml'
        0x7f081887    # @drawable/stat_sys_signal_3_no_voice 'res/drawable/stat_sys_signal_3_no_voice.xml'
        0x7f08188d    # @drawable/stat_sys_signal_4_no_voice 'res/drawable/stat_sys_signal_4_no_voice.xml'
        0x7f081893    # @drawable/stat_sys_signal_5_no_voice 'res/drawable/stat_sys_signal_5_no_voice.xml'
    .end array-data

    .line 384
    :array_2
    .array-data 4
        0x7f1300b5    # @string/accessibility_no_phone 'No phone.'
        0x7f1300bc    # @string/accessibility_phone_one_bar 'Phone one bar.'
        0x7f1300bf    # @string/accessibility_phone_two_bars 'Phone two bars.'
        0x7f1300be    # @string/accessibility_phone_three_bars 'Phone three bars.'
        0x7f1300bd    # @string/accessibility_phone_signal_full 'Phone signal full.'
        0x7f1300bd    # @string/accessibility_phone_signal_full 'Phone signal full.'
    .end array-data
    .line 400
.end method
