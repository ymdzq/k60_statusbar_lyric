.class public final Lcom/miui/clock/module/FontMiSansRoundLock;
.super Lcom/miui/clock/module/BaseFontStyle;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
    .locals 38

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
    iput-object v2, v0, Lcom/miui/clock/module/FontMiSansRoundLock;->mSVGResource:[I

    .line 14
    const/4 v2, 0x7

    .line 16
    new-array v2, v2, [F

    .line 17
    fill-array-data v2, :array_1

    .line 19
    iput-object v2, v0, Lcom/miui/clock/module/FontMiSansRoundLock;->mPercentages:[F

    .line 22
    const/16 v2, 0xad

    .line 24
    const/16 v3, 0x68

    .line 26
    const/16 v4, 0xc2

    .line 28
    const/16 v5, 0xc8

    .line 30
    filled-new-array {v2, v3, v4, v5}, [I

    .line 32
    move-result-object v6

    .line 35
    const/16 v7, 0xd3

    .line 36
    const/16 v15, 0x9d

    .line 38
    const/16 v14, 0xd7

    .line 40
    filled-new-array {v15, v3, v14, v7}, [I

    .line 42
    move-result-object v7

    .line 45
    const/16 v13, 0xb3

    .line 46
    filled-new-array {v13, v3, v4, v5}, [I

    .line 48
    move-result-object v8

    .line 51
    const/16 v9, 0xaf

    .line 52
    const/16 v12, 0xc9

    .line 54
    const/16 v11, 0xca

    .line 56
    filled-new-array {v9, v3, v12, v11}, [I

    .line 58
    move-result-object v9

    .line 61
    const/16 v10, 0xcd

    .line 62
    const/16 v11, 0xd0

    .line 64
    const/16 v12, 0x89

    .line 66
    filled-new-array {v12, v3, v10, v11}, [I

    .line 68
    move-result-object v10

    .line 71
    const/16 v12, 0xa2

    .line 72
    filled-new-array {v12, v3, v11, v5}, [I

    .line 74
    move-result-object v11

    .line 77
    const/16 v12, 0x8b

    .line 78
    const/16 v13, 0xd1

    .line 80
    filled-new-array {v12, v3, v13, v5}, [I

    .line 82
    move-result-object v12

    .line 85
    const/16 v13, 0xa6

    .line 86
    const/16 v14, 0xd8

    .line 88
    filled-new-array {v13, v3, v14, v5}, [I

    .line 90
    move-result-object v13

    .line 93
    const/16 v14, 0xa1

    .line 94
    const/16 v15, 0xce

    .line 96
    filled-new-array {v14, v3, v15, v5}, [I

    .line 98
    move-result-object v14

    .line 101
    const/16 v15, 0xa8

    .line 102
    const/16 v1, 0xcd

    .line 104
    filled-new-array {v15, v3, v1, v5}, [I

    .line 106
    move-result-object v15

    .line 109
    const/16 v1, 0xca

    .line 110
    const/16 v1, 0xa2

    .line 112
    const/16 v3, 0xc9

    .line 114
    const/16 v3, 0xb3

    .line 116
    const/16 v1, 0xd7

    .line 118
    const/16 v1, 0x9d

    .line 120
    filled-new-array/range {v6 .. v15}, [[I

    .line 122
    move-result-object v6

    .line 125
    const/16 v7, 0xae

    .line 126
    const/16 v8, 0x69

    .line 128
    filled-new-array {v7, v8, v4, v5}, [I

    .line 130
    move-result-object v22

    .line 133
    const/16 v7, 0xc1

    .line 134
    const/16 v9, 0xcc

    .line 136
    const/16 v10, 0xb6

    .line 138
    filled-new-array {v10, v8, v7, v9}, [I

    .line 140
    move-result-object v23

    .line 143
    const/16 v7, 0xbf

    .line 144
    const/16 v9, 0xb5

    .line 146
    filled-new-array {v9, v8, v7, v5}, [I

    .line 148
    move-result-object v24

    .line 151
    const/16 v7, 0xaf

    .line 152
    const/16 v10, 0xc3

    .line 154
    const/16 v11, 0xc4

    .line 156
    filled-new-array {v7, v8, v10, v11}, [I

    .line 158
    move-result-object v25

    .line 161
    const/16 v7, 0xbe

    .line 162
    const/16 v10, 0xcb

    .line 164
    const/16 v12, 0xaa

    .line 166
    filled-new-array {v12, v8, v7, v10}, [I

    .line 168
    move-result-object v26

    .line 171
    const/16 v7, 0xcd

    .line 172
    filled-new-array {v12, v8, v7, v5}, [I

    .line 174
    move-result-object v27

    .line 177
    const/16 v7, 0xc5

    .line 178
    const/16 v10, 0xbf

    .line 180
    filled-new-array {v12, v8, v7, v10}, [I

    .line 182
    move-result-object v28

    .line 185
    const/16 v7, 0xcc

    .line 186
    const/16 v10, 0xb0

    .line 188
    filled-new-array {v10, v8, v7, v5}, [I

    .line 190
    move-result-object v29

    .line 193
    const/16 v7, 0xc0

    .line 194
    const/16 v13, 0xc1

    .line 196
    const/16 v14, 0xb2

    .line 198
    filled-new-array {v14, v8, v7, v13}, [I

    .line 200
    move-result-object v30

    .line 203
    const/16 v7, 0xbe

    .line 204
    const/16 v13, 0xba

    .line 206
    filled-new-array {v7, v8, v13, v5}, [I

    .line 208
    move-result-object v31

    .line 211
    filled-new-array/range {v22 .. v31}, [[I

    .line 212
    move-result-object v7

    .line 215
    const/16 v8, 0xa9

    .line 216
    const/16 v13, 0x60

    .line 218
    const/16 v14, 0xd4

    .line 220
    filled-new-array {v8, v13, v14, v5}, [I

    .line 222
    move-result-object v5

    .line 225
    const/16 v8, 0x60

    .line 226
    const/16 v13, 0xd1

    .line 228
    filled-new-array {v1, v8, v13, v9}, [I

    .line 230
    move-result-object v8

    .line 233
    const/16 v13, 0xcc

    .line 234
    const/16 v15, 0xba

    .line 236
    const/16 v14, 0xa9

    .line 238
    const/16 v12, 0x60

    .line 240
    filled-new-array {v14, v12, v13, v15}, [I

    .line 242
    move-result-object v12

    .line 245
    const/16 v13, 0x60

    .line 246
    const/16 v14, 0xc3

    .line 248
    const/16 v15, 0xa9

    .line 250
    filled-new-array {v15, v13, v14, v11}, [I

    .line 252
    move-result-object v13

    .line 255
    filled-new-array {v5, v8, v12, v13}, [[I

    .line 256
    move-result-object v5

    .line 259
    filled-new-array {v6, v7, v5}, [[[I

    .line 260
    move-result-object v5

    .line 263
    iput-object v5, v0, Lcom/miui/clock/module/FontMiSansRoundLock;->mHourOffset:[[[I

    .line 264
    const/16 v5, 0x59

    .line 266
    const/16 v6, 0xb9

    .line 268
    filled-new-array {v4, v5, v2, v6}, [I

    .line 270
    move-result-object v22

    .line 273
    const/16 v7, 0xb7

    .line 274
    filled-new-array {v4, v5, v7, v6}, [I

    .line 276
    move-result-object v23

    .line 279
    filled-new-array {v4, v5, v3, v6}, [I

    .line 280
    move-result-object v24

    .line 283
    const/16 v8, 0xb4

    .line 284
    filled-new-array {v11, v5, v8, v6}, [I

    .line 286
    move-result-object v25

    .line 289
    const/16 v8, 0x92

    .line 290
    filled-new-array {v4, v5, v8, v11}, [I

    .line 292
    move-result-object v26

    .line 295
    filled-new-array {v4, v5, v10, v6}, [I

    .line 296
    move-result-object v27

    .line 299
    const/16 v8, 0x9c

    .line 300
    filled-new-array {v4, v5, v8, v9}, [I

    .line 302
    move-result-object v28

    .line 305
    const/16 v8, 0xbc

    .line 306
    filled-new-array {v4, v5, v8, v6}, [I

    .line 308
    move-result-object v29

    .line 311
    filled-new-array {v4, v5, v2, v6}, [I

    .line 312
    move-result-object v30

    .line 315
    filled-new-array {v4, v5, v3, v6}, [I

    .line 316
    move-result-object v31

    .line 319
    filled-new-array/range {v22 .. v31}, [[I

    .line 320
    move-result-object v32

    .line 323
    const/16 v4, 0x99

    .line 324
    const/16 v8, 0xd7

    .line 326
    filled-new-array {v8, v5, v4, v6}, [I

    .line 328
    move-result-object v22

    .line 331
    const/16 v4, 0xa0

    .line 332
    filled-new-array {v8, v5, v4, v6}, [I

    .line 334
    move-result-object v23

    .line 337
    filled-new-array {v8, v5, v1, v6}, [I

    .line 338
    move-result-object v24

    .line 341
    const/16 v4, 0x9b

    .line 342
    filled-new-array {v8, v5, v4, v6}, [I

    .line 344
    move-result-object v25

    .line 347
    const/16 v4, 0x85

    .line 348
    const/16 v11, 0xbf

    .line 350
    filled-new-array {v8, v5, v4, v11}, [I

    .line 352
    move-result-object v26

    .line 355
    const/16 v4, 0x9b

    .line 356
    filled-new-array {v8, v5, v4, v6}, [I

    .line 358
    move-result-object v27

    .line 361
    const/16 v4, 0x90

    .line 362
    filled-new-array {v8, v5, v4, v7}, [I

    .line 364
    move-result-object v28

    .line 367
    const/16 v4, 0xa2

    .line 368
    filled-new-array {v8, v5, v4, v6}, [I

    .line 370
    move-result-object v29

    .line 373
    const/16 v4, 0x9b

    .line 374
    filled-new-array {v8, v5, v4, v6}, [I

    .line 376
    move-result-object v30

    .line 379
    const/16 v4, 0xa1

    .line 380
    filled-new-array {v8, v5, v4, v6}, [I

    .line 382
    move-result-object v31

    .line 385
    filled-new-array/range {v22 .. v31}, [[I

    .line 386
    move-result-object v33

    .line 389
    const/16 v4, 0xcf

    .line 390
    filled-new-array {v4, v5, v10, v6}, [I

    .line 392
    move-result-object v22

    .line 395
    const/16 v8, 0xaa

    .line 396
    filled-new-array {v4, v5, v8, v7}, [I

    .line 398
    move-result-object v23

    .line 401
    const/16 v8, 0x98

    .line 402
    const/16 v11, 0xa7

    .line 404
    const/16 v12, 0xd0

    .line 406
    const/16 v13, 0x56

    .line 408
    filled-new-array {v12, v13, v8, v11}, [I

    .line 410
    move-result-object v24

    .line 413
    const/16 v8, 0x9b

    .line 414
    const/16 v11, 0xba

    .line 416
    filled-new-array {v4, v5, v8, v11}, [I

    .line 418
    move-result-object v25

    .line 421
    const/16 v8, 0x98

    .line 422
    filled-new-array {v4, v5, v8, v6}, [I

    .line 424
    move-result-object v26

    .line 427
    const/16 v8, 0xab

    .line 428
    filled-new-array {v4, v5, v8, v6}, [I

    .line 430
    move-result-object v27

    .line 433
    const/16 v8, 0xa2

    .line 434
    filled-new-array {v4, v5, v8, v3}, [I

    .line 436
    move-result-object v28

    .line 439
    const/16 v8, 0xa5

    .line 440
    const/16 v11, 0xbb

    .line 442
    filled-new-array {v4, v5, v8, v11}, [I

    .line 444
    move-result-object v29

    .line 447
    const/16 v8, 0xaa

    .line 448
    filled-new-array {v4, v5, v8, v6}, [I

    .line 450
    move-result-object v30

    .line 453
    const/16 v8, 0xb2

    .line 454
    filled-new-array {v4, v5, v8, v6}, [I

    .line 456
    move-result-object v31

    .line 459
    filled-new-array/range {v22 .. v31}, [[I

    .line 460
    move-result-object v34

    .line 463
    const/16 v4, 0xc9

    .line 464
    filled-new-array {v4, v5, v2, v6}, [I

    .line 466
    move-result-object v22

    .line 469
    filled-new-array {v4, v5, v7, v6}, [I

    .line 470
    move-result-object v23

    .line 473
    filled-new-array {v4, v5, v3, v6}, [I

    .line 474
    move-result-object v24

    .line 477
    const/16 v2, 0xb1

    .line 478
    filled-new-array {v4, v5, v2, v6}, [I

    .line 480
    move-result-object v25

    .line 483
    const/16 v2, 0x94

    .line 484
    filled-new-array {v4, v5, v2, v6}, [I

    .line 486
    move-result-object v26

    .line 489
    filled-new-array {v4, v5, v10, v6}, [I

    .line 490
    move-result-object v27

    .line 493
    const/16 v2, 0xb4

    .line 494
    filled-new-array {v4, v5, v1, v2}, [I

    .line 496
    move-result-object v28

    .line 499
    const/16 v1, 0xba

    .line 500
    filled-new-array {v4, v5, v1, v6}, [I

    .line 502
    move-result-object v29

    .line 505
    const/16 v1, 0xac

    .line 506
    filled-new-array {v4, v5, v1, v6}, [I

    .line 508
    move-result-object v30

    .line 511
    const/16 v1, 0xb2

    .line 512
    filled-new-array {v4, v5, v1, v6}, [I

    .line 514
    move-result-object v31

    .line 517
    filled-new-array/range {v22 .. v31}, [[I

    .line 518
    move-result-object v35

    .line 521
    const/16 v1, 0xa2

    .line 522
    const/16 v2, 0xd4

    .line 524
    filled-new-array {v2, v5, v1, v6}, [I

    .line 526
    move-result-object v22

    .line 529
    const/16 v1, 0xaf

    .line 530
    filled-new-array {v2, v5, v1, v6}, [I

    .line 532
    move-result-object v23

    .line 535
    const/16 v1, 0xac

    .line 536
    filled-new-array {v2, v5, v1, v6}, [I

    .line 538
    move-result-object v24

    .line 541
    const/16 v1, 0xab

    .line 542
    filled-new-array {v2, v5, v1, v11}, [I

    .line 544
    move-result-object v25

    .line 547
    const/16 v1, 0x8a

    .line 548
    filled-new-array {v2, v5, v1, v11}, [I

    .line 550
    move-result-object v26

    .line 553
    const/16 v1, 0xa7

    .line 554
    filled-new-array {v2, v5, v1, v11}, [I

    .line 556
    move-result-object v27

    .line 559
    const/16 v1, 0x91

    .line 560
    const/16 v4, 0xb8

    .line 562
    filled-new-array {v2, v5, v1, v4}, [I

    .line 564
    move-result-object v28

    .line 567
    filled-new-array {v2, v5, v3, v11}, [I

    .line 568
    move-result-object v29

    .line 571
    const/16 v1, 0xa4

    .line 572
    filled-new-array {v2, v5, v1, v6}, [I

    .line 574
    move-result-object v30

    .line 577
    const/16 v1, 0xa8

    .line 578
    filled-new-array {v2, v5, v1, v6}, [I

    .line 580
    move-result-object v31

    .line 583
    filled-new-array/range {v22 .. v31}, [[I

    .line 584
    move-result-object v36

    .line 587
    const/16 v1, 0xca

    .line 588
    const/16 v2, 0xaa

    .line 590
    filled-new-array {v1, v5, v2, v6}, [I

    .line 592
    move-result-object v12

    .line 595
    filled-new-array {v1, v5, v3, v6}, [I

    .line 596
    move-result-object v13

    .line 599
    const/16 v2, 0xb1

    .line 600
    filled-new-array {v1, v5, v2, v6}, [I

    .line 602
    move-result-object v14

    .line 605
    filled-new-array {v1, v5, v2, v6}, [I

    .line 606
    move-result-object v15

    .line 609
    const/16 v2, 0x90

    .line 610
    filled-new-array {v1, v5, v2, v11}, [I

    .line 612
    move-result-object v16

    .line 615
    const/16 v2, 0xac

    .line 616
    filled-new-array {v1, v5, v2, v6}, [I

    .line 618
    move-result-object v17

    .line 621
    const/16 v2, 0x99

    .line 622
    filled-new-array {v1, v5, v2, v9}, [I

    .line 624
    move-result-object v18

    .line 627
    filled-new-array {v1, v5, v7, v6}, [I

    .line 628
    move-result-object v19

    .line 631
    const/16 v2, 0xa9

    .line 632
    filled-new-array {v1, v5, v2, v6}, [I

    .line 634
    move-result-object v20

    .line 637
    filled-new-array {v1, v5, v10, v6}, [I

    .line 638
    move-result-object v21

    .line 641
    filled-new-array/range {v12 .. v21}, [[I

    .line 642
    move-result-object v37

    .line 645
    filled-new-array/range {v32 .. v37}, [[[I

    .line 646
    move-result-object v1

    .line 649
    iput-object v1, v0, Lcom/miui/clock/module/FontMiSansRoundLock;->mMinuteOffset:[[[I

    .line 650
    const/16 v1, 0xa

    .line 652
    new-array v2, v1, [F

    .line 654
    fill-array-data v2, :array_2

    .line 656
    iput-object v2, v0, Lcom/miui/clock/module/FontMiSansRoundLock;->mSVGEmptyLeft:[F

    .line 659
    new-array v2, v1, [F

    .line 661
    fill-array-data v2, :array_3

    .line 663
    iput-object v2, v0, Lcom/miui/clock/module/FontMiSansRoundLock;->mSVGEmptyRight:[F

    .line 666
    new-array v1, v1, [I

    .line 668
    fill-array-data v1, :array_4

    .line 670
    iput-object v1, v0, Lcom/miui/clock/module/FontMiSansRoundLock;->mLargeClockWidth:[I

    .line 673
    return-void

    .line 675
    :array_0
    .array-data 4
        0x7f080ca7    # @drawable/font_c_0 'res/drawable/font_c_0.xml'
        0x7f080ca8    # @drawable/font_c_1 'res/drawable/font_c_1.xml'
        0x7f080ca9    # @drawable/font_c_2 'res/drawable/font_c_2.xml'
        0x7f080caa    # @drawable/font_c_3 'res/drawable/font_c_3.xml'
        0x7f080cab    # @drawable/font_c_4 'res/drawable/font_c_4.xml'
        0x7f080cac    # @drawable/font_c_5 'res/drawable/font_c_5.xml'
        0x7f080cad    # @drawable/font_c_6 'res/drawable/font_c_6.xml'
        0x7f080cae    # @drawable/font_c_7 'res/drawable/font_c_7.xml'
        0x7f080caf    # @drawable/font_c_8 'res/drawable/font_c_8.xml'
        0x7f080cb0    # @drawable/font_c_9 'res/drawable/font_c_9.xml'
    .end array-data

    .line 676
    :array_1
    .array-data 4
        0x3f68f5c3    # 0.91f
        0x3e6b851f    # 0.23f
        0x3e23d70a    # 0.16f
        0x3e23d70a    # 0.16f
        0x3e851eb8    # 0.26f
        0x3df5c28f    # 0.12f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 700
    :array_2
    .array-data 4
        0x4136db6e
        0x411e79e8
        0x412aaaab
        0x415b6db7
        0x40c30c31
        0x41555555
        0x411e79e8
        0x40c30c31
        0x4136db6e
        0x41124925
    .end array-data

    .line 718
    :array_3
    .array-data 4
        0x42ecf3cf
        0x4280c30c
        0x42d79e7a
        0x42df3cf4
        0x42eb6db7
        0x42e0c30c
        0x42e6db6e
        0x42cc30c3
        0x42ecf3cf
        0x42e49249
    .end array-data

    .line 742
    :array_4
    .array-data 4
        0x82
        0x58
        0x76
        0x7a
        0x7c
        0x7c
        0x7d
        0x6e
        0x82
        0x7d
    .end array-data
    .line 766
.end method


# virtual methods
.method public final getColonInterval()F
    .locals 0

    .line 1
    const/high16 p0, 0x42080000    # 34.0f

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
    const p0, 0x7f081315    # @drawable/miui_rhombus_colon_circle 'res/drawable/miui_rhombus_colon_circle.xml'

    .line 7
    :goto_0
    return p0
    .line 10
.end method

.method public final getColonSize()F
    .locals 0

    .line 1
    const/high16 p0, 0x42080000    # 34.0f

    .line 2
    return p0
    .line 4
.end method

.method public final getFontStyle()Lcom/miui/clock/module/BaseFontStyle$Style;
    .locals 0

    .line 1
    sget-object p0, Lcom/miui/clock/module/BaseFontStyle$Style;->MiSansRoundLock:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHourOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontMiSansRoundLock;->mHourOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLargeClockHeight()I
    .locals 0

    .line 1
    const/16 p0, 0xa8

    .line 2
    return p0
    .line 4
.end method

.method public final getLargeClockWidth()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontMiSansRoundLock;->mLargeClockWidth:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLeftEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontMiSansRoundLock;->mSVGEmptyLeft:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMinuteOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontMiSansRoundLock;->mMinuteOffset:[[[I

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
    const p0, 0x41b5ae14    # 22.71f

    .line 2
    return p0
    .line 5
.end method

.method public final getPercentages()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontMiSansRoundLock;->mPercentages:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRightEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontMiSansRoundLock;->mSVGEmptyRight:[F

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
    const/4 p0, -0x2

    .line 2
    return p0
    .line 3
.end method

.method public final getSmallColon1MarginInnerTop()F
    .locals 0

    .line 1
    const p0, 0x41507ae1    # 13.03f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColon2MarginInnerTop()F
    .locals 0

    .line 1
    const p0, 0x424528f6    # 49.29f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonRealWidth()F
    .locals 0

    .line 1
    const p0, 0x41366666    # 11.4f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResource()I
    .locals 0

    .line 1
    const p0, 0x7f080cb1    # @drawable/font_c_colon 'res/drawable/font_c_colon.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResourceHeight()I
    .locals 0

    .line 1
    const/16 p0, 0xa8

    .line 2
    return p0
    .line 4
.end method

.method public final getSmallColonResourceWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x35

    .line 2
    return p0
    .line 4
.end method

.method public final getSvgResource()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontMiSansRoundLock;->mSVGResource:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextBoxWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x77

    .line 2
    return p0
    .line 4
.end method
