.class public final Lcom/miui/clock/module/FontFoundryGridnik;
.super Lcom/miui/clock/module/BaseFontStyle;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mHourOffset:[[[I

.field public final mLargeClockWidth:[I

.field public final mMinuteOffset:[[[I

.field public final mPercentages:[F

.field public final mSVGEmptyLeft:[F

.field public final mSVGEmptyRight:[F

.field public final mSVGResource:[I


# direct methods
.method public constructor <init>()V
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/miui/clock/module/BaseFontStyle;-><init>()V

    .line 4
    const/16 v1, 0xa

    .line 7
    new-array v2, v1, [I

    .line 9
    fill-array-data v2, :array_0

    .line 11
    iput-object v2, v0, Lcom/miui/clock/module/FontFoundryGridnik;->mSVGResource:[I

    .line 14
    const/4 v2, 0x7

    .line 16
    new-array v2, v2, [F

    .line 17
    fill-array-data v2, :array_1

    .line 19
    iput-object v2, v0, Lcom/miui/clock/module/FontFoundryGridnik;->mPercentages:[F

    .line 22
    const/16 v2, 0x9e

    .line 24
    const/16 v3, 0x66

    .line 26
    const/16 v4, 0xcf

    .line 28
    const/16 v5, 0xd1

    .line 30
    filled-new-array {v2, v3, v4, v5}, [I

    .line 32
    move-result-object v6

    .line 35
    const/16 v15, 0xc5

    .line 36
    const/16 v14, 0xd4

    .line 38
    filled-new-array {v2, v3, v15, v14}, [I

    .line 40
    move-result-object v7

    .line 43
    const/16 v13, 0xce

    .line 44
    filled-new-array {v2, v3, v13, v5}, [I

    .line 46
    move-result-object v8

    .line 49
    const/16 v9, 0xc7

    .line 50
    const/16 v10, 0xab

    .line 52
    const/16 v11, 0x63

    .line 54
    const/16 v12, 0xc0

    .line 56
    filled-new-array {v10, v11, v12, v9}, [I

    .line 58
    move-result-object v9

    .line 61
    const/16 v10, 0xd2

    .line 62
    const/16 v11, 0x92

    .line 64
    const/16 v1, 0xc3

    .line 66
    filled-new-array {v11, v3, v1, v10}, [I

    .line 68
    move-result-object v10

    .line 71
    const/16 v1, 0xcc

    .line 72
    filled-new-array {v2, v3, v1, v14}, [I

    .line 74
    move-result-object v16

    .line 77
    filled-new-array {v2, v3, v5, v13}, [I

    .line 78
    move-result-object v17

    .line 81
    const/16 v11, 0xa8

    .line 82
    const/16 v12, 0xd2

    .line 84
    filled-new-array {v11, v3, v13, v12}, [I

    .line 86
    move-result-object v20

    .line 89
    filled-new-array {v2, v3, v4, v14}, [I

    .line 90
    move-result-object v21

    .line 93
    const/16 v11, 0xa2

    .line 94
    filled-new-array {v11, v3, v1, v14}, [I

    .line 96
    move-result-object v22

    .line 99
    const/16 v12, 0x92

    .line 100
    move-object/from16 v11, v16

    .line 102
    move-object/from16 v12, v17

    .line 104
    move v3, v13

    .line 106
    move-object/from16 v13, v20

    .line 107
    move v2, v14

    .line 109
    move-object/from16 v14, v21

    .line 110
    move v3, v15

    .line 112
    move-object/from16 v15, v22

    .line 113
    filled-new-array/range {v6 .. v15}, [[I

    .line 115
    move-result-object v6

    .line 118
    const/16 v7, 0x9c

    .line 119
    const/16 v8, 0x64

    .line 121
    filled-new-array {v7, v8, v4, v5}, [I

    .line 123
    move-result-object v25

    .line 126
    const/16 v9, 0x96

    .line 127
    const/16 v10, 0xd2

    .line 129
    filled-new-array {v9, v8, v3, v10}, [I

    .line 131
    move-result-object v26

    .line 134
    const/16 v9, 0xd0

    .line 135
    filled-new-array {v7, v8, v9, v5}, [I

    .line 137
    move-result-object v27

    .line 140
    const/16 v9, 0xc8

    .line 141
    filled-new-array {v7, v8, v9, v5}, [I

    .line 143
    move-result-object v28

    .line 146
    const/16 v9, 0x91

    .line 147
    const/16 v10, 0xd0

    .line 149
    const/16 v11, 0xc3

    .line 151
    filled-new-array {v9, v8, v11, v10}, [I

    .line 153
    move-result-object v29

    .line 156
    const/16 v9, 0x99

    .line 157
    filled-new-array {v9, v8, v1, v2}, [I

    .line 159
    move-result-object v30

    .line 162
    const/16 v9, 0xce

    .line 163
    filled-new-array {v7, v8, v5, v9}, [I

    .line 165
    move-result-object v31

    .line 168
    const/16 v9, 0x9a

    .line 169
    const/16 v10, 0xca

    .line 171
    const/16 v11, 0xc6

    .line 173
    filled-new-array {v9, v8, v10, v11}, [I

    .line 175
    move-result-object v32

    .line 178
    filled-new-array {v7, v8, v4, v2}, [I

    .line 179
    move-result-object v33

    .line 182
    const/16 v9, 0x9e

    .line 183
    filled-new-array {v9, v8, v1, v2}, [I

    .line 185
    move-result-object v34

    .line 188
    filled-new-array/range {v25 .. v34}, [[I

    .line 189
    move-result-object v2

    .line 192
    const/16 v9, 0xa4

    .line 193
    const/16 v12, 0x66

    .line 195
    filled-new-array {v9, v12, v4, v5}, [I

    .line 197
    move-result-object v9

    .line 200
    const/16 v13, 0x9b

    .line 201
    const/16 v14, 0xbb

    .line 203
    const/16 v15, 0xc3

    .line 205
    filled-new-array {v13, v12, v15, v14}, [I

    .line 207
    move-result-object v13

    .line 210
    const/16 v14, 0x9e

    .line 211
    filled-new-array {v14, v12, v1, v5}, [I

    .line 213
    move-result-object v1

    .line 216
    const/16 v14, 0xa4

    .line 217
    const/16 v15, 0xc8

    .line 219
    filled-new-array {v14, v12, v15, v5}, [I

    .line 221
    move-result-object v5

    .line 224
    filled-new-array {v9, v13, v1, v5}, [[I

    .line 225
    move-result-object v1

    .line 228
    filled-new-array {v6, v2, v1}, [[[I

    .line 229
    move-result-object v1

    .line 232
    iput-object v1, v0, Lcom/miui/clock/module/FontFoundryGridnik;->mHourOffset:[[[I

    .line 233
    const/16 v1, 0x55

    .line 235
    const/16 v2, 0x9f

    .line 237
    filled-new-array {v4, v1, v2, v3}, [I

    .line 239
    move-result-object v25

    .line 242
    const/16 v5, 0x94

    .line 243
    filled-new-array {v4, v1, v5, v3}, [I

    .line 245
    move-result-object v26

    .line 248
    const/16 v5, 0x9d

    .line 249
    filled-new-array {v4, v1, v5, v3}, [I

    .line 251
    move-result-object v27

    .line 254
    const/16 v5, 0xc1

    .line 255
    filled-new-array {v4, v1, v2, v5}, [I

    .line 257
    move-result-object v28

    .line 260
    const/16 v6, 0xcd

    .line 261
    const/16 v9, 0x88

    .line 263
    const/16 v12, 0xc4

    .line 265
    filled-new-array {v6, v1, v9, v12}, [I

    .line 267
    move-result-object v29

    .line 270
    const/16 v6, 0x9a

    .line 271
    filled-new-array {v4, v1, v6, v3}, [I

    .line 273
    move-result-object v30

    .line 276
    const/16 v6, 0xa0

    .line 277
    const/16 v9, 0xc3

    .line 279
    filled-new-array {v4, v1, v6, v9}, [I

    .line 281
    move-result-object v31

    .line 284
    const/16 v6, 0xa2

    .line 285
    filled-new-array {v4, v1, v6, v3}, [I

    .line 287
    move-result-object v32

    .line 290
    filled-new-array {v4, v1, v2, v5}, [I

    .line 291
    move-result-object v33

    .line 294
    const/16 v6, 0xc2

    .line 295
    filled-new-array {v4, v1, v2, v6}, [I

    .line 297
    move-result-object v34

    .line 300
    filled-new-array/range {v25 .. v34}, [[I

    .line 301
    move-result-object v35

    .line 304
    filled-new-array {v10, v1, v2, v3}, [I

    .line 305
    move-result-object v25

    .line 308
    const/16 v9, 0x60

    .line 309
    const/16 v13, 0x90

    .line 311
    const/16 v14, 0xc8

    .line 313
    const/16 v15, 0xc3

    .line 315
    filled-new-array {v14, v9, v13, v15}, [I

    .line 317
    move-result-object v26

    .line 320
    filled-new-array {v10, v1, v2, v3}, [I

    .line 321
    move-result-object v27

    .line 324
    filled-new-array {v10, v1, v2, v3}, [I

    .line 325
    move-result-object v28

    .line 328
    const/16 v9, 0xba

    .line 329
    const/16 v13, 0x95

    .line 331
    filled-new-array {v9, v1, v13, v11}, [I

    .line 333
    move-result-object v29

    .line 336
    const/16 v9, 0x9b

    .line 337
    filled-new-array {v10, v1, v9, v3}, [I

    .line 339
    move-result-object v30

    .line 342
    const/16 v9, 0x9e

    .line 343
    filled-new-array {v10, v1, v9, v3}, [I

    .line 345
    move-result-object v31

    .line 348
    const/16 v9, 0xc0

    .line 349
    filled-new-array {v9, v8, v7, v11}, [I

    .line 351
    move-result-object v32

    .line 354
    const/16 v8, 0xa1

    .line 355
    filled-new-array {v10, v1, v8, v3}, [I

    .line 357
    move-result-object v33

    .line 360
    const/16 v8, 0xa0

    .line 361
    filled-new-array {v10, v1, v8, v6}, [I

    .line 363
    move-result-object v34

    .line 366
    filled-new-array/range {v25 .. v34}, [[I

    .line 367
    move-result-object v36

    .line 370
    filled-new-array {v4, v1, v2, v3}, [I

    .line 371
    move-result-object v25

    .line 374
    const/16 v8, 0x9a

    .line 375
    filled-new-array {v4, v1, v8, v6}, [I

    .line 377
    move-result-object v26

    .line 380
    const/16 v8, 0xa1

    .line 381
    filled-new-array {v4, v1, v8, v9}, [I

    .line 383
    move-result-object v27

    .line 386
    const/16 v8, 0xa0

    .line 387
    filled-new-array {v4, v1, v8, v9}, [I

    .line 389
    move-result-object v28

    .line 392
    const/16 v8, 0x90

    .line 393
    filled-new-array {v4, v1, v8, v6}, [I

    .line 395
    move-result-object v29

    .line 398
    filled-new-array {v4, v1, v7, v3}, [I

    .line 399
    move-result-object v30

    .line 402
    const/16 v8, 0xa0

    .line 403
    const/16 v9, 0xc3

    .line 405
    filled-new-array {v4, v1, v8, v9}, [I

    .line 407
    move-result-object v31

    .line 410
    const/16 v8, 0x5d

    .line 411
    filled-new-array {v4, v8, v7, v11}, [I

    .line 413
    move-result-object v32

    .line 416
    const/16 v8, 0xa1

    .line 417
    filled-new-array {v4, v1, v8, v5}, [I

    .line 419
    move-result-object v33

    .line 422
    filled-new-array {v4, v1, v8, v6}, [I

    .line 423
    move-result-object v34

    .line 426
    filled-new-array/range {v25 .. v34}, [[I

    .line 427
    move-result-object v37

    .line 430
    filled-new-array {v4, v1, v2, v3}, [I

    .line 431
    move-result-object v25

    .line 434
    const/16 v8, 0x94

    .line 435
    filled-new-array {v4, v1, v8, v3}, [I

    .line 437
    move-result-object v26

    .line 440
    const/16 v8, 0x9d

    .line 441
    filled-new-array {v4, v1, v8, v3}, [I

    .line 443
    move-result-object v27

    .line 446
    filled-new-array {v4, v1, v2, v5}, [I

    .line 447
    move-result-object v28

    .line 450
    const/16 v8, 0x87

    .line 451
    const/16 v9, 0xce

    .line 453
    filled-new-array {v9, v1, v8, v6}, [I

    .line 455
    move-result-object v29

    .line 458
    filled-new-array {v4, v1, v7, v3}, [I

    .line 459
    move-result-object v30

    .line 462
    const/16 v8, 0xc3

    .line 463
    filled-new-array {v4, v1, v2, v8}, [I

    .line 465
    move-result-object v31

    .line 468
    const/16 v8, 0xa2

    .line 469
    filled-new-array {v4, v1, v8, v11}, [I

    .line 471
    move-result-object v32

    .line 474
    filled-new-array {v4, v1, v2, v5}, [I

    .line 475
    move-result-object v33

    .line 478
    filled-new-array {v4, v1, v2, v6}, [I

    .line 479
    move-result-object v34

    .line 482
    filled-new-array/range {v25 .. v34}, [[I

    .line 483
    move-result-object v38

    .line 486
    const/16 v8, 0x90

    .line 487
    const/16 v9, 0xd8

    .line 489
    filled-new-array {v9, v1, v8, v3}, [I

    .line 491
    move-result-object v25

    .line 494
    const/16 v8, 0xd7

    .line 495
    const/16 v10, 0x87

    .line 497
    filled-new-array {v8, v1, v10, v3}, [I

    .line 499
    move-result-object v26

    .line 502
    const/16 v8, 0x59

    .line 503
    const/16 v10, 0x91

    .line 505
    filled-new-array {v9, v8, v10, v3}, [I

    .line 507
    move-result-object v27

    .line 510
    const/16 v10, 0x8e

    .line 511
    filled-new-array {v9, v8, v10, v11}, [I

    .line 513
    move-result-object v28

    .line 516
    const/16 v8, 0x5b

    .line 517
    const/16 v10, 0x83

    .line 519
    const/16 v13, 0xd0

    .line 521
    filled-new-array {v13, v8, v10, v11}, [I

    .line 523
    move-result-object v29

    .line 526
    const/16 v8, 0x93

    .line 527
    filled-new-array {v9, v1, v8, v3}, [I

    .line 529
    move-result-object v30

    .line 532
    const/16 v8, 0x92

    .line 533
    filled-new-array {v9, v1, v8, v12}, [I

    .line 535
    move-result-object v31

    .line 538
    const/16 v10, 0x99

    .line 539
    filled-new-array {v9, v1, v10, v11}, [I

    .line 541
    move-result-object v32

    .line 544
    filled-new-array {v9, v1, v8, v12}, [I

    .line 545
    move-result-object v33

    .line 548
    filled-new-array {v9, v1, v8, v12}, [I

    .line 549
    move-result-object v34

    .line 552
    filled-new-array/range {v25 .. v34}, [[I

    .line 553
    move-result-object v39

    .line 556
    filled-new-array {v4, v1, v2, v3}, [I

    .line 557
    move-result-object v18

    .line 560
    const/16 v8, 0x94

    .line 561
    filled-new-array {v4, v1, v8, v3}, [I

    .line 563
    move-result-object v19

    .line 566
    const/16 v8, 0x9d

    .line 567
    filled-new-array {v4, v1, v8, v3}, [I

    .line 569
    move-result-object v20

    .line 572
    filled-new-array {v4, v1, v2, v5}, [I

    .line 573
    move-result-object v21

    .line 576
    const/16 v8, 0x59

    .line 577
    const/16 v9, 0x88

    .line 579
    filled-new-array {v4, v8, v9, v12}, [I

    .line 581
    move-result-object v22

    .line 584
    filled-new-array {v4, v1, v7, v3}, [I

    .line 585
    move-result-object v23

    .line 588
    const/16 v3, 0xc3

    .line 589
    filled-new-array {v4, v1, v2, v3}, [I

    .line 591
    move-result-object v24

    .line 594
    const/16 v2, 0xa2

    .line 595
    filled-new-array {v4, v1, v2, v11}, [I

    .line 597
    move-result-object v25

    .line 600
    const/16 v2, 0x9e

    .line 601
    filled-new-array {v4, v1, v2, v5}, [I

    .line 603
    move-result-object v26

    .line 606
    filled-new-array {v4, v1, v2, v6}, [I

    .line 607
    move-result-object v27

    .line 610
    filled-new-array/range {v18 .. v27}, [[I

    .line 611
    move-result-object v40

    .line 614
    filled-new-array/range {v35 .. v40}, [[[I

    .line 615
    move-result-object v1

    .line 618
    iput-object v1, v0, Lcom/miui/clock/module/FontFoundryGridnik;->mMinuteOffset:[[[I

    .line 619
    const/16 v1, 0xa

    .line 621
    new-array v2, v1, [F

    .line 623
    fill-array-data v2, :array_2

    .line 625
    iput-object v2, v0, Lcom/miui/clock/module/FontFoundryGridnik;->mSVGEmptyLeft:[F

    .line 628
    new-array v2, v1, [F

    .line 630
    fill-array-data v2, :array_3

    .line 632
    iput-object v2, v0, Lcom/miui/clock/module/FontFoundryGridnik;->mSVGEmptyRight:[F

    .line 635
    new-array v1, v1, [I

    .line 637
    fill-array-data v1, :array_4

    .line 639
    iput-object v1, v0, Lcom/miui/clock/module/FontFoundryGridnik;->mLargeClockWidth:[I

    .line 642
    return-void

    .line 644
    nop

    .line 645
    :array_0
    .array-data 4
        0x7f080cc8    # @drawable/font_f_0 'res/drawable/font_f_0.xml'
        0x7f080cc9    # @drawable/font_f_1 'res/drawable/font_f_1.xml'
        0x7f080cca    # @drawable/font_f_2 'res/drawable/font_f_2.xml'
        0x7f080ccb    # @drawable/font_f_3 'res/drawable/font_f_3.xml'
        0x7f080ccc    # @drawable/font_f_4 'res/drawable/font_f_4.xml'
        0x7f080ccd    # @drawable/font_f_5 'res/drawable/font_f_5.xml'
        0x7f080cce    # @drawable/font_f_6 'res/drawable/font_f_6.xml'
        0x7f080ccf    # @drawable/font_f_7 'res/drawable/font_f_7.xml'
        0x7f080cd0    # @drawable/font_f_8 'res/drawable/font_f_8.xml'
        0x7f080cd1    # @drawable/font_f_9 'res/drawable/font_f_9.xml'
    .end array-data

    .line 646
    :array_1
    .array-data 4
        0x3f4a3d71    # 0.79f
        0x3e4ccccd    # 0.2f
        0x3e0f5c29    # 0.14f
        0x3e0f5c29    # 0.14f
        0x3e800000    # 0.25f
        0x3e0f5c29    # 0.14f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 670
    :array_2
    .array-data 4
        0x41a18618
        0x41e18618
        0x419b6db7
        0x419b6db7
        0x41430c31
        0x419b6db7
        0x41a18618
        0x419b6db7
        0x41a18618
        0x419b6db7
    .end array-data

    .line 688
    :array_3
    .array-data 4
        0x42e3cf3d
        0x42d3cf3d
        0x42e3cf3d
        0x42e3cf3d
        0x42e55555
        0x42e3cf3d
        0x42e55555
        0x42e3cf3d
        0x42e3cf3d
        0x42e3cf3d
    .end array-data

    .line 712
    :array_4
    .array-data 4
        0x86
        0x86
        0x86
        0x86
        0x86
        0x86
        0x86
        0x86
        0x86
        0x86
    .end array-data
    .line 736
.end method


# virtual methods
.method public final getColonInterval()F
    .locals 0

    .line 1
    const/high16 p0, 0x42100000    # 36.0f

    .line 2
    return p0
    .line 4
.end method

.method public final getColonResource()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/BaseFontStyle;->mUserDefinedColonResource:I

    .line 2
    if-eqz p0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const p0, 0x7f081316    # @drawable/miui_rhombus_colon_rect_6 'res/drawable/miui_rhombus_colon_rect_6.xml'

    .line 7
    :goto_0
    return p0
    .line 10
.end method

.method public final getColonSize()F
    .locals 0

    .line 1
    const/high16 p0, 0x42000000    # 32.0f

    .line 2
    return p0
    .line 4
.end method

.method public final getFontStyle()Lcom/miui/clock/module/BaseFontStyle$Style;
    .locals 0

    .line 1
    sget-object p0, Lcom/miui/clock/module/BaseFontStyle$Style;->FoundryGridnik:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHourOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontFoundryGridnik;->mHourOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLargeClockHeight()I
    .locals 0

    .line 1
    const/16 p0, 0x9f

    .line 2
    return p0
    .line 4
.end method

.method public final getLargeClockWidth()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontFoundryGridnik;->mLargeClockWidth:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLeftEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontFoundryGridnik;->mSVGEmptyLeft:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMinuteOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontFoundryGridnik;->mMinuteOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getNotificationColonHeight()F
    .locals 0

    .line 1
    const/high16 p0, 0x42900000    # 72.0f

    .line 2
    return p0
    .line 4
.end method

.method public final getNotificationColonWidth()F
    .locals 0

    .line 1
    const p0, 0x41f2b852    # 30.34f

    .line 2
    return p0
    .line 5
.end method

.method public final getPercentages()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontFoundryGridnik;->mPercentages:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRightEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontFoundryGridnik;->mSVGEmptyRight:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSmallClockInnerHeight()I
    .locals 0

    .line 1
    const/16 p0, 0x48

    .line 2
    return p0
    .line 4
.end method

.method public final getSmallClockInnerMarginOffset()I
    .locals 0

    .line 1
    const/4 p0, -0x8

    .line 2
    return p0
    .line 3
.end method

.method public final getSmallColon1MarginInnerTop()F
    .locals 0

    .line 1
    const p0, 0x4142147b    # 12.13f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColon2MarginInnerTop()F
    .locals 0

    .line 1
    const p0, 0x4243f5c3    # 48.99f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonRealWidth()F
    .locals 0

    .line 1
    const p0, 0x4128f5c3    # 10.56f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResource()I
    .locals 0

    .line 1
    const p0, 0x7f080cd2    # @drawable/font_f_colon 'res/drawable/font_f_colon.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResourceHeight()I
    .locals 0

    .line 1
    const/16 p0, 0x9f

    .line 2
    return p0
    .line 4
.end method

.method public final getSmallColonResourceWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x43

    .line 2
    return p0
    .line 4
.end method

.method public final getSvgResource()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontFoundryGridnik;->mSVGResource:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextBoxWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x86

    .line 2
    return p0
    .line 4
.end method
