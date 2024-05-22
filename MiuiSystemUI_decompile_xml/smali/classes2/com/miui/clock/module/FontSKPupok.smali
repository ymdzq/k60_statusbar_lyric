.class public final Lcom/miui/clock/module/FontSKPupok;
.super Lcom/miui/clock/module/RotateFontStyle;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mHourOffset:[[[I

.field public final mHourRotateDegree:[[[F

.field public final mLargeClockHeight:[I

.field public final mLargeClockWidth:[I

.field public final mMinuteOffset:[[[I

.field public final mMinuteRotateDegree:[[[F

.field public final mPercentages:[F

.field public final mSVGEmptyLeft:[F

.field public final mSVGEmptyRight:[F

.field public final mSVGResource:[I


# direct methods
.method public constructor <init>()V
    .locals 65

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/miui/clock/module/RotateFontStyle;-><init>()V

    .line 4
    const/16 v1, 0xa

    .line 7
    new-array v1, v1, [I

    .line 9
    fill-array-data v1, :array_0

    .line 11
    iput-object v1, v0, Lcom/miui/clock/module/FontSKPupok;->mSVGResource:[I

    .line 14
    const/16 v1, 0xa6

    .line 16
    const/16 v2, 0x64

    .line 18
    const/16 v3, 0x43

    .line 20
    const/16 v4, 0x99

    .line 22
    filled-new-array {v2, v3, v4, v1}, [I

    .line 24
    move-result-object v5

    .line 27
    const/16 v1, 0x63

    .line 28
    const/16 v2, 0x3d

    .line 30
    const/16 v3, 0x9b

    .line 32
    filled-new-array {v1, v2, v4, v3}, [I

    .line 34
    move-result-object v6

    .line 37
    const/16 v1, 0x93

    .line 38
    const/16 v2, 0xa4

    .line 40
    const/16 v7, 0x6a

    .line 42
    const/16 v8, 0x39

    .line 44
    filled-new-array {v7, v8, v1, v2}, [I

    .line 46
    move-result-object v7

    .line 49
    const/16 v1, 0x6e

    .line 50
    const/16 v2, 0x39

    .line 52
    const/16 v15, 0x9e

    .line 54
    const/16 v14, 0x9d

    .line 56
    filled-new-array {v1, v2, v15, v14}, [I

    .line 58
    move-result-object v8

    .line 61
    const/16 v1, 0x6f

    .line 62
    const/16 v2, 0x38

    .line 64
    const/16 v13, 0x96

    .line 66
    const/16 v12, 0x8e

    .line 68
    filled-new-array {v1, v2, v13, v12}, [I

    .line 70
    move-result-object v9

    .line 73
    const/16 v1, 0x5d

    .line 74
    const/16 v2, 0x40

    .line 76
    const/16 v11, 0x95

    .line 78
    filled-new-array {v1, v2, v13, v11}, [I

    .line 80
    move-result-object v10

    .line 83
    const/16 v1, 0x46

    .line 84
    const/16 v2, 0x9c

    .line 86
    const/16 v14, 0x5a

    .line 88
    filled-new-array {v14, v1, v13, v2}, [I

    .line 90
    move-result-object v1

    .line 93
    const/16 v2, 0x35

    .line 94
    const/16 v14, 0x87

    .line 96
    const/16 v13, 0x8a

    .line 98
    filled-new-array {v13, v2, v12, v14}, [I

    .line 100
    move-result-object v2

    .line 103
    const/16 v13, 0x3e

    .line 104
    const/16 v14, 0x91

    .line 106
    const/16 v12, 0x7a

    .line 108
    filled-new-array {v12, v13, v14, v11}, [I

    .line 110
    move-result-object v13

    .line 113
    const/16 v12, 0x7d

    .line 114
    const/16 v14, 0x3d

    .line 116
    const/16 v4, 0x94

    .line 118
    filled-new-array {v12, v14, v4, v4}, [I

    .line 120
    move-result-object v14

    .line 123
    move v12, v11

    .line 124
    move-object v11, v1

    .line 125
    const/16 v1, 0x8e

    .line 126
    move-object v12, v2

    .line 128
    const/16 v2, 0x96

    .line 129
    filled-new-array/range {v5 .. v14}, [[I

    .line 131
    move-result-object v5

    .line 134
    const/16 v6, 0x3b

    .line 135
    const/16 v7, 0xa5

    .line 137
    const/16 v8, 0x58

    .line 139
    filled-new-array {v8, v6, v3, v7}, [I

    .line 141
    move-result-object v22

    .line 144
    const/16 v6, 0x37

    .line 145
    const/16 v7, 0x9c

    .line 147
    const/16 v8, 0x61

    .line 149
    filled-new-array {v8, v6, v2, v7}, [I

    .line 151
    move-result-object v23

    .line 154
    const/16 v6, 0x68

    .line 155
    const/16 v7, 0x32

    .line 157
    const/16 v8, 0x92

    .line 159
    filled-new-array {v6, v7, v8, v15}, [I

    .line 161
    move-result-object v24

    .line 164
    const/16 v6, 0x2e

    .line 165
    const/16 v9, 0x93

    .line 167
    const/16 v10, 0x73

    .line 169
    const/16 v11, 0x99

    .line 171
    filled-new-array {v10, v6, v11, v9}, [I

    .line 173
    move-result-object v25

    .line 176
    const/16 v6, 0x65

    .line 177
    const/16 v9, 0x34

    .line 179
    const/16 v10, 0x97

    .line 181
    filled-new-array {v6, v9, v10, v1}, [I

    .line 183
    move-result-object v26

    .line 186
    const/16 v6, 0x55

    .line 187
    const/16 v9, 0x3a

    .line 189
    const/16 v11, 0x98

    .line 191
    filled-new-array {v6, v9, v11, v2}, [I

    .line 193
    move-result-object v27

    .line 196
    const/16 v6, 0x56

    .line 197
    const/16 v9, 0x3c

    .line 199
    filled-new-array {v6, v9, v4, v2}, [I

    .line 201
    move-result-object v28

    .line 204
    const/16 v6, 0x85

    .line 205
    const/16 v9, 0x85

    .line 207
    const/16 v12, 0x2f

    .line 209
    filled-new-array {v9, v12, v1, v6}, [I

    .line 211
    move-result-object v29

    .line 214
    const/16 v6, 0x90

    .line 215
    const/16 v9, 0x91

    .line 217
    const/16 v13, 0x72

    .line 219
    filled-new-array {v13, v12, v6, v9}, [I

    .line 221
    move-result-object v30

    .line 224
    const/16 v6, 0x6b

    .line 225
    const/16 v9, 0x31

    .line 227
    const/16 v13, 0x99

    .line 229
    filled-new-array {v6, v9, v13, v11}, [I

    .line 231
    move-result-object v31

    .line 234
    filled-new-array/range {v22 .. v31}, [[I

    .line 235
    move-result-object v6

    .line 238
    const/16 v9, 0x9f

    .line 239
    const/16 v13, 0xaa

    .line 241
    const/16 v14, 0x54

    .line 243
    const/16 v7, 0x36

    .line 245
    filled-new-array {v14, v7, v9, v13}, [I

    .line 247
    move-result-object v7

    .line 250
    const/16 v9, 0x35

    .line 251
    const/16 v13, 0xa0

    .line 253
    const/16 v14, 0x5f

    .line 255
    filled-new-array {v14, v9, v10, v13}, [I

    .line 257
    move-result-object v9

    .line 260
    const/16 v13, 0x5d

    .line 261
    const/16 v14, 0xa7

    .line 263
    filled-new-array {v13, v12, v11, v14}, [I

    .line 265
    move-result-object v13

    .line 268
    const/16 v14, 0x6d

    .line 269
    const/16 v2, 0x2b

    .line 271
    const/16 v8, 0x9d

    .line 273
    filled-new-array {v14, v2, v3, v8}, [I

    .line 275
    move-result-object v2

    .line 278
    filled-new-array {v7, v9, v13, v2}, [[I

    .line 279
    move-result-object v2

    .line 282
    filled-new-array {v5, v6, v2}, [[[I

    .line 283
    move-result-object v2

    .line 286
    iput-object v2, v0, Lcom/miui/clock/module/FontSKPupok;->mHourOffset:[[[I

    .line 287
    const/16 v2, 0x64

    .line 289
    const/16 v5, 0x91

    .line 291
    const/16 v6, 0x30

    .line 293
    filled-new-array {v11, v6, v2, v5}, [I

    .line 295
    move-result-object v21

    .line 298
    const/16 v2, 0x5b

    .line 299
    const/16 v5, 0xa0

    .line 301
    const/16 v6, 0x9c

    .line 303
    const/16 v7, 0x31

    .line 305
    filled-new-array {v6, v7, v2, v5}, [I

    .line 307
    move-result-object v22

    .line 310
    const/16 v2, 0x31

    .line 311
    const/16 v5, 0x69

    .line 313
    filled-new-array {v6, v2, v5, v4}, [I

    .line 315
    move-result-object v23

    .line 318
    const/16 v2, 0x72

    .line 319
    const/16 v5, 0x9c

    .line 321
    const/16 v6, 0x9a

    .line 323
    filled-new-array {v6, v12, v2, v5}, [I

    .line 325
    move-result-object v24

    .line 328
    const/16 v2, 0x60

    .line 329
    const/16 v5, 0x33

    .line 331
    filled-new-array {v11, v5, v2, v3}, [I

    .line 333
    move-result-object v25

    .line 336
    const/16 v2, 0x53

    .line 337
    filled-new-array {v15, v5, v2, v4}, [I

    .line 339
    move-result-object v26

    .line 342
    const/16 v2, 0x59

    .line 343
    const/16 v6, 0x89

    .line 345
    filled-new-array {v11, v5, v2, v6}, [I

    .line 347
    move-result-object v27

    .line 350
    const/16 v2, 0x7c

    .line 351
    const/16 v6, 0x90

    .line 353
    const/16 v7, 0x9a

    .line 355
    filled-new-array {v7, v5, v2, v6}, [I

    .line 357
    move-result-object v28

    .line 360
    const/16 v2, 0x72

    .line 361
    filled-new-array {v3, v5, v2, v1}, [I

    .line 363
    move-result-object v29

    .line 366
    const/16 v2, 0x77

    .line 367
    filled-new-array {v11, v5, v2, v4}, [I

    .line 369
    move-result-object v30

    .line 372
    filled-new-array/range {v21 .. v30}, [[I

    .line 373
    move-result-object v31

    .line 376
    const/16 v2, 0x35

    .line 377
    const/16 v6, 0x5d

    .line 379
    filled-new-array {v15, v2, v6, v10}, [I

    .line 381
    move-result-object v21

    .line 384
    const/16 v2, 0x4e

    .line 385
    const/16 v6, 0x9f

    .line 387
    const/16 v7, 0xa0

    .line 389
    const/16 v9, 0x2d

    .line 391
    filled-new-array {v7, v9, v2, v6}, [I

    .line 393
    move-result-object v22

    .line 396
    const/16 v2, 0x68

    .line 397
    const/16 v6, 0x93

    .line 399
    filled-new-array {v15, v5, v2, v6}, [I

    .line 401
    move-result-object v23

    .line 404
    const/16 v2, 0x31

    .line 405
    const/16 v6, 0x77

    .line 407
    const/16 v7, 0x99

    .line 409
    filled-new-array {v7, v2, v6, v11}, [I

    .line 411
    move-result-object v24

    .line 414
    const/16 v2, 0x60

    .line 415
    const/16 v6, 0x91

    .line 417
    const/16 v9, 0x2e

    .line 419
    filled-new-array {v15, v9, v2, v6}, [I

    .line 421
    move-result-object v25

    .line 424
    const/16 v2, 0x31

    .line 425
    const/16 v6, 0x57

    .line 427
    filled-new-array {v11, v2, v6, v7}, [I

    .line 429
    move-result-object v26

    .line 432
    const/16 v2, 0x51

    .line 433
    const/16 v6, 0x8d

    .line 435
    const/16 v7, 0x36

    .line 437
    filled-new-array {v8, v7, v2, v6}, [I

    .line 439
    move-result-object v27

    .line 442
    const/16 v2, 0x2d

    .line 443
    const/16 v6, 0x69

    .line 445
    const/16 v7, 0x92

    .line 447
    filled-new-array {v8, v2, v6, v7}, [I

    .line 449
    move-result-object v28

    .line 452
    const/16 v2, 0x2b

    .line 453
    const/16 v6, 0x63

    .line 455
    const/16 v7, 0xa3

    .line 457
    filled-new-array {v7, v2, v6, v1}, [I

    .line 459
    move-result-object v29

    .line 462
    const/16 v2, 0xa3

    .line 463
    const/16 v6, 0x60

    .line 465
    const/16 v7, 0x96

    .line 467
    filled-new-array {v2, v12, v6, v7}, [I

    .line 469
    move-result-object v30

    .line 472
    filled-new-array/range {v21 .. v30}, [[I

    .line 473
    move-result-object v32

    .line 476
    const/16 v2, 0x68

    .line 477
    const/16 v6, 0x96

    .line 479
    filled-new-array {v11, v12, v2, v6}, [I

    .line 481
    move-result-object v21

    .line 484
    const/16 v2, 0x63

    .line 485
    filled-new-array {v11, v12, v2, v6}, [I

    .line 487
    move-result-object v22

    .line 490
    const/16 v2, 0x6e

    .line 491
    const/16 v6, 0x91

    .line 493
    const/16 v7, 0x29

    .line 495
    const/16 v9, 0x99

    .line 497
    filled-new-array {v9, v7, v2, v6}, [I

    .line 499
    move-result-object v23

    .line 502
    const/16 v2, 0x2e

    .line 503
    const/16 v6, 0x78

    .line 505
    filled-new-array {v9, v2, v6, v3}, [I

    .line 507
    move-result-object v24

    .line 510
    const/16 v6, 0x65

    .line 511
    filled-new-array {v10, v2, v6, v9}, [I

    .line 513
    move-result-object v25

    .line 516
    const/16 v2, 0x5b

    .line 517
    const/16 v6, 0x92

    .line 519
    filled-new-array {v9, v12, v2, v6}, [I

    .line 521
    move-result-object v26

    .line 524
    const/16 v2, 0x53

    .line 525
    const/16 v6, 0x90

    .line 527
    filled-new-array {v11, v12, v2, v6}, [I

    .line 529
    move-result-object v27

    .line 532
    const/16 v2, 0x79

    .line 533
    const/16 v6, 0x91

    .line 535
    const/16 v7, 0x2c

    .line 537
    filled-new-array {v11, v7, v2, v6}, [I

    .line 539
    move-result-object v28

    .line 542
    const/16 v2, 0x75

    .line 543
    const/16 v6, 0x8d

    .line 545
    filled-new-array {v11, v7, v2, v6}, [I

    .line 547
    move-result-object v29

    .line 550
    const/16 v2, 0x77

    .line 551
    const/16 v6, 0x8f

    .line 553
    const/16 v7, 0x29

    .line 555
    filled-new-array {v11, v7, v2, v6}, [I

    .line 557
    move-result-object v30

    .line 560
    filled-new-array/range {v21 .. v30}, [[I

    .line 561
    move-result-object v33

    .line 564
    const/16 v2, 0x2b

    .line 565
    const/16 v6, 0x70

    .line 567
    filled-new-array {v11, v2, v6, v10}, [I

    .line 569
    move-result-object v21

    .line 572
    const/16 v2, 0x6c

    .line 573
    const/16 v6, 0x9f

    .line 575
    const/16 v9, 0x95

    .line 577
    filled-new-array {v9, v7, v2, v6}, [I

    .line 579
    move-result-object v22

    .line 582
    const/16 v2, 0x2b

    .line 583
    const/16 v6, 0x77

    .line 585
    const/16 v7, 0x92

    .line 587
    filled-new-array {v3, v2, v6, v7}, [I

    .line 589
    move-result-object v23

    .line 592
    const/16 v3, 0x86

    .line 593
    const/16 v6, 0x96

    .line 595
    filled-new-array {v6, v2, v3, v6}, [I

    .line 597
    move-result-object v24

    .line 600
    const/16 v2, 0x29

    .line 601
    const/16 v3, 0x65

    .line 603
    const/16 v6, 0x9c

    .line 605
    filled-new-array {v6, v2, v3, v9}, [I

    .line 607
    move-result-object v25

    .line 610
    const/16 v2, 0x66

    .line 611
    const/16 v3, 0x8f

    .line 613
    const/16 v6, 0x2b

    .line 615
    filled-new-array {v11, v6, v2, v3}, [I

    .line 617
    move-result-object v26

    .line 620
    const/16 v2, 0x67

    .line 621
    const/16 v3, 0x88

    .line 623
    const/16 v6, 0x2e

    .line 625
    filled-new-array {v10, v6, v2, v3}, [I

    .line 627
    move-result-object v27

    .line 630
    const/16 v2, 0x7e

    .line 631
    const/16 v3, 0x8c

    .line 633
    const/16 v6, 0x28

    .line 635
    filled-new-array {v15, v6, v2, v3}, [I

    .line 637
    move-result-object v28

    .line 640
    const/16 v2, 0x7b

    .line 641
    const/16 v3, 0x8d

    .line 643
    const/16 v6, 0x29

    .line 645
    filled-new-array {v8, v6, v2, v3}, [I

    .line 647
    move-result-object v29

    .line 650
    const/16 v2, 0x79

    .line 651
    const/16 v3, 0x93

    .line 653
    filled-new-array {v15, v6, v2, v3}, [I

    .line 655
    move-result-object v30

    .line 658
    filled-new-array/range {v21 .. v30}, [[I

    .line 659
    move-result-object v34

    .line 662
    const/16 v2, 0x6c

    .line 663
    filled-new-array {v9, v12, v2, v4}, [I

    .line 665
    move-result-object v20

    .line 668
    const/16 v2, 0x70

    .line 669
    const/16 v6, 0x30

    .line 671
    const/16 v7, 0x96

    .line 673
    filled-new-array {v7, v6, v2, v3}, [I

    .line 675
    move-result-object v21

    .line 678
    const/16 v2, 0x73

    .line 679
    filled-new-array {v4, v5, v2, v9}, [I

    .line 681
    move-result-object v22

    .line 684
    const/16 v2, 0x74

    .line 685
    const/16 v3, 0xa1

    .line 687
    const/16 v6, 0x36

    .line 689
    filled-new-array {v10, v6, v2, v3}, [I

    .line 691
    move-result-object v23

    .line 694
    const/16 v2, 0x68

    .line 695
    const/16 v3, 0x99

    .line 697
    filled-new-array {v4, v5, v2, v3}, [I

    .line 699
    move-result-object v24

    .line 702
    const/16 v2, 0x34

    .line 703
    const/16 v3, 0x52

    .line 705
    filled-new-array {v11, v2, v3, v8}, [I

    .line 707
    move-result-object v25

    .line 710
    const/16 v2, 0x37

    .line 711
    const/16 v3, 0x5e

    .line 713
    const/16 v5, 0x92

    .line 715
    filled-new-array {v5, v2, v3, v1}, [I

    .line 717
    move-result-object v26

    .line 720
    const/16 v3, 0x79

    .line 721
    filled-new-array {v9, v2, v3, v5}, [I

    .line 723
    move-result-object v27

    .line 726
    const/16 v2, 0x73

    .line 727
    const/16 v3, 0x90

    .line 729
    const/16 v5, 0x31

    .line 731
    filled-new-array {v9, v5, v2, v3}, [I

    .line 733
    move-result-object v28

    .line 736
    const/16 v2, 0x2d

    .line 737
    const/16 v3, 0x73

    .line 739
    filled-new-array {v4, v2, v3, v11}, [I

    .line 741
    move-result-object v29

    .line 744
    filled-new-array/range {v20 .. v29}, [[I

    .line 745
    move-result-object v35

    .line 748
    const/16 v2, 0x5d

    .line 749
    const/16 v3, 0x32

    .line 751
    const/16 v4, 0x92

    .line 753
    filled-new-array {v11, v3, v2, v4}, [I

    .line 755
    move-result-object v20

    .line 758
    const/16 v2, 0x51

    .line 759
    filled-new-array {v11, v3, v2, v8}, [I

    .line 761
    move-result-object v21

    .line 764
    const/16 v2, 0x63

    .line 765
    filled-new-array {v11, v3, v2, v4}, [I

    .line 767
    move-result-object v22

    .line 770
    const/16 v2, 0x68

    .line 771
    const/16 v4, 0x99

    .line 773
    filled-new-array {v11, v3, v2, v4}, [I

    .line 775
    move-result-object v23

    .line 778
    const/16 v2, 0x55

    .line 779
    filled-new-array {v11, v3, v2, v10}, [I

    .line 781
    move-result-object v24

    .line 784
    const/16 v2, 0x52

    .line 785
    filled-new-array {v11, v3, v2, v1}, [I

    .line 787
    move-result-object v25

    .line 790
    const/16 v1, 0x40

    .line 791
    const/16 v2, 0x96

    .line 793
    filled-new-array {v11, v3, v1, v2}, [I

    .line 795
    move-result-object v26

    .line 798
    const/16 v1, 0x64

    .line 799
    const/16 v2, 0x93

    .line 801
    filled-new-array {v11, v3, v1, v2}, [I

    .line 803
    move-result-object v27

    .line 806
    const/16 v1, 0x6a

    .line 807
    const/16 v2, 0x8d

    .line 809
    filled-new-array {v11, v3, v1, v2}, [I

    .line 811
    move-result-object v28

    .line 814
    const/16 v1, 0x68

    .line 815
    filled-new-array {v11, v3, v1, v9}, [I

    .line 817
    move-result-object v29

    .line 820
    filled-new-array/range {v20 .. v29}, [[I

    .line 821
    move-result-object v36

    .line 824
    filled-new-array/range {v31 .. v36}, [[[I

    .line 825
    move-result-object v1

    .line 828
    iput-object v1, v0, Lcom/miui/clock/module/FontSKPupok;->mMinuteOffset:[[[I

    .line 829
    const/4 v1, 0x2

    .line 831
    new-array v2, v1, [F

    .line 832
    fill-array-data v2, :array_1

    .line 834
    new-array v3, v1, [F

    .line 837
    fill-array-data v3, :array_2

    .line 839
    new-array v4, v1, [F

    .line 842
    fill-array-data v4, :array_3

    .line 844
    new-array v5, v1, [F

    .line 847
    fill-array-data v5, :array_4

    .line 849
    new-array v6, v1, [F

    .line 852
    fill-array-data v6, :array_5

    .line 854
    new-array v7, v1, [F

    .line 857
    fill-array-data v7, :array_6

    .line 859
    new-array v8, v1, [F

    .line 862
    fill-array-data v8, :array_7

    .line 864
    new-array v9, v1, [F

    .line 867
    fill-array-data v9, :array_8

    .line 869
    new-array v10, v1, [F

    .line 872
    fill-array-data v10, :array_9

    .line 874
    new-array v11, v1, [F

    .line 877
    fill-array-data v11, :array_a

    .line 879
    filled-new-array/range {v2 .. v11}, [[F

    .line 882
    move-result-object v2

    .line 885
    new-array v3, v1, [F

    .line 886
    fill-array-data v3, :array_b

    .line 888
    new-array v4, v1, [F

    .line 891
    fill-array-data v4, :array_c

    .line 893
    new-array v5, v1, [F

    .line 896
    fill-array-data v5, :array_d

    .line 898
    new-array v6, v1, [F

    .line 901
    fill-array-data v6, :array_e

    .line 903
    new-array v7, v1, [F

    .line 906
    fill-array-data v7, :array_f

    .line 908
    new-array v8, v1, [F

    .line 911
    fill-array-data v8, :array_10

    .line 913
    new-array v9, v1, [F

    .line 916
    fill-array-data v9, :array_11

    .line 918
    new-array v10, v1, [F

    .line 921
    fill-array-data v10, :array_12

    .line 923
    new-array v11, v1, [F

    .line 926
    fill-array-data v11, :array_13

    .line 928
    new-array v12, v1, [F

    .line 931
    fill-array-data v12, :array_14

    .line 933
    filled-new-array/range {v3 .. v12}, [[F

    .line 936
    move-result-object v3

    .line 939
    new-array v4, v1, [F

    .line 940
    fill-array-data v4, :array_15

    .line 942
    new-array v5, v1, [F

    .line 945
    fill-array-data v5, :array_16

    .line 947
    new-array v6, v1, [F

    .line 950
    fill-array-data v6, :array_17

    .line 952
    new-array v7, v1, [F

    .line 955
    fill-array-data v7, :array_18

    .line 957
    filled-new-array {v4, v5, v6, v7}, [[F

    .line 960
    move-result-object v4

    .line 963
    filled-new-array {v2, v3, v4}, [[[F

    .line 964
    move-result-object v2

    .line 967
    iput-object v2, v0, Lcom/miui/clock/module/FontSKPupok;->mHourRotateDegree:[[[F

    .line 968
    new-array v3, v1, [F

    .line 970
    fill-array-data v3, :array_19

    .line 972
    new-array v4, v1, [F

    .line 975
    fill-array-data v4, :array_1a

    .line 977
    new-array v5, v1, [F

    .line 980
    fill-array-data v5, :array_1b

    .line 982
    new-array v6, v1, [F

    .line 985
    fill-array-data v6, :array_1c

    .line 987
    new-array v7, v1, [F

    .line 990
    fill-array-data v7, :array_1d

    .line 992
    new-array v8, v1, [F

    .line 995
    fill-array-data v8, :array_1e

    .line 997
    new-array v9, v1, [F

    .line 1000
    fill-array-data v9, :array_1f

    .line 1002
    new-array v10, v1, [F

    .line 1005
    fill-array-data v10, :array_20

    .line 1007
    new-array v11, v1, [F

    .line 1010
    fill-array-data v11, :array_21

    .line 1012
    new-array v12, v1, [F

    .line 1015
    fill-array-data v12, :array_22

    .line 1017
    filled-new-array/range {v3 .. v12}, [[F

    .line 1020
    move-result-object v13

    .line 1023
    new-array v2, v1, [F

    .line 1024
    fill-array-data v2, :array_23

    .line 1026
    new-array v3, v1, [F

    .line 1029
    fill-array-data v3, :array_24

    .line 1031
    new-array v4, v1, [F

    .line 1034
    fill-array-data v4, :array_25

    .line 1036
    new-array v5, v1, [F

    .line 1039
    fill-array-data v5, :array_26

    .line 1041
    new-array v6, v1, [F

    .line 1044
    fill-array-data v6, :array_27

    .line 1046
    new-array v7, v1, [F

    .line 1049
    fill-array-data v7, :array_28

    .line 1051
    new-array v8, v1, [F

    .line 1054
    fill-array-data v8, :array_29

    .line 1056
    new-array v9, v1, [F

    .line 1059
    fill-array-data v9, :array_2a

    .line 1061
    new-array v10, v1, [F

    .line 1064
    fill-array-data v10, :array_2b

    .line 1066
    new-array v11, v1, [F

    .line 1069
    fill-array-data v11, :array_2c

    .line 1071
    filled-new-array/range {v2 .. v11}, [[F

    .line 1074
    move-result-object v14

    .line 1077
    new-array v2, v1, [F

    .line 1078
    fill-array-data v2, :array_2d

    .line 1080
    new-array v3, v1, [F

    .line 1083
    fill-array-data v3, :array_2e

    .line 1085
    new-array v4, v1, [F

    .line 1088
    fill-array-data v4, :array_2f

    .line 1090
    new-array v5, v1, [F

    .line 1093
    fill-array-data v5, :array_30

    .line 1095
    new-array v6, v1, [F

    .line 1098
    fill-array-data v6, :array_31

    .line 1100
    new-array v7, v1, [F

    .line 1103
    fill-array-data v7, :array_32

    .line 1105
    new-array v8, v1, [F

    .line 1108
    fill-array-data v8, :array_33

    .line 1110
    new-array v9, v1, [F

    .line 1113
    fill-array-data v9, :array_34

    .line 1115
    new-array v10, v1, [F

    .line 1118
    fill-array-data v10, :array_35

    .line 1120
    new-array v11, v1, [F

    .line 1123
    fill-array-data v11, :array_36

    .line 1125
    filled-new-array/range {v2 .. v11}, [[F

    .line 1128
    move-result-object v15

    .line 1131
    new-array v2, v1, [F

    .line 1132
    fill-array-data v2, :array_37

    .line 1134
    new-array v3, v1, [F

    .line 1137
    fill-array-data v3, :array_38

    .line 1139
    new-array v4, v1, [F

    .line 1142
    fill-array-data v4, :array_39

    .line 1144
    new-array v5, v1, [F

    .line 1147
    fill-array-data v5, :array_3a

    .line 1149
    new-array v6, v1, [F

    .line 1152
    fill-array-data v6, :array_3b

    .line 1154
    new-array v7, v1, [F

    .line 1157
    fill-array-data v7, :array_3c

    .line 1159
    new-array v8, v1, [F

    .line 1162
    fill-array-data v8, :array_3d

    .line 1164
    new-array v9, v1, [F

    .line 1167
    fill-array-data v9, :array_3e

    .line 1169
    new-array v10, v1, [F

    .line 1172
    fill-array-data v10, :array_3f

    .line 1174
    new-array v11, v1, [F

    .line 1177
    fill-array-data v11, :array_40

    .line 1179
    filled-new-array/range {v2 .. v11}, [[F

    .line 1182
    move-result-object v16

    .line 1185
    new-array v2, v1, [F

    .line 1186
    fill-array-data v2, :array_41

    .line 1188
    new-array v3, v1, [F

    .line 1191
    fill-array-data v3, :array_42

    .line 1193
    new-array v4, v1, [F

    .line 1196
    fill-array-data v4, :array_43

    .line 1198
    new-array v5, v1, [F

    .line 1201
    fill-array-data v5, :array_44

    .line 1203
    new-array v6, v1, [F

    .line 1206
    fill-array-data v6, :array_45

    .line 1208
    new-array v7, v1, [F

    .line 1211
    fill-array-data v7, :array_46

    .line 1213
    new-array v8, v1, [F

    .line 1216
    fill-array-data v8, :array_47

    .line 1218
    new-array v9, v1, [F

    .line 1221
    fill-array-data v9, :array_48

    .line 1223
    new-array v10, v1, [F

    .line 1226
    fill-array-data v10, :array_49

    .line 1228
    new-array v11, v1, [F

    .line 1231
    fill-array-data v11, :array_4a

    .line 1233
    filled-new-array/range {v2 .. v11}, [[F

    .line 1236
    move-result-object v17

    .line 1239
    new-array v2, v1, [F

    .line 1240
    fill-array-data v2, :array_4b

    .line 1242
    new-array v3, v1, [F

    .line 1245
    fill-array-data v3, :array_4c

    .line 1247
    new-array v4, v1, [F

    .line 1250
    fill-array-data v4, :array_4d

    .line 1252
    new-array v5, v1, [F

    .line 1255
    fill-array-data v5, :array_4e

    .line 1257
    new-array v6, v1, [F

    .line 1260
    fill-array-data v6, :array_4f

    .line 1262
    new-array v7, v1, [F

    .line 1265
    fill-array-data v7, :array_50

    .line 1267
    new-array v8, v1, [F

    .line 1270
    fill-array-data v8, :array_51

    .line 1272
    new-array v9, v1, [F

    .line 1275
    fill-array-data v9, :array_52

    .line 1277
    new-array v10, v1, [F

    .line 1280
    fill-array-data v10, :array_53

    .line 1282
    new-array v11, v1, [F

    .line 1285
    fill-array-data v11, :array_54

    .line 1287
    filled-new-array/range {v2 .. v11}, [[F

    .line 1290
    move-result-object v18

    .line 1293
    filled-new-array/range {v13 .. v18}, [[[F

    .line 1294
    move-result-object v1

    .line 1297
    iput-object v1, v0, Lcom/miui/clock/module/FontSKPupok;->mMinuteRotateDegree:[[[F

    .line 1298
    const/4 v1, 0x7

    .line 1300
    new-array v1, v1, [F

    .line 1301
    fill-array-data v1, :array_55

    .line 1303
    iput-object v1, v0, Lcom/miui/clock/module/FontSKPupok;->mPercentages:[F

    .line 1306
    const/16 v1, 0xa

    .line 1308
    new-array v1, v1, [F

    .line 1310
    fill-array-data v1, :array_56

    .line 1312
    iput-object v1, v0, Lcom/miui/clock/module/FontSKPupok;->mSVGEmptyLeft:[F

    .line 1315
    const/16 v1, 0xa

    .line 1317
    new-array v1, v1, [F

    .line 1319
    fill-array-data v1, :array_57

    .line 1321
    iput-object v1, v0, Lcom/miui/clock/module/FontSKPupok;->mSVGEmptyRight:[F

    .line 1324
    const/16 v1, 0xa

    .line 1326
    new-array v1, v1, [I

    .line 1328
    fill-array-data v1, :array_58

    .line 1330
    iput-object v1, v0, Lcom/miui/clock/module/FontSKPupok;->mLargeClockWidth:[I

    .line 1333
    const/16 v1, 0xa

    .line 1335
    new-array v1, v1, [I

    .line 1337
    fill-array-data v1, :array_59

    .line 1339
    iput-object v1, v0, Lcom/miui/clock/module/FontSKPupok;->mLargeClockHeight:[I

    .line 1342
    const/16 v1, 0x1ad

    .line 1344
    const/16 v2, 0x1c1

    .line 1346
    filled-new-array {v1, v2}, [I

    .line 1348
    move-result-object v3

    .line 1351
    const/16 v1, 0x1b2

    .line 1352
    const/16 v2, 0x1cb

    .line 1354
    filled-new-array {v1, v2}, [I

    .line 1356
    move-result-object v4

    .line 1359
    const/16 v1, 0x1b5

    .line 1360
    const/16 v2, 0x1d4

    .line 1362
    filled-new-array {v1, v2}, [I

    .line 1364
    move-result-object v5

    .line 1367
    const/16 v1, 0x1b9

    .line 1368
    const/16 v2, 0x1dd

    .line 1370
    filled-new-array {v1, v2}, [I

    .line 1372
    move-result-object v6

    .line 1375
    const/16 v1, 0x1e5

    .line 1376
    const/16 v2, 0x1bc

    .line 1378
    filled-new-array {v2, v1}, [I

    .line 1380
    move-result-object v7

    .line 1383
    const/16 v1, 0x1bf

    .line 1384
    const/16 v8, 0x1ee

    .line 1386
    filled-new-array {v1, v8}, [I

    .line 1388
    move-result-object v8

    .line 1391
    const/16 v1, 0x1c3

    .line 1392
    const/16 v9, 0x1f7

    .line 1394
    filled-new-array {v1, v9}, [I

    .line 1396
    move-result-object v9

    .line 1399
    const/16 v1, 0x1c7

    .line 1400
    const/16 v10, 0x200

    .line 1402
    filled-new-array {v1, v10}, [I

    .line 1404
    move-result-object v10

    .line 1407
    const/16 v1, 0x1ca

    .line 1408
    const/16 v11, 0x208

    .line 1410
    filled-new-array {v1, v11}, [I

    .line 1412
    move-result-object v11

    .line 1415
    const/16 v1, 0x1cd

    .line 1416
    const/16 v12, 0x210

    .line 1418
    filled-new-array {v1, v12}, [I

    .line 1420
    move-result-object v12

    .line 1423
    const/16 v1, 0x1d1

    .line 1424
    const/16 v13, 0x219

    .line 1426
    filled-new-array {v1, v13}, [I

    .line 1428
    move-result-object v13

    .line 1431
    filled-new-array/range {v3 .. v13}, [[I

    .line 1432
    move-result-object v14

    .line 1435
    const/16 v1, 0x175

    .line 1436
    const/16 v3, 0x18b

    .line 1438
    filled-new-array {v1, v3}, [I

    .line 1440
    move-result-object v15

    .line 1443
    const/16 v1, 0x179

    .line 1444
    const/16 v3, 0x196

    .line 1446
    filled-new-array {v1, v3}, [I

    .line 1448
    move-result-object v16

    .line 1451
    const/16 v1, 0x17d

    .line 1452
    const/16 v3, 0x1a1

    .line 1454
    filled-new-array {v1, v3}, [I

    .line 1456
    move-result-object v17

    .line 1459
    const/16 v1, 0x17f

    .line 1460
    const/16 v4, 0x1ab

    .line 1462
    filled-new-array {v1, v4}, [I

    .line 1464
    move-result-object v18

    .line 1467
    const/16 v1, 0x183

    .line 1468
    const/16 v4, 0x1b6

    .line 1470
    filled-new-array {v1, v4}, [I

    .line 1472
    move-result-object v19

    .line 1475
    const/16 v1, 0x185

    .line 1476
    const/16 v4, 0x1c0

    .line 1478
    filled-new-array {v1, v4}, [I

    .line 1480
    move-result-object v20

    .line 1483
    const/16 v1, 0x189

    .line 1484
    const/16 v4, 0x1cb

    .line 1486
    filled-new-array {v1, v4}, [I

    .line 1488
    move-result-object v21

    .line 1491
    const/16 v1, 0x18c

    .line 1492
    const/16 v4, 0x1d5

    .line 1494
    filled-new-array {v1, v4}, [I

    .line 1496
    move-result-object v22

    .line 1499
    const/16 v1, 0x18e

    .line 1500
    const/16 v4, 0x1df

    .line 1502
    filled-new-array {v1, v4}, [I

    .line 1504
    move-result-object v23

    .line 1507
    const/16 v1, 0x191

    .line 1508
    const/16 v4, 0x1e9

    .line 1510
    filled-new-array {v1, v4}, [I

    .line 1512
    move-result-object v24

    .line 1515
    const/16 v1, 0x194

    .line 1516
    const/16 v4, 0x1f3

    .line 1518
    filled-new-array {v1, v4}, [I

    .line 1520
    move-result-object v25

    .line 1523
    const/16 v1, 0x197

    .line 1524
    const/16 v4, 0x1fd

    .line 1526
    filled-new-array {v1, v4}, [I

    .line 1528
    move-result-object v26

    .line 1531
    const/16 v1, 0x199

    .line 1532
    const/16 v4, 0x206

    .line 1534
    filled-new-array {v1, v4}, [I

    .line 1536
    move-result-object v27

    .line 1539
    const/16 v1, 0x19c

    .line 1540
    const/16 v4, 0x210

    .line 1542
    filled-new-array {v1, v4}, [I

    .line 1544
    move-result-object v28

    .line 1547
    const/16 v1, 0x19e

    .line 1548
    const/16 v4, 0x219

    .line 1550
    filled-new-array {v1, v4}, [I

    .line 1552
    move-result-object v29

    .line 1555
    const/16 v1, 0x223

    .line 1556
    filled-new-array {v3, v1}, [I

    .line 1558
    move-result-object v30

    .line 1561
    const/16 v1, 0x1a3

    .line 1562
    const/16 v4, 0x22c

    .line 1564
    filled-new-array {v1, v4}, [I

    .line 1566
    move-result-object v31

    .line 1569
    const/16 v1, 0x235

    .line 1570
    const/16 v4, 0x1a5

    .line 1572
    filled-new-array {v4, v1}, [I

    .line 1574
    move-result-object v32

    .line 1577
    const/16 v1, 0x23e

    .line 1578
    const/16 v5, 0x1a8

    .line 1580
    filled-new-array {v5, v1}, [I

    .line 1582
    move-result-object v33

    .line 1585
    const/16 v1, 0x1a9

    .line 1586
    const/16 v6, 0x246

    .line 1588
    filled-new-array {v1, v6}, [I

    .line 1590
    move-result-object v34

    .line 1593
    const/16 v1, 0x1ab

    .line 1594
    const/16 v6, 0x24f

    .line 1596
    filled-new-array {v1, v6}, [I

    .line 1598
    move-result-object v35

    .line 1601
    filled-new-array/range {v15 .. v35}, [[I

    .line 1602
    move-result-object v15

    .line 1605
    const/16 v1, 0x1d1

    .line 1606
    filled-new-array {v2, v1}, [I

    .line 1608
    move-result-object v16

    .line 1611
    const/16 v1, 0x1d9

    .line 1612
    filled-new-array {v2, v1}, [I

    .line 1614
    move-result-object v17

    .line 1617
    const/16 v1, 0x1e1

    .line 1618
    filled-new-array {v2, v1}, [I

    .line 1620
    move-result-object v18

    .line 1623
    const/16 v1, 0x1e9

    .line 1624
    filled-new-array {v2, v1}, [I

    .line 1626
    move-result-object v19

    .line 1629
    const/16 v1, 0x1bb

    .line 1630
    const/16 v6, 0x1f0

    .line 1632
    filled-new-array {v1, v6}, [I

    .line 1634
    move-result-object v20

    .line 1637
    const/16 v1, 0x1ba

    .line 1638
    const/16 v6, 0x1f7

    .line 1640
    filled-new-array {v1, v6}, [I

    .line 1642
    move-result-object v21

    .line 1645
    const/16 v1, 0x1bb

    .line 1646
    const/16 v6, 0x1ff

    .line 1648
    filled-new-array {v1, v6}, [I

    .line 1650
    move-result-object v22

    .line 1653
    const/16 v1, 0x1ba

    .line 1654
    const/16 v6, 0x206

    .line 1656
    filled-new-array {v1, v6}, [I

    .line 1658
    move-result-object v23

    .line 1661
    const/16 v1, 0x1b9

    .line 1662
    const/16 v6, 0x20d

    .line 1664
    filled-new-array {v1, v6}, [I

    .line 1666
    move-result-object v24

    .line 1669
    const/16 v1, 0x1b7

    .line 1670
    const/16 v6, 0x213

    .line 1672
    filled-new-array {v1, v6}, [I

    .line 1674
    move-result-object v25

    .line 1677
    const/16 v6, 0x21a

    .line 1678
    filled-new-array {v1, v6}, [I

    .line 1680
    move-result-object v26

    .line 1683
    const/16 v1, 0x1ba

    .line 1684
    const/16 v6, 0x221

    .line 1686
    filled-new-array {v1, v6}, [I

    .line 1688
    move-result-object v27

    .line 1691
    const/16 v1, 0x227

    .line 1692
    filled-new-array {v2, v1}, [I

    .line 1694
    move-result-object v28

    .line 1697
    const/16 v1, 0x1be

    .line 1698
    const/16 v6, 0x22d

    .line 1700
    filled-new-array {v1, v6}, [I

    .line 1702
    move-result-object v29

    .line 1705
    const/16 v1, 0x1c0

    .line 1706
    const/16 v6, 0x233

    .line 1708
    filled-new-array {v1, v6}, [I

    .line 1710
    move-result-object v30

    .line 1713
    const/16 v1, 0x1c2

    .line 1714
    const/16 v6, 0x239

    .line 1716
    filled-new-array {v1, v6}, [I

    .line 1718
    move-result-object v31

    .line 1721
    const/16 v1, 0x1c4

    .line 1722
    const/16 v6, 0x23f

    .line 1724
    filled-new-array {v1, v6}, [I

    .line 1726
    move-result-object v32

    .line 1729
    filled-new-array/range {v16 .. v32}, [[I

    .line 1730
    move-result-object v16

    .line 1733
    const/16 v1, 0x1b7

    .line 1734
    filled-new-array {v3, v1}, [I

    .line 1736
    move-result-object v17

    .line 1739
    const/16 v1, 0x1c0

    .line 1740
    filled-new-array {v3, v1}, [I

    .line 1742
    move-result-object v18

    .line 1745
    const/16 v1, 0x19e

    .line 1746
    const/16 v6, 0x1c7

    .line 1748
    filled-new-array {v1, v6}, [I

    .line 1750
    move-result-object v19

    .line 1753
    const/16 v1, 0x19d

    .line 1754
    const/16 v6, 0x1cf

    .line 1756
    filled-new-array {v1, v6}, [I

    .line 1758
    move-result-object v20

    .line 1761
    const/16 v1, 0x19b

    .line 1762
    const/16 v6, 0x1d7

    .line 1764
    filled-new-array {v1, v6}, [I

    .line 1766
    move-result-object v21

    .line 1769
    const/16 v1, 0x199

    .line 1770
    const/16 v6, 0x1de

    .line 1772
    filled-new-array {v1, v6}, [I

    .line 1774
    move-result-object v22

    .line 1777
    const/16 v1, 0x197

    .line 1778
    const/16 v6, 0x1e6

    .line 1780
    filled-new-array {v1, v6}, [I

    .line 1782
    move-result-object v23

    .line 1785
    const/16 v1, 0x195

    .line 1786
    const/16 v6, 0x1ed

    .line 1788
    filled-new-array {v1, v6}, [I

    .line 1790
    move-result-object v24

    .line 1793
    const/16 v1, 0x194

    .line 1794
    const/16 v6, 0x1f4

    .line 1796
    filled-new-array {v1, v6}, [I

    .line 1798
    move-result-object v25

    .line 1801
    const/16 v1, 0x197

    .line 1802
    const/16 v6, 0x1fb

    .line 1804
    filled-new-array {v1, v6}, [I

    .line 1806
    move-result-object v26

    .line 1809
    const/16 v1, 0x19a

    .line 1810
    const/16 v6, 0x202

    .line 1812
    filled-new-array {v1, v6}, [I

    .line 1814
    move-result-object v27

    .line 1817
    const/16 v1, 0x19c

    .line 1818
    const/16 v6, 0x208

    .line 1820
    filled-new-array {v1, v6}, [I

    .line 1822
    move-result-object v28

    .line 1825
    const/16 v1, 0x19f

    .line 1826
    const/16 v6, 0x20f

    .line 1828
    filled-new-array {v1, v6}, [I

    .line 1830
    move-result-object v29

    .line 1833
    const/16 v1, 0x215

    .line 1834
    filled-new-array {v3, v1}, [I

    .line 1836
    move-result-object v30

    .line 1839
    const/16 v1, 0x1a3

    .line 1840
    const/16 v6, 0x21b

    .line 1842
    filled-new-array {v1, v6}, [I

    .line 1844
    move-result-object v31

    .line 1847
    const/16 v1, 0x221

    .line 1848
    filled-new-array {v4, v1}, [I

    .line 1850
    move-result-object v32

    .line 1853
    const/16 v1, 0x227

    .line 1854
    const/16 v6, 0x1a7

    .line 1856
    filled-new-array {v6, v1}, [I

    .line 1858
    move-result-object v33

    .line 1861
    filled-new-array/range {v17 .. v33}, [[I

    .line 1862
    move-result-object v17

    .line 1865
    filled-new-array {v4, v2}, [I

    .line 1866
    move-result-object v18

    .line 1869
    const/16 v1, 0x1a6

    .line 1870
    const/16 v7, 0x1c5

    .line 1872
    filled-new-array {v1, v7}, [I

    .line 1874
    move-result-object v19

    .line 1877
    const/16 v1, 0x1cd

    .line 1878
    filled-new-array {v4, v1}, [I

    .line 1880
    move-result-object v20

    .line 1883
    const/16 v1, 0x1a4

    .line 1884
    const/16 v7, 0x1d5

    .line 1886
    filled-new-array {v1, v7}, [I

    .line 1888
    move-result-object v21

    .line 1891
    const/16 v7, 0x1dd

    .line 1892
    filled-new-array {v1, v7}, [I

    .line 1894
    move-result-object v22

    .line 1897
    const/16 v1, 0x1a3

    .line 1898
    const/16 v7, 0x1e5

    .line 1900
    filled-new-array {v1, v7}, [I

    .line 1902
    move-result-object v23

    .line 1905
    const/16 v1, 0x1a2

    .line 1906
    const/16 v7, 0x1ed

    .line 1908
    filled-new-array {v1, v7}, [I

    .line 1910
    move-result-object v24

    .line 1913
    const/16 v1, 0x1f4

    .line 1914
    filled-new-array {v3, v1}, [I

    .line 1916
    move-result-object v25

    .line 1919
    const/16 v1, 0x1a0

    .line 1920
    const/16 v7, 0x1fc

    .line 1922
    filled-new-array {v1, v7}, [I

    .line 1924
    move-result-object v26

    .line 1927
    const/16 v1, 0x19f

    .line 1928
    const/16 v7, 0x203

    .line 1930
    filled-new-array {v1, v7}, [I

    .line 1932
    move-result-object v27

    .line 1935
    const/16 v1, 0x19d

    .line 1936
    const/16 v7, 0x20a

    .line 1938
    filled-new-array {v1, v7}, [I

    .line 1940
    move-result-object v28

    .line 1943
    const/16 v1, 0x19c

    .line 1944
    const/16 v7, 0x211

    .line 1946
    filled-new-array {v1, v7}, [I

    .line 1948
    move-result-object v29

    .line 1951
    const/16 v1, 0x19b

    .line 1952
    const/16 v7, 0x218

    .line 1954
    filled-new-array {v1, v7}, [I

    .line 1956
    move-result-object v30

    .line 1959
    const/16 v1, 0x199

    .line 1960
    const/16 v7, 0x21f

    .line 1962
    filled-new-array {v1, v7}, [I

    .line 1964
    move-result-object v31

    .line 1967
    const/16 v1, 0x197

    .line 1968
    const/16 v7, 0x225

    .line 1970
    filled-new-array {v1, v7}, [I

    .line 1972
    move-result-object v32

    .line 1975
    const/16 v1, 0x196

    .line 1976
    const/16 v7, 0x22c

    .line 1978
    filled-new-array {v1, v7}, [I

    .line 1980
    move-result-object v33

    .line 1983
    filled-new-array/range {v18 .. v33}, [[I

    .line 1984
    move-result-object v18

    .line 1987
    const/16 v1, 0x1d3

    .line 1988
    const/16 v7, 0x1bd

    .line 1990
    filled-new-array {v7, v1}, [I

    .line 1992
    move-result-object v8

    .line 1995
    const/16 v1, 0x1c5

    .line 1996
    const/16 v9, 0x1df

    .line 1998
    filled-new-array {v1, v9}, [I

    .line 2000
    move-result-object v9

    .line 2003
    const/16 v1, 0x1cc

    .line 2004
    const/16 v13, 0x1eb

    .line 2006
    filled-new-array {v1, v13}, [I

    .line 2008
    move-result-object v10

    .line 2011
    const/16 v1, 0x1d2

    .line 2012
    const/16 v11, 0x1f6

    .line 2014
    filled-new-array {v1, v11}, [I

    .line 2016
    move-result-object v11

    .line 2019
    const/16 v1, 0x1d8

    .line 2020
    const/16 v12, 0x201

    .line 2022
    filled-new-array {v1, v12}, [I

    .line 2024
    move-result-object v12

    .line 2027
    const/16 v1, 0x1de

    .line 2028
    const/16 v13, 0x20c

    .line 2030
    filled-new-array {v1, v13}, [I

    .line 2032
    move-result-object v13

    .line 2035
    const/16 v1, 0x1eb

    .line 2036
    filled-new-array/range {v8 .. v13}, [[I

    .line 2038
    move-result-object v19

    .line 2041
    const/16 v8, 0x1d6

    .line 2042
    filled-new-array {v8, v1}, [I

    .line 2044
    move-result-object v20

    .line 2047
    const/16 v8, 0x1dc

    .line 2048
    const/16 v9, 0x1f6

    .line 2050
    filled-new-array {v8, v9}, [I

    .line 2052
    move-result-object v21

    .line 2055
    const/16 v8, 0x1e2

    .line 2056
    const/16 v9, 0x201

    .line 2058
    filled-new-array {v8, v9}, [I

    .line 2060
    move-result-object v22

    .line 2063
    const/16 v8, 0x1e8

    .line 2064
    const/16 v9, 0x20c

    .line 2066
    filled-new-array {v8, v9}, [I

    .line 2068
    move-result-object v23

    .line 2071
    const/16 v8, 0x1ed

    .line 2072
    const/16 v9, 0x217

    .line 2074
    filled-new-array {v8, v9}, [I

    .line 2076
    move-result-object v24

    .line 2079
    const/16 v8, 0x1f2

    .line 2080
    const/16 v9, 0x221

    .line 2082
    filled-new-array {v8, v9}, [I

    .line 2084
    move-result-object v25

    .line 2087
    const/16 v8, 0x1f7

    .line 2088
    const/16 v9, 0x22b

    .line 2090
    filled-new-array {v8, v9}, [I

    .line 2092
    move-result-object v26

    .line 2095
    const/16 v8, 0x1fc

    .line 2096
    const/16 v9, 0x235

    .line 2098
    filled-new-array {v8, v9}, [I

    .line 2100
    move-result-object v27

    .line 2103
    filled-new-array/range {v20 .. v27}, [[I

    .line 2104
    move-result-object v20

    .line 2107
    const/16 v21, 0x0

    .line 2108
    const/16 v8, 0x1e2

    .line 2110
    const/16 v9, 0x1f7

    .line 2112
    filled-new-array {v8, v9}, [I

    .line 2114
    move-result-object v22

    .line 2117
    const/16 v9, 0x1ff

    .line 2118
    filled-new-array {v8, v9}, [I

    .line 2120
    move-result-object v23

    .line 2123
    const/16 v8, 0x1e1

    .line 2124
    const/16 v9, 0x207

    .line 2126
    filled-new-array {v8, v9}, [I

    .line 2128
    move-result-object v24

    .line 2131
    const/16 v8, 0x1e0

    .line 2132
    const/16 v9, 0x20e

    .line 2134
    filled-new-array {v8, v9}, [I

    .line 2136
    move-result-object v25

    .line 2139
    const/16 v8, 0x1de

    .line 2140
    const/16 v9, 0x215

    .line 2142
    filled-new-array {v8, v9}, [I

    .line 2144
    move-result-object v26

    .line 2147
    const/16 v9, 0x21d

    .line 2148
    filled-new-array {v8, v9}, [I

    .line 2150
    move-result-object v27

    .line 2153
    const/16 v8, 0x1dd

    .line 2154
    const/16 v9, 0x224

    .line 2156
    filled-new-array {v8, v9}, [I

    .line 2158
    move-result-object v28

    .line 2161
    const/16 v8, 0x1da

    .line 2162
    const/16 v9, 0x22a

    .line 2164
    filled-new-array {v8, v9}, [I

    .line 2166
    move-result-object v29

    .line 2169
    filled-new-array/range {v22 .. v29}, [[I

    .line 2170
    move-result-object v22

    .line 2173
    const/16 v8, 0x1b6

    .line 2174
    filled-new-array {v3, v8}, [I

    .line 2176
    move-result-object v23

    .line 2179
    const/16 v8, 0x1a3

    .line 2180
    const/16 v9, 0x1c0

    .line 2182
    filled-new-array {v8, v9}, [I

    .line 2184
    move-result-object v24

    .line 2187
    const/16 v8, 0x1c9

    .line 2188
    filled-new-array {v4, v8}, [I

    .line 2190
    move-result-object v25

    .line 2193
    const/16 v8, 0x1aa

    .line 2194
    const/16 v9, 0x1d2

    .line 2196
    filled-new-array {v8, v9}, [I

    .line 2198
    move-result-object v26

    .line 2201
    const/16 v8, 0x1af

    .line 2202
    const/16 v9, 0x1db

    .line 2204
    filled-new-array {v8, v9}, [I

    .line 2206
    move-result-object v27

    .line 2209
    const/16 v8, 0x1b4

    .line 2210
    const/16 v9, 0x1e4

    .line 2212
    filled-new-array {v8, v9}, [I

    .line 2214
    move-result-object v28

    .line 2217
    const/16 v8, 0x1b8

    .line 2218
    const/16 v9, 0x1ec

    .line 2220
    filled-new-array {v8, v9}, [I

    .line 2222
    move-result-object v29

    .line 2225
    filled-new-array/range {v23 .. v29}, [[I

    .line 2226
    move-result-object v23

    .line 2229
    filled-new-array/range {v14 .. v23}, [[[I

    .line 2230
    move-result-object v8

    .line 2233
    iput-object v8, v0, Lcom/miui/clock/module/RotateFontStyle;->rotatePlus:[[[I

    .line 2234
    const/16 v8, 0x1ad

    .line 2236
    const/16 v9, 0x1c1

    .line 2238
    filled-new-array {v8, v9}, [I

    .line 2240
    move-result-object v10

    .line 2243
    const/16 v8, 0x1aa

    .line 2244
    const/16 v9, 0x1c5

    .line 2246
    filled-new-array {v8, v9}, [I

    .line 2248
    move-result-object v11

    .line 2251
    const/16 v8, 0x1a6

    .line 2252
    const/16 v9, 0x1c8

    .line 2254
    filled-new-array {v8, v9}, [I

    .line 2256
    move-result-object v12

    .line 2259
    const/16 v8, 0x1a2

    .line 2260
    const/16 v9, 0x1cb

    .line 2262
    filled-new-array {v8, v9}, [I

    .line 2264
    move-result-object v13

    .line 2267
    const/16 v8, 0x19e

    .line 2268
    const/16 v9, 0x1ce

    .line 2270
    filled-new-array {v8, v9}, [I

    .line 2272
    move-result-object v14

    .line 2275
    const/16 v8, 0x19b

    .line 2276
    const/16 v9, 0x1d1

    .line 2278
    filled-new-array {v8, v9}, [I

    .line 2280
    move-result-object v15

    .line 2283
    const/16 v8, 0x197

    .line 2284
    const/16 v9, 0x1d4

    .line 2286
    filled-new-array {v8, v9}, [I

    .line 2288
    move-result-object v16

    .line 2291
    const/16 v8, 0x193

    .line 2292
    const/16 v9, 0x1d7

    .line 2294
    filled-new-array {v8, v9}, [I

    .line 2296
    move-result-object v17

    .line 2299
    const/16 v8, 0x190

    .line 2300
    const/16 v9, 0x1da

    .line 2302
    filled-new-array {v8, v9}, [I

    .line 2304
    move-result-object v18

    .line 2307
    const/16 v8, 0x18c

    .line 2308
    const/16 v9, 0x1dc

    .line 2310
    filled-new-array {v8, v9}, [I

    .line 2312
    move-result-object v19

    .line 2315
    const/16 v8, 0x188

    .line 2316
    const/16 v9, 0x1df

    .line 2318
    filled-new-array {v8, v9}, [I

    .line 2320
    move-result-object v20

    .line 2323
    const/16 v8, 0x185

    .line 2324
    const/16 v9, 0x1e2

    .line 2326
    filled-new-array {v8, v9}, [I

    .line 2328
    move-result-object v21

    .line 2331
    const/16 v8, 0x181

    .line 2332
    const/16 v9, 0x1e4

    .line 2334
    filled-new-array {v8, v9}, [I

    .line 2336
    move-result-object v22

    .line 2339
    const/16 v8, 0x17e

    .line 2340
    const/16 v9, 0x1e7

    .line 2342
    filled-new-array {v8, v9}, [I

    .line 2344
    move-result-object v23

    .line 2347
    const/16 v8, 0x17a

    .line 2348
    const/16 v9, 0x1e9

    .line 2350
    filled-new-array {v8, v9}, [I

    .line 2352
    move-result-object v24

    .line 2355
    const/16 v8, 0x177

    .line 2356
    filled-new-array {v8, v1}, [I

    .line 2358
    move-result-object v25

    .line 2361
    const/16 v8, 0x174

    .line 2362
    const/16 v9, 0x1ee

    .line 2364
    filled-new-array {v8, v9}, [I

    .line 2366
    move-result-object v26

    .line 2369
    filled-new-array/range {v10 .. v26}, [[I

    .line 2370
    move-result-object v27

    .line 2373
    const/16 v8, 0x175

    .line 2374
    const/16 v9, 0x18b

    .line 2376
    filled-new-array {v8, v9}, [I

    .line 2378
    move-result-object v10

    .line 2381
    const/16 v8, 0x173

    .line 2382
    const/16 v9, 0x18f

    .line 2384
    filled-new-array {v8, v9}, [I

    .line 2386
    move-result-object v11

    .line 2389
    const/16 v8, 0x170

    .line 2390
    const/16 v9, 0x192

    .line 2392
    filled-new-array {v8, v9}, [I

    .line 2394
    move-result-object v12

    .line 2397
    const/16 v8, 0x16d

    .line 2398
    const/16 v9, 0x195

    .line 2400
    filled-new-array {v8, v9}, [I

    .line 2402
    move-result-object v13

    .line 2405
    const/16 v8, 0x16a

    .line 2406
    const/16 v9, 0x198

    .line 2408
    filled-new-array {v8, v9}, [I

    .line 2410
    move-result-object v14

    .line 2413
    const/16 v8, 0x167

    .line 2414
    const/16 v9, 0x19b

    .line 2416
    filled-new-array {v8, v9}, [I

    .line 2418
    move-result-object v15

    .line 2421
    const/16 v8, 0x164

    .line 2422
    const/16 v9, 0x19e

    .line 2424
    filled-new-array {v8, v9}, [I

    .line 2426
    move-result-object v16

    .line 2429
    const/16 v8, 0x161

    .line 2430
    filled-new-array {v8, v3}, [I

    .line 2432
    move-result-object v17

    .line 2435
    const/16 v8, 0x15f

    .line 2436
    const/16 v9, 0x1a4

    .line 2438
    filled-new-array {v8, v9}, [I

    .line 2440
    move-result-object v18

    .line 2443
    filled-new-array/range {v10 .. v18}, [[I

    .line 2444
    move-result-object v28

    .line 2447
    const/16 v8, 0x1d1

    .line 2448
    filled-new-array {v2, v8}, [I

    .line 2450
    move-result-object v9

    .line 2453
    const/16 v8, 0x1d7

    .line 2454
    filled-new-array {v7, v8}, [I

    .line 2456
    move-result-object v10

    .line 2459
    const/16 v8, 0x1dc

    .line 2460
    filled-new-array {v7, v8}, [I

    .line 2462
    move-result-object v11

    .line 2465
    const/16 v8, 0x1e1

    .line 2466
    filled-new-array {v7, v8}, [I

    .line 2468
    move-result-object v12

    .line 2471
    const/16 v8, 0x1e6

    .line 2472
    filled-new-array {v7, v8}, [I

    .line 2474
    move-result-object v13

    .line 2477
    const/16 v8, 0x1be

    .line 2478
    filled-new-array {v8, v1}, [I

    .line 2480
    move-result-object v14

    .line 2483
    const/16 v15, 0x1f0

    .line 2484
    filled-new-array {v8, v15}, [I

    .line 2486
    move-result-object v15

    .line 2489
    const/16 v8, 0x1f4

    .line 2490
    filled-new-array {v7, v8}, [I

    .line 2492
    move-result-object v16

    .line 2495
    const/16 v8, 0x1f9

    .line 2496
    filled-new-array {v7, v8}, [I

    .line 2498
    move-result-object v17

    .line 2501
    const/16 v8, 0x1fd

    .line 2502
    filled-new-array {v2, v8}, [I

    .line 2504
    move-result-object v18

    .line 2507
    const/16 v8, 0x1bb

    .line 2508
    const/16 v1, 0x201

    .line 2510
    filled-new-array {v8, v1}, [I

    .line 2512
    move-result-object v19

    .line 2515
    const/16 v1, 0x1ba

    .line 2516
    const/16 v8, 0x205

    .line 2518
    filled-new-array {v1, v8}, [I

    .line 2520
    move-result-object v20

    .line 2523
    const/16 v8, 0x209

    .line 2524
    filled-new-array {v1, v8}, [I

    .line 2526
    move-result-object v21

    .line 2529
    const/16 v1, 0x1b9

    .line 2530
    const/16 v8, 0x20d

    .line 2532
    filled-new-array {v1, v8}, [I

    .line 2534
    move-result-object v22

    .line 2537
    filled-new-array/range {v9 .. v22}, [[I

    .line 2538
    move-result-object v29

    .line 2541
    const/16 v1, 0x1b7

    .line 2542
    filled-new-array {v3, v1}, [I

    .line 2544
    move-result-object v30

    .line 2547
    const/16 v1, 0x1a3

    .line 2548
    filled-new-array {v1, v7}, [I

    .line 2550
    move-result-object v31

    .line 2553
    const/16 v1, 0x1c3

    .line 2554
    filled-new-array {v4, v1}, [I

    .line 2556
    move-result-object v32

    .line 2559
    const/16 v1, 0x1c9

    .line 2560
    filled-new-array {v6, v1}, [I

    .line 2562
    move-result-object v33

    .line 2565
    const/16 v1, 0x1ce

    .line 2566
    filled-new-array {v5, v1}, [I

    .line 2568
    move-result-object v34

    .line 2571
    const/16 v1, 0x1aa

    .line 2572
    const/16 v8, 0x1d4

    .line 2574
    filled-new-array {v1, v8}, [I

    .line 2576
    move-result-object v35

    .line 2579
    const/16 v1, 0x1ab

    .line 2580
    const/16 v8, 0x1d9

    .line 2582
    filled-new-array {v1, v8}, [I

    .line 2584
    move-result-object v36

    .line 2587
    const/16 v1, 0x1ac

    .line 2588
    const/16 v8, 0x1de

    .line 2590
    filled-new-array {v1, v8}, [I

    .line 2592
    move-result-object v37

    .line 2595
    const/16 v1, 0x1ad

    .line 2596
    const/16 v8, 0x1e3

    .line 2598
    filled-new-array {v1, v8}, [I

    .line 2600
    move-result-object v38

    .line 2603
    const/16 v1, 0x1af

    .line 2604
    const/16 v8, 0x1e8

    .line 2606
    filled-new-array {v1, v8}, [I

    .line 2608
    move-result-object v39

    .line 2611
    const/16 v1, 0x1b0

    .line 2612
    const/16 v8, 0x1ed

    .line 2614
    filled-new-array {v1, v8}, [I

    .line 2616
    move-result-object v40

    .line 2619
    const/16 v8, 0x1f1

    .line 2620
    filled-new-array {v1, v8}, [I

    .line 2622
    move-result-object v41

    .line 2625
    const/16 v1, 0x1b2

    .line 2626
    const/16 v8, 0x1f6

    .line 2628
    filled-new-array {v1, v8}, [I

    .line 2630
    move-result-object v42

    .line 2633
    const/16 v8, 0x1fa

    .line 2634
    filled-new-array {v1, v8}, [I

    .line 2636
    move-result-object v43

    .line 2639
    const/16 v1, 0x1b3

    .line 2640
    const/16 v8, 0x1ff

    .line 2642
    filled-new-array {v1, v8}, [I

    .line 2644
    move-result-object v44

    .line 2647
    const/16 v1, 0x1b4

    .line 2648
    const/16 v8, 0x203

    .line 2650
    filled-new-array {v1, v8}, [I

    .line 2652
    move-result-object v45

    .line 2655
    const/16 v8, 0x207

    .line 2656
    filled-new-array {v1, v8}, [I

    .line 2658
    move-result-object v46

    .line 2661
    const/16 v1, 0x1b5

    .line 2662
    const/16 v8, 0x20b

    .line 2664
    filled-new-array {v1, v8}, [I

    .line 2666
    move-result-object v47

    .line 2669
    const/16 v8, 0x20f

    .line 2670
    filled-new-array {v1, v8}, [I

    .line 2672
    move-result-object v48

    .line 2675
    const/16 v1, 0x1b6

    .line 2676
    const/16 v8, 0x213

    .line 2678
    filled-new-array {v1, v8}, [I

    .line 2680
    move-result-object v49

    .line 2683
    const/16 v8, 0x217

    .line 2684
    filled-new-array {v1, v8}, [I

    .line 2686
    move-result-object v50

    .line 2689
    filled-new-array/range {v30 .. v50}, [[I

    .line 2690
    move-result-object v30

    .line 2693
    filled-new-array {v4, v2}, [I

    .line 2694
    move-result-object v8

    .line 2697
    const/16 v1, 0x1c3

    .line 2698
    filled-new-array {v6, v1}, [I

    .line 2700
    move-result-object v9

    .line 2703
    const/16 v1, 0x1c9

    .line 2704
    filled-new-array {v6, v1}, [I

    .line 2706
    move-result-object v10

    .line 2709
    const/16 v1, 0x1cf

    .line 2710
    filled-new-array {v6, v1}, [I

    .line 2712
    move-result-object v11

    .line 2715
    const/16 v1, 0x1d5

    .line 2716
    filled-new-array {v5, v1}, [I

    .line 2718
    move-result-object v12

    .line 2721
    const/16 v1, 0x1db

    .line 2722
    filled-new-array {v5, v1}, [I

    .line 2724
    move-result-object v13

    .line 2727
    const/16 v1, 0x1e1

    .line 2728
    filled-new-array {v5, v1}, [I

    .line 2730
    move-result-object v14

    .line 2733
    const/16 v1, 0x1e6

    .line 2734
    filled-new-array {v5, v1}, [I

    .line 2736
    move-result-object v15

    .line 2739
    const/16 v1, 0x1ec

    .line 2740
    filled-new-array {v5, v1}, [I

    .line 2742
    move-result-object v16

    .line 2745
    const/16 v1, 0x1f1

    .line 2746
    filled-new-array {v5, v1}, [I

    .line 2748
    move-result-object v17

    .line 2751
    const/16 v1, 0x1f6

    .line 2752
    filled-new-array {v6, v1}, [I

    .line 2754
    move-result-object v18

    .line 2757
    const/16 v1, 0x1fb

    .line 2758
    filled-new-array {v6, v1}, [I

    .line 2760
    move-result-object v19

    .line 2763
    const/16 v1, 0x200

    .line 2764
    filled-new-array {v6, v1}, [I

    .line 2766
    move-result-object v20

    .line 2769
    const/16 v1, 0x1a6

    .line 2770
    const/16 v2, 0x205

    .line 2772
    filled-new-array {v1, v2}, [I

    .line 2774
    move-result-object v21

    .line 2777
    const/16 v2, 0x20a

    .line 2778
    filled-new-array {v1, v2}, [I

    .line 2780
    move-result-object v22

    .line 2783
    filled-new-array/range {v8 .. v22}, [[I

    .line 2784
    move-result-object v31

    .line 2787
    const/16 v1, 0x1d3

    .line 2788
    filled-new-array {v7, v1}, [I

    .line 2790
    move-result-object v8

    .line 2793
    const/16 v1, 0x1b8

    .line 2794
    const/16 v2, 0x1d6

    .line 2796
    filled-new-array {v1, v2}, [I

    .line 2798
    move-result-object v9

    .line 2801
    const/16 v1, 0x1b1

    .line 2802
    const/16 v2, 0x1d8

    .line 2804
    filled-new-array {v1, v2}, [I

    .line 2806
    move-result-object v10

    .line 2809
    const/16 v1, 0x1aa

    .line 2810
    const/16 v2, 0x1da

    .line 2812
    filled-new-array {v1, v2}, [I

    .line 2814
    move-result-object v11

    .line 2817
    const/16 v1, 0x1a2

    .line 2818
    const/16 v2, 0x1db

    .line 2820
    filled-new-array {v1, v2}, [I

    .line 2822
    move-result-object v12

    .line 2825
    const/16 v1, 0x19b

    .line 2826
    const/16 v2, 0x1dd

    .line 2828
    filled-new-array {v1, v2}, [I

    .line 2830
    move-result-object v13

    .line 2833
    const/16 v1, 0x194

    .line 2834
    const/16 v2, 0x1de

    .line 2836
    filled-new-array {v1, v2}, [I

    .line 2838
    move-result-object v14

    .line 2841
    const/16 v1, 0x18d

    .line 2842
    const/16 v2, 0x1e0

    .line 2844
    filled-new-array {v1, v2}, [I

    .line 2846
    move-result-object v15

    .line 2849
    const/16 v1, 0x185

    .line 2850
    const/16 v2, 0x1e1

    .line 2852
    filled-new-array {v1, v2}, [I

    .line 2854
    move-result-object v16

    .line 2857
    const/16 v1, 0x17e

    .line 2858
    const/16 v2, 0x1e2

    .line 2860
    filled-new-array {v1, v2}, [I

    .line 2862
    move-result-object v17

    .line 2865
    const/16 v1, 0x17a

    .line 2866
    const/16 v2, 0x1e3

    .line 2868
    filled-new-array {v1, v2}, [I

    .line 2870
    move-result-object v18

    .line 2873
    const/16 v1, 0x175

    .line 2874
    filled-new-array {v1, v2}, [I

    .line 2876
    move-result-object v19

    .line 2879
    filled-new-array/range {v8 .. v19}, [[I

    .line 2880
    move-result-object v32

    .line 2883
    const/16 v1, 0x1d6

    .line 2884
    const/16 v2, 0x1eb

    .line 2886
    filled-new-array {v1, v2}, [I

    .line 2888
    move-result-object v33

    .line 2891
    const/16 v1, 0x1d2

    .line 2892
    const/16 v2, 0x1ee

    .line 2894
    filled-new-array {v1, v2}, [I

    .line 2896
    move-result-object v34

    .line 2899
    const/16 v1, 0x1cc

    .line 2900
    const/16 v2, 0x1f0

    .line 2902
    filled-new-array {v1, v2}, [I

    .line 2904
    move-result-object v35

    .line 2907
    const/16 v1, 0x1c6

    .line 2908
    const/16 v2, 0x1f2

    .line 2910
    filled-new-array {v1, v2}, [I

    .line 2912
    move-result-object v36

    .line 2915
    const/16 v1, 0x1c0

    .line 2916
    const/16 v2, 0x1f4

    .line 2918
    filled-new-array {v1, v2}, [I

    .line 2920
    move-result-object v37

    .line 2923
    const/16 v1, 0x1ba

    .line 2924
    const/16 v2, 0x1f5

    .line 2926
    filled-new-array {v1, v2}, [I

    .line 2928
    move-result-object v38

    .line 2931
    const/16 v1, 0x1b4

    .line 2932
    const/16 v2, 0x1f7

    .line 2934
    filled-new-array {v1, v2}, [I

    .line 2936
    move-result-object v39

    .line 2939
    const/16 v1, 0x1ad

    .line 2940
    const/16 v2, 0x1f8

    .line 2942
    filled-new-array {v1, v2}, [I

    .line 2944
    move-result-object v40

    .line 2947
    const/16 v1, 0x1fa

    .line 2948
    filled-new-array {v5, v1}, [I

    .line 2950
    move-result-object v41

    .line 2953
    const/16 v1, 0x1a2

    .line 2954
    const/16 v2, 0x1fb

    .line 2956
    filled-new-array {v1, v2}, [I

    .line 2958
    move-result-object v42

    .line 2961
    const/16 v1, 0x19b

    .line 2962
    const/16 v2, 0x1fc

    .line 2964
    filled-new-array {v1, v2}, [I

    .line 2966
    move-result-object v43

    .line 2969
    const/16 v1, 0x194

    .line 2970
    filled-new-array {v1, v2}, [I

    .line 2972
    move-result-object v44

    .line 2975
    const/16 v1, 0x18e

    .line 2976
    const/16 v2, 0x1fd

    .line 2978
    filled-new-array {v1, v2}, [I

    .line 2980
    move-result-object v45

    .line 2983
    const/16 v1, 0x188

    .line 2984
    const/16 v2, 0x1fe

    .line 2986
    filled-new-array {v1, v2}, [I

    .line 2988
    move-result-object v46

    .line 2991
    const/16 v1, 0x181

    .line 2992
    filled-new-array {v1, v2}, [I

    .line 2994
    move-result-object v47

    .line 2997
    const/16 v1, 0x17a

    .line 2998
    filled-new-array {v1, v2}, [I

    .line 3000
    move-result-object v48

    .line 3003
    const/16 v1, 0x173

    .line 3004
    filled-new-array {v1, v2}, [I

    .line 3006
    move-result-object v49

    .line 3009
    filled-new-array/range {v33 .. v49}, [[I

    .line 3010
    move-result-object v33

    .line 3013
    const/16 v1, 0x20c

    .line 3014
    const/16 v2, 0x221

    .line 3016
    filled-new-array {v1, v2}, [I

    .line 3018
    move-result-object v34

    .line 3021
    const/16 v1, 0x20f

    .line 3022
    const/16 v2, 0x226

    .line 3024
    filled-new-array {v1, v2}, [I

    .line 3026
    move-result-object v35

    .line 3029
    const/16 v1, 0x210

    .line 3030
    const/16 v2, 0x22a

    .line 3032
    filled-new-array {v1, v2}, [I

    .line 3034
    move-result-object v36

    .line 3037
    const/16 v1, 0x211

    .line 3038
    const/16 v2, 0x22e

    .line 3040
    filled-new-array {v1, v2}, [I

    .line 3042
    move-result-object v37

    .line 3045
    const/16 v1, 0x212

    .line 3046
    const/16 v2, 0x232

    .line 3048
    filled-new-array {v1, v2}, [I

    .line 3050
    move-result-object v38

    .line 3053
    const/16 v1, 0x213

    .line 3054
    const/16 v2, 0x236

    .line 3056
    filled-new-array {v1, v2}, [I

    .line 3058
    move-result-object v39

    .line 3061
    const/16 v1, 0x214

    .line 3062
    const/16 v2, 0x239

    .line 3064
    filled-new-array {v1, v2}, [I

    .line 3066
    move-result-object v40

    .line 3069
    const/16 v2, 0x23c

    .line 3070
    filled-new-array {v1, v2}, [I

    .line 3072
    move-result-object v41

    .line 3075
    const/16 v1, 0x215

    .line 3076
    const/16 v2, 0x240

    .line 3078
    filled-new-array {v1, v2}, [I

    .line 3080
    move-result-object v42

    .line 3083
    const/16 v2, 0x243

    .line 3084
    filled-new-array {v1, v2}, [I

    .line 3086
    move-result-object v43

    .line 3089
    const/16 v1, 0x216

    .line 3090
    const/16 v2, 0x246

    .line 3092
    filled-new-array {v1, v2}, [I

    .line 3094
    move-result-object v44

    .line 3097
    const/16 v1, 0x215

    .line 3098
    const/16 v2, 0x248

    .line 3100
    filled-new-array {v1, v2}, [I

    .line 3102
    move-result-object v45

    .line 3105
    const/16 v2, 0x24b

    .line 3106
    filled-new-array {v1, v2}, [I

    .line 3108
    move-result-object v46

    .line 3111
    const/16 v1, 0x214

    .line 3112
    const/16 v2, 0x24d

    .line 3114
    filled-new-array {v1, v2}, [I

    .line 3116
    move-result-object v47

    .line 3119
    const/16 v1, 0x215

    .line 3120
    const/16 v2, 0x250

    .line 3122
    filled-new-array {v1, v2}, [I

    .line 3124
    move-result-object v48

    .line 3127
    const/16 v1, 0x214

    .line 3128
    const/16 v2, 0x252

    .line 3130
    filled-new-array {v1, v2}, [I

    .line 3132
    move-result-object v49

    .line 3135
    const/16 v2, 0x254

    .line 3136
    filled-new-array {v1, v2}, [I

    .line 3138
    move-result-object v50

    .line 3141
    const/16 v1, 0x212

    .line 3142
    const/16 v2, 0x255

    .line 3144
    filled-new-array {v1, v2}, [I

    .line 3146
    move-result-object v51

    .line 3149
    const/16 v2, 0x257

    .line 3150
    filled-new-array {v1, v2}, [I

    .line 3152
    move-result-object v52

    .line 3155
    const/16 v1, 0x210

    .line 3156
    const/16 v2, 0x258

    .line 3158
    filled-new-array {v1, v2}, [I

    .line 3160
    move-result-object v53

    .line 3163
    const/16 v2, 0x25a

    .line 3164
    filled-new-array {v1, v2}, [I

    .line 3166
    move-result-object v54

    .line 3169
    const/16 v1, 0x20e

    .line 3170
    const/16 v2, 0x25b

    .line 3172
    filled-new-array {v1, v2}, [I

    .line 3174
    move-result-object v55

    .line 3177
    const/16 v1, 0x20d

    .line 3178
    const/16 v2, 0x25c

    .line 3180
    filled-new-array {v1, v2}, [I

    .line 3182
    move-result-object v56

    .line 3185
    const/16 v1, 0x20b

    .line 3186
    filled-new-array {v1, v2}, [I

    .line 3188
    move-result-object v57

    .line 3191
    const/16 v1, 0x20a

    .line 3192
    const/16 v2, 0x25d

    .line 3194
    filled-new-array {v1, v2}, [I

    .line 3196
    move-result-object v58

    .line 3199
    const/16 v1, 0x207

    .line 3200
    filled-new-array {v1, v2}, [I

    .line 3202
    move-result-object v59

    .line 3205
    const/16 v1, 0x206

    .line 3206
    const/16 v2, 0x25e

    .line 3208
    filled-new-array {v1, v2}, [I

    .line 3210
    move-result-object v60

    .line 3213
    const/16 v1, 0x204

    .line 3214
    filled-new-array {v1, v2}, [I

    .line 3216
    move-result-object v61

    .line 3219
    const/16 v1, 0x202

    .line 3220
    filled-new-array {v1, v2}, [I

    .line 3222
    move-result-object v62

    .line 3225
    const/16 v1, 0x1ff

    .line 3226
    const/16 v2, 0x25d

    .line 3228
    filled-new-array {v1, v2}, [I

    .line 3230
    move-result-object v63

    .line 3233
    const/16 v1, 0x1fd

    .line 3234
    filled-new-array {v1, v2}, [I

    .line 3236
    move-result-object v64

    .line 3239
    filled-new-array/range {v34 .. v64}, [[I

    .line 3240
    move-result-object v34

    .line 3243
    const/16 v1, 0x1e2

    .line 3244
    const/16 v2, 0x1f7

    .line 3246
    filled-new-array {v1, v2}, [I

    .line 3248
    move-result-object v8

    .line 3251
    const/16 v1, 0x1e4

    .line 3252
    const/16 v2, 0x1fd

    .line 3254
    filled-new-array {v1, v2}, [I

    .line 3256
    move-result-object v9

    .line 3259
    const/16 v1, 0x1e6

    .line 3260
    const/16 v2, 0x203

    .line 3262
    filled-new-array {v1, v2}, [I

    .line 3264
    move-result-object v10

    .line 3267
    const/16 v2, 0x208

    .line 3268
    filled-new-array {v1, v2}, [I

    .line 3270
    move-result-object v11

    .line 3273
    const/16 v1, 0x1e7

    .line 3274
    const/16 v2, 0x20d

    .line 3276
    filled-new-array {v1, v2}, [I

    .line 3278
    move-result-object v12

    .line 3281
    const/16 v1, 0x1e8

    .line 3282
    const/16 v2, 0x212

    .line 3284
    filled-new-array {v1, v2}, [I

    .line 3286
    move-result-object v13

    .line 3289
    const/16 v2, 0x217

    .line 3290
    filled-new-array {v1, v2}, [I

    .line 3292
    move-result-object v14

    .line 3295
    const/16 v1, 0x1e9

    .line 3296
    const/16 v2, 0x21c

    .line 3298
    filled-new-array {v1, v2}, [I

    .line 3300
    move-result-object v15

    .line 3303
    const/16 v1, 0x1ea

    .line 3304
    const/16 v2, 0x221

    .line 3306
    filled-new-array {v1, v2}, [I

    .line 3308
    move-result-object v16

    .line 3311
    const/16 v2, 0x225

    .line 3312
    filled-new-array {v1, v2}, [I

    .line 3314
    move-result-object v17

    .line 3317
    const/16 v2, 0x229

    .line 3318
    filled-new-array {v1, v2}, [I

    .line 3320
    move-result-object v18

    .line 3323
    const/16 v1, 0x22e

    .line 3324
    const/16 v2, 0x1eb

    .line 3326
    filled-new-array {v2, v1}, [I

    .line 3328
    move-result-object v19

    .line 3331
    const/16 v1, 0x232

    .line 3332
    filled-new-array {v2, v1}, [I

    .line 3334
    move-result-object v20

    .line 3337
    const/16 v1, 0x236

    .line 3338
    filled-new-array {v2, v1}, [I

    .line 3340
    move-result-object v21

    .line 3343
    const/16 v1, 0x23a

    .line 3344
    filled-new-array {v2, v1}, [I

    .line 3346
    move-result-object v22

    .line 3349
    filled-new-array/range {v8 .. v22}, [[I

    .line 3350
    move-result-object v35

    .line 3353
    const/16 v1, 0x1b6

    .line 3354
    filled-new-array {v3, v1}, [I

    .line 3356
    move-result-object v8

    .line 3359
    const/16 v1, 0x1ba

    .line 3360
    filled-new-array {v3, v1}, [I

    .line 3362
    move-result-object v9

    .line 3365
    const/16 v1, 0x1a0

    .line 3366
    filled-new-array {v1, v7}, [I

    .line 3368
    move-result-object v10

    .line 3371
    const/16 v1, 0x19e

    .line 3372
    const/16 v2, 0x1c0

    .line 3374
    filled-new-array {v1, v2}, [I

    .line 3376
    move-result-object v11

    .line 3379
    const/16 v1, 0x19d

    .line 3380
    const/16 v2, 0x1c3

    .line 3382
    filled-new-array {v1, v2}, [I

    .line 3384
    move-result-object v12

    .line 3387
    const/16 v1, 0x19c

    .line 3388
    const/16 v2, 0x1c6

    .line 3390
    filled-new-array {v1, v2}, [I

    .line 3392
    move-result-object v13

    .line 3395
    const/16 v1, 0x19b

    .line 3396
    const/16 v2, 0x1c9

    .line 3398
    filled-new-array {v1, v2}, [I

    .line 3400
    move-result-object v14

    .line 3403
    const/16 v1, 0x19a

    .line 3404
    const/16 v2, 0x1cc

    .line 3406
    filled-new-array {v1, v2}, [I

    .line 3408
    move-result-object v15

    .line 3411
    const/16 v1, 0x198

    .line 3412
    const/16 v2, 0x1ce

    .line 3414
    filled-new-array {v1, v2}, [I

    .line 3416
    move-result-object v16

    .line 3419
    const/16 v1, 0x197

    .line 3420
    const/16 v2, 0x1d1

    .line 3422
    filled-new-array {v1, v2}, [I

    .line 3424
    move-result-object v17

    .line 3427
    filled-new-array/range {v8 .. v17}, [[I

    .line 3428
    move-result-object v36

    .line 3431
    filled-new-array/range {v27 .. v36}, [[[I

    .line 3432
    move-result-object v1

    .line 3435
    iput-object v1, v0, Lcom/miui/clock/module/RotateFontStyle;->rotateMinus:[[[I

    .line 3436
    return-void

    .line 3438
    nop

    .line 3439
    :array_0
    .array-data 4
        0x7f080c9c    # @drawable/font_b_0 'res/drawable/font_b_0.xml'
        0x7f080c9d    # @drawable/font_b_1 'res/drawable/font_b_1.xml'
        0x7f080c9e    # @drawable/font_b_2 'res/drawable/font_b_2.xml'
        0x7f080c9f    # @drawable/font_b_3 'res/drawable/font_b_3.xml'
        0x7f080ca0    # @drawable/font_b_4 'res/drawable/font_b_4.xml'
        0x7f080ca1    # @drawable/font_b_5 'res/drawable/font_b_5.xml'
        0x7f080ca2    # @drawable/font_b_6 'res/drawable/font_b_6.xml'
        0x7f080ca3    # @drawable/font_b_7 'res/drawable/font_b_7.xml'
        0x7f080ca4    # @drawable/font_b_8 'res/drawable/font_b_8.xml'
        0x7f080ca5    # @drawable/font_b_9 'res/drawable/font_b_9.xml'
    .end array-data

    .line 3440
    :array_1
    .array-data 4
        0x40d4cccd    # 6.65f
        -0x3eb428f6    # -12.74f
    .end array-data

    .line 3464
    :array_2
    .array-data 4
        -0x3fc8f5c3    # -2.86f
        0x40a00000    # 5.0f
    .end array-data

    .line 3472
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 3480
    :array_4
    .array-data 4
        0x40e8f5c3    # 7.28f
        -0x3f1d70a4    # -7.08f
    .end array-data

    .line 3488
    :array_5
    .array-data 4
        -0x3eac0000    # -13.25f
        0x40ff0a3d    # 7.97f
    .end array-data

    .line 3496
    :array_6
    .array-data 4
        0x40a23d71    # 5.07f
        -0x3f68f5c3    # -4.72f
    .end array-data

    .line 3504
    :array_7
    .array-data 4
        0x408c7ae1    # 4.39f
        -0x3eb30a3d    # -12.81f
    .end array-data

    .line 3512
    :array_8
    .array-data 4
        0x0
        -0x3e40147b    # -23.99f
    .end array-data

    .line 3520
    :array_9
    .array-data 4
        0x0
        -0x3ecb851f    # -11.28f
    .end array-data

    .line 3528
    :array_a
    .array-data 4
        -0x3f5b851f    # -5.14f
        -0x3ef2b852    # -8.83f
    .end array-data

    .line 3536
    :array_b
    .array-data 4
        0x4151c28f    # 13.11f
        -0x3eef5c29    # -9.04f
    .end array-data

    .line 3544
    :array_c
    .array-data 4
        0x40a23d71    # 5.07f
        0x40f8f5c3    # 7.78f
    .end array-data

    .line 3552
    :array_d
    .array-data 4
        0x413028f6    # 11.01f
        -0x3efd999a    # -8.15f
    .end array-data

    .line 3560
    :array_e
    .array-data 4
        0x40d9999a    # 6.8f
        -0x3e97d70a    # -14.51f
    .end array-data

    .line 3568
    :array_f
    .array-data 4
        0x4103d70a    # 8.24f
        0x40ff0a3d    # 7.97f
    .end array-data

    .line 3576
    :array_10
    .array-data 4
        0x419ccccd    # 19.6f
        -0x400147ae    # -1.99f
    .end array-data

    .line 3584
    :array_11
    .array-data 4
        0x415e8f5c    # 13.91f
        -0x3e8eb852    # -15.08f
    .end array-data

    .line 3592
    :array_12
    .array-data 4
        0x41591eb8    # 13.57f
        -0x3e40147b    # -23.99f
    .end array-data

    .line 3600
    :array_13
    .array-data 4
        0x418feb85    # 17.99f
        -0x3eaa6666    # -13.35f
    .end array-data

    .line 3608
    :array_14
    .array-data 4
        0x416f3333    # 14.95f
        0x0
    .end array-data

    .line 3616
    :array_15
    .array-data 4
        0x4071eb85    # 3.78f
        0x4019999a    # 2.4f
    .end array-data

    .line 3624
    :array_16
    .array-data 4
        -0x3f6bd70a    # -4.63f
        0x414ae148    # 12.68f
    .end array-data

    .line 3632
    :array_17
    .array-data 4
        0x0
        0x40c0f5c3    # 6.03f
    .end array-data

    .line 3640
    :array_18
    .array-data 4
        -0x3eec28f6    # -9.24f
        0x40828f5c    # 4.08f
    .end array-data

    .line 3648
    :array_19
    .array-data 4
        -0x3eef851f    # -9.03f
        0x411e147b    # 9.88f
    .end array-data

    .line 3656
    :array_1a
    .array-data 4
        -0x3f623d71    # -4.93f
        -0x3f19eb85    # -7.19f
    .end array-data

    .line 3664
    :array_1b
    .array-data 4
        -0x3ed73333    # -10.55f
        0x412f3333    # 10.95f
    .end array-data

    .line 3672
    :array_1c
    .array-data 4
        -0x3eb2e148    # -12.82f
        -0x3e6451ec    # -19.46f
    .end array-data

    .line 3680
    :array_1d
    .array-data 4
        -0x3e82147b    # -15.87f
        0x414ab852    # 12.67f
    .end array-data

    .line 3688
    :array_1e
    .array-data 4
        -0x3ee28f5c    # -9.84f
        0x40800000    # 4.0f
    .end array-data

    .line 3696
    :array_1f
    .array-data 4
        -0x3e991eb8    # -14.43f
        0x40d2e148    # 6.59f
    .end array-data

    .line 3704
    :array_20
    .array-data 4
        -0x3f028f5c    # -7.92f
        -0x3e7d0a3d    # -16.37f
    .end array-data

    .line 3712
    :array_21
    .array-data 4
        -0x3fea3d71    # -2.34f
        0x408d1eb8    # 4.41f
    .end array-data

    .line 3720
    :array_22
    .array-data 4
        -0x3ea2b852    # -13.83f
        -0x3ef23d71    # -8.86f
    .end array-data

    .line 3728
    :array_23
    .array-data 4
        0x40900000    # 4.5f
        0x0
    .end array-data

    .line 3736
    :array_24
    .array-data 4
        0x41607ae1    # 14.03f
        0x0
    .end array-data

    .line 3744
    :array_25
    .array-data 4
        0x40900000    # 4.5f
        0x0
    .end array-data

    .line 3752
    :array_26
    .array-data 4
        -0x404a3d71    # -1.42f
        -0x3e77eb85    # -17.01f
    .end array-data

    .line 3760
    :array_27
    .array-data 4
        0x40900000    # 4.5f
        -0x3ea4a3d7    # -13.71f
    .end array-data

    .line 3768
    :array_28
    .array-data 4
        -0x402b851f    # -1.66f
        -0x3effd70a    # -8.01f
    .end array-data

    .line 3776
    :array_29
    .array-data 4
        0x40f147ae    # 7.54f
        0x408851ec    # 4.26f
    .end array-data

    .line 3784
    :array_2a
    .array-data 4
        0x4120f5c3    # 10.06f
        -0x3e3747ae    # -25.09f
    .end array-data

    .line 3792
    :array_2b
    .array-data 4
        0x414e6666    # 12.9f
        0x40c23d71    # 6.07f
    .end array-data

    :array_2c
    .array-data 4
        0x414e6666    # 12.9f
        0x0
    .end array-data

    :array_2d
    .array-data 4
        -0x3f73851f    # -4.39f
        0x0
    .end array-data

    :array_2e
    .array-data 4
        -0x3ec9eb85    # -11.38f
        0x41591eb8    # 13.57f
    .end array-data

    :array_2f
    .array-data 4
        -0x3ec9eb85    # -11.38f
        0x4174cccd    # 15.3f
    .end array-data

    :array_30
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_31
    .array-data 4
        -0x3ec91eb8    # -11.43f
        0x40a00000    # 5.0f
    .end array-data

    :array_32
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_33
    .array-data 4
        -0x3f0c7ae1    # -7.61f
        0x0
    .end array-data

    :array_34
    .array-data 4
        0x4001eb85    # 2.03f
        -0x3e6c3d71    # -18.47f
    .end array-data

    :array_35
    .array-data 4
        -0x3f57ae14    # -5.26f
        -0x3ed4cccd    # -10.7f
    .end array-data

    :array_36
    .array-data 4
        -0x3eb5eb85    # -12.63f
        0x40a1999a    # 5.05f
    .end array-data

    :array_37
    .array-data 4
        0x0
        -0x3ef5c28f    # -8.64f
    .end array-data

    :array_38
    .array-data 4
        -0x3ee451ec    # -9.73f
        -0x3fdae148    # -2.58f
    .end array-data

    :array_39
    .array-data 4
        0x40733333    # 3.8f
        0x4096147b    # 4.69f
    .end array-data

    :array_3a
    .array-data 4
        0x0
        -0x3f5e6666    # -5.05f
    .end array-data

    :array_3b
    .array-data 4
        0x40b3851f    # 5.61f
        0x415ae148    # 13.68f
    .end array-data

    :array_3c
    .array-data 4
        0x0
        0x40800000    # 4.0f
    .end array-data

    :array_3d
    .array-data 4
        -0x3f928f5c    # -3.71f
        0x40b1999a    # 5.55f
    .end array-data

    :array_3e
    .array-data 4
        0x0
        -0x3e5547ae    # -21.34f
    .end array-data

    :array_3f
    .array-data 4
        -0x3ef07ae1    # -8.97f
        -0x3f400000    # -6.0f
    .end array-data

    :array_40
    .array-data 4
        -0x3f3051ec    # -6.49f
        -0x3efe147b    # -8.12f
    .end array-data

    :array_41
    .array-data 4
        -0x3fc47ae1    # -2.93f
        0x4037ae14    # 2.87f
    .end array-data

    :array_42
    .array-data 4
        0x0
        0x413dc28f    # 11.86f
    .end array-data

    :array_43
    .array-data 4
        -0x3edb851f    # -10.28f
        0x0
    .end array-data

    :array_44
    .array-data 4
        -0x3f34cccd    # -6.35f
        -0x3ee5c28f    # -9.64f
    .end array-data

    :array_45
    .array-data 4
        -0x3edb851f    # -10.28f
        0x413deb85    # 11.87f
    .end array-data

    :array_46
    .array-data 4
        -0x3fe7ae14    # -2.38f
        -0x3edf0a3d    # -10.06f
    .end array-data

    :array_47
    .array-data 4
        -0x3f0fae14    # -7.51f
        -0x3feeb852    # -2.27f
    .end array-data

    :array_48
    .array-data 4
        -0x40a8f5c3    # -0.84f
        -0x3e27c28f    # -27.03f
    .end array-data

    :array_49
    .array-data 4
        -0x3f28a3d7    # -6.73f
        -0x3f175c29    # -7.27f
    .end array-data

    :array_4a
    .array-data 4
        -0x403851ec    # -1.56f
        -0x3f60a3d7    # -4.98f
    .end array-data

    :array_4b
    .array-data 4
        -0x3f7bd70a    # -4.13f
        0x4118cccd    # 9.55f
    .end array-data

    :array_4c
    .array-data 4
        -0x3f7bd70a    # -4.13f
        0x410570a4    # 8.34f
    .end array-data

    :array_4d
    .array-data 4
        -0x3f7bd70a    # -4.13f
        0x4131eb85    # 11.12f
    .end array-data

    :array_4e
    .array-data 4
        -0x3f7bd70a    # -4.13f
        0x4177851f    # 15.47f
    .end array-data

    :array_4f
    .array-data 4
        -0x3f7bd70a    # -4.13f
        0x41668f5c    # 14.41f
    .end array-data

    :array_50
    .array-data 4
        -0x3f7bd70a    # -4.13f
        0x40800000    # 4.0f
    .end array-data

    :array_51
    .array-data 4
        -0x3f7bd70a    # -4.13f
        -0x3f21999a    # -6.95f
    .end array-data

    :array_52
    .array-data 4
        -0x3f7bd70a    # -4.13f
        -0x3e10f5c3    # -29.88f
    .end array-data

    :array_53
    .array-data 4
        -0x3f7bd70a    # -4.13f
        -0x3ef0cccd    # -8.95f
    .end array-data

    :array_54
    .array-data 4
        -0x3f7bd70a    # -4.13f
        -0x3f0ae148    # -7.66f
    .end array-data

    :array_55
    .array-data 4
        0x3f3851ec    # 0.72f
        0x3e2e147b    # 0.17f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3e8f5c29    # 0.28f
        0x3de147ae    # 0.11f
        0x3d4ccccd    # 0.05f
    .end array-data

    :array_56
    .array-data 4
        0x40f3cf3d
        0x41000000    # 8.0f
        0x40f3cf3d
        0x41000000    # 8.0f
        0x41061862
        0x41000000    # 8.0f
        0x40f3cf3d
        0x40f3cf3d
        0x40f3cf3d
        0x40f3cf3d
    .end array-data

    :array_57
    .array-data 4
        0x43236db7
        0x43100000    # 144.0f
        0x43298618
        0x43200000    # 160.0f
        0x43218618
        0x4329e79e
        0x43330c31
        0x434679e8
        0x43373cf4
        0x431f9e7a
    .end array-data

    :array_58
    .array-data 4
        0xab
        0x98
        0xb1
        0xa8
        0xaa
        0xb2
        0xbb
        0xce
        0xbf
        0xa7
    .end array-data

    :array_59
    .array-data 4
        0xb1
        0xc8
        0xba
        0xc2
        0xd0
        0xc2
        0xb8
        0xba
        0xba
        0xc4
    .end array-data
.end method


# virtual methods
.method public final enableRotate()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final getColonInterval()F
    .locals 0

    .line 1
    const/high16 p0, 0x41f00000    # 30.0f

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
    const/high16 p0, 0x42280000    # 42.0f

    .line 2
    return p0
    .line 4
.end method

.method public final getFontStyle()Lcom/miui/clock/module/BaseFontStyle$Style;
    .locals 0

    .line 1
    sget-object p0, Lcom/miui/clock/module/BaseFontStyle$Style;->SKPupok:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHourOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSKPupok;->mHourOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHourRotateDegree()[[[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSKPupok;->mHourRotateDegree:[[[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLargeClockHeights()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSKPupok;->mLargeClockHeight:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLargeClockWidth()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSKPupok;->mLargeClockWidth:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLeftEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSKPupok;->mSVGEmptyLeft:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMaxRotateDegree()F
    .locals 0

    .line 1
    const/high16 p0, 0x41f00000    # 30.0f

    .line 2
    return p0
    .line 4
.end method

.method public final getMinuteOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSKPupok;->mMinuteOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMinuteRotateDegree()[[[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSKPupok;->mMinuteRotateDegree:[[[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getNotificationColonHeight()F
    .locals 0

    .line 1
    const p0, 0x4251eb85    # 52.48f

    .line 2
    return p0
    .line 5
.end method

.method public final getNotificationColonWidth()F
    .locals 0

    .line 1
    const p0, 0x41cb5c29    # 25.42f

    .line 2
    return p0
    .line 5
.end method

.method public final getPercentages()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSKPupok;->mPercentages:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRightEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSKPupok;->mSVGEmptyRight:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSmallClockInnerHeight()I
    .locals 0

    .line 1
    const/16 p0, 0x52

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
    const p0, 0x419f70a4    # 19.93f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColon2MarginInnerTop()F
    .locals 0

    .line 1
    const p0, 0x4239999a    # 46.4f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonRealWidth()F
    .locals 0

    .line 1
    const p0, 0x414b0a3d    # 12.69f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResource()I
    .locals 0

    .line 1
    const p0, 0x7f080ca6    # @drawable/font_b_colon 'res/drawable/font_b_colon.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResourceHeight()I
    .locals 0

    .line 1
    const/16 p0, 0x80

    .line 2
    return p0
    .line 4
.end method

.method public final getSmallColonResourceWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x3e

    .line 2
    return p0
    .line 4
.end method

.method public final getSvgResource()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSKPupok;->mSVGResource:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextBoxWidth()I
    .locals 0

    .line 1
    const/16 p0, 0xc4

    .line 2
    return p0
    .line 4
.end method
