.class public final Lcom/miui/clock/module/FontSalome;
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
    .locals 32

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
    iput-object v2, v0, Lcom/miui/clock/module/FontSalome;->mSVGResource:[I

    .line 14
    const/4 v2, 0x7

    .line 16
    new-array v2, v2, [F

    .line 17
    fill-array-data v2, :array_1

    .line 19
    iput-object v2, v0, Lcom/miui/clock/module/FontSalome;->mPercentages:[F

    .line 22
    const/16 v2, 0xa3

    .line 24
    const/16 v3, 0x72

    .line 26
    const/16 v4, 0xc1

    .line 28
    const/16 v5, 0xd9

    .line 30
    filled-new-array {v2, v3, v4, v5}, [I

    .line 32
    move-result-object v6

    .line 35
    const/16 v7, 0xe2

    .line 36
    const/16 v8, 0xcd

    .line 38
    filled-new-array {v2, v3, v7, v8}, [I

    .line 40
    move-result-object v7

    .line 43
    const/16 v15, 0xac

    .line 44
    const/16 v14, 0xc5

    .line 46
    const/16 v13, 0xd6

    .line 48
    filled-new-array {v15, v3, v14, v13}, [I

    .line 50
    move-result-object v8

    .line 53
    const/16 v9, 0x9a

    .line 54
    const/16 v12, 0xd4

    .line 56
    filled-new-array {v9, v3, v12, v5}, [I

    .line 58
    move-result-object v9

    .line 61
    const/16 v10, 0x6c

    .line 62
    const/16 v11, 0xce

    .line 64
    const/16 v15, 0x89

    .line 66
    filled-new-array {v15, v10, v13, v11}, [I

    .line 68
    move-result-object v10

    .line 71
    const/16 v11, 0xcd

    .line 72
    const/16 v15, 0xd3

    .line 74
    const/16 v13, 0xa1

    .line 76
    filled-new-array {v13, v3, v11, v15}, [I

    .line 78
    move-result-object v11

    .line 81
    const/16 v13, 0x9d

    .line 82
    const/16 v15, 0xce

    .line 84
    filled-new-array {v13, v3, v14, v15}, [I

    .line 86
    move-result-object v13

    .line 89
    const/16 v15, 0xa1

    .line 90
    const/16 v14, 0xda

    .line 92
    filled-new-array {v15, v3, v12, v14}, [I

    .line 94
    move-result-object v14

    .line 97
    const/16 v15, 0x9d

    .line 98
    const/16 v12, 0xd1

    .line 100
    filled-new-array {v15, v3, v12, v5}, [I

    .line 102
    move-result-object v15

    .line 105
    const/16 v12, 0xa7

    .line 106
    const/16 v1, 0xc8

    .line 108
    filled-new-array {v12, v3, v1, v5}, [I

    .line 110
    move-result-object v1

    .line 113
    const/16 v2, 0xd4

    .line 114
    move-object v12, v13

    .line 116
    const/16 v2, 0xd6

    .line 117
    move-object v13, v14

    .line 119
    move-object v14, v15

    .line 120
    move-object v15, v1

    .line 121
    filled-new-array/range {v6 .. v15}, [[I

    .line 122
    move-result-object v1

    .line 125
    const/16 v6, 0xc2

    .line 126
    filled-new-array {v6, v3, v4, v5}, [I

    .line 128
    move-result-object v7

    .line 131
    const/16 v6, 0xd5

    .line 132
    const/16 v8, 0xc3

    .line 134
    const/16 v9, 0xaf

    .line 136
    filled-new-array {v9, v3, v6, v8}, [I

    .line 138
    move-result-object v8

    .line 141
    const/16 v6, 0xc2

    .line 142
    const/16 v9, 0xc5

    .line 144
    filled-new-array {v6, v3, v9, v2}, [I

    .line 146
    move-result-object v6

    .line 149
    const/16 v10, 0xb9

    .line 150
    const/16 v11, 0xc8

    .line 152
    filled-new-array {v10, v3, v11, v9}, [I

    .line 154
    move-result-object v10

    .line 157
    const/16 v11, 0x6c

    .line 158
    const/16 v12, 0xcc

    .line 160
    const/16 v13, 0x9e

    .line 162
    filled-new-array {v13, v11, v12, v2}, [I

    .line 164
    move-result-object v11

    .line 167
    const/16 v12, 0xcd

    .line 168
    const/16 v13, 0xd3

    .line 170
    const/16 v14, 0xad

    .line 172
    filled-new-array {v14, v3, v12, v13}, [I

    .line 174
    move-result-object v12

    .line 177
    const/16 v13, 0xc2

    .line 178
    const/16 v14, 0xce

    .line 180
    filled-new-array {v13, v3, v9, v14}, [I

    .line 182
    move-result-object v13

    .line 185
    const/16 v14, 0xd0

    .line 186
    const/16 v15, 0xbc

    .line 188
    const/16 v4, 0xb5

    .line 190
    filled-new-array {v4, v3, v14, v15}, [I

    .line 192
    move-result-object v14

    .line 195
    const/16 v4, 0xb7

    .line 196
    const/16 v15, 0xd1

    .line 198
    filled-new-array {v4, v3, v15, v5}, [I

    .line 200
    move-result-object v15

    .line 203
    const/16 v4, 0xc4

    .line 204
    filled-new-array {v4, v3, v9, v5}, [I

    .line 206
    move-result-object v16

    .line 209
    move-object v9, v6

    .line 210
    filled-new-array/range {v7 .. v16}, [[I

    .line 211
    move-result-object v4

    .line 214
    const/16 v6, 0xca

    .line 215
    const/16 v7, 0xa8

    .line 217
    filled-new-array {v7, v3, v6, v5}, [I

    .line 219
    move-result-object v6

    .line 222
    const/16 v8, 0xe3

    .line 223
    const/16 v9, 0xbb

    .line 225
    const/16 v10, 0xa0

    .line 227
    filled-new-array {v10, v3, v8, v9}, [I

    .line 229
    move-result-object v8

    .line 232
    const/16 v9, 0xb3

    .line 233
    const/16 v10, 0xcc

    .line 235
    filled-new-array {v9, v3, v10, v2}, [I

    .line 237
    move-result-object v2

    .line 240
    const/16 v9, 0xd4

    .line 241
    filled-new-array {v7, v3, v9, v5}, [I

    .line 243
    move-result-object v3

    .line 246
    filled-new-array {v6, v8, v2, v3}, [[I

    .line 247
    move-result-object v2

    .line 250
    filled-new-array {v1, v4, v2}, [[[I

    .line 251
    move-result-object v1

    .line 254
    iput-object v1, v0, Lcom/miui/clock/module/FontSalome;->mHourOffset:[[[I

    .line 255
    const/16 v1, 0x52

    .line 257
    const/16 v2, 0xba

    .line 259
    const/16 v3, 0xa3

    .line 261
    const/16 v4, 0xc1

    .line 263
    filled-new-array {v4, v1, v3, v2}, [I

    .line 265
    move-result-object v8

    .line 268
    filled-new-array {v4, v1, v4, v2}, [I

    .line 269
    move-result-object v9

    .line 272
    const/16 v3, 0xc7

    .line 273
    const/16 v6, 0xa9

    .line 275
    filled-new-array {v3, v1, v6, v2}, [I

    .line 277
    move-result-object v10

    .line 280
    const/16 v6, 0xa7

    .line 281
    filled-new-array {v3, v1, v6, v2}, [I

    .line 283
    move-result-object v11

    .line 286
    const/16 v3, 0x96

    .line 287
    filled-new-array {v4, v1, v3, v2}, [I

    .line 289
    move-result-object v12

    .line 292
    const/16 v3, 0xc7

    .line 293
    const/16 v6, 0xa4

    .line 295
    filled-new-array {v3, v1, v6, v2}, [I

    .line 297
    move-result-object v13

    .line 300
    const/16 v3, 0x97

    .line 301
    filled-new-array {v4, v1, v3, v2}, [I

    .line 303
    move-result-object v14

    .line 306
    const/16 v3, 0xb4

    .line 307
    filled-new-array {v4, v1, v3, v2}, [I

    .line 309
    move-result-object v15

    .line 312
    const/16 v3, 0xad

    .line 313
    filled-new-array {v4, v1, v3, v2}, [I

    .line 315
    move-result-object v16

    .line 318
    const/16 v3, 0xae

    .line 319
    filled-new-array {v4, v1, v3, v2}, [I

    .line 321
    move-result-object v17

    .line 324
    filled-new-array/range {v8 .. v17}, [[I

    .line 325
    move-result-object v18

    .line 328
    const/16 v3, 0x9b

    .line 329
    const/16 v4, 0xe8

    .line 331
    filled-new-array {v4, v1, v3, v2}, [I

    .line 333
    move-result-object v8

    .line 336
    const/16 v3, 0xe1

    .line 337
    const/16 v15, 0x60

    .line 339
    const/16 v9, 0xa3

    .line 341
    filled-new-array {v3, v15, v9, v2}, [I

    .line 343
    move-result-object v10

    .line 346
    const/16 v9, 0xa2

    .line 347
    filled-new-array {v3, v15, v9, v2}, [I

    .line 349
    move-result-object v11

    .line 352
    const/16 v9, 0xa0

    .line 353
    filled-new-array {v3, v15, v9, v2}, [I

    .line 355
    move-result-object v12

    .line 358
    const/16 v9, 0x88

    .line 359
    filled-new-array {v3, v15, v9, v2}, [I

    .line 361
    move-result-object v3

    .line 364
    const/16 v9, 0x93

    .line 365
    filled-new-array {v4, v15, v9, v2}, [I

    .line 367
    move-result-object v13

    .line 370
    const/16 v9, 0x97

    .line 371
    filled-new-array {v4, v1, v9, v2}, [I

    .line 373
    move-result-object v14

    .line 376
    const/16 v9, 0x94

    .line 377
    const/16 v5, 0xb9

    .line 379
    const/16 v7, 0xef

    .line 381
    const/16 v1, 0x70

    .line 383
    filled-new-array {v7, v1, v9, v5}, [I

    .line 385
    move-result-object v1

    .line 388
    const/16 v5, 0x9f

    .line 389
    filled-new-array {v4, v15, v5, v2}, [I

    .line 391
    move-result-object v16

    .line 394
    filled-new-array {v4, v15, v6, v2}, [I

    .line 395
    move-result-object v17

    .line 398
    move-object v9, v10

    .line 399
    move-object v10, v11

    .line 400
    move-object v11, v12

    .line 401
    move-object v12, v3

    .line 402
    move v3, v15

    .line 403
    move-object v15, v1

    .line 404
    filled-new-array/range {v8 .. v17}, [[I

    .line 405
    move-result-object v1

    .line 408
    const/16 v4, 0x58

    .line 409
    const/16 v5, 0xa3

    .line 411
    const/16 v7, 0xd4

    .line 413
    filled-new-array {v7, v4, v5, v2}, [I

    .line 415
    move-result-object v8

    .line 418
    const/16 v9, 0xc0

    .line 419
    const/16 v10, 0xc8

    .line 421
    filled-new-array {v9, v3, v10, v2}, [I

    .line 423
    move-result-object v9

    .line 426
    const/16 v15, 0xac

    .line 427
    filled-new-array {v7, v4, v15, v2}, [I

    .line 429
    move-result-object v10

    .line 432
    const/16 v11, 0xaa

    .line 433
    filled-new-array {v7, v4, v11, v2}, [I

    .line 435
    move-result-object v11

    .line 438
    const/16 v7, 0xc0

    .line 439
    const/16 v12, 0xb7

    .line 441
    filled-new-array {v7, v3, v5, v12}, [I

    .line 443
    move-result-object v12

    .line 446
    const/16 v3, 0xd2

    .line 447
    filled-new-array {v3, v4, v6, v2}, [I

    .line 449
    move-result-object v13

    .line 452
    const/16 v5, 0x9c

    .line 453
    filled-new-array {v3, v4, v5, v2}, [I

    .line 455
    move-result-object v14

    .line 458
    const/16 v5, 0xb1

    .line 459
    filled-new-array {v3, v4, v5, v2}, [I

    .line 461
    move-result-object v5

    .line 464
    const/16 v7, 0xad

    .line 465
    filled-new-array {v3, v4, v7, v2}, [I

    .line 467
    move-result-object v16

    .line 470
    filled-new-array {v3, v4, v15, v2}, [I

    .line 471
    move-result-object v17

    .line 474
    move v3, v15

    .line 475
    move-object v15, v5

    .line 476
    filled-new-array/range {v8 .. v17}, [[I

    .line 477
    move-result-object v20

    .line 480
    const/16 v4, 0x98

    .line 481
    const/16 v5, 0xd7

    .line 483
    const/16 v7, 0x52

    .line 485
    filled-new-array {v5, v7, v4, v2}, [I

    .line 487
    move-result-object v8

    .line 490
    const/16 v4, 0x5d

    .line 491
    const/16 v9, 0xbc

    .line 493
    const/16 v10, 0xd1

    .line 495
    filled-new-array {v10, v4, v9, v2}, [I

    .line 497
    move-result-object v9

    .line 500
    const/16 v4, 0xa6

    .line 501
    filled-new-array {v5, v7, v4, v2}, [I

    .line 503
    move-result-object v10

    .line 506
    filled-new-array {v5, v7, v6, v2}, [I

    .line 507
    move-result-object v11

    .line 510
    const/16 v6, 0x8d

    .line 511
    filled-new-array {v5, v7, v6, v4}, [I

    .line 513
    move-result-object v12

    .line 516
    const/16 v6, 0xa0

    .line 517
    filled-new-array {v5, v7, v6, v2}, [I

    .line 519
    move-result-object v13

    .line 522
    const/16 v6, 0x8e

    .line 523
    const/16 v14, 0xbb

    .line 525
    const/16 v15, 0x54

    .line 527
    filled-new-array {v5, v15, v6, v14}, [I

    .line 529
    move-result-object v14

    .line 532
    const/16 v6, 0xa8

    .line 533
    filled-new-array {v5, v7, v6, v2}, [I

    .line 535
    move-result-object v16

    .line 538
    const/16 v6, 0xa2

    .line 539
    filled-new-array {v5, v7, v6, v2}, [I

    .line 541
    move-result-object v6

    .line 544
    const/16 v15, 0xa2

    .line 545
    filled-new-array {v5, v7, v15, v2}, [I

    .line 547
    move-result-object v5

    .line 550
    const/16 v7, 0x54

    .line 551
    move-object/from16 v15, v16

    .line 553
    move-object/from16 v16, v6

    .line 555
    move-object/from16 v17, v5

    .line 557
    filled-new-array/range {v8 .. v17}, [[I

    .line 559
    move-result-object v21

    .line 562
    const/16 v5, 0xdc

    .line 563
    const/16 v6, 0xa3

    .line 565
    const/16 v8, 0x52

    .line 567
    filled-new-array {v5, v8, v6, v2}, [I

    .line 569
    move-result-object v22

    .line 572
    const/16 v9, 0x56

    .line 573
    filled-new-array {v5, v9, v3, v2}, [I

    .line 575
    move-result-object v23

    .line 578
    const/16 v3, 0xa9

    .line 579
    filled-new-array {v5, v8, v3, v2}, [I

    .line 581
    move-result-object v24

    .line 584
    const/16 v3, 0xa7

    .line 585
    filled-new-array {v5, v8, v3, v2}, [I

    .line 587
    move-result-object v25

    .line 590
    const/16 v3, 0x8b

    .line 591
    const/16 v9, 0xa8

    .line 593
    filled-new-array {v5, v8, v3, v9}, [I

    .line 595
    move-result-object v26

    .line 598
    const/16 v3, 0xd8

    .line 599
    filled-new-array {v3, v8, v6, v2}, [I

    .line 601
    move-result-object v27

    .line 604
    const/16 v3, 0x9c

    .line 605
    filled-new-array {v5, v8, v3, v2}, [I

    .line 607
    move-result-object v28

    .line 610
    const/16 v3, 0xae

    .line 611
    filled-new-array {v5, v8, v3, v2}, [I

    .line 613
    move-result-object v29

    .line 616
    filled-new-array {v5, v8, v9, v2}, [I

    .line 617
    move-result-object v30

    .line 620
    const/16 v3, 0xaa

    .line 621
    filled-new-array {v5, v8, v3, v2}, [I

    .line 623
    move-result-object v31

    .line 626
    filled-new-array/range {v22 .. v31}, [[I

    .line 627
    move-result-object v22

    .line 630
    const/16 v3, 0x9e

    .line 631
    const/16 v5, 0xd4

    .line 633
    filled-new-array {v5, v7, v3, v2}, [I

    .line 635
    move-result-object v8

    .line 638
    const/16 v3, 0xb5

    .line 639
    filled-new-array {v5, v7, v3, v2}, [I

    .line 641
    move-result-object v9

    .line 644
    const/16 v3, 0xd9

    .line 645
    filled-new-array {v3, v7, v4, v2}, [I

    .line 647
    move-result-object v10

    .line 650
    const/16 v3, 0xaa

    .line 651
    filled-new-array {v5, v7, v3, v2}, [I

    .line 653
    move-result-object v11

    .line 656
    const/16 v3, 0x8f

    .line 657
    filled-new-array {v5, v7, v3, v4}, [I

    .line 659
    move-result-object v12

    .line 662
    const/16 v3, 0xa2

    .line 663
    filled-new-array {v5, v7, v3, v2}, [I

    .line 665
    move-result-object v13

    .line 668
    const/16 v3, 0x94

    .line 669
    filled-new-array {v5, v7, v3, v2}, [I

    .line 671
    move-result-object v14

    .line 674
    const/16 v3, 0xdb

    .line 675
    filled-new-array {v3, v7, v4, v2}, [I

    .line 677
    move-result-object v15

    .line 680
    const/16 v3, 0xa8

    .line 681
    filled-new-array {v5, v7, v3, v2}, [I

    .line 683
    move-result-object v16

    .line 686
    filled-new-array {v5, v7, v3, v2}, [I

    .line 687
    move-result-object v17

    .line 690
    filled-new-array/range {v8 .. v17}, [[I

    .line 691
    move-result-object v23

    .line 694
    move-object/from16 v19, v1

    .line 695
    filled-new-array/range {v18 .. v23}, [[[I

    .line 697
    move-result-object v1

    .line 700
    iput-object v1, v0, Lcom/miui/clock/module/FontSalome;->mMinuteOffset:[[[I

    .line 701
    const/16 v1, 0xa

    .line 703
    new-array v2, v1, [F

    .line 705
    fill-array-data v2, :array_2

    .line 707
    iput-object v2, v0, Lcom/miui/clock/module/FontSalome;->mSVGEmptyLeft:[F

    .line 710
    new-array v2, v1, [F

    .line 712
    fill-array-data v2, :array_3

    .line 714
    iput-object v2, v0, Lcom/miui/clock/module/FontSalome;->mSVGEmptyRight:[F

    .line 717
    new-array v1, v1, [I

    .line 719
    fill-array-data v1, :array_4

    .line 721
    iput-object v1, v0, Lcom/miui/clock/module/FontSalome;->mLargeClockWidth:[I

    .line 724
    return-void

    .line 726
    nop

    .line 727
    :array_0
    .array-data 4
        0x7f080cb2    # @drawable/font_d_0 'res/drawable/font_d_0.xml'
        0x7f080cb3    # @drawable/font_d_1 'res/drawable/font_d_1.xml'
        0x7f080cb4    # @drawable/font_d_2 'res/drawable/font_d_2.xml'
        0x7f080cb5    # @drawable/font_d_3 'res/drawable/font_d_3.xml'
        0x7f080cb6    # @drawable/font_d_4 'res/drawable/font_d_4.xml'
        0x7f080cb7    # @drawable/font_d_5 'res/drawable/font_d_5.xml'
        0x7f080cb8    # @drawable/font_d_6 'res/drawable/font_d_6.xml'
        0x7f080cb9    # @drawable/font_d_7 'res/drawable/font_d_7.xml'
        0x7f080cba    # @drawable/font_d_8 'res/drawable/font_d_8.xml'
        0x7f080cbb    # @drawable/font_d_9 'res/drawable/font_d_9.xml'
    .end array-data

    .line 728
    :array_1
    .array-data 4
        0x3f451eb8    # 0.77f
        0x3e3851ec    # 0.18f
        0x3e051eb8    # 0.13f
        0x3e051eb8    # 0.13f
        0x3e851eb8    # 0.26f
        0x3de147ae    # 0.11f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 752
    :array_2
    .array-data 4
        0x40b6db6e
        0x40861862
        0x40924925
        0x4073cf3d
        0x409e79e8
        0x409e79e8
        0x40b6db6e
        0x402aaaab
        0x4073cf3d
        0x40b6db6e
    .end array-data

    .line 770
    :array_3
    .array-data 4
        0x430f3cf4
        0x42a18618
        0x42fe79e8
        0x42faaaab
        0x42f92492
        0x42f92492
        0x43012492
        0x42faaaab
        0x43024925
        0x43012492
    .end array-data

    .line 794
    :array_4
    .array-data 4
        0x95
        0x55
        0x84
        0x81
        0x82
        0x81
        0x87
        0x80
        0x86
        0x87
    .end array-data
    .line 818
.end method


# virtual methods
.method public final getColonInterval()F
    .locals 0

    .line 1
    const/high16 p0, 0x42000000    # 32.0f

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
    sget-object p0, Lcom/miui/clock/module/BaseFontStyle$Style;->Salome:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHourOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSalome;->mHourOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLargeClockHeight()I
    .locals 0

    .line 1
    const/16 p0, 0xa0

    .line 2
    return p0
    .line 4
.end method

.method public final getLargeClockWidth()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSalome;->mLargeClockWidth:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLeftEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSalome;->mSVGEmptyLeft:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMinuteOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSalome;->mMinuteOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getNotificationColonHeight()F
    .locals 0

    .line 1
    const/high16 p0, 0x428c0000    # 70.0f

    .line 2
    return p0
    .line 4
.end method

.method public final getNotificationColonWidth()F
    .locals 0

    .line 1
    const p0, 0x41caf5c3    # 25.37f

    .line 2
    return p0
    .line 5
.end method

.method public final getPercentages()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSalome;->mPercentages:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRightEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSalome;->mSVGEmptyRight:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSmallClockInnerHeight()I
    .locals 0

    .line 1
    const/16 p0, 0x46

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
    const/high16 p0, 0x41440000    # 12.25f

    .line 2
    return p0
    .line 4
.end method

.method public final getSmallColon2MarginInnerTop()F
    .locals 0

    .line 1
    const p0, 0x421ccccd    # 39.2f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonRealWidth()F
    .locals 0

    .line 1
    const p0, 0x41967ae1    # 18.81f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResource()I
    .locals 0

    .line 1
    const p0, 0x7f080cbc    # @drawable/font_d_colon 'res/drawable/font_d_colon.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResourceHeight()I
    .locals 0

    .line 1
    const/16 p0, 0xa0

    .line 2
    return p0
    .line 4
.end method

.method public final getSmallColonResourceWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x3a

    .line 2
    return p0
    .line 4
.end method

.method public final getSvgResource()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSalome;->mSVGResource:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextBoxWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x95

    .line 2
    return p0
    .line 4
.end method
