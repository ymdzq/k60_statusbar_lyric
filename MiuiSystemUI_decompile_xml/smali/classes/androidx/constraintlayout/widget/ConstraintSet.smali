.class public final Landroidx/constraintlayout/widget/ConstraintSet;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final VISIBILITY_FLAGS:[I

.field public static final sMapToConstant:Landroid/util/SparseIntArray;

.field public static final sOverrideMapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field public derivedState:Ljava/lang/String;

.field public final mConstraints:Ljava/util/HashMap;

.field public mForceId:Z

.field public mIdString:Ljava/lang/String;

.field public mMatchLabels:[Ljava/lang/String;

.field public mRotate:I

.field public final mSavedAttributes:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    const/16 v2, 0x8

    .line 4
    filled-new-array {v0, v1, v2}, [I

    .line 6
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 10
    new-instance v0, Landroid/util/SparseIntArray;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 14
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 17
    new-instance v3, Landroid/util/SparseIntArray;

    .line 19
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    sput-object v3, Landroidx/constraintlayout/widget/ConstraintSet;->sOverrideMapToConstant:Landroid/util/SparseIntArray;

    .line 24
    const/16 v4, 0x19

    .line 26
    const/16 v5, 0x52

    .line 28
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    const/16 v4, 0x1a

    .line 33
    const/16 v6, 0x53

    .line 35
    invoke-virtual {v0, v6, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 37
    const/16 v4, 0x1d

    .line 40
    const/16 v7, 0x55

    .line 42
    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 44
    const/16 v4, 0x56

    .line 47
    const/16 v8, 0x1e

    .line 49
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 51
    const/16 v4, 0x5c

    .line 54
    const/16 v8, 0x24

    .line 56
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 58
    const/16 v4, 0x5b

    .line 61
    const/16 v8, 0x23

    .line 63
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 65
    const/16 v4, 0x3f

    .line 68
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 70
    const/16 v4, 0x3e

    .line 73
    const/4 v8, 0x3

    .line 75
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 76
    const/4 v4, 0x1

    .line 79
    const/16 v8, 0x3a

    .line 80
    invoke-virtual {v0, v8, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 82
    const/16 v4, 0x5b

    .line 85
    const/16 v9, 0x3c

    .line 87
    invoke-virtual {v0, v9, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 89
    const/16 v4, 0x5c

    .line 92
    const/16 v10, 0x3b

    .line 94
    invoke-virtual {v0, v10, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 96
    const/16 v4, 0x65

    .line 99
    const/4 v11, 0x6

    .line 101
    invoke-virtual {v0, v4, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 102
    const/16 v4, 0x66

    .line 105
    const/4 v12, 0x7

    .line 107
    invoke-virtual {v0, v4, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 108
    const/16 v4, 0x11

    .line 111
    const/16 v13, 0x46

    .line 113
    invoke-virtual {v0, v13, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 115
    const/16 v4, 0x12

    .line 118
    const/16 v14, 0x47

    .line 120
    invoke-virtual {v0, v14, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 122
    const/16 v4, 0x13

    .line 125
    const/16 v15, 0x48

    .line 127
    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 129
    const/16 v4, 0x63

    .line 132
    const/16 v7, 0x36

    .line 134
    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 136
    const/4 v4, 0x0

    .line 139
    const/16 v6, 0x1b

    .line 140
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 142
    const/16 v4, 0x20

    .line 145
    const/16 v6, 0x57

    .line 147
    invoke-virtual {v0, v6, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 149
    const/16 v4, 0x58

    .line 152
    const/16 v5, 0x21

    .line 154
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 156
    const/16 v4, 0xa

    .line 159
    const/16 v5, 0x45

    .line 161
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 163
    const/16 v4, 0x9

    .line 166
    const/16 v15, 0x44

    .line 168
    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 170
    const/16 v4, 0x6a

    .line 173
    const/16 v14, 0xd

    .line 175
    invoke-virtual {v0, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 177
    const/16 v4, 0x6d

    .line 180
    const/16 v13, 0x10

    .line 182
    invoke-virtual {v0, v4, v13}, Landroid/util/SparseIntArray;->append(II)V

    .line 184
    const/16 v4, 0x6b

    .line 187
    const/16 v5, 0xe

    .line 189
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 191
    const/16 v4, 0x68

    .line 194
    const/16 v15, 0xb

    .line 196
    invoke-virtual {v0, v4, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 198
    const/16 v4, 0x6c

    .line 201
    const/16 v15, 0xf

    .line 203
    invoke-virtual {v0, v4, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 205
    const/16 v4, 0x69

    .line 208
    const/16 v10, 0xc

    .line 210
    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 212
    const/16 v4, 0x28

    .line 215
    const/16 v10, 0x5f

    .line 217
    invoke-virtual {v0, v10, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 219
    const/16 v4, 0x50

    .line 222
    const/16 v8, 0x27

    .line 224
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 226
    const/16 v4, 0x4f

    .line 229
    const/16 v8, 0x29

    .line 231
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 233
    const/16 v4, 0x5e

    .line 236
    const/16 v8, 0x2a

    .line 238
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 240
    const/16 v4, 0x4e

    .line 243
    const/16 v8, 0x14

    .line 245
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 247
    const/16 v4, 0x5d

    .line 250
    const/16 v8, 0x25

    .line 252
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 254
    const/16 v4, 0x43

    .line 257
    const/4 v8, 0x5

    .line 259
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 260
    const/16 v4, 0x51

    .line 263
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 265
    const/16 v4, 0x5a

    .line 268
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 270
    const/16 v4, 0x54

    .line 273
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 275
    const/16 v4, 0x3d

    .line 278
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 280
    const/16 v4, 0x39

    .line 283
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 285
    const/4 v4, 0x5

    .line 288
    const/16 v8, 0x18

    .line 289
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 291
    const/16 v4, 0x1c

    .line 294
    invoke-virtual {v0, v12, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 296
    const/16 v4, 0x17

    .line 299
    const/16 v8, 0x1f

    .line 301
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 303
    const/16 v4, 0x18

    .line 306
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 308
    const/16 v4, 0x22

    .line 311
    invoke-virtual {v0, v11, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 313
    const/4 v4, 0x2

    .line 316
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 317
    const/4 v4, 0x3

    .line 320
    const/16 v8, 0x17

    .line 321
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 323
    const/16 v4, 0x15

    .line 326
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 328
    const/16 v4, 0x60

    .line 331
    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 333
    const/16 v4, 0x49

    .line 336
    const/16 v8, 0x60

    .line 338
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 340
    const/4 v4, 0x2

    .line 343
    const/16 v8, 0x16

    .line 344
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 346
    const/16 v4, 0x2b

    .line 349
    invoke-virtual {v0, v14, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 351
    const/16 v4, 0x1a

    .line 354
    const/16 v8, 0x2c

    .line 356
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 358
    const/16 v4, 0x15

    .line 361
    const/16 v8, 0x2d

    .line 363
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 365
    const/16 v4, 0x16

    .line 368
    const/16 v8, 0x2e

    .line 370
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 372
    const/16 v4, 0x14

    .line 375
    invoke-virtual {v0, v4, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 377
    const/16 v4, 0x12

    .line 380
    const/16 v8, 0x2f

    .line 382
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 384
    const/16 v4, 0x13

    .line 387
    const/16 v8, 0x30

    .line 389
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 391
    const/16 v4, 0x31

    .line 394
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 396
    const/16 v4, 0x32

    .line 399
    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 401
    const/16 v4, 0x33

    .line 404
    invoke-virtual {v0, v13, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 406
    const/16 v4, 0x11

    .line 409
    const/16 v8, 0x34

    .line 411
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 413
    const/16 v4, 0x19

    .line 416
    const/16 v8, 0x35

    .line 418
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 420
    const/16 v4, 0x61

    .line 423
    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 425
    const/16 v4, 0x4a

    .line 428
    const/16 v8, 0x37

    .line 430
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 432
    const/16 v4, 0x62

    .line 435
    const/16 v8, 0x38

    .line 437
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 439
    const/16 v4, 0x4b

    .line 442
    const/16 v8, 0x39

    .line 444
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 446
    const/16 v4, 0x63

    .line 449
    const/16 v8, 0x3a

    .line 451
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 453
    const/16 v4, 0x4c

    .line 456
    const/16 v8, 0x3b

    .line 458
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 460
    const/16 v4, 0x40

    .line 463
    const/16 v8, 0x3d

    .line 465
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 467
    const/16 v4, 0x42

    .line 470
    const/16 v8, 0x3e

    .line 472
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 474
    const/16 v4, 0x41

    .line 477
    const/16 v8, 0x3f

    .line 479
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 481
    const/16 v4, 0x1c

    .line 484
    const/16 v8, 0x40

    .line 486
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 488
    const/16 v4, 0x79

    .line 491
    const/16 v8, 0x41

    .line 493
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 495
    const/16 v4, 0x23

    .line 498
    const/16 v8, 0x42

    .line 500
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 502
    const/16 v4, 0x7a

    .line 505
    const/16 v8, 0x43

    .line 507
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 509
    const/16 v4, 0x71

    .line 512
    const/16 v8, 0x4f

    .line 514
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 516
    const/4 v4, 0x1

    .line 519
    const/16 v8, 0x26

    .line 520
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 522
    const/16 v4, 0x70

    .line 525
    const/16 v8, 0x44

    .line 527
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 529
    const/16 v4, 0x64

    .line 532
    const/16 v8, 0x45

    .line 534
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 536
    const/16 v4, 0x4d

    .line 539
    const/16 v8, 0x46

    .line 541
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 543
    const/16 v4, 0x6f

    .line 546
    const/16 v8, 0x61

    .line 548
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 550
    const/16 v4, 0x20

    .line 553
    const/16 v8, 0x47

    .line 555
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 557
    const/16 v4, 0x1e

    .line 560
    const/16 v8, 0x48

    .line 562
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 564
    const/16 v4, 0x1f

    .line 567
    const/16 v8, 0x49

    .line 569
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 571
    const/16 v4, 0x21

    .line 574
    const/16 v8, 0x4a

    .line 576
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 578
    const/16 v4, 0x1d

    .line 581
    const/16 v8, 0x4b

    .line 583
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 585
    const/16 v4, 0x72

    .line 588
    const/16 v8, 0x4c

    .line 590
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 592
    const/16 v4, 0x59

    .line 595
    const/16 v8, 0x4d

    .line 597
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 599
    const/16 v4, 0x7b

    .line 602
    const/16 v8, 0x4e

    .line 604
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 606
    const/16 v4, 0x38

    .line 609
    const/16 v8, 0x50

    .line 611
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 613
    const/16 v4, 0x37

    .line 616
    const/16 v8, 0x51

    .line 618
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 620
    const/16 v4, 0x74

    .line 623
    const/16 v8, 0x52

    .line 625
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 627
    const/16 v4, 0x78

    .line 630
    const/16 v8, 0x53

    .line 632
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 634
    const/16 v4, 0x77

    .line 637
    const/16 v8, 0x54

    .line 639
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 641
    const/16 v4, 0x76

    .line 644
    const/16 v8, 0x55

    .line 646
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 648
    const/16 v4, 0x75

    .line 651
    const/16 v7, 0x56

    .line 653
    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 655
    invoke-virtual {v3, v8, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 658
    invoke-virtual {v3, v8, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 661
    const/4 v0, 0x0

    .line 664
    const/16 v4, 0x1b

    .line 665
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 667
    const/16 v0, 0x59

    .line 670
    invoke-virtual {v3, v0, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 672
    const/16 v0, 0x5c

    .line 675
    invoke-virtual {v3, v0, v13}, Landroid/util/SparseIntArray;->append(II)V

    .line 677
    const/16 v0, 0x5a

    .line 680
    invoke-virtual {v3, v0, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 682
    const/16 v0, 0xb

    .line 685
    invoke-virtual {v3, v6, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 687
    const/16 v0, 0x5b

    .line 690
    invoke-virtual {v3, v0, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 692
    const/16 v0, 0x58

    .line 695
    const/16 v4, 0xc

    .line 697
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 699
    const/16 v0, 0x4e

    .line 702
    const/16 v4, 0x28

    .line 704
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 706
    const/16 v0, 0x27

    .line 709
    const/16 v4, 0x47

    .line 711
    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 713
    const/16 v0, 0x29

    .line 716
    const/16 v4, 0x46

    .line 718
    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 720
    const/16 v0, 0x4d

    .line 723
    const/16 v4, 0x2a

    .line 725
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 727
    const/16 v0, 0x14

    .line 730
    const/16 v4, 0x45

    .line 732
    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 734
    const/16 v0, 0x4c

    .line 737
    const/16 v4, 0x25

    .line 739
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 741
    const/4 v0, 0x5

    .line 744
    invoke-virtual {v3, v9, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 745
    const/16 v0, 0x48

    .line 748
    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 750
    const/16 v0, 0x4b

    .line 753
    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 755
    const/16 v0, 0x49

    .line 758
    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 760
    const/16 v0, 0x39

    .line 763
    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 765
    const/16 v0, 0x38

    .line 768
    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 770
    const/4 v0, 0x5

    .line 773
    const/16 v4, 0x18

    .line 774
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 776
    const/16 v0, 0x1c

    .line 779
    invoke-virtual {v3, v12, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 781
    const/16 v0, 0x17

    .line 784
    const/16 v4, 0x1f

    .line 786
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 788
    const/16 v0, 0x18

    .line 791
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 793
    const/16 v0, 0x22

    .line 796
    invoke-virtual {v3, v11, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 798
    const/4 v0, 0x2

    .line 801
    invoke-virtual {v3, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 802
    const/4 v0, 0x3

    .line 805
    const/16 v2, 0x17

    .line 806
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 808
    const/16 v0, 0x15

    .line 811
    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 813
    const/16 v0, 0x4f

    .line 816
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 818
    const/16 v0, 0x40

    .line 821
    const/16 v1, 0x60

    .line 823
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 825
    const/4 v0, 0x2

    .line 828
    const/16 v1, 0x16

    .line 829
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 831
    const/16 v0, 0x2b

    .line 834
    invoke-virtual {v3, v14, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 836
    const/16 v0, 0x1a

    .line 839
    const/16 v1, 0x2c

    .line 841
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 843
    const/16 v0, 0x15

    .line 846
    const/16 v1, 0x2d

    .line 848
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 850
    const/16 v0, 0x16

    .line 853
    const/16 v1, 0x2e

    .line 855
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 857
    const/16 v0, 0x14

    .line 860
    invoke-virtual {v3, v0, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 862
    const/16 v0, 0x12

    .line 865
    const/16 v1, 0x2f

    .line 867
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 869
    const/16 v0, 0x13

    .line 872
    const/16 v1, 0x30

    .line 874
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 876
    const/16 v0, 0x31

    .line 879
    invoke-virtual {v3, v5, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 881
    const/16 v0, 0x32

    .line 884
    invoke-virtual {v3, v15, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 886
    const/16 v0, 0x33

    .line 889
    invoke-virtual {v3, v13, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 891
    const/16 v0, 0x11

    .line 894
    const/16 v1, 0x34

    .line 896
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 898
    const/16 v0, 0x19

    .line 901
    const/16 v1, 0x35

    .line 903
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 905
    const/16 v0, 0x50

    .line 908
    const/16 v1, 0x36

    .line 910
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 912
    const/16 v0, 0x41

    .line 915
    const/16 v1, 0x37

    .line 917
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 919
    const/16 v0, 0x51

    .line 922
    const/16 v1, 0x38

    .line 924
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 926
    const/16 v0, 0x42

    .line 929
    const/16 v1, 0x39

    .line 931
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 933
    const/16 v0, 0x52

    .line 936
    const/16 v1, 0x3a

    .line 938
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 940
    const/16 v0, 0x43

    .line 943
    const/16 v2, 0x3b

    .line 945
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 947
    const/16 v0, 0x3e

    .line 950
    invoke-virtual {v3, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 952
    const/16 v0, 0x3f

    .line 955
    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 957
    const/16 v0, 0x1c

    .line 960
    const/16 v1, 0x40

    .line 962
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 964
    const/16 v0, 0x69

    .line 967
    const/16 v1, 0x41

    .line 969
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 971
    const/16 v0, 0x22

    .line 974
    const/16 v1, 0x42

    .line 976
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 978
    const/16 v0, 0x6a

    .line 981
    const/16 v1, 0x43

    .line 983
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 985
    const/16 v0, 0x60

    .line 988
    const/16 v1, 0x4f

    .line 990
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 992
    const/4 v0, 0x1

    .line 995
    const/16 v1, 0x26

    .line 996
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 998
    const/16 v0, 0x61

    .line 1001
    const/16 v1, 0x62

    .line 1003
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1005
    const/16 v0, 0x44

    .line 1008
    invoke-virtual {v3, v10, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 1010
    const/16 v1, 0x53

    .line 1013
    const/16 v2, 0x45

    .line 1015
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1017
    const/16 v1, 0x46

    .line 1020
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1022
    const/16 v0, 0x20

    .line 1025
    const/16 v1, 0x47

    .line 1027
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1029
    const/16 v0, 0x1e

    .line 1032
    const/16 v1, 0x48

    .line 1034
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1036
    const/16 v0, 0x1f

    .line 1039
    const/16 v1, 0x49

    .line 1041
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1043
    const/16 v0, 0x21

    .line 1046
    const/16 v1, 0x4a

    .line 1048
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1050
    const/16 v0, 0x1d

    .line 1053
    const/16 v1, 0x4b

    .line 1055
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1057
    const/16 v0, 0x62

    .line 1060
    const/16 v1, 0x4c

    .line 1062
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1064
    const/16 v0, 0x4a

    .line 1067
    const/16 v1, 0x4d

    .line 1069
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1071
    const/16 v0, 0x6b

    .line 1074
    const/16 v1, 0x4e

    .line 1076
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1078
    const/16 v0, 0x37

    .line 1081
    const/16 v1, 0x50

    .line 1083
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1085
    const/16 v0, 0x51

    .line 1088
    const/16 v1, 0x36

    .line 1090
    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 1092
    const/16 v0, 0x64

    .line 1095
    const/16 v1, 0x52

    .line 1097
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1099
    const/16 v0, 0x68

    .line 1102
    const/16 v1, 0x53

    .line 1104
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1106
    const/16 v0, 0x67

    .line 1109
    const/16 v1, 0x54

    .line 1111
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1113
    const/16 v0, 0x66

    .line 1116
    const/16 v1, 0x55

    .line 1118
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1120
    const/16 v0, 0x65

    .line 1123
    const/16 v1, 0x56

    .line 1125
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1127
    const/16 v0, 0x5e

    .line 1130
    const/16 v1, 0x61

    .line 1132
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1134
    return-void
    .line 1137
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    .line 5
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->derivedState:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    .line 9
    new-array v1, v0, [Ljava/lang/String;

    .line 10
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mMatchLabels:[Ljava/lang/String;

    .line 12
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    .line 21
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    .line 24
    new-instance v0, Ljava/util/HashMap;

    .line 26
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 31
    return-void
    .line 33
.end method

.method public static buildDelta(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 2
    move-result-object p1

    .line 5
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 6
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 8
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride:[I

    .line 11
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 13
    move-result-object p0

    .line 16
    invoke-static {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->populateOverride(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V

    .line 17
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    return-object v0
    .line 23
.end method

.method public static convertReferenceString(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I
    .locals 10

    .line 1
    const-string v0, ","

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 11
    array-length v1, p1

    .line 12
    new-array v1, v1, [I

    .line 13
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    move v4, v3

    .line 17
    :goto_0
    array-length v5, p1

    .line 18
    if-ge v3, v5, :cond_3

    .line 19
    aget-object v5, p1, v3

    .line 21
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    move-result-object v5

    .line 26
    const/4 v6, 0x0

    .line 27
    :try_start_0
    const-class v7, Landroidx/constraintlayout/widget/R$id;

    .line 28
    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 30
    move-result-object v7

    .line 33
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 34
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move v7, v2

    .line 39
    :goto_1
    if-nez v7, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object v7

    .line 45
    const-string v8, "id"

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 48
    move-result-object v9

    .line 51
    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    move-result v7

    .line 55
    :cond_0
    if-nez v7, :cond_2

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 58
    move-result v8

    .line 61
    if-eqz v8, :cond_2

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 64
    move-result-object v8

    .line 67
    instance-of v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    if-eqz v8, :cond_2

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 72
    move-result-object v8

    .line 75
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 76
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    instance-of v9, v5, Ljava/lang/String;

    .line 81
    if-eqz v9, :cond_1

    .line 83
    iget-object v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 85
    if-eqz v9, :cond_1

    .line 87
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 89
    move-result v9

    .line 92
    if-eqz v9, :cond_1

    .line 93
    iget-object v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 95
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-result-object v6

    .line 100
    :cond_1
    if-eqz v6, :cond_2

    .line 101
    instance-of v5, v6, Ljava/lang/Integer;

    .line 103
    if-eqz v5, :cond_2

    .line 105
    check-cast v6, Ljava/lang/Integer;

    .line 107
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 109
    move-result v7

    .line 112
    :cond_2
    add-int/lit8 v5, v4, 0x1

    .line 113
    aput v7, v1, v4

    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 117
    move v4, v5

    .line 119
    goto :goto_0

    .line 120
    :cond_3
    array-length p0, p1

    .line 121
    if-eq v4, p0, :cond_4

    .line 122
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 124
    move-result-object v1

    .line 127
    :cond_4
    return-object v1
    .line 128
.end method

.method public static fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 16

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 2
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 4
    if-eqz p2, :cond_0

    .line 7
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride:[I

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint:[I

    .line 12
    :goto_0
    move-object/from16 v2, p0

    .line 14
    move-object/from16 v3, p1

    .line 16
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 18
    move-result-object v1

    .line 21
    if-eqz p2, :cond_1

    .line 22
    invoke-static {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->populateOverride(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V

    .line 24
    goto/16 :goto_3

    .line 27
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 29
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    move v4, v3

    .line 34
    :goto_1
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 35
    if-ge v4, v2, :cond_8

    .line 37
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 39
    move-result v6

    .line 42
    const/4 v7, 0x1

    .line 43
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 44
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 46
    iget-object v10, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 48
    if-eq v6, v7, :cond_2

    .line 50
    const/16 v11, 0x17

    .line 52
    if-eq v11, v6, :cond_2

    .line 54
    const/16 v11, 0x18

    .line 56
    if-eq v11, v6, :cond_2

    .line 58
    iput-boolean v7, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mApply:Z

    .line 60
    iput-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 62
    iput-boolean v7, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    .line 64
    iput-boolean v7, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    .line 66
    :cond_2
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintSet;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 68
    invoke-virtual {v11, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 70
    move-result v12

    .line 73
    const-string v14, "   "

    .line 74
    const/4 v15, 0x3

    .line 76
    const-string v13, "ConstraintSet"

    .line 77
    packed-switch v12, :pswitch_data_0

    .line 79
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 82
    const-string v7, "Unknown attribute 0x"

    .line 84
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 89
    move-result-object v7

    .line 92
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v11, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 99
    move-result v6

    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v5

    .line 109
    invoke-static {v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    goto/16 :goto_2

    .line 113
    :pswitch_1
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 115
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 117
    move-result v6

    .line 120
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 121
    goto/16 :goto_2

    .line 123
    :pswitch_2
    invoke-static {v5, v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 125
    goto/16 :goto_2

    .line 128
    :pswitch_3
    invoke-static {v5, v1, v6, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 130
    goto/16 :goto_2

    .line 133
    :pswitch_4
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 135
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 137
    move-result v6

    .line 140
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 141
    goto/16 :goto_2

    .line 143
    :pswitch_5
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 145
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 147
    move-result v6

    .line 150
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 151
    goto/16 :goto_2

    .line 153
    :pswitch_6
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 155
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 157
    move-result v6

    .line 160
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 161
    goto/16 :goto_2

    .line 163
    :pswitch_7
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 165
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 167
    move-result v6

    .line 170
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 171
    goto/16 :goto_2

    .line 173
    :pswitch_8
    new-instance v5, Ljava/lang/StringBuilder;

    .line 175
    const-string/jumbo v7, "unused attribute 0x"

    .line 177
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 183
    move-result-object v7

    .line 186
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v11, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 193
    move-result v6

    .line 196
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object v5

    .line 203
    invoke-static {v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    goto/16 :goto_2

    .line 207
    :pswitch_9
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 209
    move-result-object v5

    .line 212
    iget v5, v5, Landroid/util/TypedValue;->type:I

    .line 213
    const/4 v8, -0x2

    .line 215
    const/4 v9, -0x1

    .line 216
    if-ne v5, v7, :cond_3

    .line 217
    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 219
    move-result v5

    .line 222
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    .line 223
    if-eq v5, v9, :cond_7

    .line 225
    iput v8, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 227
    goto/16 :goto_2

    .line 229
    :cond_3
    if-ne v5, v15, :cond_5

    .line 231
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 233
    move-result-object v5

    .line 236
    iput-object v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    .line 237
    const-string v7, "/"

    .line 239
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 241
    move-result v5

    .line 244
    if-lez v5, :cond_4

    .line 245
    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 247
    move-result v5

    .line 250
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    .line 251
    iput v8, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 253
    goto/16 :goto_2

    .line 255
    :cond_4
    iput v9, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 257
    goto/16 :goto_2

    .line 259
    :cond_5
    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    .line 261
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 263
    move-result v5

    .line 266
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 267
    goto/16 :goto_2

    .line 269
    :pswitch_a
    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    .line 271
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 273
    move-result v5

    .line 276
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    .line 277
    goto/16 :goto_2

    .line 279
    :pswitch_b
    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    .line 281
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 283
    move-result v5

    .line 286
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    .line 287
    goto/16 :goto_2

    .line 289
    :pswitch_c
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    .line 291
    invoke-static {v1, v6, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 293
    move-result v5

    .line 296
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    .line 297
    goto/16 :goto_2

    .line 299
    :pswitch_d
    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    .line 301
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 303
    move-result v5

    .line 306
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    .line 307
    goto/16 :goto_2

    .line 309
    :pswitch_e
    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 311
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 313
    move-result v6

    .line 316
    iput-boolean v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 317
    goto/16 :goto_2

    .line 319
    :pswitch_f
    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 321
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 323
    move-result v6

    .line 326
    iput-boolean v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 327
    goto/16 :goto_2

    .line 329
    :pswitch_10
    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    .line 331
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 333
    move-result v5

    .line 336
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    .line 337
    goto/16 :goto_2

    .line 339
    :pswitch_11
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 341
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 343
    move-result v5

    .line 346
    iput v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 347
    goto/16 :goto_2

    .line 349
    :pswitch_12
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 351
    move-result-object v6

    .line 354
    iput-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 355
    goto/16 :goto_2

    .line 357
    :pswitch_13
    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    .line 359
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 361
    move-result v5

    .line 364
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    .line 365
    goto/16 :goto_2

    .line 367
    :pswitch_14
    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 369
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 371
    move-result v6

    .line 374
    iput-boolean v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 375
    goto/16 :goto_2

    .line 377
    :pswitch_15
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 379
    move-result-object v6

    .line 382
    iput-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 383
    goto/16 :goto_2

    .line 385
    :pswitch_16
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 387
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 389
    move-result v6

    .line 392
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 393
    goto/16 :goto_2

    .line 395
    :pswitch_17
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 397
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 399
    move-result v6

    .line 402
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 403
    goto/16 :goto_2

    .line 405
    :pswitch_18
    const-string v5, "CURRENTLY UNSUPPORTED"

    .line 407
    invoke-static {v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    goto/16 :goto_2

    .line 412
    :pswitch_19
    const/high16 v7, 0x3f800000    # 1.0f

    .line 414
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 416
    move-result v6

    .line 419
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 420
    goto/16 :goto_2

    .line 422
    :pswitch_1a
    const/high16 v7, 0x3f800000    # 1.0f

    .line 424
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 426
    move-result v6

    .line 429
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 430
    goto/16 :goto_2

    .line 432
    :pswitch_1b
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    .line 434
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 436
    move-result v5

    .line 439
    iput v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    .line 440
    goto/16 :goto_2

    .line 442
    :pswitch_1c
    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    .line 444
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 446
    move-result v5

    .line 449
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    .line 450
    goto/16 :goto_2

    .line 452
    :pswitch_1d
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 454
    move-result v5

    .line 457
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    .line 458
    goto/16 :goto_2

    .line 460
    :pswitch_1e
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 462
    move-result-object v5

    .line 465
    iget v5, v5, Landroid/util/TypedValue;->type:I

    .line 466
    if-ne v5, v15, :cond_6

    .line 468
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 470
    move-result-object v5

    .line 473
    iput-object v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    .line 474
    goto/16 :goto_2

    .line 476
    :cond_6
    sget-object v5, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    .line 478
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 480
    move-result v6

    .line 483
    aget-object v5, v5, v6

    .line 484
    iput-object v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    .line 486
    goto/16 :goto_2

    .line 488
    :pswitch_1f
    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    .line 490
    invoke-static {v1, v6, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 492
    move-result v5

    .line 495
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    .line 496
    goto/16 :goto_2

    .line 498
    :pswitch_20
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 500
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 502
    move-result v6

    .line 505
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 506
    goto/16 :goto_2

    .line 508
    :pswitch_21
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 510
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 512
    move-result v6

    .line 515
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 516
    goto/16 :goto_2

    .line 518
    :pswitch_22
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 520
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 522
    move-result v6

    .line 525
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 526
    goto/16 :goto_2

    .line 528
    :pswitch_23
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 530
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 532
    move-result v5

    .line 535
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 536
    goto/16 :goto_2

    .line 538
    :pswitch_24
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 540
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 542
    move-result v6

    .line 545
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 546
    goto/16 :goto_2

    .line 548
    :pswitch_25
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 550
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 552
    move-result v6

    .line 555
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 556
    goto/16 :goto_2

    .line 558
    :pswitch_26
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 560
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 562
    move-result v6

    .line 565
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 566
    goto/16 :goto_2

    .line 568
    :pswitch_27
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 570
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 572
    move-result v6

    .line 575
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 576
    goto/16 :goto_2

    .line 578
    :pswitch_28
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 580
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 582
    move-result v6

    .line 585
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 586
    goto/16 :goto_2

    .line 588
    :pswitch_29
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 590
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 592
    move-result v6

    .line 595
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 596
    goto/16 :goto_2

    .line 598
    :pswitch_2a
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 600
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 602
    move-result v5

    .line 605
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 606
    goto/16 :goto_2

    .line 608
    :pswitch_2b
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 610
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 612
    move-result v5

    .line 615
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 616
    goto/16 :goto_2

    .line 618
    :pswitch_2c
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 620
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 622
    move-result v5

    .line 625
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 626
    goto/16 :goto_2

    .line 628
    :pswitch_2d
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 630
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 632
    move-result v5

    .line 635
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 636
    goto/16 :goto_2

    .line 638
    :pswitch_2e
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 640
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 642
    move-result v5

    .line 645
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 646
    goto/16 :goto_2

    .line 648
    :pswitch_2f
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 650
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 652
    move-result v5

    .line 655
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 656
    goto/16 :goto_2

    .line 658
    :pswitch_30
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 660
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 662
    move-result v5

    .line 665
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 666
    goto/16 :goto_2

    .line 668
    :pswitch_31
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 670
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 672
    move-result v5

    .line 675
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 676
    goto/16 :goto_2

    .line 678
    :pswitch_32
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 680
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 682
    move-result v5

    .line 685
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 686
    goto/16 :goto_2

    .line 688
    :pswitch_33
    iput-boolean v7, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 690
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 692
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 694
    move-result v5

    .line 697
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 698
    goto/16 :goto_2

    .line 700
    :pswitch_34
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 702
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 704
    move-result v5

    .line 707
    iput v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 708
    goto/16 :goto_2

    .line 710
    :pswitch_35
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 712
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 714
    move-result v6

    .line 717
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 718
    goto/16 :goto_2

    .line 720
    :pswitch_36
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 722
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 724
    move-result v6

    .line 727
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 728
    goto/16 :goto_2

    .line 730
    :pswitch_37
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 732
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 734
    move-result v6

    .line 737
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 738
    goto/16 :goto_2

    .line 740
    :pswitch_38
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 742
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 744
    move-result v6

    .line 747
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 748
    goto/16 :goto_2

    .line 750
    :pswitch_39
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 752
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 754
    move-result v5

    .line 757
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 758
    goto/16 :goto_2

    .line 760
    :pswitch_3a
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 762
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 764
    move-result v6

    .line 767
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 768
    goto/16 :goto_2

    .line 770
    :pswitch_3b
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 772
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 774
    move-result v6

    .line 777
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 778
    goto/16 :goto_2

    .line 780
    :pswitch_3c
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 782
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 784
    move-result v6

    .line 787
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 788
    goto/16 :goto_2

    .line 790
    :pswitch_3d
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 792
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 794
    move-result v6

    .line 797
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 798
    goto/16 :goto_2

    .line 800
    :pswitch_3e
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 802
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 804
    move-result v6

    .line 807
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 808
    goto/16 :goto_2

    .line 810
    :pswitch_3f
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 812
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 814
    move-result v6

    .line 817
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 818
    goto/16 :goto_2

    .line 820
    :pswitch_40
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 822
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 824
    move-result v6

    .line 827
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 828
    goto/16 :goto_2

    .line 830
    :pswitch_41
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 832
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 834
    move-result v6

    .line 837
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 838
    goto/16 :goto_2

    .line 840
    :pswitch_42
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 842
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 844
    move-result v6

    .line 847
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 848
    goto/16 :goto_2

    .line 850
    :pswitch_43
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 852
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 854
    move-result v6

    .line 857
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 858
    goto/16 :goto_2

    .line 860
    :pswitch_44
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 862
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 864
    move-result v6

    .line 867
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 868
    goto/16 :goto_2

    .line 870
    :pswitch_45
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 872
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 874
    move-result v6

    .line 877
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 878
    goto/16 :goto_2

    .line 880
    :pswitch_46
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 882
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 884
    move-result v6

    .line 887
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 888
    goto/16 :goto_2

    .line 890
    :pswitch_47
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 892
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 894
    move-result v6

    .line 897
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 898
    goto/16 :goto_2

    .line 900
    :pswitch_48
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 902
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 904
    move-result v6

    .line 907
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 908
    goto/16 :goto_2

    .line 910
    :pswitch_49
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 912
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 914
    move-result v5

    .line 917
    sget-object v6, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 918
    aget v5, v6, v5

    .line 920
    iput v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 922
    goto/16 :goto_2

    .line 924
    :pswitch_4a
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 926
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 928
    move-result v6

    .line 931
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 932
    goto/16 :goto_2

    .line 934
    :pswitch_4b
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 936
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 938
    move-result v6

    .line 941
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 942
    goto/16 :goto_2

    .line 944
    :pswitch_4c
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 946
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 948
    move-result v6

    .line 951
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 952
    goto/16 :goto_2

    .line 954
    :pswitch_4d
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 956
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 958
    move-result v6

    .line 961
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 962
    goto/16 :goto_2

    .line 964
    :pswitch_4e
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 966
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 968
    move-result v6

    .line 971
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 972
    goto/16 :goto_2

    .line 974
    :pswitch_4f
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 976
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 978
    move-result v6

    .line 981
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 982
    goto/16 :goto_2

    .line 984
    :pswitch_50
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 986
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 988
    move-result v6

    .line 991
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 992
    goto/16 :goto_2

    .line 994
    :pswitch_51
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 996
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 998
    move-result v6

    .line 1001
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 1002
    goto/16 :goto_2

    .line 1004
    :pswitch_52
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 1006
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1008
    move-result v6

    .line 1011
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 1012
    goto/16 :goto_2

    .line 1014
    :pswitch_53
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 1016
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1018
    move-result v6

    .line 1021
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 1022
    goto :goto_2

    .line 1024
    :pswitch_54
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 1025
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1027
    move-result v6

    .line 1030
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 1031
    goto :goto_2

    .line 1033
    :pswitch_55
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 1034
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 1036
    move-result v6

    .line 1039
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 1040
    goto :goto_2

    .line 1042
    :pswitch_56
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 1043
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 1045
    move-result v6

    .line 1048
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 1049
    goto :goto_2

    .line 1051
    :pswitch_57
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 1052
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1054
    move-result v6

    .line 1057
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 1058
    goto :goto_2

    .line 1060
    :pswitch_58
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 1061
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1063
    move-result v6

    .line 1066
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 1067
    goto :goto_2

    .line 1069
    :pswitch_59
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 1070
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1072
    move-result v6

    .line 1075
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 1076
    goto :goto_2

    .line 1078
    :pswitch_5a
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1079
    move-result-object v6

    .line 1082
    iput-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 1083
    goto :goto_2

    .line 1085
    :pswitch_5b
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 1086
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 1088
    move-result v6

    .line 1091
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 1092
    goto :goto_2

    .line 1094
    :pswitch_5c
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 1095
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 1097
    move-result v6

    .line 1100
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 1101
    goto :goto_2

    .line 1103
    :pswitch_5d
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 1104
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1106
    move-result v6

    .line 1109
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 1110
    goto :goto_2

    .line 1112
    :pswitch_5e
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 1113
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 1115
    move-result v6

    .line 1118
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 1119
    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 1121
    goto/16 :goto_1

    .line 1123
    :cond_8
    iget-object v2, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 1125
    if-eqz v2, :cond_9

    .line 1127
    const/4 v2, 0x0

    .line 1129
    iput-object v2, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 1130
    :cond_9
    :goto_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1132
    return-object v0

    .line 1135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
    .line 1136
.end method

.method public static lookupID(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 2
    move-result p2

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 9
    move-result p2

    .line 12
    :cond_0
    return p2
    .line 13
.end method

.method public static parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V
    .locals 8

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 5
    move-result-object v0

    .line 8
    iget v0, v0, Landroid/util/TypedValue;->type:I

    .line 9
    const/4 v1, 0x3

    .line 11
    const/16 v2, 0x15

    .line 12
    const/16 v3, 0x17

    .line 14
    const/4 v4, 0x1

    .line 16
    const/4 v5, -0x1

    .line 17
    const/4 v6, 0x5

    .line 18
    const/4 v7, 0x0

    .line 19
    if-eq v0, v1, :cond_b

    .line 20
    if-eq v0, v6, :cond_3

    .line 22
    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 24
    move-result p1

    .line 27
    const/4 p2, -0x4

    .line 28
    const/4 v0, -0x2

    .line 29
    if-eq p1, p2, :cond_2

    .line 30
    const/4 p2, -0x3

    .line 32
    if-eq p1, p2, :cond_1

    .line 33
    if-eq p1, v0, :cond_4

    .line 35
    if-eq p1, v5, :cond_4

    .line 37
    :cond_1
    move v4, v7

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v7, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 43
    move-result p1

    .line 46
    :cond_4
    move v4, v7

    .line 47
    move v7, p1

    .line 48
    :goto_0
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 49
    if-eqz p1, :cond_6

    .line 51
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 53
    if-nez p3, :cond_5

    .line 55
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 57
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 59
    goto :goto_1

    .line 61
    :cond_5
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 62
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 64
    goto :goto_1

    .line 66
    :cond_6
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 67
    if-eqz p1, :cond_8

    .line 69
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 71
    if-nez p3, :cond_7

    .line 73
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 75
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 77
    goto :goto_1

    .line 79
    :cond_7
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 80
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 82
    goto :goto_1

    .line 84
    :cond_8
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 85
    if-eqz p1, :cond_a

    .line 87
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 89
    if-nez p3, :cond_9

    .line 91
    invoke-virtual {p0, v3, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 93
    const/16 p1, 0x50

    .line 96
    invoke-virtual {p0, p1, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    .line 98
    goto :goto_1

    .line 101
    :cond_9
    invoke-virtual {p0, v2, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 102
    const/16 p1, 0x51

    .line 105
    invoke-virtual {p0, p1, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    .line 107
    :cond_a
    :goto_1
    return-void

    .line 110
    :cond_b
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 114
    if-nez p1, :cond_c

    .line 115
    goto/16 :goto_3

    .line 117
    :cond_c
    const/16 p2, 0x3d

    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    .line 121
    move-result p2

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 125
    move-result v0

    .line 128
    if-lez p2, :cond_1c

    .line 129
    add-int/2addr v0, v5

    .line 131
    if-ge p2, v0, :cond_1c

    .line 132
    invoke-virtual {p1, v7, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 137
    add-int/2addr p2, v4

    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 139
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 143
    move-result p2

    .line 146
    if-lez p2, :cond_1c

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 149
    move-result-object p2

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 156
    const-string v0, "ratio"

    .line 157
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 159
    move-result v0

    .line 162
    if-eqz v0, :cond_10

    .line 163
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 165
    if-eqz p2, :cond_e

    .line 167
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 169
    if-nez p3, :cond_d

    .line 171
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 173
    goto :goto_2

    .line 175
    :cond_d
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 176
    :goto_2
    invoke-static {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionRatioString(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Ljava/lang/String;)V

    .line 178
    goto/16 :goto_3

    .line 181
    :cond_e
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 183
    if-eqz p2, :cond_f

    .line 185
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 187
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 189
    goto/16 :goto_3

    .line 191
    :cond_f
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 193
    if-eqz p2, :cond_1c

    .line 195
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 197
    invoke-virtual {p0, v6, p1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    .line 199
    goto/16 :goto_3

    .line 202
    :cond_10
    const-string/jumbo v0, "weight"

    .line 204
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 207
    move-result v0

    .line 210
    if-eqz v0, :cond_16

    .line 211
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 213
    move-result p1

    .line 216
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 217
    if-eqz p2, :cond_12

    .line 219
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 221
    if-nez p3, :cond_11

    .line 223
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 225
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 227
    goto/16 :goto_3

    .line 229
    :cond_11
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 231
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 233
    goto/16 :goto_3

    .line 235
    :cond_12
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 237
    if-eqz p2, :cond_14

    .line 239
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 241
    if-nez p3, :cond_13

    .line 243
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 245
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 247
    goto/16 :goto_3

    .line 249
    :cond_13
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 251
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 253
    goto/16 :goto_3

    .line 255
    :cond_14
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 257
    if-eqz p2, :cond_1c

    .line 259
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 261
    if-nez p3, :cond_15

    .line 263
    invoke-virtual {p0, v3, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 265
    const/16 p2, 0x27

    .line 268
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 270
    goto :goto_3

    .line 273
    :cond_15
    invoke-virtual {p0, v2, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 274
    const/16 p2, 0x28

    .line 277
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_3

    .line 282
    :cond_16
    const-string v0, "parent"

    .line 283
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 285
    move-result p2

    .line 288
    if-eqz p2, :cond_1c

    .line 289
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 291
    move-result p1

    .line 294
    const/high16 p2, 0x3f800000    # 1.0f

    .line 295
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 297
    move-result p1

    .line 300
    const/4 p2, 0x0

    .line 301
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 302
    move-result p1

    .line 305
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 306
    const/4 v0, 0x2

    .line 308
    if-eqz p2, :cond_18

    .line 309
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 311
    if-nez p3, :cond_17

    .line 313
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 315
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 317
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 319
    goto :goto_3

    .line 321
    :cond_17
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 322
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 324
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 326
    goto :goto_3

    .line 328
    :cond_18
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 329
    if-eqz p2, :cond_1a

    .line 331
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 333
    if-nez p3, :cond_19

    .line 335
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 337
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 339
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 341
    goto :goto_3

    .line 343
    :cond_19
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 344
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 346
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 348
    goto :goto_3

    .line 350
    :cond_1a
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 351
    if-eqz p1, :cond_1c

    .line 353
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 355
    if-nez p3, :cond_1b

    .line 357
    invoke-virtual {p0, v3, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 359
    const/16 p1, 0x36

    .line 362
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 364
    goto :goto_3

    .line 367
    :cond_1b
    invoke-virtual {p0, v2, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 368
    const/16 p1, 0x37

    .line 371
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 373
    :catch_0
    :cond_1c
    :goto_3
    return-void
    .line 376
.end method

.method public static parseDimensionRatioString(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Ljava/lang/String;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 7
    const/16 v1, 0x2c

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 10
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, -0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    if-lez v1, :cond_2

    .line 17
    add-int/lit8 v5, v0, -0x1

    .line 19
    if-ge v1, v5, :cond_2

    .line 21
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    move-result-object v5

    .line 26
    const-string v6, "W"

    .line 27
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 29
    move-result v6

    .line 32
    if-eqz v6, :cond_0

    .line 33
    move v3, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v4, "H"

    .line 37
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    move v3, v2

    .line 45
    :cond_1
    :goto_0
    add-int/lit8 v4, v1, 0x1

    .line 46
    :cond_2
    const/16 v1, 0x3a

    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 50
    move-result v1

    .line 53
    if-ltz v1, :cond_4

    .line 54
    sub-int/2addr v0, v2

    .line 56
    if-ge v1, v0, :cond_4

    .line 57
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 62
    add-int/2addr v1, v2

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 68
    move-result v4

    .line 71
    if-lez v4, :cond_5

    .line 72
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 74
    move-result v4

    .line 77
    if-lez v4, :cond_5

    .line 78
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 80
    move-result v0

    .line 83
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 84
    move-result v1

    .line 87
    const/4 v4, 0x0

    .line 88
    cmpl-float v5, v0, v4

    .line 89
    if-lez v5, :cond_5

    .line 91
    cmpl-float v4, v1, v4

    .line 93
    if-lez v4, :cond_5

    .line 95
    if-ne v3, v2, :cond_3

    .line 97
    div-float/2addr v1, v0

    .line 99
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 100
    goto :goto_1

    .line 103
    :cond_3
    div-float/2addr v0, v1

    .line 104
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_1

    .line 108
    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 113
    move-result v1

    .line 116
    if-lez v1, :cond_5

    .line 117
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :catch_0
    :cond_5
    :goto_1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 122
    return-void
    .line 124
.end method

.method public static populateOverride(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 6
    move-result v2

    .line 9
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 10
    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;-><init>()V

    .line 12
    iput-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 15
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 17
    const/4 v5, 0x0

    .line 19
    iput-boolean v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mApply:Z

    .line 20
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 22
    iput-boolean v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 24
    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 26
    iput-boolean v5, v7, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    .line 28
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 30
    iput-boolean v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    .line 32
    move v9, v5

    .line 34
    :goto_0
    if-ge v9, v2, :cond_7

    .line 35
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 37
    move-result v10

    .line 40
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintSet;->sOverrideMapToConstant:Landroid/util/SparseIntArray;

    .line 41
    invoke-virtual {v11, v10}, Landroid/util/SparseIntArray;->get(I)I

    .line 43
    move-result v11

    .line 46
    sget-object v12, Landroidx/constraintlayout/widget/ConstraintSet;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 47
    const/4 v14, 0x3

    .line 49
    const-string v13, "   "

    .line 50
    const-string v5, "ConstraintSet"

    .line 52
    const/4 v15, -0x1

    .line 54
    packed-switch v11, :pswitch_data_0

    .line 55
    :pswitch_0
    const/4 v11, 0x0

    .line 58
    new-instance v14, Ljava/lang/StringBuilder;

    .line 59
    const-string v15, "Unknown attribute 0x"

    .line 61
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 66
    move-result-object v15

    .line 69
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v12, v10}, Landroid/util/SparseIntArray;->get(I)I

    .line 76
    move-result v10

    .line 79
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v10

    .line 86
    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    goto/16 :goto_2

    .line 90
    :pswitch_1
    iget-boolean v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    .line 92
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 94
    move-result v5

    .line 97
    const/16 v10, 0x63

    .line 98
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    .line 100
    goto/16 :goto_1

    .line 103
    :pswitch_2
    sget-boolean v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 105
    if-eqz v5, :cond_0

    .line 107
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 109
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 111
    move-result v5

    .line 114
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 115
    if-ne v5, v15, :cond_5

    .line 117
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 119
    move-result-object v5

    .line 122
    iput-object v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mTargetString:Ljava/lang/String;

    .line 123
    goto/16 :goto_1

    .line 125
    :cond_0
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 127
    move-result-object v5

    .line 130
    iget v5, v5, Landroid/util/TypedValue;->type:I

    .line 131
    if-ne v5, v14, :cond_1

    .line 133
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 135
    move-result-object v5

    .line 138
    iput-object v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mTargetString:Ljava/lang/String;

    .line 139
    goto/16 :goto_1

    .line 141
    :cond_1
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 143
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 145
    move-result v5

    .line 148
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 149
    goto/16 :goto_1

    .line 151
    :pswitch_3
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 153
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 155
    move-result v5

    .line 158
    const/16 v10, 0x61

    .line 159
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 161
    goto/16 :goto_1

    .line 164
    :pswitch_4
    const/4 v5, 0x1

    .line 166
    invoke-static {v3, v1, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 167
    goto/16 :goto_1

    .line 170
    :pswitch_5
    const/4 v5, 0x0

    .line 172
    invoke-static {v3, v1, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 173
    move v11, v5

    .line 176
    goto/16 :goto_2

    .line 177
    :pswitch_6
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 179
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 181
    move-result v5

    .line 184
    const/16 v10, 0x5e

    .line 185
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 187
    goto/16 :goto_1

    .line 190
    :pswitch_7
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 192
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 194
    move-result v5

    .line 197
    const/16 v10, 0x5d

    .line 198
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 200
    goto/16 :goto_1

    .line 203
    :pswitch_8
    new-instance v11, Ljava/lang/StringBuilder;

    .line 205
    const-string/jumbo v14, "unused attribute 0x"

    .line 207
    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 213
    move-result-object v14

    .line 216
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v12, v10}, Landroid/util/SparseIntArray;->get(I)I

    .line 223
    move-result v10

    .line 226
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object v10

    .line 233
    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    goto/16 :goto_1

    .line 237
    :pswitch_9
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 239
    move-result-object v5

    .line 242
    iget v5, v5, Landroid/util/TypedValue;->type:I

    .line 243
    const/4 v11, -0x2

    .line 245
    const/16 v12, 0x59

    .line 246
    const/16 v13, 0x58

    .line 248
    const/4 v14, 0x1

    .line 250
    if-ne v5, v14, :cond_2

    .line 251
    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 253
    move-result v5

    .line 256
    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    .line 257
    invoke-virtual {v3, v12, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 259
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    .line 262
    if-eq v5, v15, :cond_5

    .line 264
    iput v11, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 266
    invoke-virtual {v3, v13, v11}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 268
    goto/16 :goto_1

    .line 271
    :cond_2
    const/4 v14, 0x3

    .line 273
    if-ne v5, v14, :cond_4

    .line 274
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 276
    move-result-object v5

    .line 279
    iput-object v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    .line 280
    const/16 v14, 0x5a

    .line 282
    invoke-virtual {v3, v14, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    .line 284
    iget-object v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    .line 287
    const-string v14, "/"

    .line 289
    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 291
    move-result v5

    .line 294
    if-lez v5, :cond_3

    .line 295
    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 297
    move-result v5

    .line 300
    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    .line 301
    invoke-virtual {v3, v12, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 303
    iput v11, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 306
    invoke-virtual {v3, v13, v11}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 308
    goto/16 :goto_1

    .line 311
    :cond_3
    iput v15, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 313
    invoke-virtual {v3, v13, v15}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 315
    goto/16 :goto_1

    .line 318
    :cond_4
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    .line 320
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 322
    move-result v5

    .line 325
    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 326
    invoke-virtual {v3, v13, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 328
    goto/16 :goto_1

    .line 331
    :pswitch_a
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    .line 333
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 335
    move-result v5

    .line 338
    const/16 v10, 0x55

    .line 339
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 341
    goto/16 :goto_1

    .line 344
    :pswitch_b
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    .line 346
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 348
    move-result v5

    .line 351
    const/16 v10, 0x54

    .line 352
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 354
    goto/16 :goto_1

    .line 357
    :pswitch_c
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    .line 359
    invoke-static {v1, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 361
    move-result v5

    .line 364
    const/16 v10, 0x53

    .line 365
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 367
    goto/16 :goto_1

    .line 370
    :pswitch_d
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    .line 372
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 374
    move-result v5

    .line 377
    const/16 v10, 0x52

    .line 378
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 380
    goto/16 :goto_1

    .line 383
    :pswitch_e
    iget-boolean v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 385
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 387
    move-result v5

    .line 390
    const/16 v10, 0x51

    .line 391
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    .line 393
    goto/16 :goto_1

    .line 396
    :pswitch_f
    iget-boolean v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 398
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 400
    move-result v5

    .line 403
    const/16 v10, 0x50

    .line 404
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    .line 406
    goto/16 :goto_1

    .line 409
    :pswitch_10
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    .line 411
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 413
    move-result v5

    .line 416
    const/16 v10, 0x4f

    .line 417
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 419
    goto/16 :goto_1

    .line 422
    :pswitch_11
    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 424
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 426
    move-result v5

    .line 429
    const/16 v10, 0x4e

    .line 430
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 432
    goto/16 :goto_1

    .line 435
    :pswitch_12
    const/16 v5, 0x4d

    .line 437
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 439
    move-result-object v10

    .line 442
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    .line 443
    goto/16 :goto_1

    .line 446
    :pswitch_13
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    .line 448
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 450
    move-result v5

    .line 453
    const/16 v10, 0x4c

    .line 454
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 456
    goto :goto_1

    .line 459
    :pswitch_14
    iget-boolean v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 460
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 462
    move-result v5

    .line 465
    const/16 v10, 0x4b

    .line 466
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    .line 468
    goto :goto_1

    .line 471
    :pswitch_15
    const/16 v5, 0x4a

    .line 472
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 474
    move-result-object v10

    .line 477
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    .line 478
    goto :goto_1

    .line 481
    :pswitch_16
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 482
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 484
    move-result v5

    .line 487
    const/16 v10, 0x49

    .line 488
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 490
    goto :goto_1

    .line 493
    :pswitch_17
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 494
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 496
    move-result v5

    .line 499
    const/16 v10, 0x48

    .line 500
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 502
    goto :goto_1

    .line 505
    :pswitch_18
    const-string v10, "CURRENTLY UNSUPPORTED"

    .line 506
    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    goto :goto_1

    .line 511
    :pswitch_19
    const/16 v5, 0x46

    .line 512
    const/high16 v11, 0x3f800000    # 1.0f

    .line 514
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 516
    move-result v10

    .line 519
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 520
    goto :goto_1

    .line 523
    :pswitch_1a
    const/high16 v11, 0x3f800000    # 1.0f

    .line 524
    const/16 v5, 0x45

    .line 526
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 528
    move-result v10

    .line 531
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 532
    goto :goto_1

    .line 535
    :pswitch_1b
    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    .line 536
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 538
    move-result v5

    .line 541
    const/16 v10, 0x44

    .line 542
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 544
    goto :goto_1

    .line 547
    :pswitch_1c
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    .line 548
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 550
    move-result v5

    .line 553
    const/16 v10, 0x43

    .line 554
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 556
    :cond_5
    :goto_1
    const/4 v11, 0x0

    .line 559
    goto/16 :goto_2

    .line 560
    :pswitch_1d
    const/16 v5, 0x42

    .line 562
    const/4 v11, 0x0

    .line 564
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 565
    move-result v10

    .line 568
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 569
    goto/16 :goto_2

    .line 572
    :pswitch_1e
    const/4 v11, 0x0

    .line 574
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 575
    move-result-object v5

    .line 578
    iget v5, v5, Landroid/util/TypedValue;->type:I

    .line 579
    const/16 v12, 0x41

    .line 581
    const/4 v13, 0x3

    .line 583
    if-ne v5, v13, :cond_6

    .line 584
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 586
    move-result-object v5

    .line 589
    invoke-virtual {v3, v12, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    .line 590
    goto/16 :goto_2

    .line 593
    :cond_6
    sget-object v5, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    .line 595
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 597
    move-result v10

    .line 600
    aget-object v5, v5, v10

    .line 601
    invoke-virtual {v3, v12, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    .line 603
    goto/16 :goto_2

    .line 606
    :pswitch_1f
    const/4 v11, 0x0

    .line 608
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    .line 609
    invoke-static {v1, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 611
    move-result v5

    .line 614
    const/16 v10, 0x40

    .line 615
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 617
    goto/16 :goto_2

    .line 620
    :pswitch_20
    const/4 v11, 0x0

    .line 622
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 623
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 625
    move-result v5

    .line 628
    const/16 v10, 0x3f

    .line 629
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 631
    goto/16 :goto_2

    .line 634
    :pswitch_21
    const/4 v11, 0x0

    .line 636
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 637
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 639
    move-result v5

    .line 642
    const/16 v10, 0x3e

    .line 643
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 645
    goto/16 :goto_2

    .line 648
    :pswitch_22
    const/4 v11, 0x0

    .line 650
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 651
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 653
    move-result v5

    .line 656
    const/16 v10, 0x3c

    .line 657
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 659
    goto/16 :goto_2

    .line 662
    :pswitch_23
    const/4 v11, 0x0

    .line 664
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 665
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 667
    move-result v5

    .line 670
    const/16 v10, 0x3b

    .line 671
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 673
    goto/16 :goto_2

    .line 676
    :pswitch_24
    const/4 v11, 0x0

    .line 678
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 679
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 681
    move-result v5

    .line 684
    const/16 v10, 0x3a

    .line 685
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 687
    goto/16 :goto_2

    .line 690
    :pswitch_25
    const/4 v11, 0x0

    .line 692
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 693
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 695
    move-result v5

    .line 698
    const/16 v10, 0x39

    .line 699
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 701
    goto/16 :goto_2

    .line 704
    :pswitch_26
    const/4 v11, 0x0

    .line 706
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 707
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 709
    move-result v5

    .line 712
    const/16 v10, 0x38

    .line 713
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 715
    goto/16 :goto_2

    .line 718
    :pswitch_27
    const/4 v11, 0x0

    .line 720
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 721
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 723
    move-result v5

    .line 726
    const/16 v10, 0x37

    .line 727
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 729
    goto/16 :goto_2

    .line 732
    :pswitch_28
    const/4 v11, 0x0

    .line 734
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 735
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 737
    move-result v5

    .line 740
    const/16 v10, 0x36

    .line 741
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 743
    goto/16 :goto_2

    .line 746
    :pswitch_29
    const/4 v11, 0x0

    .line 748
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 749
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 751
    move-result v5

    .line 754
    const/16 v10, 0x35

    .line 755
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 757
    goto/16 :goto_2

    .line 760
    :pswitch_2a
    const/4 v11, 0x0

    .line 762
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 763
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 765
    move-result v5

    .line 768
    const/16 v10, 0x34

    .line 769
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 771
    goto/16 :goto_2

    .line 774
    :pswitch_2b
    const/4 v11, 0x0

    .line 776
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 777
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 779
    move-result v5

    .line 782
    const/16 v10, 0x33

    .line 783
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 785
    goto/16 :goto_2

    .line 788
    :pswitch_2c
    const/4 v11, 0x0

    .line 790
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 791
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 793
    move-result v5

    .line 796
    const/16 v10, 0x32

    .line 797
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 799
    goto/16 :goto_2

    .line 802
    :pswitch_2d
    const/4 v11, 0x0

    .line 804
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 805
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 807
    move-result v5

    .line 810
    const/16 v10, 0x31

    .line 811
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 813
    goto/16 :goto_2

    .line 816
    :pswitch_2e
    const/4 v11, 0x0

    .line 818
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 819
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 821
    move-result v5

    .line 824
    const/16 v10, 0x30

    .line 825
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 827
    goto/16 :goto_2

    .line 830
    :pswitch_2f
    const/4 v11, 0x0

    .line 832
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 833
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 835
    move-result v5

    .line 838
    const/16 v10, 0x2f

    .line 839
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 841
    goto/16 :goto_2

    .line 844
    :pswitch_30
    const/4 v11, 0x0

    .line 846
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 847
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 849
    move-result v5

    .line 852
    const/16 v10, 0x2e

    .line 853
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 855
    goto/16 :goto_2

    .line 858
    :pswitch_31
    const/4 v11, 0x0

    .line 860
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 861
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 863
    move-result v5

    .line 866
    const/16 v10, 0x2d

    .line 867
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 869
    goto/16 :goto_2

    .line 872
    :pswitch_32
    const/4 v11, 0x0

    .line 874
    const/16 v5, 0x2c

    .line 875
    const/4 v12, 0x1

    .line 877
    invoke-virtual {v3, v5, v12}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    .line 878
    iget v12, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 881
    invoke-virtual {v1, v10, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 883
    move-result v10

    .line 886
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 887
    goto/16 :goto_2

    .line 890
    :pswitch_33
    const/4 v11, 0x0

    .line 892
    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 893
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 895
    move-result v5

    .line 898
    const/16 v10, 0x2b

    .line 899
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 901
    goto/16 :goto_2

    .line 904
    :pswitch_34
    const/4 v11, 0x0

    .line 906
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 907
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 909
    move-result v5

    .line 912
    const/16 v10, 0x2a

    .line 913
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 915
    goto/16 :goto_2

    .line 918
    :pswitch_35
    const/4 v11, 0x0

    .line 920
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 921
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 923
    move-result v5

    .line 926
    const/16 v10, 0x29

    .line 927
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 929
    goto/16 :goto_2

    .line 932
    :pswitch_36
    const/4 v11, 0x0

    .line 934
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 935
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 937
    move-result v5

    .line 940
    const/16 v10, 0x28

    .line 941
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 943
    goto/16 :goto_2

    .line 946
    :pswitch_37
    const/4 v11, 0x0

    .line 948
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 949
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 951
    move-result v5

    .line 954
    const/16 v10, 0x27

    .line 955
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 957
    goto/16 :goto_2

    .line 960
    :pswitch_38
    const/4 v11, 0x0

    .line 962
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 963
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 965
    move-result v5

    .line 968
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 969
    const/16 v10, 0x26

    .line 971
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 973
    goto/16 :goto_2

    .line 976
    :pswitch_39
    const/4 v11, 0x0

    .line 978
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 979
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 981
    move-result v5

    .line 984
    const/16 v10, 0x25

    .line 985
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 987
    goto/16 :goto_2

    .line 990
    :pswitch_3a
    const/4 v11, 0x0

    .line 992
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 993
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 995
    move-result v5

    .line 998
    const/16 v10, 0x22

    .line 999
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1001
    goto/16 :goto_2

    .line 1004
    :pswitch_3b
    const/4 v11, 0x0

    .line 1006
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 1007
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1009
    move-result v5

    .line 1012
    const/16 v10, 0x1f

    .line 1013
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1015
    goto/16 :goto_2

    .line 1018
    :pswitch_3c
    const/4 v11, 0x0

    .line 1020
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 1021
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1023
    move-result v5

    .line 1026
    const/16 v10, 0x1c

    .line 1027
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1029
    goto/16 :goto_2

    .line 1032
    :pswitch_3d
    const/4 v11, 0x0

    .line 1034
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 1035
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1037
    move-result v5

    .line 1040
    const/16 v10, 0x1b

    .line 1041
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1043
    goto/16 :goto_2

    .line 1046
    :pswitch_3e
    const/4 v11, 0x0

    .line 1048
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 1049
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1051
    move-result v5

    .line 1054
    const/16 v10, 0x18

    .line 1055
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1057
    goto/16 :goto_2

    .line 1060
    :pswitch_3f
    const/4 v11, 0x0

    .line 1062
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 1063
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 1065
    move-result v5

    .line 1068
    const/16 v10, 0x17

    .line 1069
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1071
    goto/16 :goto_2

    .line 1074
    :pswitch_40
    const/4 v11, 0x0

    .line 1076
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 1077
    iget v12, v7, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 1079
    invoke-virtual {v1, v10, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1081
    move-result v10

    .line 1084
    aget v5, v5, v10

    .line 1085
    const/16 v10, 0x16

    .line 1087
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1089
    goto/16 :goto_2

    .line 1092
    :pswitch_41
    const/4 v11, 0x0

    .line 1094
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 1095
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 1097
    move-result v5

    .line 1100
    const/16 v10, 0x15

    .line 1101
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1103
    goto/16 :goto_2

    .line 1106
    :pswitch_42
    const/4 v11, 0x0

    .line 1108
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 1109
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1111
    move-result v5

    .line 1114
    const/16 v10, 0x14

    .line 1115
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 1117
    goto/16 :goto_2

    .line 1120
    :pswitch_43
    const/4 v11, 0x0

    .line 1122
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 1123
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1125
    move-result v5

    .line 1128
    const/16 v10, 0x13

    .line 1129
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    .line 1131
    goto/16 :goto_2

    .line 1134
    :pswitch_44
    const/4 v11, 0x0

    .line 1136
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 1137
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1139
    move-result v5

    .line 1142
    const/16 v10, 0x12

    .line 1143
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1145
    goto/16 :goto_2

    .line 1148
    :pswitch_45
    const/4 v11, 0x0

    .line 1150
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 1151
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1153
    move-result v5

    .line 1156
    const/16 v10, 0x11

    .line 1157
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1159
    goto/16 :goto_2

    .line 1162
    :pswitch_46
    const/4 v11, 0x0

    .line 1164
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 1165
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1167
    move-result v5

    .line 1170
    const/16 v10, 0x10

    .line 1171
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1173
    goto/16 :goto_2

    .line 1176
    :pswitch_47
    const/4 v11, 0x0

    .line 1178
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 1179
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1181
    move-result v5

    .line 1184
    const/16 v10, 0xf

    .line 1185
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1187
    goto/16 :goto_2

    .line 1190
    :pswitch_48
    const/4 v11, 0x0

    .line 1192
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 1193
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1195
    move-result v5

    .line 1198
    const/16 v10, 0xe

    .line 1199
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1201
    goto :goto_2

    .line 1204
    :pswitch_49
    const/4 v11, 0x0

    .line 1205
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 1206
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1208
    move-result v5

    .line 1211
    const/16 v10, 0xd

    .line 1212
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1214
    goto :goto_2

    .line 1217
    :pswitch_4a
    const/4 v11, 0x0

    .line 1218
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 1219
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1221
    move-result v5

    .line 1224
    const/16 v10, 0xc

    .line 1225
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1227
    goto :goto_2

    .line 1230
    :pswitch_4b
    const/4 v11, 0x0

    .line 1231
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 1232
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1234
    move-result v5

    .line 1237
    const/16 v10, 0xb

    .line 1238
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1240
    goto :goto_2

    .line 1243
    :pswitch_4c
    const/4 v11, 0x0

    .line 1244
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 1245
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1247
    move-result v5

    .line 1250
    const/16 v10, 0x8

    .line 1251
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1253
    goto :goto_2

    .line 1256
    :pswitch_4d
    const/4 v11, 0x0

    .line 1257
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 1258
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1260
    move-result v5

    .line 1263
    const/4 v10, 0x7

    .line 1264
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1265
    goto :goto_2

    .line 1268
    :pswitch_4e
    const/4 v11, 0x0

    .line 1269
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 1270
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1272
    move-result v5

    .line 1275
    const/4 v10, 0x6

    .line 1276
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1277
    goto :goto_2

    .line 1280
    :pswitch_4f
    const/4 v11, 0x0

    .line 1281
    const/4 v5, 0x5

    .line 1282
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1283
    move-result-object v10

    .line 1286
    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    .line 1287
    goto :goto_2

    .line 1290
    :pswitch_50
    const/4 v11, 0x0

    .line 1291
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 1292
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1294
    move-result v5

    .line 1297
    const/4 v10, 0x2

    .line 1298
    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1299
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 1302
    move v5, v11

    .line 1304
    goto/16 :goto_0

    .line 1305
    :cond_7
    return-void

    .line 1307
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_50
        :pswitch_0
        :pswitch_0
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_0
        :pswitch_0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_0
        :pswitch_0
        :pswitch_3d
        :pswitch_3c
        :pswitch_0
        :pswitch_0
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
    .line 1308
.end method

.method public static sideToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    const-string/jumbo p0, "undefined"

    .line 5
    return-object p0

    .line 8
    :pswitch_0
    const-string p0, "end"

    .line 9
    return-object p0

    .line 11
    :pswitch_1
    const-string/jumbo p0, "start"

    .line 12
    return-object p0

    .line 15
    :pswitch_2
    const-string p0, "baseline"

    .line 16
    return-object p0

    .line 18
    :pswitch_3
    const-string p0, "bottom"

    .line 19
    return-object p0

    .line 21
    :pswitch_4
    const-string/jumbo p0, "top"

    .line 22
    return-object p0

    .line 25
    :pswitch_5
    const-string/jumbo p0, "right"

    .line 26
    return-object p0

    .line 29
    :pswitch_6
    const-string p0, "left"

    .line 30
    return-object p0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 34
.end method


# virtual methods
.method public final applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_5

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 13
    move-result v3

    .line 16
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v5

    .line 22
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    move-result v5

    .line 26
    if-nez v5, :cond_0

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    const-string v4, "id unknown "

    .line 31
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 46
    const-string v3, "ConstraintSet"

    .line 47
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    goto :goto_2

    .line 52
    :cond_0
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    .line 53
    if-eqz v5, :cond_2

    .line 55
    const/4 v5, -0x1

    .line 57
    if-eq v3, v5, :cond_1

    .line 58
    goto :goto_1

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 61
    const-string p1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p0

    .line 68
    :cond_2
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v5

    .line 72
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 73
    move-result v5

    .line 76
    if-eqz v5, :cond_4

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v3

    .line 82
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object v3

    .line 86
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 87
    if-nez v3, :cond_3

    .line 89
    goto :goto_2

    .line 91
    :cond_3
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 92
    invoke-static {v2, v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setAttributes(Landroid/view/View;Ljava/util/HashMap;)V

    .line 94
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 97
    goto :goto_0

    .line 99
    :cond_5
    return-void
    .line 100
.end method

.method public final applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 2
    const/4 p0, 0x0

    .line 5
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 6
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    return-void
    .line 12
.end method

.method public final applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    new-instance v1, Ljava/util/HashSet;

    .line 6
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 10
    move-result-object v3

    .line 13
    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 14
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_0
    const/4 v5, 0x1

    .line 19
    if-ge v4, v0, :cond_c

    .line 20
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v6

    .line 25
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 26
    move-result v7

    .line 29
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v8

    .line 33
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 34
    move-result v8

    .line 37
    if-nez v8, :cond_0

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    const-string v7, "id unknown "

    .line 42
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-static {v6}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 47
    move-result-object v6

    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 57
    const-string v6, "ConstraintSet"

    .line 58
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    goto/16 :goto_4

    .line 63
    :cond_0
    iget-boolean v8, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    .line 65
    const/4 v9, -0x1

    .line 67
    if-eqz v8, :cond_2

    .line 68
    if-eq v7, v9, :cond_1

    .line 70
    goto :goto_1

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 73
    const-string p1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p0

    .line 80
    :cond_2
    :goto_1
    if-ne v7, v9, :cond_3

    .line 81
    goto/16 :goto_4

    .line 83
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v8

    .line 88
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 89
    move-result v8

    .line 92
    if-eqz v8, :cond_b

    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v8

    .line 98
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 99
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object v8

    .line 105
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object v8

    .line 109
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 110
    if-nez v8, :cond_4

    .line 112
    goto/16 :goto_4

    .line 114
    :cond_4
    instance-of v10, v6, Landroidx/constraintlayout/widget/Barrier;

    .line 116
    if-eqz v10, :cond_6

    .line 118
    iget-object v10, v8, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 120
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 122
    move-object v5, v6

    .line 124
    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    .line 125
    invoke-virtual {v5, v7}, Landroid/view/View;->setId(I)V

    .line 127
    iget v7, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 130
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 132
    iget v7, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 135
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    .line 137
    iget-boolean v7, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 140
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/Barrier;->setAllowsGoneWidget(Z)V

    .line 142
    iget-object v7, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 145
    if-eqz v7, :cond_5

    .line 147
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 149
    goto :goto_2

    .line 152
    :cond_5
    iget-object v7, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 153
    if-eqz v7, :cond_6

    .line 155
    invoke-static {v5, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->convertReferenceString(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    .line 157
    move-result-object v7

    .line 160
    iput-object v7, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 161
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 163
    :cond_6
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 166
    move-result-object v5

    .line 169
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 170
    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    .line 172
    invoke-virtual {v8, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 175
    iget-object v7, v8, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 178
    invoke-static {v6, v7}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setAttributes(Landroid/view/View;Ljava/util/HashMap;)V

    .line 180
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 186
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 188
    if-nez v7, :cond_7

    .line 190
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 192
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_7
    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 197
    invoke-virtual {v6, v5}, Landroid/view/View;->setAlpha(F)V

    .line 199
    iget-object v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 202
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 204
    invoke-virtual {v6, v7}, Landroid/view/View;->setRotation(F)V

    .line 206
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 209
    invoke-virtual {v6, v7}, Landroid/view/View;->setRotationX(F)V

    .line 211
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 214
    invoke-virtual {v6, v7}, Landroid/view/View;->setRotationY(F)V

    .line 216
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 219
    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleX(F)V

    .line 221
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 224
    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleY(F)V

    .line 226
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    .line 229
    if-eq v7, v9, :cond_8

    .line 231
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 233
    move-result-object v7

    .line 236
    check-cast v7, Landroid/view/View;

    .line 237
    iget v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    .line 239
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 241
    move-result-object v7

    .line 244
    if-eqz v7, :cond_a

    .line 245
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 247
    move-result v8

    .line 250
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 251
    move-result v9

    .line 254
    add-int/2addr v9, v8

    .line 255
    int-to-float v8, v9

    .line 256
    const/high16 v9, 0x40000000    # 2.0f

    .line 257
    div-float/2addr v8, v9

    .line 259
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 260
    move-result v10

    .line 263
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 264
    move-result v7

    .line 267
    add-int/2addr v7, v10

    .line 268
    int-to-float v7, v7

    .line 269
    div-float/2addr v7, v9

    .line 270
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 271
    move-result v9

    .line 274
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 275
    move-result v10

    .line 278
    sub-int/2addr v9, v10

    .line 279
    if-lez v9, :cond_a

    .line 280
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 282
    move-result v9

    .line 285
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 286
    move-result v10

    .line 289
    sub-int/2addr v9, v10

    .line 290
    if-lez v9, :cond_a

    .line 291
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 293
    move-result v9

    .line 296
    int-to-float v9, v9

    .line 297
    sub-float/2addr v7, v9

    .line 298
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 299
    move-result v9

    .line 302
    int-to-float v9, v9

    .line 303
    sub-float/2addr v8, v9

    .line 304
    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    .line 305
    invoke-virtual {v6, v8}, Landroid/view/View;->setPivotY(F)V

    .line 308
    goto :goto_3

    .line 311
    :cond_8
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 312
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 314
    move-result v7

    .line 317
    if-nez v7, :cond_9

    .line 318
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 320
    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    .line 322
    :cond_9
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 325
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 327
    move-result v7

    .line 330
    if-nez v7, :cond_a

    .line 331
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 333
    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    .line 335
    :cond_a
    :goto_3
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 338
    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 340
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 343
    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 345
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 348
    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationZ(F)V

    .line 350
    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 353
    if-eqz v7, :cond_b

    .line 355
    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 357
    invoke-virtual {v6, v5}, Landroid/view/View;->setElevation(F)V

    .line 359
    :cond_b
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 362
    goto/16 :goto_0

    .line 364
    :cond_c
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 366
    move-result-object p0

    .line 369
    :cond_d
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 370
    move-result v1

    .line 373
    if-eqz v1, :cond_12

    .line 374
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 376
    move-result-object v1

    .line 379
    check-cast v1, Ljava/lang/Integer;

    .line 380
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    move-result-object v4

    .line 385
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 386
    if-nez v4, :cond_e

    .line 388
    goto :goto_5

    .line 390
    :cond_e
    iget-object v6, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 391
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 393
    const/4 v8, -0x2

    .line 395
    if-ne v7, v5, :cond_11

    .line 396
    new-instance v7, Landroidx/constraintlayout/widget/Barrier;

    .line 398
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 400
    move-result-object v9

    .line 403
    invoke-direct {v7, v9}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    .line 404
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 407
    move-result v9

    .line 410
    invoke-virtual {v7, v9}, Landroid/view/View;->setId(I)V

    .line 411
    iget-object v9, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 414
    if-eqz v9, :cond_f

    .line 416
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 418
    goto :goto_6

    .line 421
    :cond_f
    iget-object v9, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 422
    if-eqz v9, :cond_10

    .line 424
    invoke-static {v7, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->convertReferenceString(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    .line 426
    move-result-object v9

    .line 429
    iput-object v9, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 430
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 432
    :cond_10
    :goto_6
    iget v9, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 435
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 437
    iget v9, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 440
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    .line 442
    sget-object v9, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    .line 445
    new-instance v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 447
    invoke-direct {v9, v8, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 449
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    .line 452
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 455
    invoke-virtual {p1, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    :cond_11
    iget-boolean v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 461
    if-eqz v6, :cond_d

    .line 463
    new-instance v6, Landroidx/constraintlayout/widget/Guideline;

    .line 465
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 467
    move-result-object v7

    .line 470
    invoke-direct {v6, v7}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    .line 471
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 474
    move-result v1

    .line 477
    invoke-virtual {v6, v1}, Landroid/view/View;->setId(I)V

    .line 478
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    .line 481
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 483
    invoke-direct {v1, v8, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 485
    invoke-virtual {v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 488
    invoke-virtual {p1, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    goto :goto_5

    .line 494
    :cond_12
    :goto_7
    if-ge v3, v0, :cond_14

    .line 495
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 497
    move-result-object p0

    .line 500
    instance-of v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 501
    if-eqz v1, :cond_13

    .line 503
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 505
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->applyLayoutFeaturesInConstraintSet(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 507
    :cond_13
    add-int/lit8 v3, v3, 0x1

    .line 510
    goto :goto_7

    .line 512
    :cond_14
    return-void
    .line 513
.end method

.method public final clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v2

    .line 7
    iget-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 10
    const/4 v0, 0x0

    .line 13
    move v4, v0

    .line 14
    :goto_0
    if-ge v4, v2, :cond_a

    .line 15
    move-object/from16 v5, p1

    .line 17
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v6

    .line 22
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object v0

    .line 26
    move-object v7, v0

    .line 27
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 28
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 30
    move-result v8

    .line 33
    iget-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    .line 34
    if-eqz v0, :cond_1

    .line 36
    const/4 v0, -0x1

    .line 38
    if-eq v8, v0, :cond_0

    .line 39
    goto :goto_1

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 42
    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 44
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0

    .line 49
    :cond_1
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v0

    .line 53
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v0

    .line 63
    new-instance v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 64
    invoke-direct {v9}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 66
    invoke-virtual {v3, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v0

    .line 75
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-result-object v0

    .line 79
    move-object v9, v0

    .line 80
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 81
    if-nez v9, :cond_3

    .line 83
    move/from16 v17, v2

    .line 85
    move-object/from16 v18, v3

    .line 87
    goto/16 :goto_7

    .line 89
    :cond_3
    iget-object v10, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    .line 91
    const-string v11, "\" not found on "

    .line 93
    const-string v12, " Custom Attribute \""

    .line 95
    const-string v13, "TransitionLayout"

    .line 97
    new-instance v14, Ljava/util/HashMap;

    .line 99
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 101
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    move-result-object v15

    .line 107
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 108
    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 112
    move-result-object v16

    .line 115
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    move-result v0

    .line 119
    if-eqz v0, :cond_5

    .line 120
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    move-result-object v0

    .line 125
    move-object v1, v0

    .line 126
    check-cast v1, Ljava/lang/String;

    .line 127
    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    move-result-object v0

    .line 132
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 133
    move/from16 v17, v2

    .line 135
    :try_start_0
    const-string v2, "BackgroundColor"

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result v2

    .line 142
    if-eqz v2, :cond_4

    .line 143
    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 145
    move-result-object v2

    .line 148
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .line 149
    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 151
    move-result v2

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 158
    move-object/from16 v18, v3

    .line 159
    :try_start_1
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 161
    invoke-direct {v3, v0, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v14, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    goto/16 :goto_6

    .line 169
    :cond_4
    move-object/from16 v18, v3

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    const-string v3, "getMap"

    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v2

    .line 189
    const/4 v3, 0x0

    .line 190
    new-array v5, v3, [Ljava/lang/Class;

    .line 191
    invoke-virtual {v15, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 193
    move-result-object v2

    .line 196
    new-array v3, v3, [Ljava/lang/Object;

    .line 197
    invoke-virtual {v2, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    move-result-object v2

    .line 202
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 203
    invoke-direct {v3, v0, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v14, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    goto :goto_6

    .line 211
    :catch_0
    move-exception v0

    .line 212
    goto :goto_3

    .line 213
    :catch_1
    move-exception v0

    .line 214
    goto :goto_4

    .line 215
    :catch_2
    move-exception v0

    .line 216
    goto :goto_5

    .line 217
    :catch_3
    move-exception v0

    .line 218
    move-object/from16 v18, v3

    .line 219
    :goto_3
    invoke-static {v12, v1, v11}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    move-result-object v1

    .line 224
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 225
    move-result-object v2

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object v1

    .line 235
    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    goto :goto_6

    .line 239
    :catch_4
    move-exception v0

    .line 240
    move-object/from16 v18, v3

    .line 241
    :goto_4
    invoke-static {v12, v1, v11}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    move-result-object v1

    .line 246
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 247
    move-result-object v2

    .line 250
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object v1

    .line 257
    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    goto :goto_6

    .line 261
    :catch_5
    move-exception v0

    .line 262
    move-object/from16 v18, v3

    .line 263
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 265
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 270
    move-result-object v3

    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v3, " must have a method "

    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    move-result-object v1

    .line 288
    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    :goto_6
    move-object/from16 v1, p0

    .line 292
    move-object/from16 v5, p1

    .line 294
    move/from16 v2, v17

    .line 296
    move-object/from16 v3, v18

    .line 298
    goto/16 :goto_2

    .line 300
    :cond_5
    move/from16 v17, v2

    .line 302
    move-object/from16 v18, v3

    .line 304
    iput-object v14, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 306
    invoke-virtual {v9, v8, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFrom(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 308
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 311
    move-result v0

    .line 314
    iget-object v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 315
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 317
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    .line 319
    move-result v0

    .line 322
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 323
    invoke-virtual {v6}, Landroid/view/View;->getRotation()F

    .line 325
    move-result v0

    .line 328
    iget-object v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 329
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 331
    invoke-virtual {v6}, Landroid/view/View;->getRotationX()F

    .line 333
    move-result v0

    .line 336
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 337
    invoke-virtual {v6}, Landroid/view/View;->getRotationY()F

    .line 339
    move-result v0

    .line 342
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 343
    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    .line 345
    move-result v0

    .line 348
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 349
    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    .line 351
    move-result v0

    .line 354
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 355
    invoke-virtual {v6}, Landroid/view/View;->getPivotX()F

    .line 357
    move-result v0

    .line 360
    invoke-virtual {v6}, Landroid/view/View;->getPivotY()F

    .line 361
    move-result v2

    .line 364
    float-to-double v7, v0

    .line 365
    const-wide/16 v10, 0x0

    .line 366
    cmpl-double v3, v7, v10

    .line 368
    if-nez v3, :cond_6

    .line 370
    float-to-double v7, v2

    .line 372
    cmpl-double v3, v7, v10

    .line 373
    if-eqz v3, :cond_7

    .line 375
    :cond_6
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 377
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 379
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    .line 381
    move-result v0

    .line 384
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 385
    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    .line 387
    move-result v0

    .line 390
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 391
    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    .line 393
    move-result v0

    .line 396
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 397
    iget-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 399
    if-eqz v0, :cond_8

    .line 401
    invoke-virtual {v6}, Landroid/view/View;->getElevation()F

    .line 403
    move-result v0

    .line 406
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 407
    :cond_8
    instance-of v0, v6, Landroidx/constraintlayout/widget/Barrier;

    .line 409
    if-eqz v0, :cond_9

    .line 411
    check-cast v6, Landroidx/constraintlayout/widget/Barrier;

    .line 413
    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getAllowsGoneWidget()Z

    .line 415
    move-result v0

    .line 418
    iget-object v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 419
    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 421
    invoke-virtual {v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    .line 423
    move-result-object v0

    .line 426
    iput-object v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 427
    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    .line 429
    move-result v0

    .line 432
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 433
    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    .line 435
    move-result v0

    .line 438
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 439
    :cond_9
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 441
    move-object/from16 v1, p0

    .line 443
    move/from16 v2, v17

    .line 445
    move-object/from16 v3, v18

    .line 447
    goto/16 :goto_0

    .line 449
    :cond_a
    return-void
    .line 451
.end method

.method public final connect(IIII)V
    .locals 8

    .line 78
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x2

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const-string/jumbo v5, "right to "

    const-string v6, " undefined"

    const/4 v7, -0x1

    .line 81
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    packed-switch p2, :pswitch_data_0

    .line 82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-static {p2}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unknown"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-ne p4, v0, :cond_2

    .line 84
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 85
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    goto/16 :goto_0

    :cond_2
    if-ne p4, v1, :cond_3

    .line 86
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 87
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    goto/16 :goto_0

    .line 88
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    if-ne p4, v1, :cond_4

    .line 90
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 91
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    goto/16 :goto_0

    :cond_4
    if-ne p4, v0, :cond_5

    .line 92
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 93
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    goto/16 :goto_0

    .line 94
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    const/4 p1, 0x5

    if-ne p4, p1, :cond_6

    .line 96
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 97
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 98
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 99
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 100
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    goto/16 :goto_0

    :cond_6
    if-ne p4, v4, :cond_7

    .line 101
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 102
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 103
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 104
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 105
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    goto/16 :goto_0

    :cond_7
    if-ne p4, v3, :cond_8

    .line 106
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 107
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 108
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 109
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 110
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    goto/16 :goto_0

    .line 111
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    if-ne p4, v3, :cond_9

    .line 113
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 114
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 115
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 116
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 117
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    goto/16 :goto_0

    :cond_9
    if-ne p4, v4, :cond_a

    .line 118
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 119
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 120
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 121
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 122
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    goto/16 :goto_0

    .line 123
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    if-ne p4, v4, :cond_b

    .line 125
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 126
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 127
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 128
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 129
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    goto :goto_0

    :cond_b
    if-ne p4, v3, :cond_c

    .line 130
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 131
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 132
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 133
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 134
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    goto :goto_0

    .line 135
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    if-ne p4, v2, :cond_d

    .line 137
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 138
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    goto :goto_0

    :cond_d
    if-ne p4, p1, :cond_e

    .line 139
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 140
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    goto :goto_0

    .line 141
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    if-ne p4, v2, :cond_f

    .line 143
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 144
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    goto :goto_0

    :cond_f
    if-ne p4, p1, :cond_10

    .line 145
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 146
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    :goto_0
    return-void

    .line 147
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "left to "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final connect(IIIII)V
    .locals 8

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x2

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const-string/jumbo v5, "right to "

    const-string v6, " undefined"

    const/4 v7, -0x1

    .line 4
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    packed-switch p2, :pswitch_data_0

    .line 5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {p2}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unknown"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-ne p4, v0, :cond_2

    .line 7
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 8
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    goto :goto_0

    :cond_2
    if-ne p4, v1, :cond_3

    .line 9
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 10
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 11
    :goto_0
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    goto/16 :goto_6

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    if-ne p4, v1, :cond_4

    .line 14
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 15
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    goto :goto_1

    :cond_4
    if-ne p4, v0, :cond_5

    .line 16
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 17
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 18
    :goto_1
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    goto/16 :goto_6

    .line 19
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    const/4 p1, 0x5

    if-ne p4, p1, :cond_6

    .line 21
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 22
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 23
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 24
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 25
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    goto/16 :goto_6

    :cond_6
    if-ne p4, v4, :cond_7

    .line 26
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 27
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 28
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 29
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 30
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    goto/16 :goto_6

    :cond_7
    if-ne p4, v3, :cond_8

    .line 31
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 32
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 33
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 34
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 35
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    goto/16 :goto_6

    .line 36
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    if-ne p4, v3, :cond_9

    .line 38
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 39
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 40
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 41
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 42
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    goto :goto_2

    :cond_9
    if-ne p4, v4, :cond_a

    .line 43
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 44
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 45
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 46
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 47
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 48
    :goto_2
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    goto/16 :goto_6

    .line 49
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    if-ne p4, v4, :cond_b

    .line 51
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 52
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 53
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 54
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 55
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    goto :goto_3

    :cond_b
    if-ne p4, v3, :cond_c

    .line 56
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 57
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 58
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 59
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 60
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 61
    :goto_3
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    goto :goto_6

    .line 62
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    if-ne p4, v2, :cond_d

    .line 64
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 65
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    goto :goto_4

    :cond_d
    if-ne p4, p1, :cond_e

    .line 66
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 67
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 68
    :goto_4
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    goto :goto_6

    .line 69
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    if-ne p4, v2, :cond_f

    .line 71
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 72
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    goto :goto_5

    :cond_f
    if-ne p4, p1, :cond_10

    .line 73
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 74
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 75
    :goto_5
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    :goto_6
    return-void

    .line 76
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Left to "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final constrainHeight(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 2
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 6
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 8
    return-void
    .line 10
.end method

.method public final get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v0

    .line 17
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 18
    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 20
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 33
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 34
    return-object p0
    .line 36
.end method

.method public final getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 22
    return-object p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
    .line 26
.end method

.method public final getKnownIds()[I
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v1, v0, [Ljava/lang/Integer;

    .line 9
    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, [Ljava/lang/Integer;

    .line 15
    array-length v1, p0

    .line 17
    new-array v2, v1, [I

    .line 18
    :goto_0
    if-ge v0, v1, :cond_0

    .line 20
    aget-object v3, p0, v0

    .line 22
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v3

    .line 27
    aput v3, v2, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    return-object v2
    .line 33
.end method

.method public final load(ILandroid/content/Context;)V
    .locals 7

    const-string v0, "Error parsing resource: "

    const-string v1, "ConstraintSet"

    .line 1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 3
    :try_start_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    const/4 v6, 0x0

    .line 6
    invoke-static {p2, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v5

    const-string v6, "Guideline"

    .line 7
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 9
    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception p0

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public final load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11

    const-string v0, "Error parsing XML resource"

    const-string v1, "ConstraintSet"

    .line 13
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    const/4 v5, 0x1

    if-eq v2, v5, :cond_c

    if-eqz v2, :cond_b

    const/4 v6, -0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eq v2, v8, :cond_4

    if-eq v2, v7, :cond_0

    goto/16 :goto_4

    .line 14
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 15
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v10, "constraintset"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v6, v9

    goto :goto_1

    :sswitch_1
    const-string v9, "constraintoverride"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v6, v8

    goto :goto_1

    :sswitch_2
    const-string v9, "constraint"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v6, v5

    goto :goto_1

    :sswitch_3
    const-string v9, "guideline"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v6, v7

    :cond_1
    :goto_1
    if-eqz v6, :cond_3

    if-eq v6, v5, :cond_2

    if-eq v6, v8, :cond_2

    if-eq v6, v7, :cond_2

    goto/16 :goto_4

    .line 16
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    goto/16 :goto_4

    :cond_3
    return-void

    .line 17
    :cond_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    goto/16 :goto_2

    :sswitch_4
    const-string v7, "Constraint"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v6, v9

    goto :goto_2

    :sswitch_5
    const-string v7, "CustomAttribute"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v6, 0x8

    goto :goto_2

    :sswitch_6
    const-string v8, "Barrier"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v6, v7

    goto :goto_2

    :sswitch_7
    const-string v7, "CustomMethod"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v6, 0x9

    goto :goto_2

    :sswitch_8
    const-string v7, "Guideline"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v6, v8

    goto :goto_2

    :sswitch_9
    const-string v7, "Transform"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v6, 0x5

    goto :goto_2

    :sswitch_a
    const-string v7, "PropertySet"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v6, 0x4

    goto :goto_2

    :sswitch_b
    const-string v7, "ConstraintOverride"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v6, v5

    goto :goto_2

    :sswitch_c
    const-string v7, "Motion"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v6, 0x7

    goto :goto_2

    :sswitch_d
    const-string v7, "Layout"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_5

    const/4 v6, 0x6

    :cond_5
    :goto_2
    const-string v2, "XML parser error must be within a Constraint "

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-eqz v4, :cond_6

    .line 19
    :try_start_1
    iget-object v2, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-static {p1, p2, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->parse(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto/16 :goto_4

    .line 20
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    if-eqz v4, :cond_7

    .line 22
    iget-object v2, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 23
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 24
    invoke-virtual {v2, p1, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_4

    .line 25
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    if-eqz v4, :cond_8

    .line 27
    iget-object v2, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 28
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 29
    invoke-virtual {v2, p1, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_4

    .line 30
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    if-eqz v4, :cond_9

    .line 32
    iget-object v2, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 33
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 34
    invoke-virtual {v2, p1, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_4

    .line 35
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    if-eqz v4, :cond_a

    .line 37
    iget-object v2, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 38
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 39
    invoke-virtual {v2, p1, v5}, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 40
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :pswitch_5
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 43
    invoke-static {p1, v2, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v2

    .line 44
    iget-object v4, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    goto :goto_3

    .line 45
    :pswitch_6
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 46
    invoke-static {p1, v2, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v2

    .line 47
    iget-object v4, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput-boolean v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 48
    iput-boolean v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    goto :goto_3

    .line 49
    :pswitch_7
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 50
    invoke-static {p1, v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v2

    goto :goto_3

    .line 51
    :pswitch_8
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 52
    invoke-static {p1, v2, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v2

    :goto_3
    move-object v4, v2

    goto :goto_4

    .line 53
    :cond_b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 54
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 55
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_1
    move-exception p0

    .line 56
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bb8f310 -> :sswitch_3
        -0xb58ea23 -> :sswitch_2
        0x196d04a9 -> :sswitch_1
        0x7feafd65 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x78c018b6 -> :sswitch_d
        -0x7648542a -> :sswitch_c
        -0x74f4db17 -> :sswitch_b
        -0x4bab3dd3 -> :sswitch_a
        -0x49cf74b4 -> :sswitch_9
        -0x446d330 -> :sswitch_8
        0x15d883d2 -> :sswitch_7
        0x4f5d3b97 -> :sswitch_6
        0x6acd460b -> :sswitch_5
        0x6b78f1fd -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setGuidelineBegin(II)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 6
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 8
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 10
    move-result-object p2

    .line 13
    iget-object p2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 14
    const/4 v0, -0x1

    .line 16
    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 17
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 19
    move-result-object p0

    .line 22
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 23
    const/high16 p1, -0x40800000    # -1.0f

    .line 25
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 27
    return-void
    .line 29
.end method

.method public final setGuidelineEnd(II)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 6
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 8
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 10
    move-result-object p2

    .line 13
    iget-object p2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 14
    const/4 v0, -0x1

    .line 16
    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 17
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 19
    move-result-object p0

    .line 22
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 23
    const/high16 p1, -0x40800000    # -1.0f

    .line 25
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 27
    return-void
    .line 29
.end method

.method public final setMargin(III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 2
    move-result-object p0

    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    const-string/jumbo p1, "unknown constraint"

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    throw p0

    .line 17
    :pswitch_0
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 18
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 20
    goto :goto_0

    .line 22
    :pswitch_1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 23
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 25
    goto :goto_0

    .line 27
    :pswitch_2
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 28
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 30
    goto :goto_0

    .line 32
    :pswitch_3
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 33
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 35
    goto :goto_0

    .line 37
    :pswitch_4
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 38
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 40
    goto :goto_0

    .line 42
    :pswitch_5
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 43
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 45
    goto :goto_0

    .line 47
    :pswitch_6
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 48
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 50
    :goto_0
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 54
.end method
