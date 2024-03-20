.class public abstract Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static sQSIconMapping:Landroid/util/SparseArray;


# direct methods
.method public static getQSIcons(Ljava/lang/Integer;Z)I
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 4
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 9
    if-nez p1, :cond_1

    .line 11
    new-instance p1, Landroid/util/SparseArray;

    .line 13
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 15
    sput-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 18
    const v0, 0x7f080f10    # @drawable/ic_cc_qs_airplane_on 'res/drawable/ic_cc_qs_airplane_on.xml'

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v0

    .line 26
    const v1, 0x7f0811ac    # @drawable/ic_signal_airplane_enable 'res/drawable/ic_signal_airplane_enable.xml'

    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 33
    const v0, 0x7f080f0f    # @drawable/ic_cc_qs_airplane_off 'res/drawable/ic_cc_qs_airplane_off.xml'

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v0

    .line 41
    const v1, 0x7f0811ab    # @drawable/ic_signal_airplane_disable 'res/drawable/ic_signal_airplane_disable.xml'

    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 48
    const v0, 0x7f080f12    # @drawable/ic_cc_qs_auto_brightness_on 'res/drawable/ic_cc_qs_auto_brightness_on.xml'

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v0

    .line 56
    const v1, 0x7f08113b    # @drawable/ic_qs_brightness_auto 'res/drawable/ic_qs_brightness_auto.xml'

    .line 57
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 63
    const v0, 0x7f080f11    # @drawable/ic_cc_qs_auto_brightness_off 'res/drawable/ic_cc_qs_auto_brightness_off.xml'

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v0

    .line 71
    const v1, 0x7f08113c    # @drawable/ic_qs_brightness_manual 'res/drawable/ic_qs_brightness_manual.xml'

    .line 72
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 78
    const v0, 0x7f080f19    # @drawable/ic_cc_qs_bluetooth_on 'res/drawable/ic_cc_qs_bluetooth_on.xml'

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v0

    .line 86
    const v1, 0x7f08113a    # @drawable/ic_qs_bluetooth_on 'res/drawable/ic_qs_bluetooth_on.xml'

    .line 87
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 93
    const v0, 0x7f080f18    # @drawable/ic_cc_qs_bluetooth_off 'res/drawable/ic_cc_qs_bluetooth_off.xml'

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v0

    .line 101
    const v1, 0x7f081139    # @drawable/ic_qs_bluetooth_off 'res/drawable/ic_qs_bluetooth_off.xml'

    .line 102
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 108
    const v0, 0x7f081141    # @drawable/ic_qs_data_disabled 'res/drawable/ic_qs_data_disabled.xml'

    .line 110
    const v1, 0x7f080f1a    # @drawable/ic_cc_qs_cellular_off 'res/drawable/ic_cc_qs_cellular_off.xml'

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v2

    .line 119
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 123
    const v0, 0x7f080f1b    # @drawable/ic_cc_qs_cellular_on 'res/drawable/ic_cc_qs_cellular_on.xml'

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    move-result-object v0

    .line 131
    const v2, 0x7f081143    # @drawable/ic_qs_data_on 'res/drawable/ic_qs_data_on.xml'

    .line 132
    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 138
    const v0, 0x7f081142    # @drawable/ic_qs_data_off 'res/drawable/ic_qs_data_off.xml'

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object v1

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 150
    const v0, 0x7f080f1d    # @drawable/ic_cc_qs_drive_mode_on 'res/drawable/ic_cc_qs_drive_mode_on.xml'

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v0

    .line 158
    const v1, 0x7f081149    # @drawable/ic_qs_drive_enabled 'res/drawable/ic_qs_drive_enabled.xml'

    .line 159
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 162
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 165
    const v0, 0x7f080f1c    # @drawable/ic_cc_qs_drive_mode_off 'res/drawable/ic_cc_qs_drive_mode_off.xml'

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    move-result-object v0

    .line 173
    const v1, 0x7f081148    # @drawable/ic_qs_drive_disabled 'res/drawable/ic_qs_drive_disabled.xml'

    .line 174
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 180
    const v0, 0x7f081151    # @drawable/ic_qs_flashlight_unavailable 'res/drawable/ic_qs_flashlight_unavailable.xml'

    .line 182
    const v1, 0x7f080f1e    # @drawable/ic_cc_qs_flashlight_off 'res/drawable/ic_cc_qs_flashlight_off.xml'

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    move-result-object v2

    .line 191
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 195
    const v0, 0x7f080f1f    # @drawable/ic_cc_qs_flashlight_on 'res/drawable/ic_cc_qs_flashlight_on.xml'

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    move-result-object v0

    .line 203
    const v2, 0x7f081150    # @drawable/ic_qs_flashlight_enabled 'res/drawable/ic_qs_flashlight_enabled.xml'

    .line 204
    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 210
    const v0, 0x7f08114f    # @drawable/ic_qs_flashlight_disabled 'res/drawable/ic_qs_flashlight_disabled.xml'

    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    move-result-object v1

    .line 218
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 222
    const v0, 0x7f080f21    # @drawable/ic_cc_qs_gps_on 'res/drawable/ic_cc_qs_gps_on.xml'

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    move-result-object v0

    .line 230
    const v1, 0x7f08114b    # @drawable/ic_qs_dual_location_enabled 'res/drawable/ic_qs_dual_location_enabled.xml'

    .line 231
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 237
    const v0, 0x7f080f20    # @drawable/ic_cc_qs_gps_off 'res/drawable/ic_cc_qs_gps_off.xml'

    .line 239
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    move-result-object v0

    .line 245
    const v1, 0x7f08114a    # @drawable/ic_qs_dual_location_disabled 'res/drawable/ic_qs_dual_location_disabled.xml'

    .line 246
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 252
    const v0, 0x7f080f23    # @drawable/ic_cc_qs_hotspot_on 'res/drawable/ic_cc_qs_hotspot_on.xml'

    .line 254
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    move-result-object v0

    .line 260
    const v1, 0x7f081158    # @drawable/ic_qs_hotspot_enabled 'res/drawable/ic_qs_hotspot_enabled.xml'

    .line 261
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 267
    const v0, 0x7f080f22    # @drawable/ic_cc_qs_hotspot_off 'res/drawable/ic_cc_qs_hotspot_off.xml'

    .line 269
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    move-result-object v0

    .line 275
    const v1, 0x7f081157    # @drawable/ic_qs_hotspot_disabled 'res/drawable/ic_qs_hotspot_disabled.xml'

    .line 276
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 282
    const v0, 0x7f080f25    # @drawable/ic_cc_qs_location_on 'res/drawable/ic_cc_qs_location_on.xml'

    .line 284
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    move-result-object v0

    .line 290
    const v1, 0x7f0811ae    # @drawable/ic_signal_location_enable 'res/drawable/ic_signal_location_enable.xml'

    .line 291
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 297
    const v0, 0x7f080f24    # @drawable/ic_cc_qs_location_off 'res/drawable/ic_cc_qs_location_off.xml'

    .line 299
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    move-result-object v0

    .line 305
    const v1, 0x7f0811ad    # @drawable/ic_signal_location_disable 'res/drawable/ic_signal_location_disable.xml'

    .line 306
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 312
    const v0, 0x7f080f27    # @drawable/ic_cc_qs_mute_on 'res/drawable/ic_cc_qs_mute_on.xml'

    .line 314
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 317
    move-result-object v0

    .line 320
    const v1, 0x7f08115b    # @drawable/ic_qs_mute_on 'res/drawable/ic_qs_mute_on.xml'

    .line 321
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 327
    const v0, 0x7f080f26    # @drawable/ic_cc_qs_mute_off 'res/drawable/ic_cc_qs_mute_off.xml'

    .line 329
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    move-result-object v0

    .line 335
    const v1, 0x7f08115a    # @drawable/ic_qs_mute_off 'res/drawable/ic_qs_mute_off.xml'

    .line 336
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 342
    const v0, 0x7f080f29    # @drawable/ic_cc_qs_nfc_on 'res/drawable/ic_cc_qs_nfc_on.xml'

    .line 344
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    move-result-object v0

    .line 350
    const v1, 0x7f08115e    # @drawable/ic_qs_nfc_enabled 'res/drawable/ic_qs_nfc_enabled.xml'

    .line 351
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 357
    const v0, 0x7f080f28    # @drawable/ic_cc_qs_nfc_off 'res/drawable/ic_cc_qs_nfc_off.xml'

    .line 359
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    move-result-object v0

    .line 365
    const v1, 0x7f08115d    # @drawable/ic_qs_nfc_disabled 'res/drawable/ic_qs_nfc_disabled.xml'

    .line 366
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 372
    const v0, 0x7f080f2b    # @drawable/ic_cc_qs_night_mode_on 'res/drawable/ic_cc_qs_night_mode_on.xml'

    .line 374
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    move-result-object v0

    .line 380
    const v1, 0x7f081160    # @drawable/ic_qs_night_mode_on 'res/drawable/ic_qs_night_mode_on.xml'

    .line 381
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 384
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 387
    const v0, 0x7f080f2a    # @drawable/ic_cc_qs_night_mode_off 'res/drawable/ic_cc_qs_night_mode_off.xml'

    .line 389
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 392
    move-result-object v0

    .line 395
    const v1, 0x7f08115f    # @drawable/ic_qs_night_mode_off 'res/drawable/ic_qs_night_mode_off.xml'

    .line 396
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 399
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 402
    const v0, 0x7f080f2d    # @drawable/ic_cc_qs_paper_mode_on 'res/drawable/ic_cc_qs_paper_mode_on.xml'

    .line 404
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 407
    move-result-object v0

    .line 410
    const v1, 0x7f081165    # @drawable/ic_qs_paper_mode_on 'res/drawable/ic_qs_paper_mode_on.xml'

    .line 411
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 414
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 417
    const v0, 0x7f080f2c    # @drawable/ic_cc_qs_paper_mode_off 'res/drawable/ic_cc_qs_paper_mode_off.xml'

    .line 419
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 422
    move-result-object v0

    .line 425
    const v1, 0x7f081164    # @drawable/ic_qs_paper_mode_off 'res/drawable/ic_qs_paper_mode_off.xml'

    .line 426
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 429
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 432
    const v0, 0x7f080f2f    # @drawable/ic_cc_qs_power_save_on 'res/drawable/ic_cc_qs_power_save_on.xml'

    .line 434
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    move-result-object v0

    .line 440
    const v1, 0x7f081122    # @drawable/ic_qs_battery_saver_on 'res/drawable/ic_qs_battery_saver_on.xml'

    .line 441
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 447
    const v0, 0x7f080f2e    # @drawable/ic_cc_qs_power_save_off 'res/drawable/ic_cc_qs_power_save_off.xml'

    .line 449
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    move-result-object v0

    .line 455
    const v1, 0x7f081121    # @drawable/ic_qs_battery_saver_off 'res/drawable/ic_qs_battery_saver_off.xml'

    .line 456
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 462
    const v0, 0x7f080f31    # @drawable/ic_cc_qs_quiet_on 'res/drawable/ic_cc_qs_quiet_on.xml'

    .line 464
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 467
    move-result-object v0

    .line 470
    const v1, 0x7f081147    # @drawable/ic_qs_dnd_on 'res/drawable/ic_qs_dnd_on.xml'

    .line 471
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 477
    const v0, 0x7f080f30    # @drawable/ic_cc_qs_quiet_off 'res/drawable/ic_cc_qs_quiet_off.xml'

    .line 479
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 482
    move-result-object v0

    .line 485
    const v1, 0x7f081146    # @drawable/ic_qs_dnd_off 'res/drawable/ic_qs_dnd_off.xml'

    .line 486
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 492
    const v0, 0x7f080f33    # @drawable/ic_cc_qs_rotation_lock_on 'res/drawable/ic_cc_qs_rotation_lock_on.xml'

    .line 494
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    move-result-object v0

    .line 500
    const v1, 0x7f081120    # @drawable/ic_qs_auto_rotate_enabled 'res/drawable/ic_qs_auto_rotate_enabled.xml'

    .line 501
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 504
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 507
    const v0, 0x7f080f32    # @drawable/ic_cc_qs_rotation_lock_off 'res/drawable/ic_cc_qs_rotation_lock_off.xml'

    .line 509
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 512
    move-result-object v0

    .line 515
    const v1, 0x7f08111f    # @drawable/ic_qs_auto_rotate_disabled 'res/drawable/ic_qs_auto_rotate_disabled.xml'

    .line 516
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 519
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 522
    const v0, 0x7f080f34    # @drawable/ic_cc_qs_screen_lock_off 'res/drawable/ic_cc_qs_screen_lock_off.xml'

    .line 524
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 527
    move-result-object v0

    .line 530
    const v1, 0x7f08116c    # @drawable/ic_qs_screenlock 'res/drawable/ic_qs_screenlock.xml'

    .line 531
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 534
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 537
    const v0, 0x7f080f36    # @drawable/ic_cc_qs_screen_shot_off 'res/drawable/ic_cc_qs_screen_shot_off.xml'

    .line 539
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 542
    move-result-object v0

    .line 545
    const v1, 0x7f08116d    # @drawable/ic_qs_screenshot 'res/drawable/ic_qs_screenshot.xml'

    .line 546
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 549
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 552
    const v0, 0x7f080f3a    # @drawable/ic_cc_qs_sync_on 'res/drawable/ic_cc_qs_sync_on.xml'

    .line 554
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 557
    move-result-object v0

    .line 560
    const v1, 0x7f08117c    # @drawable/ic_qs_sync_on 'res/drawable/ic_qs_sync_on.xml'

    .line 561
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 564
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 567
    const v0, 0x7f080f39    # @drawable/ic_cc_qs_sync_off 'res/drawable/ic_cc_qs_sync_off.xml'

    .line 569
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 572
    move-result-object v0

    .line 575
    const v1, 0x7f08117b    # @drawable/ic_qs_sync_off 'res/drawable/ic_qs_sync_off.xml'

    .line 576
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 579
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 582
    const v0, 0x7f080f3c    # @drawable/ic_cc_qs_vibrate_on 'res/drawable/ic_cc_qs_vibrate_on.xml'

    .line 584
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 587
    move-result-object v0

    .line 590
    const v1, 0x7f08117e    # @drawable/ic_qs_vibrate_on 'res/drawable/ic_qs_vibrate_on.xml'

    .line 591
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 594
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 597
    const v0, 0x7f080f3b    # @drawable/ic_cc_qs_vibrate_off 'res/drawable/ic_cc_qs_vibrate_off.xml'

    .line 599
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 602
    move-result-object v0

    .line 605
    const v1, 0x7f08117d    # @drawable/ic_qs_vibrate_off 'res/drawable/ic_qs_vibrate_off.xml'

    .line 606
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 609
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 612
    const v0, 0x7f080f3e    # @drawable/ic_cc_qs_wifi_on 'res/drawable/ic_cc_qs_wifi_on.xml'

    .line 614
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 617
    move-result-object v0

    .line 620
    const v1, 0x7f08118c    # @drawable/ic_qs_wifi_on 'res/drawable/ic_qs_wifi_on.xml'

    .line 621
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 624
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 627
    const v0, 0x7f080f3d    # @drawable/ic_cc_qs_wifi_off 'res/drawable/ic_cc_qs_wifi_off.xml'

    .line 629
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 632
    move-result-object v0

    .line 635
    const v1, 0x7f08118b    # @drawable/ic_qs_wifi_off 'res/drawable/ic_qs_wifi_off.xml'

    .line 636
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 639
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 642
    const v0, 0x7f080f38    # @drawable/ic_cc_qs_settings 'res/drawable/ic_cc_qs_settings.xml'

    .line 644
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 647
    move-result-object v1

    .line 650
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 651
    :cond_1
    sget-object p1, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->sQSIconMapping:Landroid/util/SparseArray;

    .line 654
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 656
    move-result v0

    .line 659
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 660
    move-result-object p1

    .line 663
    check-cast p1, Ljava/lang/Integer;

    .line 664
    if-nez p1, :cond_2

    .line 666
    goto :goto_0

    .line 668
    :cond_2
    move-object p0, p1

    .line 669
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 670
    move-result p0

    .line 673
    return p0
    .line 674
.end method
