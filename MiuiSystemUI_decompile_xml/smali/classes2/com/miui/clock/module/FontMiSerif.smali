.class public final Lcom/miui/clock/module/FontMiSerif;
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
    .locals 33

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
    iput-object v2, v0, Lcom/miui/clock/module/FontMiSerif;->mSVGResource:[I

    .line 14
    const/4 v2, 0x7

    .line 16
    new-array v2, v2, [F

    .line 17
    fill-array-data v2, :array_1

    .line 19
    iput-object v2, v0, Lcom/miui/clock/module/FontMiSerif;->mPercentages:[F

    .line 22
    new-array v2, v1, [F

    .line 24
    fill-array-data v2, :array_2

    .line 26
    iput-object v2, v0, Lcom/miui/clock/module/FontMiSerif;->mSVGEmptyLeft:[F

    .line 29
    new-array v2, v1, [F

    .line 31
    fill-array-data v2, :array_3

    .line 33
    iput-object v2, v0, Lcom/miui/clock/module/FontMiSerif;->mSVGEmptyRight:[F

    .line 36
    new-array v1, v1, [I

    .line 38
    fill-array-data v1, :array_4

    .line 40
    iput-object v1, v0, Lcom/miui/clock/module/FontMiSerif;->mLargeClockWidth:[I

    .line 43
    const/16 v1, 0xae

    .line 45
    const/16 v2, 0x63

    .line 47
    const/16 v3, 0xc8

    .line 49
    const/16 v4, 0xc5

    .line 51
    filled-new-array {v1, v2, v3, v4}, [I

    .line 53
    move-result-object v5

    .line 56
    const/16 v6, 0xa8

    .line 57
    const/16 v15, 0xdb

    .line 59
    filled-new-array {v6, v2, v15, v4}, [I

    .line 61
    move-result-object v6

    .line 64
    const/16 v14, 0xb1

    .line 65
    const/16 v13, 0xc9

    .line 67
    filled-new-array {v14, v2, v13, v13}, [I

    .line 69
    move-result-object v7

    .line 72
    const/16 v12, 0xd1

    .line 73
    filled-new-array {v1, v2, v12, v4}, [I

    .line 75
    move-result-object v8

    .line 78
    const/16 v9, 0xc6

    .line 79
    const/16 v10, 0xca

    .line 81
    const/16 v11, 0x8d

    .line 83
    const/16 v12, 0x5c

    .line 85
    filled-new-array {v11, v12, v9, v10}, [I

    .line 87
    move-result-object v9

    .line 90
    const/16 v10, 0xd9

    .line 91
    filled-new-array {v1, v2, v10, v4}, [I

    .line 93
    move-result-object v10

    .line 96
    const/16 v11, 0xa3

    .line 97
    filled-new-array {v11, v2, v3, v4}, [I

    .line 99
    move-result-object v11

    .line 102
    const/16 v12, 0xcb

    .line 103
    const/16 v15, 0xd8

    .line 105
    filled-new-array {v1, v2, v15, v12}, [I

    .line 107
    move-result-object v12

    .line 110
    const/16 v14, 0xa4

    .line 111
    filled-new-array {v14, v2, v15, v4}, [I

    .line 113
    move-result-object v14

    .line 116
    const/16 v1, 0xa5

    .line 117
    filled-new-array {v1, v2, v15, v13}, [I

    .line 119
    move-result-object v1

    .line 122
    const/16 v2, 0xd1

    .line 123
    move v15, v13

    .line 125
    move-object v13, v14

    .line 126
    move-object v14, v1

    .line 127
    filled-new-array/range {v5 .. v14}, [[I

    .line 128
    move-result-object v1

    .line 131
    const/16 v5, 0xbe

    .line 132
    const/16 v6, 0x5d

    .line 134
    filled-new-array {v5, v6, v3, v4}, [I

    .line 136
    move-result-object v17

    .line 139
    const/16 v7, 0xa6

    .line 140
    const/16 v8, 0x58

    .line 142
    const/16 v9, 0xdb

    .line 144
    filled-new-array {v7, v8, v9, v4}, [I

    .line 146
    move-result-object v18

    .line 149
    filled-new-array {v5, v6, v15, v15}, [I

    .line 150
    move-result-object v19

    .line 153
    const/16 v7, 0xae

    .line 154
    filled-new-array {v7, v6, v2, v4}, [I

    .line 156
    move-result-object v20

    .line 159
    const/16 v8, 0xb2

    .line 160
    const/16 v9, 0xc7

    .line 162
    const/16 v10, 0xb2

    .line 164
    filled-new-array {v10, v6, v8, v9}, [I

    .line 166
    move-result-object v21

    .line 169
    const/16 v8, 0xd9

    .line 170
    filled-new-array {v7, v6, v8, v4}, [I

    .line 172
    move-result-object v22

    .line 175
    const/16 v7, 0xb7

    .line 176
    filled-new-array {v7, v6, v3, v4}, [I

    .line 178
    move-result-object v23

    .line 181
    const/16 v7, 0xb2

    .line 182
    const/16 v8, 0xcb

    .line 184
    const/16 v9, 0xd8

    .line 186
    filled-new-array {v7, v6, v9, v8}, [I

    .line 188
    move-result-object v24

    .line 191
    const/16 v7, 0xac

    .line 192
    filled-new-array {v7, v6, v9, v4}, [I

    .line 194
    move-result-object v25

    .line 197
    const/16 v7, 0xb3

    .line 198
    filled-new-array {v7, v6, v9, v15}, [I

    .line 200
    move-result-object v26

    .line 203
    filled-new-array/range {v17 .. v26}, [[I

    .line 204
    move-result-object v6

    .line 207
    const/16 v7, 0xd9

    .line 208
    const/16 v8, 0xc7

    .line 210
    const/16 v9, 0xaf

    .line 212
    const/16 v10, 0x5f

    .line 214
    filled-new-array {v9, v10, v7, v8}, [I

    .line 216
    move-result-object v7

    .line 219
    const/16 v8, 0xd2

    .line 220
    const/16 v9, 0xbb

    .line 222
    const/16 v10, 0xa3

    .line 224
    const/16 v11, 0x5f

    .line 226
    filled-new-array {v10, v11, v8, v9}, [I

    .line 228
    move-result-object v8

    .line 231
    const/16 v9, 0xda

    .line 232
    const/16 v10, 0xc7

    .line 234
    const/16 v11, 0xb2

    .line 236
    const/16 v12, 0x5f

    .line 238
    filled-new-array {v11, v12, v9, v10}, [I

    .line 240
    move-result-object v9

    .line 243
    const/16 v10, 0x5f

    .line 244
    const/16 v11, 0xd3

    .line 246
    const/16 v12, 0xb6

    .line 248
    filled-new-array {v12, v10, v11, v4}, [I

    .line 250
    move-result-object v10

    .line 253
    filled-new-array {v7, v8, v9, v10}, [[I

    .line 254
    move-result-object v7

    .line 257
    filled-new-array {v1, v6, v7}, [[[I

    .line 258
    move-result-object v1

    .line 261
    iput-object v1, v0, Lcom/miui/clock/module/FontMiSerif;->mHourOffset:[[[I

    .line 262
    const/16 v1, 0x5b

    .line 264
    const/16 v6, 0xae

    .line 266
    filled-new-array {v3, v1, v6, v5}, [I

    .line 268
    move-result-object v17

    .line 271
    const/16 v6, 0xab

    .line 272
    const/16 v7, 0xd8

    .line 274
    filled-new-array {v7, v1, v6, v5}, [I

    .line 276
    move-result-object v18

    .line 279
    const/16 v8, 0xba

    .line 280
    filled-new-array {v3, v1, v12, v8}, [I

    .line 282
    move-result-object v19

    .line 285
    filled-new-array {v3, v1, v8, v8}, [I

    .line 286
    move-result-object v20

    .line 289
    const/16 v9, 0x93

    .line 290
    const/16 v10, 0xbb

    .line 292
    filled-new-array {v3, v1, v9, v10}, [I

    .line 294
    move-result-object v21

    .line 297
    const/16 v9, 0xc4

    .line 298
    filled-new-array {v7, v1, v6, v9}, [I

    .line 300
    move-result-object v22

    .line 303
    const/16 v10, 0xa5

    .line 304
    filled-new-array {v3, v1, v10, v8}, [I

    .line 306
    move-result-object v23

    .line 309
    const/16 v10, 0xae

    .line 310
    filled-new-array {v7, v1, v10, v9}, [I

    .line 312
    move-result-object v24

    .line 315
    const/16 v7, 0xb5

    .line 316
    const/16 v10, 0xc0

    .line 318
    filled-new-array {v3, v1, v7, v10}, [I

    .line 320
    move-result-object v25

    .line 323
    const/16 v7, 0xb8

    .line 324
    filled-new-array {v3, v1, v7, v8}, [I

    .line 326
    move-result-object v26

    .line 329
    filled-new-array/range {v17 .. v26}, [[I

    .line 330
    move-result-object v27

    .line 333
    const/16 v3, 0xa4

    .line 334
    const/16 v7, 0xe3

    .line 336
    filled-new-array {v7, v1, v3, v5}, [I

    .line 338
    move-result-object v17

    .line 341
    const/16 v3, 0x60

    .line 342
    const/16 v11, 0xa0

    .line 344
    const/16 v13, 0xdb

    .line 346
    filled-new-array {v13, v3, v11, v4}, [I

    .line 348
    move-result-object v18

    .line 351
    const/16 v3, 0xa0

    .line 352
    filled-new-array {v7, v1, v3, v8}, [I

    .line 354
    move-result-object v19

    .line 357
    const/16 v3, 0x9c

    .line 358
    const/16 v11, 0xbf

    .line 360
    filled-new-array {v7, v1, v3, v11}, [I

    .line 362
    move-result-object v20

    .line 365
    const/16 v3, 0x88

    .line 366
    filled-new-array {v7, v1, v3, v8}, [I

    .line 368
    move-result-object v21

    .line 371
    const/16 v3, 0xa4

    .line 372
    filled-new-array {v7, v1, v3, v9}, [I

    .line 374
    move-result-object v22

    .line 377
    const/16 v3, 0xa3

    .line 378
    filled-new-array {v7, v1, v3, v8}, [I

    .line 380
    move-result-object v23

    .line 383
    const/16 v3, 0xa5

    .line 384
    const/16 v11, 0xc3

    .line 386
    filled-new-array {v7, v1, v3, v11}, [I

    .line 388
    move-result-object v24

    .line 391
    const/16 v3, 0xa4

    .line 392
    filled-new-array {v7, v1, v3, v10}, [I

    .line 394
    move-result-object v25

    .line 397
    const/16 v3, 0xaa

    .line 398
    filled-new-array {v7, v1, v3, v8}, [I

    .line 400
    move-result-object v26

    .line 403
    filled-new-array/range {v17 .. v26}, [[I

    .line 404
    move-result-object v28

    .line 407
    const/16 v3, 0xe0

    .line 408
    const/16 v7, 0xae

    .line 410
    filled-new-array {v3, v1, v7, v5}, [I

    .line 412
    move-result-object v17

    .line 415
    const/16 v7, 0xa6

    .line 416
    filled-new-array {v3, v1, v7, v11}, [I

    .line 418
    move-result-object v18

    .line 421
    const/16 v7, 0xbd

    .line 422
    filled-new-array {v3, v1, v6, v7}, [I

    .line 424
    move-result-object v19

    .line 427
    const/16 v11, 0xaa

    .line 428
    filled-new-array {v3, v1, v11, v8}, [I

    .line 430
    move-result-object v20

    .line 433
    const/16 v11, 0x8e

    .line 434
    filled-new-array {v3, v1, v11, v7}, [I

    .line 436
    move-result-object v21

    .line 439
    const/16 v11, 0xad

    .line 440
    filled-new-array {v3, v1, v11, v9}, [I

    .line 442
    move-result-object v22

    .line 445
    const/16 v11, 0xa7

    .line 446
    filled-new-array {v3, v1, v11, v8}, [I

    .line 448
    move-result-object v23

    .line 451
    const/16 v11, 0xae

    .line 452
    filled-new-array {v3, v1, v11, v9}, [I

    .line 454
    move-result-object v24

    .line 457
    const/16 v11, 0xa9

    .line 458
    filled-new-array {v3, v1, v11, v10}, [I

    .line 460
    move-result-object v25

    .line 463
    const/16 v11, 0xb0

    .line 464
    filled-new-array {v3, v1, v11, v8}, [I

    .line 466
    move-result-object v26

    .line 469
    filled-new-array/range {v17 .. v26}, [[I

    .line 470
    move-result-object v29

    .line 473
    const/16 v3, 0xae

    .line 474
    filled-new-array {v2, v1, v3, v5}, [I

    .line 476
    move-result-object v17

    .line 479
    const/16 v3, 0xb3

    .line 480
    filled-new-array {v2, v1, v3, v10}, [I

    .line 482
    move-result-object v18

    .line 485
    filled-new-array {v2, v1, v12, v8}, [I

    .line 486
    move-result-object v19

    .line 489
    filled-new-array {v2, v1, v12, v8}, [I

    .line 490
    move-result-object v20

    .line 493
    const/16 v3, 0x8f

    .line 494
    const/16 v11, 0xb4

    .line 496
    filled-new-array {v2, v1, v3, v11}, [I

    .line 498
    move-result-object v21

    .line 501
    const/16 v3, 0xdd

    .line 502
    filled-new-array {v3, v1, v6, v9}, [I

    .line 504
    move-result-object v22

    .line 507
    const/16 v3, 0xa6

    .line 508
    filled-new-array {v2, v1, v3, v8}, [I

    .line 510
    move-result-object v23

    .line 513
    const/16 v3, 0xde

    .line 514
    const/16 v11, 0x56

    .line 516
    const/16 v13, 0xae

    .line 518
    filled-new-array {v3, v11, v13, v9}, [I

    .line 520
    move-result-object v24

    .line 523
    const/16 v3, 0xb5

    .line 524
    filled-new-array {v2, v1, v3, v10}, [I

    .line 526
    move-result-object v25

    .line 529
    const/16 v3, 0xb8

    .line 530
    filled-new-array {v2, v1, v3, v7}, [I

    .line 532
    move-result-object v26

    .line 535
    filled-new-array/range {v17 .. v26}, [[I

    .line 536
    move-result-object v30

    .line 539
    const/16 v2, 0xaa

    .line 540
    const/16 v3, 0xdf

    .line 542
    filled-new-array {v3, v1, v2, v5}, [I

    .line 544
    move-result-object v17

    .line 547
    filled-new-array {v3, v1, v6, v4}, [I

    .line 548
    move-result-object v18

    .line 551
    filled-new-array {v3, v1, v6, v8}, [I

    .line 552
    move-result-object v19

    .line 555
    filled-new-array {v3, v1, v6, v8}, [I

    .line 556
    move-result-object v20

    .line 559
    const/16 v2, 0x8c

    .line 560
    filled-new-array {v3, v1, v2, v8}, [I

    .line 562
    move-result-object v21

    .line 565
    filled-new-array {v3, v1, v6, v9}, [I

    .line 566
    move-result-object v22

    .line 569
    const/16 v2, 0xa3

    .line 570
    filled-new-array {v3, v1, v2, v8}, [I

    .line 572
    move-result-object v23

    .line 575
    const/16 v2, 0xb1

    .line 576
    filled-new-array {v3, v1, v2, v9}, [I

    .line 578
    move-result-object v24

    .line 581
    filled-new-array {v3, v1, v6, v10}, [I

    .line 582
    move-result-object v25

    .line 585
    filled-new-array {v3, v1, v2, v7}, [I

    .line 586
    move-result-object v26

    .line 589
    filled-new-array/range {v17 .. v26}, [[I

    .line 590
    move-result-object v31

    .line 593
    const/16 v3, 0xa6

    .line 594
    const/16 v4, 0xdb

    .line 596
    filled-new-array {v4, v1, v3, v5}, [I

    .line 598
    move-result-object v16

    .line 601
    const/16 v3, 0xad

    .line 602
    filled-new-array {v4, v1, v3, v10}, [I

    .line 604
    move-result-object v17

    .line 607
    filled-new-array {v4, v1, v3, v8}, [I

    .line 608
    move-result-object v18

    .line 611
    const/16 v3, 0xae

    .line 612
    filled-new-array {v4, v1, v3, v8}, [I

    .line 614
    move-result-object v19

    .line 617
    const/16 v3, 0x8a

    .line 618
    filled-new-array {v4, v1, v3, v12}, [I

    .line 620
    move-result-object v20

    .line 623
    filled-new-array {v4, v1, v2, v9}, [I

    .line 624
    move-result-object v21

    .line 627
    const/16 v2, 0x9c

    .line 628
    filled-new-array {v4, v1, v2, v8}, [I

    .line 630
    move-result-object v22

    .line 633
    const/16 v2, 0xe4

    .line 634
    const/16 v3, 0xa9

    .line 636
    filled-new-array {v2, v1, v3, v9}, [I

    .line 638
    move-result-object v23

    .line 641
    const/16 v2, 0xaa

    .line 642
    filled-new-array {v4, v1, v2, v10}, [I

    .line 644
    move-result-object v24

    .line 647
    const/16 v2, 0xac

    .line 648
    filled-new-array {v4, v1, v2, v7}, [I

    .line 650
    move-result-object v25

    .line 653
    filled-new-array/range {v16 .. v25}, [[I

    .line 654
    move-result-object v32

    .line 657
    filled-new-array/range {v27 .. v32}, [[[I

    .line 658
    move-result-object v1

    .line 661
    iput-object v1, v0, Lcom/miui/clock/module/FontMiSerif;->mMinuteOffset:[[[I

    .line 662
    return-void

    .line 664
    nop

    .line 665
    :array_0
    .array-data 4
        0x7f080cd3    # @drawable/font_g_0 'res/drawable/font_g_0.xml'
        0x7f080cd4    # @drawable/font_g_1 'res/drawable/font_g_1.xml'
        0x7f080cd5    # @drawable/font_g_2 'res/drawable/font_g_2.xml'
        0x7f080cd6    # @drawable/font_g_3 'res/drawable/font_g_3.xml'
        0x7f080cd7    # @drawable/font_g_4 'res/drawable/font_g_4.xml'
        0x7f080cd8    # @drawable/font_g_5 'res/drawable/font_g_5.xml'
        0x7f080cd9    # @drawable/font_g_6 'res/drawable/font_g_6.xml'
        0x7f080cda    # @drawable/font_g_7 'res/drawable/font_g_7.xml'
        0x7f080cdb    # @drawable/font_g_8 'res/drawable/font_g_8.xml'
        0x7f080cdc    # @drawable/font_g_9 'res/drawable/font_g_9.xml'
    .end array-data

    .line 666
    :array_1
    .array-data 4
        0x3f59999a    # 0.85f
        0x3e570a3d    # 0.21f
        0x3e19999a    # 0.15f
        0x3e19999a    # 0.15f
        0x3e800000    # 0.25f
        0x3df5c28f    # 0.12f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 690
    :array_2
    .array-data 4
        0x41000000    # 8.0f
        0x41249249
        0x41000000    # 8.0f
        0x40aaaaab
        0x40e79e7a
        0x4073cf3d
        0x411e79e8
        0x41061862
        0x41000000    # 8.0f
        0x40b6db6e
    .end array-data

    .line 708
    :array_3
    .array-data 4
        0x42f24925
        0x42a92492
        0x42daaaab
        0x42ccf3cf
        0x42f61862
        0x42c61862
        0x42e0c30c
        0x42cf3cf4
        0x42d92492
        0x42d86186
    .end array-data

    .line 732
    :array_4
    .array-data 4
        0x81
        0x5f
        0x74
        0x6f
        0x7d
        0x69
        0x76
        0x6a
        0x74
        0x76
    .end array-data
    .line 756
.end method


# virtual methods
.method public final getColonInterval()F
    .locals 0

    .line 1
    const/high16 p0, 0x42200000    # 40.0f

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
    const/high16 p0, 0x42100000    # 36.0f

    .line 2
    return p0
    .line 4
.end method

.method public final getFontStyle()Lcom/miui/clock/module/BaseFontStyle$Style;
    .locals 0

    .line 1
    sget-object p0, Lcom/miui/clock/module/BaseFontStyle$Style;->BodoniModa:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHourOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontMiSerif;->mHourOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLargeClockHeight()I
    .locals 0

    .line 1
    const/16 p0, 0xaa

    .line 2
    return p0
    .line 4
.end method

.method public final getLargeClockWidth()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontMiSerif;->mLargeClockWidth:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLeftEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontMiSerif;->mSVGEmptyLeft:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMinuteOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontMiSerif;->mMinuteOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getNotificationColonHeight()F
    .locals 0

    .line 1
    const/high16 p0, 0x42940000    # 74.0f

    .line 2
    return p0
    .line 4
.end method

.method public final getNotificationColonWidth()F
    .locals 0

    .line 1
    const p0, 0x41a3ae14    # 20.46f

    .line 2
    return p0
    .line 5
.end method

.method public final getPercentages()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontMiSerif;->mPercentages:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRightEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontMiSerif;->mSVGEmptyRight:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSmallClockInnerHeight()I
    .locals 0

    .line 1
    const/16 p0, 0x4a

    .line 2
    return p0
    .line 4
.end method

.method public final getSmallClockInnerMarginOffset()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getSmallColon1MarginInnerTop()F
    .locals 0

    .line 1
    const p0, 0x4155c28f    # 13.36f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColon2MarginInnerTop()F
    .locals 0

    .line 1
    const p0, 0x423d47ae    # 47.32f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonRealWidth()F
    .locals 0

    .line 1
    const p0, 0x415947ae    # 13.58f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResource()I
    .locals 0

    .line 1
    const p0, 0x7f080cdd    # @drawable/font_g_colon 'res/drawable/font_g_colon.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResourceHeight()I
    .locals 0

    .line 1
    const/16 p0, 0xaa

    .line 2
    return p0
    .line 4
.end method

.method public final getSmallColonResourceWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x2f

    .line 2
    return p0
    .line 4
.end method

.method public final getSvgResource()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontMiSerif;->mSVGResource:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextBoxWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x81

    .line 2
    return p0
    .line 4
.end method
