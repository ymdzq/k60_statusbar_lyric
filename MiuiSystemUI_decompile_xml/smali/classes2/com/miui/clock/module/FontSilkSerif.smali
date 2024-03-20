.class public final Lcom/miui/clock/module/FontSilkSerif;
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
    iput-object v2, v0, Lcom/miui/clock/module/FontSilkSerif;->mSVGResource:[I

    .line 14
    const/4 v2, 0x7

    .line 16
    new-array v2, v2, [F

    .line 17
    fill-array-data v2, :array_1

    .line 19
    iput-object v2, v0, Lcom/miui/clock/module/FontSilkSerif;->mPercentages:[F

    .line 22
    const/16 v2, 0x9f

    .line 24
    const/16 v3, 0x5f

    .line 26
    const/16 v4, 0xba

    .line 28
    const/16 v5, 0xcf

    .line 30
    filled-new-array {v2, v3, v4, v5}, [I

    .line 32
    move-result-object v6

    .line 35
    const/16 v7, 0x98

    .line 36
    const/16 v8, 0xd0

    .line 38
    const/16 v15, 0xcc

    .line 40
    filled-new-array {v7, v3, v8, v15}, [I

    .line 42
    move-result-object v7

    .line 45
    filled-new-array {v2, v3, v15, v5}, [I

    .line 46
    move-result-object v8

    .line 49
    const/16 v14, 0xc2

    .line 50
    filled-new-array {v2, v3, v14, v5}, [I

    .line 52
    move-result-object v9

    .line 55
    const/16 v10, 0x82

    .line 56
    const/16 v13, 0xbf

    .line 58
    const/16 v12, 0xca

    .line 60
    filled-new-array {v10, v3, v13, v12}, [I

    .line 62
    move-result-object v10

    .line 65
    const/16 v11, 0x98

    .line 66
    filled-new-array {v11, v3, v15, v5}, [I

    .line 68
    move-result-object v11

    .line 71
    const/16 v12, 0xbd

    .line 72
    const/16 v13, 0xce

    .line 74
    const/16 v14, 0x97

    .line 76
    filled-new-array {v14, v3, v12, v13}, [I

    .line 78
    move-result-object v12

    .line 81
    const/16 v14, 0xc8

    .line 82
    filled-new-array {v2, v3, v14, v5}, [I

    .line 84
    move-result-object v13

    .line 87
    const/16 v14, 0x9b

    .line 88
    const/16 v1, 0xc6

    .line 90
    filled-new-array {v14, v3, v1, v5}, [I

    .line 92
    move-result-object v14

    .line 95
    filled-new-array {v2, v3, v1, v5}, [I

    .line 96
    move-result-object v16

    .line 99
    const/16 v2, 0xca

    .line 100
    const/16 v1, 0xc2

    .line 102
    move v1, v15

    .line 104
    move-object/from16 v15, v16

    .line 105
    filled-new-array/range {v6 .. v15}, [[I

    .line 107
    move-result-object v6

    .line 110
    const/16 v7, 0xbc

    .line 111
    filled-new-array {v7, v3, v4, v5}, [I

    .line 113
    move-result-object v17

    .line 116
    const/16 v7, 0x60

    .line 117
    const/16 v8, 0xaf

    .line 119
    filled-new-array {v8, v7, v2, v1}, [I

    .line 121
    move-result-object v18

    .line 124
    const/16 v7, 0xb4

    .line 125
    const/16 v9, 0x69

    .line 127
    const/16 v10, 0xc2

    .line 129
    filled-new-array {v7, v9, v10, v5}, [I

    .line 131
    move-result-object v19

    .line 134
    const/16 v7, 0xab

    .line 135
    const/16 v9, 0x62

    .line 137
    const/16 v10, 0xbc

    .line 139
    const/16 v11, 0xcb

    .line 141
    filled-new-array {v7, v9, v10, v11}, [I

    .line 143
    move-result-object v20

    .line 146
    const/16 v9, 0xa5

    .line 147
    const/16 v10, 0xb4

    .line 149
    filled-new-array {v9, v3, v10, v2}, [I

    .line 151
    move-result-object v21

    .line 154
    const/16 v9, 0xb4

    .line 155
    const/16 v10, 0xc5

    .line 157
    filled-new-array {v9, v3, v10, v5}, [I

    .line 159
    move-result-object v22

    .line 162
    const/16 v9, 0xb6

    .line 163
    const/16 v10, 0xb9

    .line 165
    filled-new-array {v9, v3, v10, v5}, [I

    .line 167
    move-result-object v23

    .line 170
    const/16 v9, 0xc5

    .line 171
    const/16 v10, 0xd1

    .line 173
    const/16 v12, 0xae

    .line 175
    const/16 v13, 0x69

    .line 177
    filled-new-array {v12, v13, v9, v10}, [I

    .line 179
    move-result-object v24

    .line 182
    const/16 v9, 0xc6

    .line 183
    filled-new-array {v8, v3, v9, v5}, [I

    .line 185
    move-result-object v25

    .line 188
    const/16 v9, 0xb5

    .line 189
    const/16 v10, 0xc8

    .line 191
    filled-new-array {v9, v3, v10, v11}, [I

    .line 193
    move-result-object v26

    .line 196
    filled-new-array/range {v17 .. v26}, [[I

    .line 197
    move-result-object v9

    .line 200
    const/16 v13, 0xb7

    .line 201
    filled-new-array {v13, v3, v4, v5}, [I

    .line 203
    move-result-object v13

    .line 206
    const/16 v14, 0xd0

    .line 207
    const/16 v15, 0xaa

    .line 209
    filled-new-array {v15, v3, v14, v1}, [I

    .line 211
    move-result-object v14

    .line 214
    const/16 v11, 0xb5

    .line 215
    const/16 v10, 0xc2

    .line 217
    filled-new-array {v11, v3, v10, v5}, [I

    .line 219
    move-result-object v11

    .line 222
    const/16 v10, 0xb1

    .line 223
    const/16 v1, 0xbe

    .line 225
    filled-new-array {v10, v3, v1, v5}, [I

    .line 227
    move-result-object v1

    .line 230
    filled-new-array {v13, v14, v11, v1}, [[I

    .line 231
    move-result-object v1

    .line 234
    filled-new-array {v6, v9, v1}, [[[I

    .line 235
    move-result-object v1

    .line 238
    iput-object v1, v0, Lcom/miui/clock/module/FontSilkSerif;->mHourOffset:[[[I

    .line 239
    const/16 v1, 0x53

    .line 241
    const/16 v3, 0xc3

    .line 243
    const/16 v6, 0x9f

    .line 245
    filled-new-array {v4, v1, v6, v3}, [I

    .line 247
    move-result-object v17

    .line 250
    filled-new-array {v4, v1, v12, v3}, [I

    .line 251
    move-result-object v18

    .line 254
    const/16 v6, 0xb1

    .line 255
    filled-new-array {v4, v1, v6, v3}, [I

    .line 257
    move-result-object v19

    .line 260
    const/16 v6, 0xa7

    .line 261
    filled-new-array {v4, v1, v6, v3}, [I

    .line 263
    move-result-object v20

    .line 266
    const/16 v9, 0x80

    .line 267
    const/16 v10, 0xc0

    .line 269
    filled-new-array {v4, v1, v9, v10}, [I

    .line 271
    move-result-object v21

    .line 274
    filled-new-array {v4, v1, v15, v3}, [I

    .line 275
    move-result-object v22

    .line 278
    const/16 v9, 0x9a

    .line 279
    filled-new-array {v4, v1, v9, v3}, [I

    .line 281
    move-result-object v23

    .line 284
    const/16 v10, 0xad

    .line 285
    filled-new-array {v4, v1, v10, v3}, [I

    .line 287
    move-result-object v24

    .line 290
    filled-new-array {v4, v1, v6, v3}, [I

    .line 291
    move-result-object v25

    .line 294
    const/16 v10, 0xc6

    .line 295
    filled-new-array {v4, v1, v7, v10}, [I

    .line 297
    move-result-object v26

    .line 300
    filled-new-array/range {v17 .. v26}, [[I

    .line 301
    move-result-object v27

    .line 304
    const/16 v4, 0x9c

    .line 305
    const/16 v10, 0xda

    .line 307
    filled-new-array {v10, v1, v4, v3}, [I

    .line 309
    move-result-object v17

    .line 312
    const/16 v4, 0xbf

    .line 313
    filled-new-array {v2, v1, v8, v4}, [I

    .line 315
    move-result-object v18

    .line 318
    const/16 v8, 0x9c

    .line 319
    const/16 v11, 0xb9

    .line 321
    filled-new-array {v10, v1, v8, v11}, [I

    .line 323
    move-result-object v19

    .line 326
    const/16 v8, 0x90

    .line 327
    const/16 v13, 0xd7

    .line 329
    filled-new-array {v13, v1, v8, v11}, [I

    .line 331
    move-result-object v20

    .line 334
    const/16 v8, 0x81

    .line 335
    const/16 v11, 0xbe

    .line 337
    filled-new-array {v10, v1, v8, v11}, [I

    .line 339
    move-result-object v21

    .line 342
    const/16 v8, 0xd8

    .line 343
    const/16 v11, 0xa1

    .line 345
    filled-new-array {v8, v1, v11, v3}, [I

    .line 347
    move-result-object v22

    .line 350
    const/16 v11, 0x97

    .line 351
    filled-new-array {v8, v1, v11, v3}, [I

    .line 353
    move-result-object v23

    .line 356
    const/16 v8, 0x57

    .line 357
    const/16 v11, 0x99

    .line 359
    filled-new-array {v10, v8, v11, v4}, [I

    .line 361
    move-result-object v24

    .line 364
    const/16 v8, 0x9b

    .line 365
    filled-new-array {v10, v1, v8, v3}, [I

    .line 367
    move-result-object v25

    .line 370
    const/16 v8, 0xe1

    .line 371
    const/16 v10, 0x9c

    .line 373
    filled-new-array {v8, v1, v10, v4}, [I

    .line 375
    move-result-object v26

    .line 378
    filled-new-array/range {v17 .. v26}, [[I

    .line 379
    move-result-object v28

    .line 382
    const/16 v4, 0xd2

    .line 383
    const/16 v8, 0x9f

    .line 385
    filled-new-array {v4, v1, v8, v3}, [I

    .line 387
    move-result-object v17

    .line 390
    const/16 v4, 0x56

    .line 391
    const/16 v8, 0xcc

    .line 393
    filled-new-array {v8, v4, v12, v3}, [I

    .line 395
    move-result-object v18

    .line 398
    const/16 v4, 0xa8

    .line 399
    filled-new-array {v5, v1, v4, v3}, [I

    .line 401
    move-result-object v19

    .line 404
    const/16 v4, 0xc8

    .line 405
    filled-new-array {v4, v1, v6, v3}, [I

    .line 407
    move-result-object v20

    .line 410
    const/16 v4, 0x7d

    .line 411
    const/16 v5, 0xc4

    .line 413
    filled-new-array {v2, v1, v4, v5}, [I

    .line 415
    move-result-object v21

    .line 418
    const/16 v4, 0xc6

    .line 419
    filled-new-array {v4, v1, v15, v3}, [I

    .line 421
    move-result-object v22

    .line 424
    const/16 v5, 0xcd

    .line 425
    const/16 v8, 0xc9

    .line 427
    filled-new-array {v5, v1, v9, v8}, [I

    .line 429
    move-result-object v23

    .line 432
    const/16 v5, 0xb5

    .line 433
    filled-new-array {v4, v1, v5, v3}, [I

    .line 435
    move-result-object v24

    .line 438
    const/16 v5, 0xcb

    .line 439
    filled-new-array {v5, v1, v6, v3}, [I

    .line 441
    move-result-object v25

    .line 444
    filled-new-array {v5, v1, v12, v4}, [I

    .line 445
    move-result-object v26

    .line 448
    filled-new-array/range {v17 .. v26}, [[I

    .line 449
    move-result-object v29

    .line 452
    const/16 v4, 0x9f

    .line 453
    const/16 v5, 0xcb

    .line 455
    filled-new-array {v5, v1, v4, v3}, [I

    .line 457
    move-result-object v17

    .line 460
    filled-new-array {v5, v1, v12, v3}, [I

    .line 461
    move-result-object v18

    .line 464
    const/16 v4, 0xac

    .line 465
    const/16 v5, 0xc8

    .line 467
    filled-new-array {v5, v1, v4, v3}, [I

    .line 469
    move-result-object v19

    .line 472
    const/16 v4, 0xa4

    .line 473
    filled-new-array {v2, v1, v4, v3}, [I

    .line 475
    move-result-object v20

    .line 478
    const/16 v4, 0x7d

    .line 479
    const/16 v10, 0xc0

    .line 481
    filled-new-array {v2, v1, v4, v10}, [I

    .line 483
    move-result-object v21

    .line 486
    filled-new-array {v5, v1, v15, v3}, [I

    .line 487
    move-result-object v22

    .line 490
    filled-new-array {v5, v1, v9, v3}, [I

    .line 491
    move-result-object v23

    .line 494
    const/16 v4, 0xad

    .line 495
    const/16 v10, 0xcc

    .line 497
    filled-new-array {v10, v1, v4, v3}, [I

    .line 499
    move-result-object v24

    .line 502
    filled-new-array {v5, v1, v6, v3}, [I

    .line 503
    move-result-object v25

    .line 506
    const/16 v4, 0xc6

    .line 507
    filled-new-array {v5, v1, v7, v4}, [I

    .line 509
    move-result-object v26

    .line 512
    filled-new-array/range {v17 .. v26}, [[I

    .line 513
    move-result-object v30

    .line 516
    const/16 v4, 0x9f

    .line 517
    filled-new-array {v8, v1, v4, v3}, [I

    .line 519
    move-result-object v17

    .line 522
    const/16 v4, 0xcc

    .line 523
    filled-new-array {v4, v1, v12, v3}, [I

    .line 525
    move-result-object v18

    .line 528
    const/16 v5, 0xce

    .line 529
    const/16 v10, 0xa6

    .line 531
    filled-new-array {v5, v1, v10, v3}, [I

    .line 533
    move-result-object v19

    .line 536
    const/16 v5, 0xa4

    .line 537
    filled-new-array {v4, v1, v5, v3}, [I

    .line 539
    move-result-object v20

    .line 542
    const/16 v5, 0x74

    .line 543
    const/16 v10, 0xc2

    .line 545
    filled-new-array {v4, v1, v5, v10}, [I

    .line 547
    move-result-object v21

    .line 550
    filled-new-array {v4, v1, v15, v3}, [I

    .line 551
    move-result-object v22

    .line 554
    const/16 v5, 0xc4

    .line 555
    filled-new-array {v5, v1, v9, v3}, [I

    .line 557
    move-result-object v23

    .line 560
    filled-new-array {v4, v1, v12, v2}, [I

    .line 561
    move-result-object v24

    .line 564
    filled-new-array {v4, v1, v6, v3}, [I

    .line 565
    move-result-object v25

    .line 568
    const/16 v2, 0xc4

    .line 569
    const/16 v4, 0xc6

    .line 571
    filled-new-array {v2, v1, v7, v4}, [I

    .line 573
    move-result-object v26

    .line 576
    filled-new-array/range {v17 .. v26}, [[I

    .line 577
    move-result-object v31

    .line 580
    const/16 v2, 0x96

    .line 581
    filled-new-array {v8, v1, v2, v3}, [I

    .line 583
    move-result-object v17

    .line 586
    filled-new-array {v8, v1, v15, v3}, [I

    .line 587
    move-result-object v18

    .line 590
    const/16 v2, 0xa1

    .line 591
    filled-new-array {v8, v1, v2, v3}, [I

    .line 593
    move-result-object v19

    .line 596
    const/16 v2, 0xa0

    .line 597
    filled-new-array {v8, v1, v2, v3}, [I

    .line 599
    move-result-object v20

    .line 602
    const/16 v2, 0x79

    .line 603
    const/16 v4, 0xb8

    .line 605
    const/16 v5, 0xc8

    .line 607
    filled-new-array {v5, v1, v2, v4}, [I

    .line 609
    move-result-object v21

    .line 612
    const/16 v2, 0xa1

    .line 613
    filled-new-array {v8, v1, v2, v3}, [I

    .line 615
    move-result-object v22

    .line 618
    const/16 v2, 0x8b

    .line 619
    filled-new-array {v8, v1, v2, v3}, [I

    .line 621
    move-result-object v23

    .line 624
    const/16 v2, 0xa9

    .line 625
    filled-new-array {v8, v1, v2, v3}, [I

    .line 627
    move-result-object v24

    .line 630
    const/16 v2, 0x9e

    .line 631
    filled-new-array {v8, v1, v2, v3}, [I

    .line 633
    move-result-object v25

    .line 636
    const/16 v3, 0xc6

    .line 637
    filled-new-array {v8, v1, v2, v3}, [I

    .line 639
    move-result-object v26

    .line 642
    filled-new-array/range {v17 .. v26}, [[I

    .line 643
    move-result-object v32

    .line 646
    filled-new-array/range {v27 .. v32}, [[[I

    .line 647
    move-result-object v1

    .line 650
    iput-object v1, v0, Lcom/miui/clock/module/FontSilkSerif;->mMinuteOffset:[[[I

    .line 651
    const/16 v1, 0xa

    .line 653
    new-array v2, v1, [F

    .line 655
    fill-array-data v2, :array_2

    .line 657
    iput-object v2, v0, Lcom/miui/clock/module/FontSilkSerif;->mSVGEmptyLeft:[F

    .line 660
    new-array v2, v1, [F

    .line 662
    fill-array-data v2, :array_3

    .line 664
    iput-object v2, v0, Lcom/miui/clock/module/FontSilkSerif;->mSVGEmptyRight:[F

    .line 667
    new-array v1, v1, [I

    .line 669
    fill-array-data v1, :array_4

    .line 671
    iput-object v1, v0, Lcom/miui/clock/module/FontSilkSerif;->mLargeClockWidth:[I

    .line 674
    return-void

    .line 676
    nop

    .line 677
    :array_0
    .array-data 4
        0x7f080c91    # @drawable/font_a_0 'res/drawable/font_a_0.xml'
        0x7f080c92    # @drawable/font_a_1 'res/drawable/font_a_1.xml'
        0x7f080c93    # @drawable/font_a_2 'res/drawable/font_a_2.xml'
        0x7f080c94    # @drawable/font_a_3 'res/drawable/font_a_3.xml'
        0x7f080c95    # @drawable/font_a_4 'res/drawable/font_a_4.xml'
        0x7f080c96    # @drawable/font_a_5 'res/drawable/font_a_5.xml'
        0x7f080c97    # @drawable/font_a_6 'res/drawable/font_a_6.xml'
        0x7f080c98    # @drawable/font_a_7 'res/drawable/font_a_7.xml'
        0x7f080c99    # @drawable/font_a_8 'res/drawable/font_a_8.xml'
        0x7f080c9a    # @drawable/font_a_9 'res/drawable/font_a_9.xml'
    .end array-data

    .line 678
    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e570a3d    # 0.21f
        0x3e051eb8    # 0.13f
        0x3e051eb8    # 0.13f
        0x3ea8f5c3    # 0.33f
        0x3e051eb8    # 0.13f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 702
    :array_2
    .array-data 4
        0x41830c31
        0x414f3cf4
        0x409e79e8
        0x413cf3cf
        0x41000000    # 8.0f
        0x413cf3cf
        0x41555555
        0x412aaaab
        0x41430c31
        0x4136db6e
    .end array-data

    .line 720
    :array_3
    .array-data 4
        0x42f18618
        0x4286db6e
        0x42d79e7a
        0x42e24925
        0x42faaaab
        0x42d24925
        0x42e92492
        0x42eaaaab
        0x42e24925
        0x42e3cf3d
    .end array-data

    .line 744
    :array_4
    .array-data 4
        0x8d
        0x4d
        0x75
        0x7c
        0x86
        0x77
        0x81
        0x76
        0x7d
        0x7e
    .end array-data
    .line 768
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
    const/high16 p0, 0x41e00000    # 28.0f

    .line 2
    return p0
    .line 4
.end method

.method public final getFontStyle()Lcom/miui/clock/module/BaseFontStyle$Style;
    .locals 0

    .line 1
    sget-object p0, Lcom/miui/clock/module/BaseFontStyle$Style;->SilkSerif:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHourOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSilkSerif;->mHourOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLargeClockHeight()I
    .locals 0

    .line 1
    const/16 p0, 0xae

    .line 2
    return p0
    .line 4
.end method

.method public final getLargeClockWidth()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSilkSerif;->mLargeClockWidth:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLeftEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSilkSerif;->mSVGEmptyLeft:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMinuteOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSilkSerif;->mMinuteOffset:[[[I

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
    const p0, 0x41a0e148    # 20.11f

    .line 2
    return p0
    .line 5
.end method

.method public final getPercentages()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSilkSerif;->mPercentages:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRightEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSilkSerif;->mSVGEmptyRight:[F

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
    const/4 p0, -0x2

    .line 2
    return p0
    .line 3
.end method

.method public final getSmallColon1MarginInnerTop()F
    .locals 0

    .line 1
    const p0, 0x416f3333    # 14.95f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColon2MarginInnerTop()F
    .locals 0

    .line 1
    const p0, 0x42395c29    # 46.34f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonRealWidth()F
    .locals 0

    .line 1
    const p0, 0x4111eb85    # 9.12f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResource()I
    .locals 0

    .line 1
    const p0, 0x7f080c9b    # @drawable/font_a_colon 'res/drawable/font_a_colon.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResourceHeight()I
    .locals 0

    .line 1
    const/16 p0, 0xae

    .line 2
    return p0
    .line 4
.end method

.method public final getSmallColonResourceWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x32

    .line 2
    return p0
    .line 4
.end method

.method public final getSvgResource()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontSilkSerif;->mSVGResource:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextBoxWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x8d

    .line 2
    return p0
    .line 4
.end method
