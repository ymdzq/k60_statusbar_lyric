.class public final Lcom/miui/clock/module/FontDryBrush9;
.super Lcom/miui/clock/module/RotateFontStyle;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mHourOffset:[[[I

.field public final mHourRotateDegree:[[[F

.field public final mLargeClockHeight:[I

.field public final mLargeClockWidth:[I

.field public final mMinuteOffset:[[[I

.field public final mMinuteRotateDegree:[[[F

.field public final mNotificationCenterXOffset:[F

.field public final mPercentages:[F

.field public final mSVGEmptyLeft:[F

.field public final mSVGEmptyRight:[F

.field public final mSVGResource:[I


# direct methods
.method public constructor <init>()V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/miui/clock/module/RotateFontStyle;-><init>()V

    .line 4
    const/16 v1, 0xa

    .line 7
    new-array v2, v1, [I

    .line 9
    fill-array-data v2, :array_0

    .line 11
    iput-object v2, v0, Lcom/miui/clock/module/FontDryBrush9;->mSVGResource:[I

    .line 14
    const/4 v2, 0x7

    .line 16
    new-array v2, v2, [F

    .line 17
    fill-array-data v2, :array_1

    .line 19
    iput-object v2, v0, Lcom/miui/clock/module/FontDryBrush9;->mPercentages:[F

    .line 22
    new-array v2, v1, [F

    .line 24
    fill-array-data v2, :array_2

    .line 26
    iput-object v2, v0, Lcom/miui/clock/module/FontDryBrush9;->mNotificationCenterXOffset:[F

    .line 29
    const/16 v2, 0x9d

    .line 31
    const/16 v3, 0xa7

    .line 33
    const/16 v4, 0x73

    .line 35
    const/16 v5, 0x43

    .line 37
    filled-new-array {v4, v5, v2, v3}, [I

    .line 39
    move-result-object v6

    .line 42
    const/16 v2, 0x6f

    .line 43
    const/16 v3, 0x47

    .line 45
    const/16 v4, 0x9d

    .line 47
    const/16 v5, 0x9a

    .line 49
    filled-new-array {v2, v3, v4, v5}, [I

    .line 51
    move-result-object v7

    .line 54
    const/16 v2, 0xa2

    .line 55
    const/16 v3, 0x8a

    .line 57
    const/16 v4, 0x6f

    .line 59
    const/16 v8, 0x44

    .line 61
    filled-new-array {v4, v8, v2, v3}, [I

    .line 63
    move-result-object v8

    .line 66
    const/16 v2, 0x7d

    .line 67
    const/16 v3, 0x7b

    .line 69
    const/16 v4, 0x44

    .line 71
    const/16 v15, 0xa8

    .line 73
    filled-new-array {v3, v4, v15, v2}, [I

    .line 75
    move-result-object v9

    .line 78
    const/16 v2, 0xa4

    .line 79
    const/16 v3, 0x81

    .line 81
    const/16 v4, 0x78

    .line 83
    const/16 v10, 0x44

    .line 85
    filled-new-array {v4, v10, v2, v3}, [I

    .line 87
    move-result-object v10

    .line 90
    const/16 v2, 0xa1

    .line 91
    const/16 v3, 0x95

    .line 93
    const/16 v4, 0x7e

    .line 95
    const/16 v11, 0x4f

    .line 97
    filled-new-array {v4, v11, v2, v3}, [I

    .line 99
    move-result-object v11

    .line 102
    const/16 v2, 0x72

    .line 103
    const/16 v3, 0x43

    .line 105
    const/16 v4, 0x9f

    .line 107
    const/16 v14, 0x9b

    .line 109
    filled-new-array {v2, v3, v4, v14}, [I

    .line 111
    move-result-object v12

    .line 114
    const/16 v2, 0xba

    .line 115
    const/16 v3, 0x7a

    .line 117
    const/16 v4, 0x6e

    .line 119
    const/16 v13, 0x44

    .line 121
    filled-new-array {v4, v13, v2, v3}, [I

    .line 123
    move-result-object v13

    .line 126
    const/16 v2, 0xa9

    .line 127
    const/16 v3, 0x9e

    .line 129
    const/16 v4, 0x70

    .line 131
    const/16 v14, 0x41

    .line 133
    filled-new-array {v4, v14, v2, v3}, [I

    .line 135
    move-result-object v14

    .line 138
    const/16 v2, 0xba

    .line 139
    const/16 v3, 0x7d

    .line 141
    const/16 v4, 0x75

    .line 143
    const/16 v15, 0x41

    .line 145
    filled-new-array {v4, v15, v2, v3}, [I

    .line 147
    move-result-object v15

    .line 150
    const/16 v2, 0x9b

    .line 151
    const/16 v3, 0xa8

    .line 153
    filled-new-array/range {v6 .. v15}, [[I

    .line 155
    move-result-object v6

    .line 158
    const/16 v7, 0x9f

    .line 159
    const/16 v8, 0xa5

    .line 161
    const/16 v9, 0x83

    .line 163
    const/16 v10, 0x3b

    .line 165
    filled-new-array {v9, v10, v7, v8}, [I

    .line 167
    move-result-object v11

    .line 170
    const/16 v7, 0x3d

    .line 171
    const/16 v8, 0xb0

    .line 173
    const/16 v9, 0x93

    .line 175
    filled-new-array {v4, v7, v8, v9}, [I

    .line 177
    move-result-object v12

    .line 180
    const/16 v7, 0xa0

    .line 181
    const/16 v8, 0x8b

    .line 183
    const/16 v15, 0x7c

    .line 185
    const/16 v13, 0x3f

    .line 187
    filled-new-array {v15, v13, v7, v8}, [I

    .line 189
    move-result-object v13

    .line 192
    const/16 v7, 0x3f

    .line 193
    const/16 v8, 0x7d

    .line 195
    const/16 v14, 0x82

    .line 197
    filled-new-array {v14, v7, v3, v8}, [I

    .line 199
    move-result-object v14

    .line 202
    const/16 v7, 0xa4

    .line 203
    const/16 v8, 0x7e

    .line 205
    filled-new-array {v15, v10, v7, v8}, [I

    .line 207
    move-result-object v7

    .line 210
    const/16 v8, 0x9e

    .line 211
    const/16 v1, 0x94

    .line 213
    const/16 v4, 0x80

    .line 215
    const/16 v9, 0x38

    .line 217
    filled-new-array {v4, v9, v8, v1}, [I

    .line 219
    move-result-object v16

    .line 222
    const/16 v1, 0x99

    .line 223
    const/16 v4, 0x86

    .line 225
    const/16 v8, 0x35

    .line 227
    filled-new-array {v4, v8, v2, v1}, [I

    .line 229
    move-result-object v17

    .line 232
    const/16 v1, 0xba

    .line 233
    const/16 v4, 0x7a

    .line 235
    const/16 v9, 0x6d

    .line 237
    const/16 v2, 0x3d

    .line 239
    filled-new-array {v9, v2, v1, v4}, [I

    .line 241
    move-result-object v18

    .line 244
    const/16 v1, 0xb1

    .line 245
    const/16 v2, 0x97

    .line 247
    const/16 v4, 0x78

    .line 249
    const/16 v8, 0x37

    .line 251
    filled-new-array {v4, v8, v1, v2}, [I

    .line 253
    move-result-object v19

    .line 256
    const/16 v1, 0x79

    .line 257
    const/16 v2, 0xb2

    .line 259
    filled-new-array {v15, v10, v2, v1}, [I

    .line 261
    move-result-object v20

    .line 264
    move v1, v15

    .line 265
    move-object v15, v7

    .line 266
    filled-new-array/range {v11 .. v20}, [[I

    .line 267
    move-result-object v4

    .line 270
    const/16 v7, 0x9e

    .line 271
    const/16 v8, 0xa1

    .line 273
    const/16 v11, 0x73

    .line 275
    filled-new-array {v11, v10, v7, v8}, [I

    .line 277
    move-result-object v7

    .line 280
    const/16 v8, 0x6f

    .line 281
    const/16 v11, 0x37

    .line 283
    filled-new-array {v8, v11, v2, v5}, [I

    .line 285
    move-result-object v8

    .line 288
    const/16 v11, 0x33

    .line 289
    const/16 v12, 0x85

    .line 291
    filled-new-array {v9, v11, v3, v12}, [I

    .line 293
    move-result-object v11

    .line 296
    const/16 v12, 0x32

    .line 297
    const/16 v13, 0x7d

    .line 299
    const/16 v14, 0x79

    .line 301
    filled-new-array {v14, v12, v3, v13}, [I

    .line 303
    move-result-object v12

    .line 306
    filled-new-array {v7, v8, v11, v12}, [[I

    .line 307
    move-result-object v7

    .line 310
    filled-new-array {v6, v4, v7}, [[[I

    .line 311
    move-result-object v4

    .line 314
    iput-object v4, v0, Lcom/miui/clock/module/FontDryBrush9;->mHourOffset:[[[I

    .line 315
    const/16 v4, 0x63

    .line 317
    const/16 v6, 0x9b

    .line 319
    const/16 v7, 0x35

    .line 321
    filled-new-array {v3, v7, v4, v6}, [I

    .line 323
    move-result-object v11

    .line 326
    const/16 v4, 0xaf

    .line 327
    const/16 v6, 0x5c

    .line 329
    const/16 v8, 0x92

    .line 331
    filled-new-array {v4, v10, v6, v8}, [I

    .line 333
    move-result-object v12

    .line 336
    const/16 v4, 0xa4

    .line 337
    const/16 v6, 0x8c

    .line 339
    const/16 v13, 0x38

    .line 341
    filled-new-array {v4, v13, v9, v6}, [I

    .line 343
    move-result-object v4

    .line 346
    const/16 v6, 0x74

    .line 347
    const/16 v13, 0x8c

    .line 349
    filled-new-array {v3, v7, v6, v13}, [I

    .line 351
    move-result-object v14

    .line 354
    const/16 v6, 0x3a

    .line 355
    const/16 v7, 0x7f

    .line 357
    const/16 v13, 0xa2

    .line 359
    filled-new-array {v13, v6, v1, v7}, [I

    .line 361
    move-result-object v15

    .line 364
    const/16 v6, 0x36

    .line 365
    const/16 v7, 0x77

    .line 367
    const/16 v13, 0xa6

    .line 369
    const/16 v10, 0x93

    .line 371
    filled-new-array {v13, v6, v7, v10}, [I

    .line 373
    move-result-object v16

    .line 376
    const/16 v6, 0x67

    .line 377
    const/16 v7, 0x8d

    .line 379
    const/16 v10, 0xae

    .line 381
    const/16 v13, 0x2f

    .line 383
    filled-new-array {v10, v13, v6, v7}, [I

    .line 385
    move-result-object v17

    .line 388
    const/16 v6, 0x76

    .line 389
    const/16 v7, 0x35

    .line 391
    filled-new-array {v3, v7, v6, v8}, [I

    .line 393
    move-result-object v18

    .line 396
    const/16 v6, 0x6a

    .line 397
    const/16 v10, 0x9b

    .line 399
    filled-new-array {v3, v7, v6, v10}, [I

    .line 401
    move-result-object v19

    .line 404
    const/16 v3, 0x97

    .line 405
    const/16 v6, 0xaf

    .line 407
    const/16 v10, 0x71

    .line 409
    filled-new-array {v6, v7, v10, v3}, [I

    .line 411
    move-result-object v20

    .line 414
    move-object v13, v4

    .line 415
    filled-new-array/range {v11 .. v20}, [[I

    .line 416
    move-result-object v28

    .line 419
    const/16 v3, 0xb3

    .line 420
    const/16 v4, 0x46

    .line 422
    const/16 v6, 0x9b

    .line 424
    filled-new-array {v3, v4, v10, v6}, [I

    .line 426
    move-result-object v11

    .line 429
    const/16 v6, 0x96

    .line 430
    filled-new-array {v3, v4, v9, v6}, [I

    .line 432
    move-result-object v12

    .line 435
    const/16 v6, 0x62

    .line 436
    const/16 v7, 0x90

    .line 438
    filled-new-array {v3, v4, v6, v7}, [I

    .line 440
    move-result-object v13

    .line 443
    const/16 v6, 0x97

    .line 444
    const/16 v7, 0x75

    .line 446
    filled-new-array {v3, v4, v7, v6}, [I

    .line 448
    move-result-object v14

    .line 451
    const/16 v6, 0x70

    .line 452
    const/16 v7, 0x86

    .line 454
    filled-new-array {v3, v4, v6, v7}, [I

    .line 456
    move-result-object v15

    .line 459
    const/16 v6, 0x54

    .line 460
    const/16 v7, 0x77

    .line 462
    const/16 v2, 0xaf

    .line 464
    const/16 v1, 0x93

    .line 466
    filled-new-array {v2, v6, v7, v1}, [I

    .line 468
    move-result-object v16

    .line 471
    const/16 v1, 0x78

    .line 472
    filled-new-array {v3, v4, v1, v5}, [I

    .line 474
    move-result-object v17

    .line 477
    const/16 v1, 0x76

    .line 478
    filled-new-array {v3, v4, v1, v8}, [I

    .line 480
    move-result-object v18

    .line 483
    const/16 v1, 0x9d

    .line 484
    const/16 v2, 0x75

    .line 486
    filled-new-array {v3, v4, v2, v1}, [I

    .line 488
    move-result-object v19

    .line 491
    const/16 v1, 0xb6

    .line 492
    const/16 v2, 0x4f

    .line 494
    filled-new-array {v1, v2, v10, v5}, [I

    .line 496
    move-result-object v20

    .line 499
    filled-new-array/range {v11 .. v20}, [[I

    .line 500
    move-result-object v1

    .line 503
    const/16 v2, 0xab

    .line 504
    const/16 v4, 0x2e

    .line 506
    filled-new-array {v2, v4, v10, v5}, [I

    .line 508
    move-result-object v11

    .line 511
    const/16 v6, 0x6f

    .line 512
    const/16 v7, 0xa1

    .line 514
    filled-new-array {v2, v4, v6, v7}, [I

    .line 516
    move-result-object v12

    .line 519
    const/16 v6, 0x6a

    .line 520
    const/16 v7, 0x91

    .line 522
    filled-new-array {v2, v4, v6, v7}, [I

    .line 524
    move-result-object v13

    .line 527
    const/16 v6, 0x7b

    .line 528
    const/16 v7, 0x8c

    .line 530
    const/16 v14, 0xb1

    .line 532
    filled-new-array {v14, v4, v6, v7}, [I

    .line 534
    move-result-object v14

    .line 537
    const/16 v6, 0x78

    .line 538
    const/16 v7, 0x7f

    .line 540
    filled-new-array {v2, v4, v6, v7}, [I

    .line 542
    move-result-object v15

    .line 545
    const/16 v6, 0x76

    .line 546
    const/16 v7, 0x98

    .line 548
    const/16 v5, 0xa9

    .line 550
    const/16 v3, 0x2a

    .line 552
    filled-new-array {v5, v3, v6, v7}, [I

    .line 554
    move-result-object v16

    .line 557
    const/16 v5, 0x90

    .line 558
    const/16 v6, 0xa9

    .line 560
    filled-new-array {v6, v3, v9, v5}, [I

    .line 562
    move-result-object v17

    .line 565
    const/16 v3, 0x7c

    .line 566
    filled-new-array {v2, v4, v3, v8}, [I

    .line 568
    move-result-object v18

    .line 571
    const/16 v3, 0x98

    .line 572
    filled-new-array {v2, v4, v10, v3}, [I

    .line 574
    move-result-object v19

    .line 577
    const/16 v3, 0x79

    .line 578
    const/16 v5, 0x98

    .line 580
    filled-new-array {v2, v4, v3, v5}, [I

    .line 582
    move-result-object v20

    .line 585
    filled-new-array/range {v11 .. v20}, [[I

    .line 586
    move-result-object v2

    .line 589
    const/16 v3, 0x68

    .line 590
    const/16 v4, 0x9d

    .line 592
    const/16 v5, 0x29

    .line 594
    const/16 v6, 0xb2

    .line 596
    filled-new-array {v6, v5, v3, v4}, [I

    .line 598
    move-result-object v11

    .line 601
    const/16 v3, 0x67

    .line 602
    const/16 v4, 0x25

    .line 604
    const/16 v5, 0x93

    .line 606
    filled-new-array {v6, v4, v3, v5}, [I

    .line 608
    move-result-object v12

    .line 611
    const/16 v3, 0x64

    .line 612
    const/16 v5, 0x8f

    .line 614
    const/16 v7, 0x2b

    .line 616
    filled-new-array {v6, v7, v3, v5}, [I

    .line 618
    move-result-object v13

    .line 621
    const/16 v3, 0x29

    .line 622
    const/16 v5, 0x77

    .line 624
    filled-new-array {v6, v3, v5, v8}, [I

    .line 626
    move-result-object v14

    .line 629
    const/16 v5, 0x82

    .line 630
    const/16 v7, 0x75

    .line 632
    filled-new-array {v6, v3, v7, v5}, [I

    .line 634
    move-result-object v15

    .line 637
    const/16 v5, 0x77

    .line 638
    const/16 v7, 0x93

    .line 640
    filled-new-array {v6, v3, v5, v7}, [I

    .line 642
    move-result-object v16

    .line 645
    const/16 v3, 0x67

    .line 646
    const/16 v5, 0x9c

    .line 648
    const/16 v7, 0x23

    .line 650
    filled-new-array {v6, v7, v3, v5}, [I

    .line 652
    move-result-object v17

    .line 655
    const/16 v3, 0x29

    .line 656
    const/16 v5, 0x7c

    .line 658
    const/16 v6, 0xb3

    .line 660
    filled-new-array {v6, v3, v5, v8}, [I

    .line 662
    move-result-object v18

    .line 665
    const/16 v3, 0x6c

    .line 666
    const/16 v5, 0x9b

    .line 668
    filled-new-array {v6, v4, v3, v5}, [I

    .line 670
    move-result-object v19

    .line 673
    const/16 v3, 0x27

    .line 674
    const/16 v5, 0x7b

    .line 676
    const/16 v6, 0xb5

    .line 678
    const/16 v7, 0x9a

    .line 680
    filled-new-array {v6, v3, v5, v7}, [I

    .line 682
    move-result-object v20

    .line 685
    filled-new-array/range {v11 .. v20}, [[I

    .line 686
    move-result-object v31

    .line 689
    const/16 v3, 0x69

    .line 690
    const/16 v5, 0xa3

    .line 692
    const/16 v6, 0x9a

    .line 694
    filled-new-array {v5, v4, v3, v6}, [I

    .line 696
    move-result-object v11

    .line 699
    const/16 v3, 0x63

    .line 700
    filled-new-array {v5, v4, v3, v8}, [I

    .line 702
    move-result-object v12

    .line 705
    const/16 v3, 0x61

    .line 706
    const/16 v6, 0x8d

    .line 708
    const/16 v7, 0xa4

    .line 710
    const/16 v13, 0x1e

    .line 712
    filled-new-array {v7, v13, v3, v6}, [I

    .line 714
    move-result-object v13

    .line 717
    const/16 v3, 0x8f

    .line 718
    filled-new-array {v5, v4, v10, v3}, [I

    .line 720
    move-result-object v14

    .line 723
    const/16 v3, 0x6c

    .line 724
    const/16 v6, 0x83

    .line 726
    filled-new-array {v5, v4, v3, v6}, [I

    .line 728
    move-result-object v15

    .line 731
    const/16 v3, 0x77

    .line 732
    const/16 v6, 0x93

    .line 734
    filled-new-array {v5, v4, v3, v6}, [I

    .line 736
    move-result-object v16

    .line 739
    const/16 v3, 0x6a

    .line 740
    const/16 v6, 0x96

    .line 742
    filled-new-array {v5, v4, v3, v6}, [I

    .line 744
    move-result-object v17

    .line 747
    const/16 v3, 0x77

    .line 748
    filled-new-array {v5, v4, v3, v8}, [I

    .line 750
    move-result-object v18

    .line 753
    const/16 v3, 0x6c

    .line 754
    const/16 v6, 0x9b

    .line 756
    filled-new-array {v5, v4, v3, v6}, [I

    .line 758
    move-result-object v19

    .line 761
    const/16 v3, 0xa1

    .line 762
    const/16 v4, 0x20

    .line 764
    const/16 v5, 0x9a

    .line 766
    const/16 v6, 0x75

    .line 768
    filled-new-array {v3, v4, v6, v5}, [I

    .line 770
    move-result-object v20

    .line 773
    filled-new-array/range {v11 .. v20}, [[I

    .line 774
    move-result-object v32

    .line 777
    const/16 v3, 0x88

    .line 778
    const/16 v4, 0x9b

    .line 780
    const/16 v5, 0x38

    .line 782
    filled-new-array {v3, v5, v9, v4}, [I

    .line 784
    move-result-object v11

    .line 787
    const/16 v4, 0x62

    .line 788
    filled-new-array {v3, v5, v4, v8}, [I

    .line 790
    move-result-object v12

    .line 793
    const/16 v3, 0x5d

    .line 794
    const/16 v4, 0x8b

    .line 796
    const/16 v6, 0x82

    .line 798
    const/16 v7, 0x3b

    .line 800
    filled-new-array {v6, v7, v3, v4}, [I

    .line 802
    move-result-object v13

    .line 805
    const/16 v3, 0x69

    .line 806
    const/16 v4, 0x91

    .line 808
    const/16 v6, 0x88

    .line 810
    filled-new-array {v6, v5, v3, v4}, [I

    .line 812
    move-result-object v14

    .line 815
    const/16 v3, 0x61

    .line 816
    const/16 v4, 0x78

    .line 818
    const/16 v6, 0x84

    .line 820
    filled-new-array {v6, v5, v3, v4}, [I

    .line 822
    move-result-object v15

    .line 825
    const/16 v3, 0x3d

    .line 826
    const/16 v4, 0x7d

    .line 828
    const/16 v6, 0x87

    .line 830
    const/16 v7, 0x93

    .line 832
    filled-new-array {v6, v3, v4, v7}, [I

    .line 834
    move-result-object v16

    .line 837
    const/16 v3, 0x6a

    .line 838
    const/16 v4, 0x9f

    .line 840
    const/16 v6, 0x88

    .line 842
    filled-new-array {v6, v5, v3, v4}, [I

    .line 844
    move-result-object v17

    .line 847
    const/16 v3, 0x36

    .line 848
    const/16 v4, 0x98

    .line 850
    const/16 v6, 0x81

    .line 852
    filled-new-array {v6, v3, v10, v4}, [I

    .line 854
    move-result-object v18

    .line 857
    const/16 v3, 0x88

    .line 858
    const/16 v4, 0x6c

    .line 860
    const/16 v6, 0x9b

    .line 862
    filled-new-array {v3, v5, v4, v6}, [I

    .line 864
    move-result-object v19

    .line 867
    const/16 v4, 0x6a

    .line 868
    const/16 v6, 0x9a

    .line 870
    filled-new-array {v3, v5, v4, v6}, [I

    .line 872
    move-result-object v20

    .line 875
    filled-new-array/range {v11 .. v20}, [[I

    .line 876
    move-result-object v33

    .line 879
    move-object/from16 v29, v1

    .line 880
    move-object/from16 v30, v2

    .line 882
    filled-new-array/range {v28 .. v33}, [[[I

    .line 884
    move-result-object v1

    .line 887
    iput-object v1, v0, Lcom/miui/clock/module/FontDryBrush9;->mMinuteOffset:[[[I

    .line 888
    const/16 v1, 0xa

    .line 890
    new-array v2, v1, [F

    .line 892
    fill-array-data v2, :array_3

    .line 894
    iput-object v2, v0, Lcom/miui/clock/module/FontDryBrush9;->mSVGEmptyLeft:[F

    .line 897
    new-array v2, v1, [F

    .line 899
    fill-array-data v2, :array_4

    .line 901
    iput-object v2, v0, Lcom/miui/clock/module/FontDryBrush9;->mSVGEmptyRight:[F

    .line 904
    new-array v2, v1, [I

    .line 906
    fill-array-data v2, :array_5

    .line 908
    iput-object v2, v0, Lcom/miui/clock/module/FontDryBrush9;->mLargeClockWidth:[I

    .line 911
    new-array v1, v1, [I

    .line 913
    fill-array-data v1, :array_6

    .line 915
    iput-object v1, v0, Lcom/miui/clock/module/FontDryBrush9;->mLargeClockHeight:[I

    .line 918
    const/4 v1, 0x2

    .line 920
    new-array v2, v1, [F

    .line 921
    fill-array-data v2, :array_7

    .line 923
    new-array v3, v1, [F

    .line 926
    fill-array-data v3, :array_8

    .line 928
    new-array v4, v1, [F

    .line 931
    fill-array-data v4, :array_9

    .line 933
    new-array v5, v1, [F

    .line 936
    fill-array-data v5, :array_a

    .line 938
    new-array v6, v1, [F

    .line 941
    fill-array-data v6, :array_b

    .line 943
    new-array v7, v1, [F

    .line 946
    fill-array-data v7, :array_c

    .line 948
    new-array v8, v1, [F

    .line 951
    fill-array-data v8, :array_d

    .line 953
    new-array v9, v1, [F

    .line 956
    fill-array-data v9, :array_e

    .line 958
    new-array v10, v1, [F

    .line 961
    fill-array-data v10, :array_f

    .line 963
    new-array v11, v1, [F

    .line 966
    fill-array-data v11, :array_10

    .line 968
    filled-new-array/range {v2 .. v11}, [[F

    .line 971
    move-result-object v2

    .line 974
    new-array v3, v1, [F

    .line 975
    fill-array-data v3, :array_11

    .line 977
    new-array v4, v1, [F

    .line 980
    fill-array-data v4, :array_12

    .line 982
    new-array v5, v1, [F

    .line 985
    fill-array-data v5, :array_13

    .line 987
    new-array v6, v1, [F

    .line 990
    fill-array-data v6, :array_14

    .line 992
    new-array v7, v1, [F

    .line 995
    fill-array-data v7, :array_15

    .line 997
    new-array v8, v1, [F

    .line 1000
    fill-array-data v8, :array_16

    .line 1002
    new-array v9, v1, [F

    .line 1005
    fill-array-data v9, :array_17

    .line 1007
    new-array v10, v1, [F

    .line 1010
    fill-array-data v10, :array_18

    .line 1012
    new-array v11, v1, [F

    .line 1015
    fill-array-data v11, :array_19

    .line 1017
    new-array v12, v1, [F

    .line 1020
    fill-array-data v12, :array_1a

    .line 1022
    filled-new-array/range {v3 .. v12}, [[F

    .line 1025
    move-result-object v3

    .line 1028
    new-array v4, v1, [F

    .line 1029
    fill-array-data v4, :array_1b

    .line 1031
    new-array v5, v1, [F

    .line 1034
    fill-array-data v5, :array_1c

    .line 1036
    new-array v6, v1, [F

    .line 1039
    fill-array-data v6, :array_1d

    .line 1041
    new-array v7, v1, [F

    .line 1044
    fill-array-data v7, :array_1e

    .line 1046
    filled-new-array {v4, v5, v6, v7}, [[F

    .line 1049
    move-result-object v4

    .line 1052
    filled-new-array {v2, v3, v4}, [[[F

    .line 1053
    move-result-object v2

    .line 1056
    iput-object v2, v0, Lcom/miui/clock/module/FontDryBrush9;->mHourRotateDegree:[[[F

    .line 1057
    new-array v3, v1, [F

    .line 1059
    fill-array-data v3, :array_1f

    .line 1061
    new-array v4, v1, [F

    .line 1064
    fill-array-data v4, :array_20

    .line 1066
    new-array v5, v1, [F

    .line 1069
    fill-array-data v5, :array_21

    .line 1071
    new-array v6, v1, [F

    .line 1074
    fill-array-data v6, :array_22

    .line 1076
    new-array v7, v1, [F

    .line 1079
    fill-array-data v7, :array_23

    .line 1081
    new-array v8, v1, [F

    .line 1084
    fill-array-data v8, :array_24

    .line 1086
    new-array v9, v1, [F

    .line 1089
    fill-array-data v9, :array_25

    .line 1091
    new-array v10, v1, [F

    .line 1094
    fill-array-data v10, :array_26

    .line 1096
    new-array v11, v1, [F

    .line 1099
    fill-array-data v11, :array_27

    .line 1101
    new-array v12, v1, [F

    .line 1104
    fill-array-data v12, :array_28

    .line 1106
    filled-new-array/range {v3 .. v12}, [[F

    .line 1109
    move-result-object v13

    .line 1112
    new-array v2, v1, [F

    .line 1113
    fill-array-data v2, :array_29

    .line 1115
    new-array v3, v1, [F

    .line 1118
    fill-array-data v3, :array_2a

    .line 1120
    new-array v4, v1, [F

    .line 1123
    fill-array-data v4, :array_2b

    .line 1125
    new-array v5, v1, [F

    .line 1128
    fill-array-data v5, :array_2c

    .line 1130
    new-array v6, v1, [F

    .line 1133
    fill-array-data v6, :array_2d

    .line 1135
    new-array v7, v1, [F

    .line 1138
    fill-array-data v7, :array_2e

    .line 1140
    new-array v8, v1, [F

    .line 1143
    fill-array-data v8, :array_2f

    .line 1145
    new-array v9, v1, [F

    .line 1148
    fill-array-data v9, :array_30

    .line 1150
    new-array v10, v1, [F

    .line 1153
    fill-array-data v10, :array_31

    .line 1155
    new-array v11, v1, [F

    .line 1158
    fill-array-data v11, :array_32

    .line 1160
    filled-new-array/range {v2 .. v11}, [[F

    .line 1163
    move-result-object v14

    .line 1166
    new-array v2, v1, [F

    .line 1167
    fill-array-data v2, :array_33

    .line 1169
    new-array v3, v1, [F

    .line 1172
    fill-array-data v3, :array_34

    .line 1174
    new-array v4, v1, [F

    .line 1177
    fill-array-data v4, :array_35

    .line 1179
    new-array v5, v1, [F

    .line 1182
    fill-array-data v5, :array_36

    .line 1184
    new-array v6, v1, [F

    .line 1187
    fill-array-data v6, :array_37

    .line 1189
    new-array v7, v1, [F

    .line 1192
    fill-array-data v7, :array_38

    .line 1194
    new-array v8, v1, [F

    .line 1197
    fill-array-data v8, :array_39

    .line 1199
    new-array v9, v1, [F

    .line 1202
    fill-array-data v9, :array_3a

    .line 1204
    new-array v10, v1, [F

    .line 1207
    fill-array-data v10, :array_3b

    .line 1209
    new-array v11, v1, [F

    .line 1212
    fill-array-data v11, :array_3c

    .line 1214
    filled-new-array/range {v2 .. v11}, [[F

    .line 1217
    move-result-object v15

    .line 1220
    new-array v2, v1, [F

    .line 1221
    fill-array-data v2, :array_3d

    .line 1223
    new-array v3, v1, [F

    .line 1226
    fill-array-data v3, :array_3e

    .line 1228
    new-array v4, v1, [F

    .line 1231
    fill-array-data v4, :array_3f

    .line 1233
    new-array v5, v1, [F

    .line 1236
    fill-array-data v5, :array_40

    .line 1238
    new-array v6, v1, [F

    .line 1241
    fill-array-data v6, :array_41

    .line 1243
    new-array v7, v1, [F

    .line 1246
    fill-array-data v7, :array_42

    .line 1248
    new-array v8, v1, [F

    .line 1251
    fill-array-data v8, :array_43

    .line 1253
    new-array v9, v1, [F

    .line 1256
    fill-array-data v9, :array_44

    .line 1258
    new-array v10, v1, [F

    .line 1261
    fill-array-data v10, :array_45

    .line 1263
    new-array v11, v1, [F

    .line 1266
    fill-array-data v11, :array_46

    .line 1268
    filled-new-array/range {v2 .. v11}, [[F

    .line 1271
    move-result-object v16

    .line 1274
    new-array v2, v1, [F

    .line 1275
    fill-array-data v2, :array_47

    .line 1277
    new-array v3, v1, [F

    .line 1280
    fill-array-data v3, :array_48

    .line 1282
    new-array v4, v1, [F

    .line 1285
    fill-array-data v4, :array_49

    .line 1287
    new-array v5, v1, [F

    .line 1290
    fill-array-data v5, :array_4a

    .line 1292
    new-array v6, v1, [F

    .line 1295
    fill-array-data v6, :array_4b

    .line 1297
    new-array v7, v1, [F

    .line 1300
    fill-array-data v7, :array_4c

    .line 1302
    new-array v8, v1, [F

    .line 1305
    fill-array-data v8, :array_4d

    .line 1307
    new-array v9, v1, [F

    .line 1310
    fill-array-data v9, :array_4e

    .line 1312
    new-array v10, v1, [F

    .line 1315
    fill-array-data v10, :array_4f

    .line 1317
    new-array v11, v1, [F

    .line 1320
    fill-array-data v11, :array_50

    .line 1322
    filled-new-array/range {v2 .. v11}, [[F

    .line 1325
    move-result-object v17

    .line 1328
    new-array v2, v1, [F

    .line 1329
    fill-array-data v2, :array_51

    .line 1331
    new-array v3, v1, [F

    .line 1334
    fill-array-data v3, :array_52

    .line 1336
    new-array v4, v1, [F

    .line 1339
    fill-array-data v4, :array_53

    .line 1341
    new-array v5, v1, [F

    .line 1344
    fill-array-data v5, :array_54

    .line 1346
    new-array v6, v1, [F

    .line 1349
    fill-array-data v6, :array_55

    .line 1351
    new-array v7, v1, [F

    .line 1354
    fill-array-data v7, :array_56

    .line 1356
    new-array v8, v1, [F

    .line 1359
    fill-array-data v8, :array_57

    .line 1361
    new-array v9, v1, [F

    .line 1364
    fill-array-data v9, :array_58

    .line 1366
    new-array v10, v1, [F

    .line 1369
    fill-array-data v10, :array_59

    .line 1371
    new-array v11, v1, [F

    .line 1374
    fill-array-data v11, :array_5a

    .line 1376
    filled-new-array/range {v2 .. v11}, [[F

    .line 1379
    move-result-object v18

    .line 1382
    filled-new-array/range {v13 .. v18}, [[[F

    .line 1383
    move-result-object v1

    .line 1386
    iput-object v1, v0, Lcom/miui/clock/module/FontDryBrush9;->mMinuteRotateDegree:[[[F

    .line 1387
    const/16 v1, 0x135

    .line 1389
    const/16 v2, 0x150

    .line 1391
    filled-new-array {v1, v2}, [I

    .line 1393
    move-result-object v3

    .line 1396
    const/16 v1, 0x139

    .line 1397
    const/16 v2, 0x15f

    .line 1399
    filled-new-array {v1, v2}, [I

    .line 1401
    move-result-object v4

    .line 1404
    const/16 v1, 0x13c

    .line 1405
    const/16 v2, 0x16d

    .line 1407
    filled-new-array {v1, v2}, [I

    .line 1409
    move-result-object v5

    .line 1412
    const/16 v1, 0x13f

    .line 1413
    const/16 v2, 0x17b

    .line 1415
    filled-new-array {v1, v2}, [I

    .line 1417
    move-result-object v6

    .line 1420
    const/16 v1, 0x142

    .line 1421
    const/16 v2, 0x189

    .line 1423
    filled-new-array {v1, v2}, [I

    .line 1425
    move-result-object v7

    .line 1428
    const/16 v1, 0x145

    .line 1429
    const/16 v2, 0x197

    .line 1431
    filled-new-array {v1, v2}, [I

    .line 1433
    move-result-object v8

    .line 1436
    const/16 v1, 0x148

    .line 1437
    const/16 v2, 0x1a5

    .line 1439
    filled-new-array {v1, v2}, [I

    .line 1441
    move-result-object v9

    .line 1444
    const/16 v1, 0x14a

    .line 1445
    const/16 v2, 0x1b2

    .line 1447
    filled-new-array {v1, v2}, [I

    .line 1449
    move-result-object v10

    .line 1452
    const/16 v1, 0x14d

    .line 1453
    const/16 v2, 0x1c0

    .line 1455
    filled-new-array {v1, v2}, [I

    .line 1457
    move-result-object v11

    .line 1460
    const/16 v1, 0x151

    .line 1461
    const/16 v2, 0x1ce

    .line 1463
    filled-new-array {v1, v2}, [I

    .line 1465
    move-result-object v12

    .line 1468
    const/16 v1, 0x154

    .line 1469
    const/16 v2, 0x1dc

    .line 1471
    filled-new-array {v1, v2}, [I

    .line 1473
    move-result-object v13

    .line 1476
    const/16 v1, 0x157

    .line 1477
    const/16 v2, 0x1ea

    .line 1479
    filled-new-array {v1, v2}, [I

    .line 1481
    move-result-object v14

    .line 1484
    const/16 v1, 0x15a

    .line 1485
    const/16 v2, 0x1f8

    .line 1487
    filled-new-array {v1, v2}, [I

    .line 1489
    move-result-object v15

    .line 1492
    const/16 v1, 0x15d

    .line 1493
    const/16 v2, 0x205

    .line 1495
    filled-new-array {v1, v2}, [I

    .line 1497
    move-result-object v16

    .line 1500
    const/16 v1, 0x160

    .line 1501
    const/16 v2, 0x212

    .line 1503
    filled-new-array {v1, v2}, [I

    .line 1505
    move-result-object v17

    .line 1508
    const/16 v1, 0x164

    .line 1509
    const/16 v2, 0x220

    .line 1511
    filled-new-array {v1, v2}, [I

    .line 1513
    move-result-object v18

    .line 1516
    const/16 v1, 0x166

    .line 1517
    const/16 v2, 0x22d

    .line 1519
    filled-new-array {v1, v2}, [I

    .line 1521
    move-result-object v19

    .line 1524
    const/16 v1, 0x168

    .line 1525
    const/16 v2, 0x239

    .line 1527
    filled-new-array {v1, v2}, [I

    .line 1529
    move-result-object v20

    .line 1532
    const/16 v1, 0x16b

    .line 1533
    const/16 v2, 0x246

    .line 1535
    filled-new-array {v1, v2}, [I

    .line 1537
    move-result-object v21

    .line 1540
    filled-new-array/range {v3 .. v21}, [[I

    .line 1541
    move-result-object v22

    .line 1544
    const/16 v1, 0xfc

    .line 1545
    const/16 v2, 0x114

    .line 1547
    filled-new-array {v1, v2}, [I

    .line 1549
    move-result-object v3

    .line 1552
    const/16 v1, 0x104

    .line 1553
    const/16 v2, 0x123

    .line 1555
    filled-new-array {v1, v2}, [I

    .line 1557
    move-result-object v4

    .line 1560
    const/16 v1, 0x10b

    .line 1561
    const/16 v2, 0x132

    .line 1563
    filled-new-array {v1, v2}, [I

    .line 1565
    move-result-object v5

    .line 1568
    const/16 v1, 0x111

    .line 1569
    const/16 v2, 0x140

    .line 1571
    filled-new-array {v1, v2}, [I

    .line 1573
    move-result-object v6

    .line 1576
    const/16 v1, 0x117

    .line 1577
    const/16 v2, 0x14e

    .line 1579
    filled-new-array {v1, v2}, [I

    .line 1581
    move-result-object v7

    .line 1584
    const/16 v1, 0x11d

    .line 1585
    const/16 v2, 0x15c

    .line 1587
    filled-new-array {v1, v2}, [I

    .line 1589
    move-result-object v8

    .line 1592
    const/16 v1, 0x124

    .line 1593
    const/16 v2, 0x16b

    .line 1595
    filled-new-array {v1, v2}, [I

    .line 1597
    move-result-object v9

    .line 1600
    const/16 v1, 0x12b

    .line 1601
    const/16 v2, 0x179

    .line 1603
    filled-new-array {v1, v2}, [I

    .line 1605
    move-result-object v10

    .line 1608
    const/16 v1, 0x130

    .line 1609
    const/16 v2, 0x186

    .line 1611
    filled-new-array {v1, v2}, [I

    .line 1613
    move-result-object v11

    .line 1616
    filled-new-array/range {v3 .. v11}, [[I

    .line 1617
    move-result-object v23

    .line 1620
    const/16 v1, 0x156

    .line 1621
    const/16 v2, 0x16b

    .line 1623
    filled-new-array {v1, v2}, [I

    .line 1625
    move-result-object v3

    .line 1628
    const/16 v1, 0x158

    .line 1629
    const/16 v2, 0x175

    .line 1631
    filled-new-array {v1, v2}, [I

    .line 1633
    move-result-object v4

    .line 1636
    const/16 v1, 0x159

    .line 1637
    const/16 v2, 0x17f

    .line 1639
    filled-new-array {v1, v2}, [I

    .line 1641
    move-result-object v5

    .line 1644
    const/16 v2, 0x188

    .line 1645
    filled-new-array {v1, v2}, [I

    .line 1647
    move-result-object v6

    .line 1650
    const/16 v1, 0x15a

    .line 1651
    const/16 v2, 0x191

    .line 1653
    filled-new-array {v1, v2}, [I

    .line 1655
    move-result-object v7

    .line 1658
    const/16 v2, 0x19a

    .line 1659
    filled-new-array {v1, v2}, [I

    .line 1661
    move-result-object v8

    .line 1664
    const/16 v2, 0x1a3

    .line 1665
    filled-new-array {v1, v2}, [I

    .line 1667
    move-result-object v9

    .line 1670
    const/16 v1, 0x15b

    .line 1671
    const/16 v2, 0x1ac

    .line 1673
    filled-new-array {v1, v2}, [I

    .line 1675
    move-result-object v10

    .line 1678
    const/16 v2, 0x1b5

    .line 1679
    filled-new-array {v1, v2}, [I

    .line 1681
    move-result-object v11

    .line 1684
    const/16 v1, 0x15c

    .line 1685
    const/16 v2, 0x1be

    .line 1687
    filled-new-array {v1, v2}, [I

    .line 1689
    move-result-object v12

    .line 1692
    const/16 v1, 0x15b

    .line 1693
    const/16 v2, 0x1c6

    .line 1695
    filled-new-array {v1, v2}, [I

    .line 1697
    move-result-object v13

    .line 1700
    filled-new-array/range {v3 .. v13}, [[I

    .line 1701
    move-result-object v24

    .line 1704
    const/16 v1, 0x11e

    .line 1705
    const/16 v2, 0x11f

    .line 1707
    filled-new-array {v1, v2}, [I

    .line 1709
    move-result-object v3

    .line 1712
    const/16 v1, 0x122

    .line 1713
    const/16 v2, 0x129

    .line 1715
    filled-new-array {v1, v2}, [I

    .line 1717
    move-result-object v4

    .line 1720
    const/16 v1, 0x125

    .line 1721
    const/16 v2, 0x133

    .line 1723
    filled-new-array {v1, v2}, [I

    .line 1725
    move-result-object v5

    .line 1728
    const/16 v1, 0x127

    .line 1729
    const/16 v2, 0x13c

    .line 1731
    filled-new-array {v1, v2}, [I

    .line 1733
    move-result-object v6

    .line 1736
    const/16 v1, 0x12a

    .line 1737
    const/16 v2, 0x146

    .line 1739
    filled-new-array {v1, v2}, [I

    .line 1741
    move-result-object v7

    .line 1744
    const/16 v1, 0x12c

    .line 1745
    const/16 v2, 0x14f

    .line 1747
    filled-new-array {v1, v2}, [I

    .line 1749
    move-result-object v8

    .line 1752
    const/16 v1, 0x132

    .line 1753
    const/16 v2, 0x15b

    .line 1755
    filled-new-array {v1, v2}, [I

    .line 1757
    move-result-object v9

    .line 1760
    const/16 v1, 0x136

    .line 1761
    const/16 v2, 0x166

    .line 1763
    filled-new-array {v1, v2}, [I

    .line 1765
    move-result-object v10

    .line 1768
    const/16 v1, 0x13b

    .line 1769
    const/16 v2, 0x172

    .line 1771
    filled-new-array {v1, v2}, [I

    .line 1773
    move-result-object v11

    .line 1776
    const/16 v1, 0x13f

    .line 1777
    const/16 v2, 0x17d

    .line 1779
    filled-new-array {v1, v2}, [I

    .line 1781
    move-result-object v12

    .line 1784
    filled-new-array/range {v3 .. v12}, [[I

    .line 1785
    move-result-object v25

    .line 1788
    const/16 v1, 0xdf

    .line 1789
    const/16 v2, 0x125

    .line 1791
    filled-new-array {v1, v2}, [I

    .line 1793
    move-result-object v1

    .line 1796
    const/16 v2, 0x132

    .line 1797
    const/16 v3, 0xe0

    .line 1799
    filled-new-array {v3, v2}, [I

    .line 1801
    move-result-object v2

    .line 1804
    const/16 v4, 0x13e

    .line 1805
    filled-new-array {v3, v4}, [I

    .line 1807
    move-result-object v4

    .line 1810
    const/16 v5, 0x14a

    .line 1811
    filled-new-array {v3, v5}, [I

    .line 1813
    move-result-object v5

    .line 1816
    const/16 v6, 0xdf

    .line 1817
    const/16 v7, 0x156

    .line 1819
    filled-new-array {v6, v7}, [I

    .line 1821
    move-result-object v6

    .line 1824
    filled-new-array {v1, v2, v4, v5, v6}, [[I

    .line 1825
    move-result-object v26

    .line 1828
    const/16 v27, 0x0

    .line 1829
    const/16 v28, 0x0

    .line 1831
    const/16 v29, 0x0

    .line 1833
    const/16 v30, 0x0

    .line 1835
    const/16 v1, 0x123

    .line 1837
    const/16 v2, 0x13b

    .line 1839
    filled-new-array {v1, v2}, [I

    .line 1841
    move-result-object v1

    .line 1844
    const/16 v2, 0x125

    .line 1845
    const/16 v4, 0x14b

    .line 1847
    filled-new-array {v2, v4}, [I

    .line 1849
    move-result-object v2

    .line 1852
    const/16 v4, 0x126

    .line 1853
    const/16 v5, 0x15b

    .line 1855
    filled-new-array {v4, v5}, [I

    .line 1857
    move-result-object v4

    .line 1860
    const/16 v5, 0x127

    .line 1861
    const/16 v6, 0x16b

    .line 1863
    filled-new-array {v5, v6}, [I

    .line 1865
    move-result-object v5

    .line 1868
    filled-new-array {v1, v2, v4, v5}, [[I

    .line 1869
    move-result-object v31

    .line 1872
    filled-new-array/range {v22 .. v31}, [[[I

    .line 1873
    move-result-object v1

    .line 1876
    iput-object v1, v0, Lcom/miui/clock/module/RotateFontStyle;->rotatePlus:[[[I

    .line 1877
    const/16 v1, 0x135

    .line 1879
    const/16 v2, 0x150

    .line 1881
    filled-new-array {v1, v2}, [I

    .line 1883
    move-result-object v4

    .line 1886
    const/16 v1, 0x134

    .line 1887
    const/16 v2, 0x159

    .line 1889
    filled-new-array {v1, v2}, [I

    .line 1891
    move-result-object v5

    .line 1894
    const/16 v1, 0x132

    .line 1895
    const/16 v2, 0x161

    .line 1897
    filled-new-array {v1, v2}, [I

    .line 1899
    move-result-object v6

    .line 1902
    const/16 v1, 0x12f

    .line 1903
    const/16 v2, 0x169

    .line 1905
    filled-new-array {v1, v2}, [I

    .line 1907
    move-result-object v7

    .line 1910
    const/16 v1, 0x12d

    .line 1911
    const/16 v2, 0x171

    .line 1913
    filled-new-array {v1, v2}, [I

    .line 1915
    move-result-object v8

    .line 1918
    const/16 v1, 0x12b

    .line 1919
    const/16 v2, 0x179

    .line 1921
    filled-new-array {v1, v2}, [I

    .line 1923
    move-result-object v9

    .line 1926
    const/16 v1, 0x129

    .line 1927
    const/16 v2, 0x181

    .line 1929
    filled-new-array {v1, v2}, [I

    .line 1931
    move-result-object v10

    .line 1934
    const/16 v1, 0x125

    .line 1935
    const/16 v2, 0x188

    .line 1937
    filled-new-array {v1, v2}, [I

    .line 1939
    move-result-object v11

    .line 1942
    filled-new-array/range {v4 .. v11}, [[I

    .line 1943
    move-result-object v12

    .line 1946
    const/16 v1, 0xfc

    .line 1947
    const/16 v2, 0x114

    .line 1949
    filled-new-array {v1, v2}, [I

    .line 1951
    move-result-object v13

    .line 1954
    const/16 v1, 0xf6

    .line 1955
    const/16 v2, 0x119

    .line 1957
    filled-new-array {v1, v2}, [I

    .line 1959
    move-result-object v14

    .line 1962
    const/16 v1, 0xf0

    .line 1963
    const/16 v2, 0x11e

    .line 1965
    filled-new-array {v1, v2}, [I

    .line 1967
    move-result-object v15

    .line 1970
    const/16 v1, 0xea

    .line 1971
    const/16 v2, 0x123

    .line 1973
    filled-new-array {v1, v2}, [I

    .line 1975
    move-result-object v16

    .line 1978
    const/16 v1, 0xe9

    .line 1979
    const/16 v2, 0x12b

    .line 1981
    filled-new-array {v1, v2}, [I

    .line 1983
    move-result-object v17

    .line 1986
    const/16 v1, 0xec

    .line 1987
    const/16 v2, 0x136

    .line 1989
    filled-new-array {v1, v2}, [I

    .line 1991
    move-result-object v18

    .line 1994
    const/16 v1, 0xee

    .line 1995
    const/16 v2, 0x141

    .line 1997
    filled-new-array {v1, v2}, [I

    .line 1999
    move-result-object v19

    .line 2002
    const/16 v1, 0xef

    .line 2003
    const/16 v2, 0x14b

    .line 2005
    filled-new-array {v1, v2}, [I

    .line 2007
    move-result-object v20

    .line 2010
    const/16 v1, 0xf2

    .line 2011
    const/16 v2, 0x156

    .line 2013
    filled-new-array {v1, v2}, [I

    .line 2015
    move-result-object v21

    .line 2018
    const/16 v1, 0xf3

    .line 2019
    const/16 v2, 0x160

    .line 2021
    filled-new-array {v1, v2}, [I

    .line 2023
    move-result-object v22

    .line 2026
    const/16 v1, 0xf6

    .line 2027
    const/16 v2, 0x16b

    .line 2029
    filled-new-array {v1, v2}, [I

    .line 2031
    move-result-object v23

    .line 2034
    filled-new-array/range {v13 .. v23}, [[I

    .line 2035
    move-result-object v13

    .line 2038
    const/16 v1, 0x156

    .line 2039
    filled-new-array {v1, v2}, [I

    .line 2041
    move-result-object v1

    .line 2044
    const/16 v2, 0x156

    .line 2045
    const/16 v4, 0x177

    .line 2047
    filled-new-array {v2, v4}, [I

    .line 2049
    move-result-object v2

    .line 2052
    const/16 v4, 0x155

    .line 2053
    const/16 v5, 0x183

    .line 2055
    filled-new-array {v4, v5}, [I

    .line 2057
    move-result-object v4

    .line 2060
    const/16 v5, 0x154

    .line 2061
    const/16 v6, 0x18e

    .line 2063
    filled-new-array {v5, v6}, [I

    .line 2065
    move-result-object v5

    .line 2068
    const/16 v6, 0x153

    .line 2069
    const/16 v7, 0x19a

    .line 2071
    filled-new-array {v6, v7}, [I

    .line 2073
    move-result-object v6

    .line 2076
    filled-new-array {v1, v2, v4, v5, v6}, [[I

    .line 2077
    move-result-object v14

    .line 2080
    const/16 v1, 0x11e

    .line 2081
    const/16 v2, 0x11f

    .line 2083
    filled-new-array {v1, v2}, [I

    .line 2085
    move-result-object v1

    .line 2088
    const/16 v2, 0x11d

    .line 2089
    const/16 v4, 0x128

    .line 2091
    filled-new-array {v2, v4}, [I

    .line 2093
    move-result-object v2

    .line 2096
    const/16 v4, 0x11b

    .line 2097
    const/16 v5, 0x131

    .line 2099
    filled-new-array {v4, v5}, [I

    .line 2101
    move-result-object v4

    .line 2104
    const/16 v5, 0x119

    .line 2105
    const/16 v6, 0x139

    .line 2107
    filled-new-array {v5, v6}, [I

    .line 2109
    move-result-object v5

    .line 2112
    const/16 v6, 0x116

    .line 2113
    const/16 v7, 0x141

    .line 2115
    filled-new-array {v6, v7}, [I

    .line 2117
    move-result-object v6

    .line 2120
    filled-new-array {v1, v2, v4, v5, v6}, [[I

    .line 2121
    move-result-object v15

    .line 2124
    const/16 v1, 0xdf

    .line 2125
    const/16 v2, 0x125

    .line 2127
    filled-new-array {v1, v2}, [I

    .line 2129
    move-result-object v4

    .line 2132
    const/16 v1, 0x12d

    .line 2133
    filled-new-array {v3, v1}, [I

    .line 2135
    move-result-object v5

    .line 2138
    const/16 v1, 0x134

    .line 2139
    filled-new-array {v3, v1}, [I

    .line 2141
    move-result-object v6

    .line 2144
    const/16 v1, 0xdf

    .line 2145
    const/16 v2, 0x13a

    .line 2147
    filled-new-array {v1, v2}, [I

    .line 2149
    move-result-object v7

    .line 2152
    const/16 v1, 0x141

    .line 2153
    filled-new-array {v3, v1}, [I

    .line 2155
    move-result-object v8

    .line 2158
    const/16 v1, 0x148

    .line 2159
    filled-new-array {v3, v1}, [I

    .line 2161
    move-result-object v9

    .line 2164
    filled-new-array/range {v4 .. v9}, [[I

    .line 2165
    move-result-object v16

    .line 2168
    const/16 v1, 0x1c3

    .line 2169
    const/16 v2, 0x1c3

    .line 2171
    filled-new-array {v1, v2}, [I

    .line 2173
    move-result-object v3

    .line 2176
    const/16 v1, 0x1c2

    .line 2177
    const/16 v2, 0x1c9

    .line 2179
    filled-new-array {v1, v2}, [I

    .line 2181
    move-result-object v4

    .line 2184
    const/16 v2, 0x1cf

    .line 2185
    filled-new-array {v1, v2}, [I

    .line 2187
    move-result-object v5

    .line 2190
    const/16 v1, 0x1c0

    .line 2191
    const/16 v2, 0x1d4

    .line 2193
    filled-new-array {v1, v2}, [I

    .line 2195
    move-result-object v6

    .line 2198
    const/16 v1, 0x1be

    .line 2199
    const/16 v2, 0x1d9

    .line 2201
    filled-new-array {v1, v2}, [I

    .line 2203
    move-result-object v7

    .line 2206
    const/16 v1, 0x1bc

    .line 2207
    const/16 v2, 0x1de

    .line 2209
    filled-new-array {v1, v2}, [I

    .line 2211
    move-result-object v8

    .line 2214
    const/16 v1, 0x1ba

    .line 2215
    const/16 v2, 0x1e3

    .line 2217
    filled-new-array {v1, v2}, [I

    .line 2219
    move-result-object v9

    .line 2222
    filled-new-array/range {v3 .. v9}, [[I

    .line 2223
    move-result-object v17

    .line 2226
    const/16 v1, 0x133

    .line 2227
    const/16 v2, 0x14a

    .line 2229
    filled-new-array {v1, v2}, [I

    .line 2231
    move-result-object v1

    .line 2234
    const/16 v2, 0x135

    .line 2235
    const/16 v3, 0x154

    .line 2237
    filled-new-array {v2, v3}, [I

    .line 2239
    move-result-object v2

    .line 2242
    const/16 v3, 0x136

    .line 2243
    const/16 v4, 0x15e

    .line 2245
    filled-new-array {v3, v4}, [I

    .line 2247
    move-result-object v3

    .line 2250
    const/16 v4, 0x137

    .line 2251
    const/16 v5, 0x168

    .line 2253
    filled-new-array {v4, v5}, [I

    .line 2255
    move-result-object v4

    .line 2258
    const/16 v5, 0x137

    .line 2259
    const/16 v6, 0x171

    .line 2261
    filled-new-array {v5, v6}, [I

    .line 2263
    move-result-object v5

    .line 2266
    filled-new-array {v1, v2, v3, v4, v5}, [[I

    .line 2267
    move-result-object v18

    .line 2270
    const/16 v19, 0x0

    .line 2271
    const/16 v20, 0x0

    .line 2273
    const/16 v1, 0x123

    .line 2275
    const/16 v2, 0x13b

    .line 2277
    filled-new-array {v1, v2}, [I

    .line 2279
    move-result-object v1

    .line 2282
    const/16 v2, 0x123

    .line 2283
    const/16 v3, 0x142

    .line 2285
    filled-new-array {v2, v3}, [I

    .line 2287
    move-result-object v2

    .line 2290
    const/16 v3, 0x121

    .line 2291
    const/16 v4, 0x148

    .line 2293
    filled-new-array {v3, v4}, [I

    .line 2295
    move-result-object v3

    .line 2298
    const/16 v4, 0x120

    .line 2299
    const/16 v5, 0x14e

    .line 2301
    filled-new-array {v4, v5}, [I

    .line 2303
    move-result-object v4

    .line 2306
    const/16 v5, 0x11f

    .line 2307
    const/16 v6, 0x155

    .line 2309
    filled-new-array {v5, v6}, [I

    .line 2311
    move-result-object v5

    .line 2314
    filled-new-array {v1, v2, v3, v4, v5}, [[I

    .line 2315
    move-result-object v21

    .line 2318
    filled-new-array/range {v12 .. v21}, [[[I

    .line 2319
    move-result-object v1

    .line 2322
    iput-object v1, v0, Lcom/miui/clock/module/RotateFontStyle;->rotateMinus:[[[I

    .line 2323
    return-void

    .line 2325
    :array_0
    .array-data 4
        0x7f080ce9    # @drawable/font_i_0 'res/drawable/font_i_0.xml'
        0x7f080cea    # @drawable/font_i_1 'res/drawable/font_i_1.xml'
        0x7f080ceb    # @drawable/font_i_2 'res/drawable/font_i_2.xml'
        0x7f080cec    # @drawable/font_i_3 'res/drawable/font_i_3.xml'
        0x7f080ced    # @drawable/font_i_4 'res/drawable/font_i_4.xml'
        0x7f080cee    # @drawable/font_i_5 'res/drawable/font_i_5.xml'
        0x7f080cef    # @drawable/font_i_6 'res/drawable/font_i_6.xml'
        0x7f080cf0    # @drawable/font_i_7 'res/drawable/font_i_7.xml'
        0x7f080cf1    # @drawable/font_i_8 'res/drawable/font_i_8.xml'
        0x7f080cf2    # @drawable/font_i_9 'res/drawable/font_i_9.xml'
    .end array-data

    .line 2326
    :array_1
    .array-data 4
        0x3f2b851f    # 0.67f
        0x3e051eb8    # 0.13f
        0x3da3d70a    # 0.08f
        0x3da3d70a    # 0.08f
        0x3e8f5c29    # 0.28f
        0x3de147ae    # 0.11f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 2350
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3e700000    # -18.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 2368
    :array_3
    .array-data 4
        0x411e79e8
        0x410c30c3
        0x40f3cf3d
        0x3ec30c31
        0x41cc30c3
        0x0
        0x41000000    # 8.0f
        0x40e79e7a
        0x41000000    # 8.0f
        0x410c30c3
    .end array-data

    .line 2392
    :array_4
    .array-data 4
        0x42f55555
        0x42c92492
        0x430430c3
        0x42d18618
        0x42d61862
        0x432430c3
        0x42f00000    # 120.0f
        0x42bb6db7
        0x42f0c30c
        0x42e61862
    .end array-data

    .line 2416
    :array_5
    .array-data 4
        0x87
        0x70
        0x81
        0x77
        0x86
        0xa6
        0x7d
        0x68
        0x8a
        0x7b
    .end array-data

    .line 2440
    :array_6
    .array-data 4
        0xf0
        0xf0
        0xf0
        0xf0
        0xf0
        0xf0
        0xf0
        0xf0
        0xf0
        0xf0
    .end array-data

    .line 2464
    :array_7
    .array-data 4
        0x40f70a3d    # 7.72f
        -0x3f81eb85    # -3.97f
    .end array-data

    .line 2488
    :array_8
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2496
    :array_9
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2504
    :array_a
    .array-data 4
        0x413051ec    # 11.02f
        0x410547ae    # 8.33f
    .end array-data

    .line 2512
    :array_b
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2520
    :array_c
    .array-data 4
        0x418f47ae    # 17.91f
        -0x3f7d70a4    # -4.08f
    .end array-data

    .line 2528
    :array_d
    .array-data 4
        -0x3faa3d71    # -3.34f
        0x0
    .end array-data

    .line 2536
    :array_e
    .array-data 4
        -0x3f6051ec    # -4.99f
        0x0
    .end array-data

    .line 2544
    :array_f
    .array-data 4
        0x410ae148    # 8.68f
        0x0
    .end array-data

    .line 2552
    :array_10
    .array-data 4
        0x0
        0x40128f5c    # 2.29f
    .end array-data

    .line 2560
    :array_11
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2568
    :array_12
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2576
    :array_13
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2584
    :array_14
    .array-data 4
        0x0
        0x410547ae    # 8.33f
    .end array-data

    .line 2592
    :array_15
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2600
    :array_16
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2608
    :array_17
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2616
    :array_18
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2624
    :array_19
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2632
    :array_1a
    .array-data 4
        0x0
        -0x3f95c28f    # -3.66f
    .end array-data

    .line 2640
    :array_1b
    .array-data 4
        0x411c28f6    # 9.76f
        0x0
    .end array-data

    .line 2648
    :array_1c
    .array-data 4
        0x0
        0x40fccccd    # 7.9f
    .end array-data

    .line 2656
    :array_1d
    .array-data 4
        0x405ccccd    # 3.45f
        0x0
    .end array-data

    .line 2664
    :array_1e
    .array-data 4
        0x0
        0x410547ae    # 8.33f
    .end array-data

    .line 2672
    :array_1f
    .array-data 4
        -0x3f547ae1    # -5.36f
        0x40d70a3d    # 6.72f
    .end array-data

    .line 2680
    :array_20
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2688
    :array_21
    .array-data 4
        -0x3f4ae148    # -5.66f
        0x0
    .end array-data

    .line 2696
    :array_22
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2704
    :array_23
    .array-data 4
        -0x3f26147b    # -6.81f
        0x0
    .end array-data

    .line 2712
    :array_24
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2720
    :array_25
    .array-data 4
        0x0
        -0x3f828f5c    # -3.96f
    .end array-data

    .line 2728
    :array_26
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2736
    :array_27
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2744
    :array_28
    .array-data 4
        -0x3f49eb85    # -5.69f
        0x3ff851ec    # 1.94f
    .end array-data

    .line 2752
    :array_29
    .array-data 4
        0x0
        -0x3fe70a3d    # -2.39f
    .end array-data

    .line 2760
    :array_2a
    .array-data 4
        0x0
        -0x3f1b3333    # -7.15f
    .end array-data

    .line 2768
    :array_2b
    .array-data 4
        0x0
        0x40a23d71    # 5.07f
    .end array-data

    .line 2776
    :array_2c
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2784
    :array_2d
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2792
    :array_2e
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2800
    :array_2f
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2808
    :array_30
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2816
    :array_31
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2824
    :array_32
    .array-data 4
        0x0
        0x3ff851ec    # 1.94f
    .end array-data

    .line 2832
    :array_33
    .array-data 4
        0x40800000    # 4.0f
        -0x3f623d71    # -4.93f
    .end array-data

    .line 2840
    :array_34
    .array-data 4
        0x40800000    # 4.0f
        0x0
    .end array-data

    .line 2848
    :array_35
    .array-data 4
        0x40800000    # 4.0f
        0x406a3d71    # 3.66f
    .end array-data

    .line 2856
    :array_36
    .array-data 4
        0x40800000    # 4.0f
        0x0
    .end array-data

    .line 2864
    :array_37
    .array-data 4
        0x40800000    # 4.0f
        0x0
    .end array-data

    .line 2872
    :array_38
    .array-data 4
        -0x3f95c28f    # -3.66f
        0x0
    .end array-data

    .line 2880
    :array_39
    .array-data 4
        -0x3f95c28f    # -3.66f
        -0x3f828f5c    # -3.96f
    .end array-data

    .line 2888
    :array_3a
    .array-data 4
        0x40800000    # 4.0f
        0x0
    .end array-data

    .line 2896
    :array_3b
    .array-data 4
        0x40800000    # 4.0f
        0x0
    .end array-data

    .line 2904
    :array_3c
    .array-data 4
        0x40800000    # 4.0f
        0x3ff851ec    # 1.94f
    .end array-data

    .line 2912
    :array_3d
    .array-data 4
        0x40000000    # 2.0f
        0x4083851f    # 4.11f
    .end array-data

    .line 2920
    :array_3e
    .array-data 4
        0x410e6666    # 8.9f
        -0x3ee4cccd    # -9.7f
    .end array-data

    .line 2928
    :array_3f
    .array-data 4
        -0x40f851ec    # -0.53f
        0x40ee147b    # 7.44f
    .end array-data

    .line 2936
    :array_40
    .array-data 4
        0x40c947ae    # 6.29f
        0x0
    .end array-data

    .line 2944
    :array_41
    .array-data 4
        0x40000000    # 2.0f
        0x0
    .end array-data

    .line 2952
    :array_42
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2960
    :array_43
    .array-data 4
        0x40000000    # 2.0f
        0x0
    .end array-data

    .line 2968
    :array_44
    .array-data 4
        -0x3fa5c28f    # -3.41f
        0x0
    .end array-data

    .line 2976
    :array_45
    .array-data 4
        0x40000000    # 2.0f
        0x0
    .end array-data

    .line 2984
    :array_46
    .array-data 4
        0x0
        0x3ff851ec    # 1.94f
    .end array-data

    .line 2992
    :array_47
    .array-data 4
        0x0
        -0x402b851f    # -1.66f
    .end array-data

    .line 3000
    :array_48
    .array-data 4
        0x0
        -0x3f1b3333    # -7.15f
    .end array-data

    .line 3008
    :array_49
    .array-data 4
        -0x3f775c29    # -4.27f
        0x0
    .end array-data

    .line 3016
    :array_4a
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 3024
    :array_4b
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 3032
    :array_4c
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 3040
    :array_4d
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 3048
    :array_4e
    .array-data 4
        -0x3f666666    # -4.8f
        0x0
    .end array-data

    .line 3056
    :array_4f
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 3064
    :array_50
    .array-data 4
        0x406e147b    # 3.72f
        0x3ff851ec    # 1.94f
    .end array-data

    .line 3072
    :array_51
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 3080
    :array_52
    .array-data 4
        0x0
        -0x3f1b3333    # -7.15f
    .end array-data

    .line 3088
    :array_53
    .array-data 4
        -0x3f8851ec    # -3.87f
        0x0
    .end array-data

    .line 3096
    :array_54
    .array-data 4
        0x0
        0x40c51eb8    # 6.16f
    .end array-data

    .line 3104
    :array_55
    .array-data 4
        -0x3f71999a    # -4.45f
        0x0
    .end array-data

    .line 3112
    :array_56
    .array-data 4
        -0x3f5a8f5c    # -5.17f
        0x0
    .end array-data

    .line 3120
    :array_57
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 3128
    :array_58
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 3136
    :array_59
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 3144
    :array_5a
    .array-data 4
        0x0
        0x3ff851ec    # 1.94f
    .end array-data
    .line 3152
.end method


# virtual methods
.method public final getColonInterval()F
    .locals 0

    .line 1
    const/high16 p0, 0x42280000    # 42.0f

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
    sget-object p0, Lcom/miui/clock/module/BaseFontStyle$Style;->DryBrush9:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHourOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontDryBrush9;->mHourOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHourRotateDegree()[[[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontDryBrush9;->mHourRotateDegree:[[[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLargeClockHeights()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontDryBrush9;->mLargeClockHeight:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLargeClockWidth()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontDryBrush9;->mLargeClockWidth:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLeftEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontDryBrush9;->mSVGEmptyLeft:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMaxRotateDegree()F
    .locals 0

    .line 1
    const/high16 p0, 0x41900000    # 18.0f

    .line 2
    return p0
    .line 4
.end method

.method public final getMinuteOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontDryBrush9;->mMinuteOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMinuteRotateDegree()[[[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontDryBrush9;->mMinuteRotateDegree:[[[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getNotificationCenterXOffset()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontDryBrush9;->mNotificationCenterXOffset:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getNotificationColonHeight()F
    .locals 0

    .line 1
    const/high16 p0, 0x42c80000    # 100.0f

    .line 2
    return p0
    .line 4
.end method

.method public final getNotificationColonWidth()F
    .locals 0

    .line 1
    const p0, 0x41baa3d7    # 23.33f

    .line 2
    return p0
    .line 5
.end method

.method public final getPercentages()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontDryBrush9;->mPercentages:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRightEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontDryBrush9;->mSVGEmptyRight:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSmallClockInnerHeight()I
    .locals 0

    .line 1
    const/16 p0, 0x64

    .line 2
    return p0
    .line 4
.end method

.method public final getSmallClockInnerMarginOffset()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
    .line 3
.end method

.method public final getSmallColon1MarginInnerTop()F
    .locals 0

    .line 1
    const/high16 p0, 0x41d20000    # 26.25f

    .line 2
    return p0
    .line 4
.end method

.method public final getSmallColon2MarginInnerTop()F
    .locals 0

    .line 1
    const p0, 0x42410a3d    # 48.26f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonRealWidth()F
    .locals 0

    .line 1
    const p0, 0x414b5c29    # 12.71f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResource()I
    .locals 0

    .line 1
    const p0, 0x7f080cf3    # @drawable/font_i_colon 'res/drawable/font_i_colon.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResourceHeight()I
    .locals 0

    .line 1
    const/16 p0, 0xf0

    .line 2
    return p0
    .line 4
.end method

.method public final getSmallColonResourceWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x38

    .line 2
    return p0
    .line 4
.end method

.method public final getSvgResource()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontDryBrush9;->mSVGResource:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextBoxWidth()I
    .locals 0

    .line 1
    const/16 p0, 0xd7

    .line 2
    return p0
    .line 4
.end method
