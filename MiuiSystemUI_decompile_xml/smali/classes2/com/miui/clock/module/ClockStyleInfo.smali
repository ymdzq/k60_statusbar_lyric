.class public abstract Lcom/miui/clock/module/ClockStyleInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public aodBlendColor:I

.field public aodPrimaryColor:I

.field public aodSecondaryColor:I

.field public blendColor:I

.field public disableContainerPassBlur:Z

.field public infoAreaColor:I

.field public isAutoPrimaryColor:Z

.field public isAutoSecondaryColor:Z

.field public isSuperSaveOpen:Z

.field public mInfoTextDark:Z

.field public mPalette:Ljava/util/Map;

.field public originMagazineColor:I

.field public primaryColor:I

.field public secondaryColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->primaryColor:I

    .line 6
    const-string v1, "#99ffffff"

    .line 8
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 10
    move-result v1

    .line 13
    iput v1, p0, Lcom/miui/clock/module/ClockStyleInfo;->infoAreaColor:I

    .line 14
    iput v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->secondaryColor:I

    .line 16
    iput v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 18
    iput v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->aodBlendColor:I

    .line 20
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->mInfoTextDark:Z

    .line 23
    return-void
    .line 25
.end method

.method public static convertInfoFromClockBean(Landroid/content/Context;Lcom/miui/clock/module/ClockBean;I)Lcom/miui/clock/module/ClockStyleInfo;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 9
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    sparse-switch v0, :sswitch_data_0

    .line 14
    goto/16 :goto_0

    .line 17
    :sswitch_0
    const-string/jumbo v0, "smart_frame_single"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    goto/16 :goto_0

    .line 28
    :cond_0
    const/16 v1, 0x15

    .line 30
    goto/16 :goto_0

    .line 32
    :sswitch_1
    const-string v0, "doodle_single"

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p0

    .line 39
    if-nez p0, :cond_1

    .line 40
    goto/16 :goto_0

    .line 42
    :cond_1
    const/16 v1, 0x14

    .line 44
    goto/16 :goto_0

    .line 46
    :sswitch_2
    const-string/jumbo v0, "smart_frame_notification"

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p0

    .line 54
    if-nez p0, :cond_2

    .line 55
    goto/16 :goto_0

    .line 57
    :cond_2
    const/16 v1, 0x13

    .line 59
    goto/16 :goto_0

    .line 61
    :sswitch_3
    const-string v0, "magazine_c_single"

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result p0

    .line 68
    if-nez p0, :cond_3

    .line 69
    goto/16 :goto_0

    .line 71
    :cond_3
    const/16 v1, 0x12

    .line 73
    goto/16 :goto_0

    .line 75
    :sswitch_4
    const-string v0, "rhombus"

    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result p0

    .line 82
    if-nez p0, :cond_4

    .line 83
    goto/16 :goto_0

    .line 85
    :cond_4
    const/16 v1, 0x11

    .line 87
    goto/16 :goto_0

    .line 89
    :sswitch_5
    const-string v0, "magazine_a_notification"

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result p0

    .line 96
    if-nez p0, :cond_5

    .line 97
    goto/16 :goto_0

    .line 99
    :cond_5
    const/16 v1, 0x10

    .line 101
    goto/16 :goto_0

    .line 103
    :sswitch_6
    const-string v0, "classic"

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result p0

    .line 110
    if-nez p0, :cond_6

    .line 111
    goto/16 :goto_0

    .line 113
    :cond_6
    const/16 v1, 0xf

    .line 115
    goto/16 :goto_0

    .line 117
    :sswitch_7
    const-string v0, "magazine_b_notification"

    .line 119
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result p0

    .line 124
    if-nez p0, :cond_7

    .line 125
    goto/16 :goto_0

    .line 127
    :cond_7
    const/16 v1, 0xe

    .line 129
    goto/16 :goto_0

    .line 131
    :sswitch_8
    const-string v0, "magazine_c_notification"

    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result p0

    .line 138
    if-nez p0, :cond_8

    .line 139
    goto/16 :goto_0

    .line 141
    :cond_8
    const/16 v1, 0xd

    .line 143
    goto/16 :goto_0

    .line 145
    :sswitch_9
    const-string v0, "dual"

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result p0

    .line 152
    if-nez p0, :cond_9

    .line 153
    goto/16 :goto_0

    .line 155
    :cond_9
    const/16 v1, 0xc

    .line 157
    goto/16 :goto_0

    .line 159
    :sswitch_a
    const-string v0, "classic_plus"

    .line 161
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    move-result p0

    .line 166
    if-nez p0, :cond_a

    .line 167
    goto/16 :goto_0

    .line 169
    :cond_a
    const/16 v1, 0xb

    .line 171
    goto/16 :goto_0

    .line 173
    :sswitch_b
    const-string v0, "classic_small"

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    move-result p0

    .line 180
    if-nez p0, :cond_b

    .line 181
    goto/16 :goto_0

    .line 183
    :cond_b
    const/16 v1, 0xa

    .line 185
    goto/16 :goto_0

    .line 187
    :sswitch_c
    const-string/jumbo v0, "smart_frame"

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    move-result p0

    .line 195
    if-nez p0, :cond_c

    .line 196
    goto/16 :goto_0

    .line 198
    :cond_c
    const/16 v1, 0x9

    .line 200
    goto/16 :goto_0

    .line 202
    :sswitch_d
    const-string v0, "magazine_c"

    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    move-result p0

    .line 209
    if-nez p0, :cond_d

    .line 210
    goto/16 :goto_0

    .line 212
    :cond_d
    const/16 v1, 0x8

    .line 214
    goto/16 :goto_0

    .line 216
    :sswitch_e
    const-string v0, "magazine_b"

    .line 218
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    move-result p0

    .line 223
    if-nez p0, :cond_e

    .line 224
    goto :goto_0

    .line 226
    :cond_e
    const/4 v1, 0x7

    .line 227
    goto :goto_0

    .line 228
    :sswitch_f
    const-string v0, "magazine_a"

    .line 229
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result p0

    .line 234
    if-nez p0, :cond_f

    .line 235
    goto :goto_0

    .line 237
    :cond_f
    const/4 v1, 0x6

    .line 238
    goto :goto_0

    .line 239
    :sswitch_10
    const-string v0, "rhombus_notification"

    .line 240
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    move-result p0

    .line 245
    if-nez p0, :cond_10

    .line 246
    goto :goto_0

    .line 248
    :cond_10
    const/4 v1, 0x5

    .line 249
    goto :goto_0

    .line 250
    :sswitch_11
    const-string v0, "magazine_c_date_only"

    .line 251
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    move-result p0

    .line 256
    if-nez p0, :cond_11

    .line 257
    goto :goto_0

    .line 259
    :cond_11
    const/4 v1, 0x4

    .line 260
    goto :goto_0

    .line 261
    :sswitch_12
    const-string v0, "classic_plus_small"

    .line 262
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    move-result p0

    .line 267
    if-nez p0, :cond_12

    .line 268
    goto :goto_0

    .line 270
    :cond_12
    const/4 v1, 0x3

    .line 271
    goto :goto_0

    .line 272
    :sswitch_13
    const-string v0, "doodle"

    .line 273
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    move-result p0

    .line 278
    if-nez p0, :cond_13

    .line 279
    goto :goto_0

    .line 281
    :cond_13
    const/4 v1, 0x2

    .line 282
    goto :goto_0

    .line 283
    :sswitch_14
    const-string v0, "rhombus_single"

    .line 284
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    move-result p0

    .line 289
    if-nez p0, :cond_14

    .line 290
    goto :goto_0

    .line 292
    :cond_14
    const/4 v1, 0x1

    .line 293
    goto :goto_0

    .line 294
    :sswitch_15
    const-string v0, "magazine_a_single"

    .line 295
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    move-result p0

    .line 300
    if-nez p0, :cond_15

    .line 301
    goto :goto_0

    .line 303
    :cond_15
    const/4 v1, 0x0

    .line 304
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 305
    new-instance p0, Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 308
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/module/MiuiClassicClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;I)V

    .line 310
    return-object p0

    .line 313
    :pswitch_0
    new-instance p0, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClockInfo;

    .line 314
    invoke-direct {p0, p1}, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 316
    return-object p0

    .line 319
    :pswitch_1
    new-instance p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClockInfo;

    .line 320
    invoke-direct {p0, p1}, Lcom/miui/clock/graffiti/MiuiGraffitiAodClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 322
    return-object p0

    .line 325
    :pswitch_2
    new-instance p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClockInfo;

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/magazine/MiuiMagazineCSingleClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;I)V

    .line 328
    return-object p0

    .line 331
    :pswitch_3
    invoke-static {p2}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 332
    move-result p0

    .line 335
    if-eqz p0, :cond_16

    .line 336
    new-instance p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 338
    invoke-direct {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 340
    return-object p0

    .line 343
    :cond_16
    invoke-static {p2}, Lcom/miui/clock/module/ClockStyleInfo;->isNotificationType(I)Z

    .line 344
    move-result p0

    .line 347
    if-eqz p0, :cond_17

    .line 348
    new-instance p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClockInfo;

    .line 350
    invoke-direct {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 352
    return-object p0

    .line 355
    :cond_17
    new-instance p0, Lcom/miui/clock/rhombus/MiuiRhombusClockInfo;

    .line 356
    invoke-direct {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 358
    return-object p0

    .line 361
    :pswitch_4
    new-instance p0, Lcom/miui/clock/magazine/MiuiMagazineANotificationClockInfo;

    .line 362
    invoke-direct {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineANotificationClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 364
    return-object p0

    .line 367
    :pswitch_5
    invoke-static {p2}, Lcom/miui/clock/module/ClockStyleInfo;->isNotificationType(I)Z

    .line 368
    move-result p0

    .line 371
    if-eqz p0, :cond_18

    .line 372
    new-instance p0, Lcom/miui/clock/module/MiuiClassicClockSmallInfo;

    .line 374
    invoke-direct {p0, p1}, Lcom/miui/clock/module/MiuiClassicClockSmallInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 376
    return-object p0

    .line 379
    :cond_18
    new-instance p0, Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 380
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/module/MiuiClassicClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;I)V

    .line 382
    return-object p0

    .line 385
    :pswitch_6
    new-instance p0, Lcom/miui/clock/magazine/MiuiMagazineBNotificationClockInfo;

    .line 386
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/magazine/MiuiMagazineBNotificationClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;I)V

    .line 388
    return-object p0

    .line 391
    :pswitch_7
    new-instance p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClockInfo;

    .line 392
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;I)V

    .line 394
    return-object p0

    .line 397
    :pswitch_8
    new-instance p0, Lcom/miui/clock/module/MiuiDualClockInfo;

    .line 398
    invoke-direct {p0, p1}, Lcom/miui/clock/module/MiuiDualClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 400
    return-object p0

    .line 403
    :pswitch_9
    invoke-static {p2}, Lcom/miui/clock/module/ClockStyleInfo;->isNotificationType(I)Z

    .line 404
    move-result p0

    .line 407
    if-eqz p0, :cond_19

    .line 408
    new-instance p0, Lcom/miui/clock/module/MiuiClassicPlusClockSmallInfo;

    .line 410
    invoke-direct {p0, p1}, Lcom/miui/clock/module/MiuiClassicPlusClockSmallInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 412
    return-object p0

    .line 415
    :cond_19
    new-instance p0, Lcom/miui/clock/module/MiuiClassicPlusClockInfo;

    .line 416
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/module/MiuiClassicPlusClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;I)V

    .line 418
    return-object p0

    .line 421
    :pswitch_a
    new-instance p0, Lcom/miui/clock/module/MiuiClassicClockSmallInfo;

    .line 422
    invoke-direct {p0, p1}, Lcom/miui/clock/module/MiuiClassicClockSmallInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 424
    return-object p0

    .line 427
    :pswitch_b
    invoke-static {p2}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 428
    move-result p0

    .line 431
    if-eqz p0, :cond_1a

    .line 432
    new-instance p0, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClockInfo;

    .line 434
    invoke-direct {p0, p1}, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 436
    return-object p0

    .line 439
    :cond_1a
    new-instance p0, Lcom/miui/clock/smartframe/MiuiSmartFrameClockInfo;

    .line 440
    invoke-direct {p0, p1}, Lcom/miui/clock/smartframe/MiuiSmartFrameClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 442
    return-object p0

    .line 445
    :pswitch_c
    invoke-static {p2}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 446
    move-result p0

    .line 449
    if-eqz p0, :cond_1b

    .line 450
    new-instance p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClockInfo;

    .line 452
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/magazine/MiuiMagazineCSingleClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;I)V

    .line 454
    return-object p0

    .line 457
    :cond_1b
    invoke-static {p2}, Lcom/miui/clock/module/ClockStyleInfo;->isNotificationType(I)Z

    .line 458
    move-result p0

    .line 461
    if-eqz p0, :cond_1c

    .line 462
    new-instance p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClockInfo;

    .line 464
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;I)V

    .line 466
    return-object p0

    .line 469
    :cond_1c
    new-instance p0, Lcom/miui/clock/magazine/MiuiMagazineCClockInfo;

    .line 470
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/magazine/MiuiMagazineCClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;I)V

    .line 472
    return-object p0

    .line 475
    :pswitch_d
    invoke-static {p2}, Lcom/miui/clock/module/ClockStyleInfo;->isNotificationType(I)Z

    .line 476
    move-result p0

    .line 479
    if-eqz p0, :cond_1d

    .line 480
    new-instance p0, Lcom/miui/clock/magazine/MiuiMagazineBNotificationClockInfo;

    .line 482
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/magazine/MiuiMagazineBNotificationClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;I)V

    .line 484
    return-object p0

    .line 487
    :cond_1d
    new-instance p0, Lcom/miui/clock/magazine/MiuiMagazineBClockInfo;

    .line 488
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/magazine/MiuiMagazineBClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;I)V

    .line 490
    return-object p0

    .line 493
    :pswitch_e
    invoke-static {p2}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 494
    move-result p0

    .line 497
    if-eqz p0, :cond_1e

    .line 498
    new-instance p0, Lcom/miui/clock/magazine/MiuiMagazineASingleClockInfo;

    .line 500
    invoke-direct {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineASingleClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 502
    return-object p0

    .line 505
    :cond_1e
    invoke-static {p2}, Lcom/miui/clock/module/ClockStyleInfo;->isNotificationType(I)Z

    .line 506
    move-result p0

    .line 509
    if-eqz p0, :cond_1f

    .line 510
    new-instance p0, Lcom/miui/clock/magazine/MiuiMagazineANotificationClockInfo;

    .line 512
    invoke-direct {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineANotificationClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 514
    return-object p0

    .line 517
    :cond_1f
    new-instance p0, Lcom/miui/clock/magazine/MiuiMagazineAClockInfo;

    .line 518
    invoke-direct {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineAClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 520
    return-object p0

    .line 523
    :pswitch_f
    new-instance p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClockInfo;

    .line 524
    invoke-direct {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 526
    return-object p0

    .line 529
    :pswitch_10
    new-instance p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClockInfo;

    .line 530
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/magazine/MiuiMagazineCDateClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;I)V

    .line 532
    return-object p0

    .line 535
    :pswitch_11
    new-instance p0, Lcom/miui/clock/module/MiuiClassicPlusClockSmallInfo;

    .line 536
    invoke-direct {p0, p1}, Lcom/miui/clock/module/MiuiClassicPlusClockSmallInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 538
    return-object p0

    .line 541
    :pswitch_12
    invoke-static {p2}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 542
    move-result p0

    .line 545
    if-eqz p0, :cond_20

    .line 546
    new-instance p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClockInfo;

    .line 548
    invoke-direct {p0, p1}, Lcom/miui/clock/graffiti/MiuiGraffitiAodClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 550
    return-object p0

    .line 553
    :cond_20
    new-instance p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockInfo;

    .line 554
    invoke-direct {p0, p1}, Lcom/miui/clock/graffiti/MiuiGraffitiClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 556
    return-object p0

    .line 559
    :pswitch_13
    new-instance p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 560
    invoke-direct {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 562
    return-object p0

    .line 565
    :pswitch_14
    new-instance p0, Lcom/miui/clock/magazine/MiuiMagazineASingleClockInfo;

    .line 566
    invoke-direct {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineASingleClockInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 568
    return-object p0

    .line 571
    :sswitch_data_0
    .sparse-switch
        -0x782a31cf -> :sswitch_15
        -0x6d670f85 -> :sswitch_14
        -0x4f0b36e7 -> :sswitch_13
        -0x462b2811 -> :sswitch_12
        -0x4232136a -> :sswitch_11
        -0x31483d22 -> :sswitch_10
        -0x21ccdd8a -> :sswitch_f
        -0x21ccdd89 -> :sswitch_e
        -0x21ccdd88 -> :sswitch_d
        -0x9889889 -> :sswitch_c
        -0x8f704e6 -> :sswitch_b
        -0x4b66d9 -> :sswitch_a
        0x2f387c -> :sswitch_9
        0x7849352 -> :sswitch_8
        0x25a6c9b3 -> :sswitch_7
        0x32e13892 -> :sswitch_6
        0x43c90014 -> :sswitch_5
        0x464d9f6c -> :sswitch_4
        0x579827ef -> :sswitch_3
        0x633aa4b3 -> :sswitch_2
        0x716cfa2e -> :sswitch_1
        0x740b1610 -> :sswitch_0
    .end sparse-switch

    .line 572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 662
.end method

.method public static isAODType(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p0, v0

    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    return v0
    .line 8
.end method

.method public static isNotificationType(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    and-int/2addr p0, v0

    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method


# virtual methods
.method public final getInfoAreaColor()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->isSuperSaveOpen:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string p0, "#99ffffff"

    .line 6
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    iget p0, p0, Lcom/miui/clock/module/ClockStyleInfo;->infoAreaColor:I

    .line 13
    return p0
    .line 15
.end method

.method public abstract getLayoutId()I
.end method

.method public final getOriginMagazineColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->originMagazineColor:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 6
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    return v0
    .line 11
.end method

.method public getPrimaryColor()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->isSuperSaveOpen:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    iget p0, p0, Lcom/miui/clock/module/ClockStyleInfo;->primaryColor:I

    .line 8
    return p0
    .line 10
.end method

.method public getSecondaryColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/ClockStyleInfo;->secondaryColor:I

    .line 2
    return p0
    .line 4
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public final isAutoPrimaryColor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->isSuperSaveOpen:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-boolean p0, p0, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor:Z

    .line 8
    return p0
    .line 10
.end method

.method public final isAutoSecondaryColor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->isSuperSaveOpen:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-boolean p0, p0, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor:Z

    .line 8
    return p0
    .line 10
.end method

.method public final setInfoAreaColor(I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iput p1, p0, Lcom/miui/clock/module/ClockStyleInfo;->infoAreaColor:I

    .line 4
    invoke-static {p1}, Lcom/miui/clock/utils/GlobalColorUtils;->transformAodColor(I)I

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final setPrimaryColor(I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iput p1, p0, Lcom/miui/clock/module/ClockStyleInfo;->primaryColor:I

    .line 4
    invoke-static {p1}, Lcom/miui/clock/utils/GlobalColorUtils;->transformAodColor(I)I

    .line 6
    move-result p1

    .line 9
    iput p1, p0, Lcom/miui/clock/module/ClockStyleInfo;->aodPrimaryColor:I

    .line 10
    :cond_0
    return-void
    .line 12
.end method

.method public final setSecondaryColor(I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iput p1, p0, Lcom/miui/clock/module/ClockStyleInfo;->secondaryColor:I

    .line 4
    invoke-static {p1}, Lcom/miui/clock/utils/GlobalColorUtils;->transformAodColor(I)I

    .line 6
    move-result p1

    .line 9
    iput p1, p0, Lcom/miui/clock/module/ClockStyleInfo;->aodSecondaryColor:I

    .line 10
    :cond_0
    return-void
    .line 12
.end method
