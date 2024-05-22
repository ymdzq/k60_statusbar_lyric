.class public final Lcom/miui/clock/module/FontBeiHaiBei;
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
    .locals 39

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
    iput-object v2, v0, Lcom/miui/clock/module/FontBeiHaiBei;->mSVGResource:[I

    .line 14
    const/4 v2, 0x7

    .line 16
    new-array v2, v2, [F

    .line 17
    fill-array-data v2, :array_1

    .line 19
    iput-object v2, v0, Lcom/miui/clock/module/FontBeiHaiBei;->mPercentages:[F

    .line 22
    const/16 v2, 0xa2

    .line 24
    const/16 v3, 0x61

    .line 26
    const/16 v4, 0xd5

    .line 28
    const/16 v5, 0xcc

    .line 30
    filled-new-array {v2, v3, v4, v5}, [I

    .line 32
    move-result-object v6

    .line 35
    const/16 v4, 0xdf

    .line 36
    const/16 v7, 0xd8

    .line 38
    filled-new-array {v2, v3, v4, v7}, [I

    .line 40
    move-result-object v7

    .line 43
    const/16 v4, 0xd7

    .line 44
    filled-new-array {v2, v3, v4, v5}, [I

    .line 46
    move-result-object v8

    .line 49
    const/16 v15, 0xa6

    .line 50
    filled-new-array {v15, v3, v4, v5}, [I

    .line 52
    move-result-object v9

    .line 55
    const/16 v10, 0xd8

    .line 56
    const/16 v11, 0x8f

    .line 58
    const/16 v14, 0xd9

    .line 60
    filled-new-array {v11, v3, v14, v10}, [I

    .line 62
    move-result-object v10

    .line 65
    const/16 v13, 0xd4

    .line 66
    const/16 v12, 0xc2

    .line 68
    filled-new-array {v15, v3, v13, v12}, [I

    .line 70
    move-result-object v11

    .line 73
    const/16 v12, 0xb0

    .line 74
    const/16 v13, 0xc5

    .line 76
    const/16 v1, 0xbe

    .line 78
    filled-new-array {v12, v3, v13, v1}, [I

    .line 80
    move-result-object v12

    .line 83
    const/16 v13, 0xc4

    .line 84
    const/16 v14, 0xba

    .line 86
    const/16 v2, 0xc9

    .line 88
    filled-new-array {v14, v3, v2, v13}, [I

    .line 90
    move-result-object v13

    .line 93
    const/16 v14, 0xbc

    .line 94
    const/16 v15, 0xbd

    .line 96
    const/16 v4, 0xba

    .line 98
    filled-new-array {v4, v3, v14, v15}, [I

    .line 100
    move-result-object v14

    .line 103
    const/16 v4, 0xc0

    .line 104
    const/16 v15, 0xc6

    .line 106
    filled-new-array {v4, v3, v1, v15}, [I

    .line 108
    move-result-object v15

    .line 111
    const/16 v4, 0xc2

    .line 112
    filled-new-array/range {v6 .. v15}, [[I

    .line 114
    move-result-object v6

    .line 117
    const/16 v7, 0xbf

    .line 118
    const/16 v8, 0xc1

    .line 120
    filled-new-array {v7, v3, v1, v8}, [I

    .line 122
    move-result-object v23

    .line 125
    const/16 v7, 0xbc

    .line 126
    const/16 v8, 0xc5

    .line 128
    filled-new-array {v7, v3, v8, v2}, [I

    .line 130
    move-result-object v24

    .line 133
    const/16 v7, 0xbb

    .line 134
    const/16 v8, 0xc7

    .line 136
    filled-new-array {v4, v3, v7, v8}, [I

    .line 138
    move-result-object v25

    .line 141
    const/16 v7, 0xc3

    .line 142
    const/16 v9, 0xbb

    .line 144
    filled-new-array {v7, v3, v9, v2}, [I

    .line 146
    move-result-object v26

    .line 149
    const/16 v7, 0xb1

    .line 150
    filled-new-array {v7, v3, v4, v5}, [I

    .line 152
    move-result-object v27

    .line 155
    const/16 v7, 0xba

    .line 156
    const/16 v9, 0xc3

    .line 158
    filled-new-array {v4, v3, v7, v9}, [I

    .line 160
    move-result-object v28

    .line 163
    const/16 v7, 0xbc

    .line 164
    const/16 v9, 0xb9

    .line 166
    filled-new-array {v4, v3, v7, v9}, [I

    .line 168
    move-result-object v29

    .line 171
    const/16 v7, 0xc4

    .line 172
    filled-new-array {v1, v3, v8, v7}, [I

    .line 174
    move-result-object v30

    .line 177
    const/16 v7, 0xb8

    .line 178
    const/16 v9, 0xb3

    .line 180
    const/16 v10, 0xc1

    .line 182
    filled-new-array {v10, v3, v7, v9}, [I

    .line 184
    move-result-object v31

    .line 187
    const/16 v7, 0xc1

    .line 188
    filled-new-array {v7, v3, v1, v2}, [I

    .line 190
    move-result-object v32

    .line 193
    filled-new-array/range {v23 .. v32}, [[I

    .line 194
    move-result-object v1

    .line 197
    const/16 v7, 0xab

    .line 198
    const/16 v9, 0xd5

    .line 200
    filled-new-array {v7, v3, v9, v5}, [I

    .line 202
    move-result-object v7

    .line 205
    const/16 v9, 0xd3

    .line 206
    const/16 v11, 0xa9

    .line 208
    filled-new-array {v11, v3, v9, v10}, [I

    .line 210
    move-result-object v9

    .line 213
    const/16 v10, 0xab

    .line 214
    const/16 v11, 0xd5

    .line 216
    filled-new-array {v10, v3, v11, v5}, [I

    .line 218
    move-result-object v3

    .line 221
    const/16 v10, 0xbc

    .line 222
    const/16 v11, 0xc5

    .line 224
    const/16 v12, 0xaf

    .line 226
    const/16 v13, 0x65

    .line 228
    filled-new-array {v12, v13, v10, v11}, [I

    .line 230
    move-result-object v10

    .line 233
    filled-new-array {v7, v9, v3, v10}, [[I

    .line 234
    move-result-object v3

    .line 237
    filled-new-array {v6, v1, v3}, [[[I

    .line 238
    move-result-object v1

    .line 241
    iput-object v1, v0, Lcom/miui/clock/module/FontBeiHaiBei;->mHourOffset:[[[I

    .line 242
    const/16 v1, 0x57

    .line 244
    const/16 v3, 0xa4

    .line 246
    const/16 v6, 0xd4

    .line 248
    filled-new-array {v6, v1, v3, v8}, [I

    .line 250
    move-result-object v23

    .line 253
    const/16 v7, 0xac

    .line 254
    filled-new-array {v6, v1, v7, v2}, [I

    .line 256
    move-result-object v24

    .line 259
    const/16 v7, 0xa5

    .line 260
    filled-new-array {v6, v1, v7, v8}, [I

    .line 262
    move-result-object v25

    .line 265
    const/16 v7, 0xa9

    .line 266
    filled-new-array {v6, v1, v7, v8}, [I

    .line 268
    move-result-object v26

    .line 271
    const/16 v7, 0x93

    .line 272
    filled-new-array {v6, v1, v7, v8}, [I

    .line 274
    move-result-object v27

    .line 277
    const/16 v7, 0xa6

    .line 278
    filled-new-array {v6, v1, v7, v8}, [I

    .line 280
    move-result-object v28

    .line 283
    const/16 v9, 0x5b

    .line 284
    const/16 v10, 0x97

    .line 286
    filled-new-array {v6, v9, v10, v8}, [I

    .line 288
    move-result-object v29

    .line 291
    const/16 v9, 0xae

    .line 292
    const/16 v10, 0xcb

    .line 294
    filled-new-array {v6, v1, v9, v10}, [I

    .line 296
    move-result-object v30

    .line 299
    const/16 v9, 0x9d

    .line 300
    filled-new-array {v6, v1, v9, v8}, [I

    .line 302
    move-result-object v31

    .line 305
    filled-new-array {v6, v1, v3, v8}, [I

    .line 306
    move-result-object v32

    .line 309
    filled-new-array/range {v23 .. v32}, [[I

    .line 310
    move-result-object v33

    .line 313
    const/16 v6, 0x8e

    .line 314
    const/16 v9, 0xf1

    .line 316
    const/16 v11, 0x68

    .line 318
    filled-new-array {v9, v11, v6, v8}, [I

    .line 320
    move-result-object v22

    .line 323
    const/16 v6, 0xed

    .line 324
    const/16 v12, 0x94

    .line 326
    const/16 v14, 0xa7

    .line 328
    filled-new-array {v6, v1, v12, v14}, [I

    .line 330
    move-result-object v23

    .line 333
    const/16 v6, 0x8c

    .line 334
    filled-new-array {v9, v11, v6, v14}, [I

    .line 336
    move-result-object v24

    .line 339
    const/16 v6, 0x8d

    .line 340
    filled-new-array {v9, v11, v6, v14}, [I

    .line 342
    move-result-object v25

    .line 345
    const/16 v6, 0x5e

    .line 346
    const/16 v12, 0x8a

    .line 348
    const/16 v15, 0xf2

    .line 350
    filled-new-array {v15, v6, v12, v14}, [I

    .line 352
    move-result-object v26

    .line 355
    filled-new-array {v9, v6, v12, v14}, [I

    .line 356
    move-result-object v27

    .line 359
    const/16 v6, 0x8b

    .line 360
    filled-new-array {v9, v11, v6, v2}, [I

    .line 362
    move-result-object v28

    .line 365
    const/16 v6, 0x92

    .line 366
    filled-new-array {v9, v11, v6, v2}, [I

    .line 368
    move-result-object v29

    .line 371
    const/16 v6, 0x87

    .line 372
    filled-new-array {v9, v11, v6, v2}, [I

    .line 374
    move-result-object v30

    .line 377
    const/16 v6, 0xf0

    .line 378
    const/16 v9, 0x8f

    .line 380
    filled-new-array {v6, v11, v9, v2}, [I

    .line 382
    move-result-object v31

    .line 385
    filled-new-array/range {v22 .. v31}, [[I

    .line 386
    move-result-object v34

    .line 389
    const/16 v6, 0xa8

    .line 390
    const/16 v9, 0x64

    .line 392
    const/16 v11, 0xd7

    .line 394
    filled-new-array {v11, v9, v6, v8}, [I

    .line 396
    move-result-object v22

    .line 399
    const/16 v6, 0xbd

    .line 400
    const/16 v12, 0xcd

    .line 402
    const/16 v15, 0xc0

    .line 404
    const/16 v1, 0x71

    .line 406
    filled-new-array {v15, v1, v6, v12}, [I

    .line 408
    move-result-object v23

    .line 411
    const/16 v1, 0x5f

    .line 412
    const/16 v6, 0xab

    .line 414
    filled-new-array {v11, v1, v6, v8}, [I

    .line 416
    move-result-object v24

    .line 419
    const/16 v1, 0x71

    .line 420
    const/16 v6, 0xb3

    .line 422
    const/16 v12, 0xc0

    .line 424
    filled-new-array {v12, v1, v6, v10}, [I

    .line 426
    move-result-object v25

    .line 429
    const/16 v1, 0x9d

    .line 430
    filled-new-array {v11, v9, v1, v2}, [I

    .line 432
    move-result-object v26

    .line 435
    const/16 v1, 0xa5

    .line 436
    filled-new-array {v11, v9, v1, v10}, [I

    .line 438
    move-result-object v27

    .line 441
    const/16 v1, 0x5f

    .line 442
    const/16 v6, 0xc6

    .line 444
    const/16 v12, 0xd5

    .line 446
    filled-new-array {v12, v1, v3, v6}, [I

    .line 448
    move-result-object v28

    .line 451
    const/16 v1, 0xac

    .line 452
    const/16 v6, 0xcd

    .line 454
    const/16 v12, 0xc4

    .line 456
    const/16 v15, 0x6e

    .line 458
    filled-new-array {v12, v15, v1, v6}, [I

    .line 460
    move-result-object v29

    .line 463
    const/16 v1, 0xa3

    .line 464
    filled-new-array {v11, v9, v1, v2}, [I

    .line 466
    move-result-object v30

    .line 469
    const/16 v1, 0xaa

    .line 470
    filled-new-array {v11, v9, v1, v8}, [I

    .line 472
    move-result-object v31

    .line 475
    filled-new-array/range {v22 .. v31}, [[I

    .line 476
    move-result-object v35

    .line 479
    const/16 v1, 0xd9

    .line 480
    filled-new-array {v1, v13, v3, v8}, [I

    .line 482
    move-result-object v20

    .line 485
    const/16 v6, 0xc0

    .line 486
    const/16 v11, 0x6f

    .line 488
    filled-new-array {v6, v11, v4, v8}, [I

    .line 490
    move-result-object v21

    .line 493
    filled-new-array {v1, v13, v3, v5}, [I

    .line 494
    move-result-object v22

    .line 497
    filled-new-array {v1, v13, v14, v10}, [I

    .line 498
    move-result-object v23

    .line 501
    const/16 v4, 0x95

    .line 502
    filled-new-array {v1, v13, v4, v8}, [I

    .line 504
    move-result-object v24

    .line 507
    const/16 v4, 0xa5

    .line 508
    filled-new-array {v1, v13, v4, v10}, [I

    .line 510
    move-result-object v25

    .line 513
    const/16 v4, 0x9a

    .line 514
    filled-new-array {v1, v13, v4, v8}, [I

    .line 516
    move-result-object v26

    .line 519
    const/16 v4, 0xb0

    .line 520
    filled-new-array {v1, v13, v4, v10}, [I

    .line 522
    move-result-object v27

    .line 525
    const/16 v4, 0x9e

    .line 526
    filled-new-array {v1, v13, v4, v2}, [I

    .line 528
    move-result-object v28

    .line 531
    const/16 v4, 0xd8

    .line 532
    filled-new-array {v4, v13, v7, v8}, [I

    .line 534
    move-result-object v29

    .line 537
    filled-new-array/range {v20 .. v29}, [[I

    .line 538
    move-result-object v36

    .line 541
    const/16 v4, 0xa2

    .line 542
    const/16 v5, 0xd7

    .line 544
    const/16 v6, 0x57

    .line 546
    filled-new-array {v5, v6, v4, v2}, [I

    .line 548
    move-result-object v16

    .line 551
    const/16 v11, 0xb9

    .line 552
    const/16 v12, 0xd1

    .line 554
    const/16 v13, 0xce

    .line 556
    filled-new-array {v13, v9, v11, v12}, [I

    .line 558
    move-result-object v17

    .line 561
    filled-new-array {v5, v6, v7, v10}, [I

    .line 562
    move-result-object v18

    .line 565
    const/16 v7, 0x53

    .line 566
    const/16 v9, 0xcf

    .line 568
    const/16 v11, 0xdd

    .line 570
    filled-new-array {v11, v7, v4, v9}, [I

    .line 572
    move-result-object v19

    .line 575
    const/16 v4, 0x95

    .line 576
    const/16 v7, 0xc8

    .line 578
    filled-new-array {v5, v6, v4, v7}, [I

    .line 580
    move-result-object v20

    .line 583
    const/16 v4, 0x54

    .line 584
    filled-new-array {v1, v4, v3, v10}, [I

    .line 586
    move-result-object v21

    .line 589
    const/16 v4, 0x5e

    .line 590
    const/16 v6, 0x98

    .line 592
    filled-new-array {v5, v4, v6, v2}, [I

    .line 594
    move-result-object v22

    .line 597
    const/16 v4, 0x4f

    .line 598
    const/16 v5, 0xcd

    .line 600
    filled-new-array {v1, v4, v3, v5}, [I

    .line 602
    move-result-object v23

    .line 605
    const/16 v3, 0x4f

    .line 606
    const/16 v4, 0x96

    .line 608
    filled-new-array {v1, v3, v4, v2}, [I

    .line 610
    move-result-object v24

    .line 613
    const/16 v3, 0x54

    .line 614
    const/16 v4, 0xa1

    .line 616
    filled-new-array {v1, v3, v4, v2}, [I

    .line 618
    move-result-object v25

    .line 621
    filled-new-array/range {v16 .. v25}, [[I

    .line 622
    move-result-object v37

    .line 625
    const/16 v1, 0xd2

    .line 626
    const/16 v3, 0x63

    .line 628
    filled-new-array {v1, v3, v14, v8}, [I

    .line 630
    move-result-object v16

    .line 633
    const/16 v4, 0xb4

    .line 634
    const/16 v5, 0x62

    .line 636
    filled-new-array {v4, v5, v10, v8}, [I

    .line 638
    move-result-object v17

    .line 641
    const/16 v4, 0xaa

    .line 642
    filled-new-array {v1, v3, v4, v8}, [I

    .line 644
    move-result-object v18

    .line 647
    const/16 v4, 0xab

    .line 648
    filled-new-array {v1, v3, v4, v10}, [I

    .line 650
    move-result-object v19

    .line 653
    const/16 v4, 0xb4

    .line 654
    const/16 v5, 0xb6

    .line 656
    filled-new-array {v4, v3, v5, v8}, [I

    .line 658
    move-result-object v20

    .line 661
    const/16 v4, 0xa8

    .line 662
    filled-new-array {v1, v3, v4, v10}, [I

    .line 664
    move-result-object v21

    .line 667
    const/16 v4, 0xa0

    .line 668
    filled-new-array {v1, v3, v4, v2}, [I

    .line 670
    move-result-object v22

    .line 673
    const/16 v4, 0xb2

    .line 674
    filled-new-array {v1, v3, v4, v10}, [I

    .line 676
    move-result-object v23

    .line 679
    const/16 v4, 0xa3

    .line 680
    filled-new-array {v1, v3, v4, v2}, [I

    .line 682
    move-result-object v24

    .line 685
    const/16 v2, 0xaa

    .line 686
    filled-new-array {v1, v3, v2, v8}, [I

    .line 688
    move-result-object v25

    .line 691
    filled-new-array/range {v16 .. v25}, [[I

    .line 692
    move-result-object v38

    .line 695
    filled-new-array/range {v33 .. v38}, [[[I

    .line 696
    move-result-object v1

    .line 699
    iput-object v1, v0, Lcom/miui/clock/module/FontBeiHaiBei;->mMinuteOffset:[[[I

    .line 700
    const/16 v1, 0xa

    .line 702
    new-array v2, v1, [F

    .line 704
    fill-array-data v2, :array_2

    .line 706
    iput-object v2, v0, Lcom/miui/clock/module/FontBeiHaiBei;->mSVGEmptyLeft:[F

    .line 709
    new-array v2, v1, [F

    .line 711
    fill-array-data v2, :array_3

    .line 713
    iput-object v2, v0, Lcom/miui/clock/module/FontBeiHaiBei;->mSVGEmptyRight:[F

    .line 716
    new-array v1, v1, [I

    .line 718
    fill-array-data v1, :array_4

    .line 720
    iput-object v1, v0, Lcom/miui/clock/module/FontBeiHaiBei;->mLargeClockWidth:[I

    .line 723
    return-void

    .line 725
    :array_0
    .array-data 4
        0x7f080cbd    # @drawable/font_e_0 'res/drawable/font_e_0.xml'
        0x7f080cbe    # @drawable/font_e_1 'res/drawable/font_e_1.xml'
        0x7f080cbf    # @drawable/font_e_2 'res/drawable/font_e_2.xml'
        0x7f080cc0    # @drawable/font_e_3 'res/drawable/font_e_3.xml'
        0x7f080cc1    # @drawable/font_e_4 'res/drawable/font_e_4.xml'
        0x7f080cc2    # @drawable/font_e_5 'res/drawable/font_e_5.xml'
        0x7f080cc3    # @drawable/font_e_6 'res/drawable/font_e_6.xml'
        0x7f080cc4    # @drawable/font_e_7 'res/drawable/font_e_7.xml'
        0x7f080cc5    # @drawable/font_e_8 'res/drawable/font_e_8.xml'
        0x7f080cc6    # @drawable/font_e_9 'res/drawable/font_e_9.xml'
    .end array-data

    .line 726
    :array_1
    .array-data 4
        0x3f4f5c29    # 0.81f
        0x3e6147ae    # 0.22f
        0x3e19999a    # 0.15f
        0x3e19999a    # 0.15f
        0x3e6b851f    # 0.23f
        0x3e051eb8    # 0.13f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 750
    :array_2
    .array-data 4
        0x41430c31
        0x40cf3cf4
        0x41249249
        0x412aaaab
        0x41000000    # 8.0f
        0x41618618
        0x411e79e8
        0x40430c31
        0x41430c31
        0x41249249
    .end array-data

    .line 768
    :array_3
    .array-data 4
        0x42e00000    # 112.0f
        0x42449249
        0x42d79e7a
        0x42d79e7a
        0x42f00000    # 120.0f
        0x42daaaab
        0x42d24925
        0x42bc30c3
        0x42e3cf3d
        0x42d3cf3d
    .end array-data

    .line 792
    :array_4
    .array-data 4
        0x7c
        0x40
        0x76
        0x78
        0x7d
        0x7b
        0x75
        0x62
        0x7e
        0x76
    .end array-data
    .line 816
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
    const p0, 0x7f081317    # @drawable/miui_rhombus_colon_rect_8 'res/drawable/miui_rhombus_colon_rect_8.xml'

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
    sget-object p0, Lcom/miui/clock/module/BaseFontStyle$Style;->MiCamera:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHourOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontBeiHaiBei;->mHourOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLargeClockHeight()I
    .locals 0

    .line 1
    const/16 p0, 0xa4

    .line 2
    return p0
    .line 4
.end method

.method public final getLargeClockWidth()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontBeiHaiBei;->mLargeClockWidth:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLeftEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontBeiHaiBei;->mSVGEmptyLeft:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMinuteOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontBeiHaiBei;->mMinuteOffset:[[[I

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
    const p0, 0x41b8147b    # 23.01f

    .line 2
    return p0
    .line 5
.end method

.method public final getPercentages()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontBeiHaiBei;->mPercentages:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRightEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontBeiHaiBei;->mSVGEmptyRight:[F

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
    const/4 p0, -0x1

    .line 2
    return p0
    .line 3
.end method

.method public final getSmallColon1MarginInnerTop()F
    .locals 0

    .line 1
    const p0, 0x41728f5c    # 15.16f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColon2MarginInnerTop()F
    .locals 0

    .line 1
    const p0, 0x42415c29    # 48.34f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonRealWidth()F
    .locals 0

    .line 1
    const p0, 0x412a147b    # 10.63f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResource()I
    .locals 0

    .line 1
    const p0, 0x7f080cc7    # @drawable/font_e_colon 'res/drawable/font_e_colon.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResourceHeight()I
    .locals 0

    .line 1
    const/16 p0, 0xa4

    .line 2
    return p0
    .line 4
.end method

.method public final getSmallColonResourceWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x33

    .line 2
    return p0
    .line 4
.end method

.method public final getSvgResource()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontBeiHaiBei;->mSVGResource:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextBoxWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x7f

    .line 2
    return p0
    .line 4
.end method
