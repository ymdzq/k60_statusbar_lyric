.class public final Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final securityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field public final updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;->securityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final createFromPromptReason(II)Lcom/android/systemui/keyguard/bouncer/shared/model/BouncerMessageModel;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;->securityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 2
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 4
    move-result-object p2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsSupported()Z

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Landroid/hardware/biometrics/BiometricSourceType;)Z

    .line 19
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p0, v1

    .line 27
    :goto_0
    const v0, 0x7f1305c6    # @string/keyguard_enter_pin 'Enter PIN'

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v0

    .line 34
    const v2, 0x7f1305c4    # @string/keyguard_enter_password 'Enter password'

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v2

    .line 41
    const v3, 0x7f1305c5    # @string/keyguard_enter_pattern 'Draw pattern'

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v3

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v1

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x4

    .line 54
    const/4 v6, 0x3

    .line 55
    const/4 v7, 0x2

    .line 56
    packed-switch p1, :pswitch_data_0

    .line 57
    move-object p0, v4

    .line 60
    goto/16 :goto_1

    .line 61
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 63
    move-result p0

    .line 66
    if-eq p0, v7, :cond_3

    .line 67
    if-eq p0, v6, :cond_2

    .line 69
    if-eq p0, v5, :cond_1

    .line 71
    new-instance p0, Lkotlin/Pair;

    .line 73
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    goto/16 :goto_1

    .line 78
    :cond_1
    new-instance p0, Lkotlin/Pair;

    .line 80
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    goto/16 :goto_1

    .line 85
    :cond_2
    new-instance p0, Lkotlin/Pair;

    .line 87
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    goto/16 :goto_1

    .line 92
    :cond_3
    new-instance p0, Lkotlin/Pair;

    .line 94
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    goto/16 :goto_1

    .line 99
    :pswitch_1
    if-eqz p0, :cond_7

    .line 101
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 103
    move-result p0

    .line 106
    if-eq p0, v7, :cond_6

    .line 107
    if-eq p0, v6, :cond_5

    .line 109
    if-eq p0, v5, :cond_4

    .line 111
    new-instance p0, Lkotlin/Pair;

    .line 113
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    goto/16 :goto_1

    .line 118
    :cond_4
    new-instance p0, Lkotlin/Pair;

    .line 120
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    goto/16 :goto_1

    .line 125
    :cond_5
    new-instance p0, Lkotlin/Pair;

    .line 127
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    goto/16 :goto_1

    .line 132
    :cond_6
    new-instance p0, Lkotlin/Pair;

    .line 134
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    goto/16 :goto_1

    .line 139
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 141
    move-result p0

    .line 144
    if-eq p0, v7, :cond_a

    .line 145
    if-eq p0, v6, :cond_9

    .line 147
    if-eq p0, v5, :cond_8

    .line 149
    new-instance p0, Lkotlin/Pair;

    .line 151
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    goto/16 :goto_1

    .line 156
    :cond_8
    new-instance p0, Lkotlin/Pair;

    .line 158
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    goto/16 :goto_1

    .line 163
    :cond_9
    new-instance p0, Lkotlin/Pair;

    .line 165
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    goto/16 :goto_1

    .line 170
    :cond_a
    new-instance p0, Lkotlin/Pair;

    .line 172
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    goto/16 :goto_1

    .line 177
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 179
    move-result p0

    .line 182
    if-eq p0, v7, :cond_d

    .line 183
    if-eq p0, v6, :cond_c

    .line 185
    if-eq p0, v5, :cond_b

    .line 187
    new-instance p0, Lkotlin/Pair;

    .line 189
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    goto/16 :goto_1

    .line 194
    :cond_b
    new-instance p0, Lkotlin/Pair;

    .line 196
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    goto/16 :goto_1

    .line 201
    :cond_c
    new-instance p0, Lkotlin/Pair;

    .line 203
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    goto/16 :goto_1

    .line 208
    :cond_d
    new-instance p0, Lkotlin/Pair;

    .line 210
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    goto/16 :goto_1

    .line 215
    :pswitch_3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 217
    move-result p0

    .line 220
    if-eq p0, v7, :cond_10

    .line 221
    if-eq p0, v6, :cond_f

    .line 223
    if-eq p0, v5, :cond_e

    .line 225
    new-instance p0, Lkotlin/Pair;

    .line 227
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    goto/16 :goto_1

    .line 232
    :cond_e
    new-instance p0, Lkotlin/Pair;

    .line 234
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    goto/16 :goto_1

    .line 239
    :cond_f
    new-instance p0, Lkotlin/Pair;

    .line 241
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    goto/16 :goto_1

    .line 246
    :cond_10
    new-instance p0, Lkotlin/Pair;

    .line 248
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    goto/16 :goto_1

    .line 253
    :pswitch_4
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 255
    move-result p0

    .line 258
    if-eq p0, v7, :cond_13

    .line 259
    if-eq p0, v6, :cond_12

    .line 261
    if-eq p0, v5, :cond_11

    .line 263
    new-instance p0, Lkotlin/Pair;

    .line 265
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    goto/16 :goto_1

    .line 270
    :cond_11
    new-instance p0, Lkotlin/Pair;

    .line 272
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 274
    goto/16 :goto_1

    .line 277
    :cond_12
    new-instance p0, Lkotlin/Pair;

    .line 279
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 281
    goto/16 :goto_1

    .line 284
    :cond_13
    new-instance p0, Lkotlin/Pair;

    .line 286
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    goto/16 :goto_1

    .line 291
    :pswitch_5
    if-eqz p0, :cond_17

    .line 293
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 295
    move-result p0

    .line 298
    if-eq p0, v7, :cond_16

    .line 299
    if-eq p0, v6, :cond_15

    .line 301
    if-eq p0, v5, :cond_14

    .line 303
    new-instance p0, Lkotlin/Pair;

    .line 305
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    goto/16 :goto_1

    .line 310
    :cond_14
    new-instance p0, Lkotlin/Pair;

    .line 312
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    goto/16 :goto_1

    .line 317
    :cond_15
    new-instance p0, Lkotlin/Pair;

    .line 319
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    goto/16 :goto_1

    .line 324
    :cond_16
    new-instance p0, Lkotlin/Pair;

    .line 326
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    goto/16 :goto_1

    .line 331
    :cond_17
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 333
    move-result p0

    .line 336
    if-eq p0, v7, :cond_1a

    .line 337
    if-eq p0, v6, :cond_19

    .line 339
    if-eq p0, v5, :cond_18

    .line 341
    new-instance p0, Lkotlin/Pair;

    .line 343
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 345
    goto/16 :goto_1

    .line 348
    :cond_18
    new-instance p0, Lkotlin/Pair;

    .line 350
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    goto/16 :goto_1

    .line 355
    :cond_19
    new-instance p0, Lkotlin/Pair;

    .line 357
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    goto/16 :goto_1

    .line 362
    :cond_1a
    new-instance p0, Lkotlin/Pair;

    .line 364
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 366
    goto/16 :goto_1

    .line 369
    :pswitch_6
    if-eqz p0, :cond_1e

    .line 371
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 373
    move-result p0

    .line 376
    if-eq p0, v7, :cond_1d

    .line 377
    if-eq p0, v6, :cond_1c

    .line 379
    if-eq p0, v5, :cond_1b

    .line 381
    new-instance p0, Lkotlin/Pair;

    .line 383
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 385
    goto/16 :goto_1

    .line 388
    :cond_1b
    new-instance p0, Lkotlin/Pair;

    .line 390
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 392
    goto/16 :goto_1

    .line 395
    :cond_1c
    new-instance p0, Lkotlin/Pair;

    .line 397
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 399
    goto/16 :goto_1

    .line 402
    :cond_1d
    new-instance p0, Lkotlin/Pair;

    .line 404
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 406
    goto/16 :goto_1

    .line 409
    :cond_1e
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 411
    move-result p0

    .line 414
    if-eq p0, v7, :cond_21

    .line 415
    if-eq p0, v6, :cond_20

    .line 417
    if-eq p0, v5, :cond_1f

    .line 419
    new-instance p0, Lkotlin/Pair;

    .line 421
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 423
    goto/16 :goto_1

    .line 426
    :cond_1f
    new-instance p0, Lkotlin/Pair;

    .line 428
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 430
    goto/16 :goto_1

    .line 433
    :cond_20
    new-instance p0, Lkotlin/Pair;

    .line 435
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 437
    goto/16 :goto_1

    .line 440
    :cond_21
    new-instance p0, Lkotlin/Pair;

    .line 442
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 444
    goto/16 :goto_1

    .line 447
    :pswitch_7
    if-eqz p0, :cond_25

    .line 449
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 451
    move-result p0

    .line 454
    if-eq p0, v7, :cond_24

    .line 455
    if-eq p0, v6, :cond_23

    .line 457
    if-eq p0, v5, :cond_22

    .line 459
    new-instance p0, Lkotlin/Pair;

    .line 461
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 463
    goto/16 :goto_1

    .line 466
    :cond_22
    new-instance p0, Lkotlin/Pair;

    .line 468
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 470
    goto/16 :goto_1

    .line 473
    :cond_23
    new-instance p0, Lkotlin/Pair;

    .line 475
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 477
    goto/16 :goto_1

    .line 480
    :cond_24
    new-instance p0, Lkotlin/Pair;

    .line 482
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 484
    goto/16 :goto_1

    .line 487
    :cond_25
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 489
    move-result p0

    .line 492
    if-eq p0, v7, :cond_28

    .line 493
    if-eq p0, v6, :cond_27

    .line 495
    if-eq p0, v5, :cond_26

    .line 497
    new-instance p0, Lkotlin/Pair;

    .line 499
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 501
    goto/16 :goto_1

    .line 504
    :cond_26
    new-instance p0, Lkotlin/Pair;

    .line 506
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 508
    goto/16 :goto_1

    .line 511
    :cond_27
    new-instance p0, Lkotlin/Pair;

    .line 513
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 515
    goto/16 :goto_1

    .line 518
    :cond_28
    new-instance p0, Lkotlin/Pair;

    .line 520
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 522
    goto/16 :goto_1

    .line 525
    :pswitch_8
    if-eqz p0, :cond_2c

    .line 527
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 529
    move-result p0

    .line 532
    if-eq p0, v7, :cond_2b

    .line 533
    if-eq p0, v6, :cond_2a

    .line 535
    if-eq p0, v5, :cond_29

    .line 537
    new-instance p0, Lkotlin/Pair;

    .line 539
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 541
    goto/16 :goto_1

    .line 544
    :cond_29
    new-instance p0, Lkotlin/Pair;

    .line 546
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 548
    goto/16 :goto_1

    .line 551
    :cond_2a
    new-instance p0, Lkotlin/Pair;

    .line 553
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 555
    goto/16 :goto_1

    .line 558
    :cond_2b
    new-instance p0, Lkotlin/Pair;

    .line 560
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 562
    goto/16 :goto_1

    .line 565
    :cond_2c
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 567
    move-result p0

    .line 570
    if-eq p0, v7, :cond_2f

    .line 571
    if-eq p0, v6, :cond_2e

    .line 573
    if-eq p0, v5, :cond_2d

    .line 575
    new-instance p0, Lkotlin/Pair;

    .line 577
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 579
    goto/16 :goto_1

    .line 582
    :cond_2d
    new-instance p0, Lkotlin/Pair;

    .line 584
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 586
    goto/16 :goto_1

    .line 589
    :cond_2e
    new-instance p0, Lkotlin/Pair;

    .line 591
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 593
    goto/16 :goto_1

    .line 596
    :cond_2f
    new-instance p0, Lkotlin/Pair;

    .line 598
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 600
    goto/16 :goto_1

    .line 603
    :pswitch_9
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 605
    move-result p0

    .line 608
    if-eq p0, v7, :cond_32

    .line 609
    if-eq p0, v6, :cond_31

    .line 611
    if-eq p0, v5, :cond_30

    .line 613
    new-instance p0, Lkotlin/Pair;

    .line 615
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 617
    goto/16 :goto_1

    .line 620
    :cond_30
    new-instance p0, Lkotlin/Pair;

    .line 622
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 624
    goto/16 :goto_1

    .line 627
    :cond_31
    new-instance p0, Lkotlin/Pair;

    .line 629
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 631
    goto/16 :goto_1

    .line 634
    :cond_32
    new-instance p0, Lkotlin/Pair;

    .line 636
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 638
    goto/16 :goto_1

    .line 641
    :pswitch_a
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 643
    move-result p0

    .line 646
    if-eq p0, v7, :cond_35

    .line 647
    if-eq p0, v6, :cond_34

    .line 649
    if-eq p0, v5, :cond_33

    .line 651
    new-instance p0, Lkotlin/Pair;

    .line 653
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 655
    goto/16 :goto_1

    .line 658
    :cond_33
    new-instance p0, Lkotlin/Pair;

    .line 660
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 662
    goto/16 :goto_1

    .line 665
    :cond_34
    new-instance p0, Lkotlin/Pair;

    .line 667
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 669
    goto/16 :goto_1

    .line 672
    :cond_35
    new-instance p0, Lkotlin/Pair;

    .line 674
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 676
    goto/16 :goto_1

    .line 679
    :pswitch_b
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 681
    move-result p0

    .line 684
    if-eq p0, v7, :cond_38

    .line 685
    if-eq p0, v6, :cond_37

    .line 687
    if-eq p0, v5, :cond_36

    .line 689
    new-instance p0, Lkotlin/Pair;

    .line 691
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 693
    goto/16 :goto_1

    .line 696
    :cond_36
    new-instance p0, Lkotlin/Pair;

    .line 698
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 700
    goto/16 :goto_1

    .line 703
    :cond_37
    new-instance p0, Lkotlin/Pair;

    .line 705
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 707
    goto/16 :goto_1

    .line 710
    :cond_38
    new-instance p0, Lkotlin/Pair;

    .line 712
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 714
    goto/16 :goto_1

    .line 717
    :pswitch_c
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 719
    move-result p0

    .line 722
    if-eq p0, v7, :cond_3b

    .line 723
    if-eq p0, v6, :cond_3a

    .line 725
    if-eq p0, v5, :cond_39

    .line 727
    new-instance p0, Lkotlin/Pair;

    .line 729
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 731
    goto :goto_1

    .line 734
    :cond_39
    new-instance p0, Lkotlin/Pair;

    .line 735
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 737
    goto :goto_1

    .line 740
    :cond_3a
    new-instance p0, Lkotlin/Pair;

    .line 741
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 743
    goto :goto_1

    .line 746
    :cond_3b
    new-instance p0, Lkotlin/Pair;

    .line 747
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 749
    goto :goto_1

    .line 752
    :pswitch_d
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 753
    move-result p0

    .line 756
    if-eq p0, v7, :cond_3e

    .line 757
    if-eq p0, v6, :cond_3d

    .line 759
    if-eq p0, v5, :cond_3c

    .line 761
    new-instance p0, Lkotlin/Pair;

    .line 763
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 765
    goto :goto_1

    .line 768
    :cond_3c
    new-instance p0, Lkotlin/Pair;

    .line 769
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 771
    goto :goto_1

    .line 774
    :cond_3d
    new-instance p0, Lkotlin/Pair;

    .line 775
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 777
    goto :goto_1

    .line 780
    :cond_3e
    new-instance p0, Lkotlin/Pair;

    .line 781
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 783
    goto :goto_1

    .line 786
    :pswitch_e
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 787
    move-result p0

    .line 790
    if-eq p0, v7, :cond_41

    .line 791
    if-eq p0, v6, :cond_40

    .line 793
    if-eq p0, v5, :cond_3f

    .line 795
    new-instance p0, Lkotlin/Pair;

    .line 797
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 799
    goto :goto_1

    .line 802
    :cond_3f
    new-instance p0, Lkotlin/Pair;

    .line 803
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 805
    goto :goto_1

    .line 808
    :cond_40
    new-instance p0, Lkotlin/Pair;

    .line 809
    invoke-direct {p0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 811
    goto :goto_1

    .line 814
    :cond_41
    new-instance p0, Lkotlin/Pair;

    .line 815
    invoke-direct {p0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 817
    :goto_1
    if-eqz p0, :cond_42

    .line 820
    new-instance p1, Lcom/android/systemui/keyguard/bouncer/shared/model/BouncerMessageModel;

    .line 822
    new-instance p2, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;

    .line 824
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 826
    move-result-object v0

    .line 829
    check-cast v0, Ljava/lang/Integer;

    .line 830
    const/16 v1, 0x1d

    .line 832
    invoke-direct {p2, v4, v0, v1}, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 834
    new-instance v0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;

    .line 837
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 839
    move-result-object p0

    .line 842
    check-cast p0, Ljava/lang/Integer;

    .line 843
    invoke-direct {v0, v4, p0, v1}, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 845
    invoke-direct {p1, p2, v0}, Lcom/android/systemui/keyguard/bouncer/shared/model/BouncerMessageModel;-><init>(Lcom/android/systemui/keyguard/bouncer/shared/model/Message;Lcom/android/systemui/keyguard/bouncer/shared/model/Message;)V

    .line 848
    move-object v4, p1

    .line 851
    :cond_42
    return-object v4

    .line 852
    nop

    .line 853
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 854
.end method
