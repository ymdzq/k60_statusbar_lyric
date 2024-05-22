.class public final Lcom/android/systemui/monet/hct/Hct;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public argb:I

.field public chroma:D

.field public hue:D

.field public tone:D


# direct methods
.method public constructor <init>(I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/monet/hct/Hct;->argb:I

    .line 5
    invoke-static {p1}, Lcom/android/systemui/monet/hct/Cam16;->fromInt(I)Lcom/android/systemui/monet/hct/Cam16;

    .line 7
    move-result-object v0

    .line 10
    iget-wide v1, v0, Lcom/android/systemui/monet/hct/Cam16;->hue:D

    .line 11
    iput-wide v1, p0, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 13
    iget-wide v0, v0, Lcom/android/systemui/monet/hct/Cam16;->chroma:D

    .line 15
    iput-wide v0, p0, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 17
    shr-int/lit8 v0, p1, 0x10

    .line 19
    and-int/lit16 v0, v0, 0xff

    .line 21
    invoke-static {v0}, Lcom/android/systemui/monet/utils/ColorUtils;->linearized(I)D

    .line 23
    move-result-wide v0

    .line 26
    shr-int/lit8 v2, p1, 0x8

    .line 27
    and-int/lit16 v2, v2, 0xff

    .line 29
    invoke-static {v2}, Lcom/android/systemui/monet/utils/ColorUtils;->linearized(I)D

    .line 31
    move-result-wide v2

    .line 34
    and-int/lit16 p1, p1, 0xff

    .line 35
    invoke-static {p1}, Lcom/android/systemui/monet/utils/ColorUtils;->linearized(I)D

    .line 37
    move-result-wide v4

    .line 40
    const/4 p1, 0x3

    .line 41
    new-array p1, p1, [D

    .line 42
    const/4 v6, 0x0

    .line 44
    aput-wide v0, p1, v6

    .line 45
    const/4 v0, 0x1

    .line 47
    aput-wide v2, p1, v0

    .line 48
    const/4 v1, 0x2

    .line 50
    aput-wide v4, p1, v1

    .line 51
    sget-object v1, Lcom/android/systemui/monet/utils/ColorUtils;->SRGB_TO_XYZ:[[D

    .line 53
    invoke-static {p1, v1}, Lcom/android/systemui/monet/utils/MathUtils;->matrixMultiply([D[[D)[D

    .line 55
    move-result-object p1

    .line 58
    aget-wide v0, p1, v0

    .line 59
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 61
    div-double/2addr v0, v2

    .line 63
    invoke-static {v0, v1}, Lcom/android/systemui/monet/utils/ColorUtils;->labF(D)D

    .line 64
    move-result-wide v0

    .line 67
    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    .line 68
    mul-double/2addr v0, v2

    .line 70
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    .line 71
    sub-double/2addr v0, v2

    .line 73
    iput-wide v0, p0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 74
    return-void
    .line 76
.end method

.method public static from(DDD)Lcom/android/systemui/monet/hct/Hct;
    .locals 44

    .line 1
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 2
    cmpg-double v2, p2, v0

    .line 7
    if-ltz v2, :cond_20

    .line 9
    cmpg-double v0, p4, v0

    .line 11
    if-ltz v0, :cond_20

    .line 13
    const-wide v0, 0x4058fffe5c91d14eL    # 99.9999

    .line 15
    cmpl-double v0, p4, v0

    .line 20
    if-lez v0, :cond_0

    .line 22
    goto/16 :goto_17

    .line 24
    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/android/systemui/monet/utils/MathUtils;->sanitizeDegreesDouble(D)D

    .line 26
    move-result-wide v0

    .line 29
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 30
    div-double/2addr v0, v2

    .line 35
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 36
    mul-double/2addr v0, v2

    .line 41
    invoke-static/range {p4 .. p5}, Lcom/android/systemui/monet/utils/ColorUtils;->yFromLstar(D)D

    .line 42
    move-result-wide v2

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 46
    move-result-wide v4

    .line 49
    const-wide/high16 v6, 0x4026000000000000L    # 11.0

    .line 50
    mul-double/2addr v4, v6

    .line 52
    sget-object v6, Lcom/android/systemui/monet/hct/ViewingConditions;->DEFAULT:Lcom/android/systemui/monet/hct/ViewingConditions;

    .line 53
    iget-wide v7, v6, Lcom/android/systemui/monet/hct/ViewingConditions;->n:D

    .line 55
    const-wide v9, 0x3fd28f5c28f5c28fL    # 0.29

    .line 57
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 62
    move-result-wide v7

    .line 65
    const-wide v9, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 66
    sub-double/2addr v9, v7

    .line 71
    const-wide v7, 0x3fe75c28f5c28f5cL    # 0.73

    .line 72
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 77
    move-result-wide v7

    .line 80
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 81
    div-double/2addr v9, v7

    .line 83
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 84
    add-double/2addr v7, v0

    .line 86
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 87
    move-result-wide v7

    .line 90
    const-wide v11, 0x400e666666666666L    # 3.8

    .line 91
    add-double/2addr v7, v11

    .line 96
    const-wide/high16 v11, 0x3fd0000000000000L    # 0.25

    .line 97
    mul-double/2addr v7, v11

    .line 99
    const-wide v11, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    .line 100
    mul-double/2addr v7, v11

    .line 105
    iget-wide v11, v6, Lcom/android/systemui/monet/hct/ViewingConditions;->nc:D

    .line 106
    mul-double/2addr v7, v11

    .line 108
    iget-wide v11, v6, Lcom/android/systemui/monet/hct/ViewingConditions;->ncb:D

    .line 109
    mul-double/2addr v7, v11

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 112
    move-result-wide v11

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 116
    move-result-wide v13

    .line 119
    const/4 v15, 0x0

    .line 120
    :goto_0
    sget-object v17, Lcom/android/systemui/monet/hct/HctSolver;->Y_FROM_LINRGB:[D

    .line 121
    move-wide/from16 v18, v0

    .line 123
    const/4 v0, 0x5

    .line 125
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    .line 126
    const-wide/16 v22, 0x0

    .line 128
    if-ge v15, v0, :cond_8

    .line 130
    move-wide/from16 v24, v2

    .line 132
    div-double v1, v4, v20

    .line 134
    cmpl-double v3, p2, v22

    .line 136
    if-eqz v3, :cond_2

    .line 138
    cmpl-double v3, v4, v22

    .line 140
    if-nez v3, :cond_1

    .line 142
    goto :goto_1

    .line 144
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 145
    move-result-wide v26

    .line 148
    div-double v26, p2, v26

    .line 149
    move-wide/from16 p4, v1

    .line 151
    goto :goto_2

    .line 153
    :cond_2
    :goto_1
    move-wide/from16 p4, v1

    .line 154
    move-wide/from16 v26, v22

    .line 156
    :goto_2
    mul-double v0, v26, v9

    .line 158
    const-wide v2, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    .line 160
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 165
    move-result-wide v0

    .line 168
    iget-wide v2, v6, Lcom/android/systemui/monet/hct/ViewingConditions;->c:D

    .line 169
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    .line 171
    div-double v26, v26, v2

    .line 173
    iget-wide v2, v6, Lcom/android/systemui/monet/hct/ViewingConditions;->z:D

    .line 175
    div-double v2, v26, v2

    .line 177
    move-wide/from16 v26, v9

    .line 179
    move-wide/from16 v9, p4

    .line 181
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 183
    move-result-wide v2

    .line 186
    iget-wide v9, v6, Lcom/android/systemui/monet/hct/ViewingConditions;->aw:D

    .line 187
    mul-double/2addr v2, v9

    .line 189
    iget-wide v9, v6, Lcom/android/systemui/monet/hct/ViewingConditions;->nbb:D

    .line 190
    div-double/2addr v2, v9

    .line 192
    const-wide v9, 0x3fd3851eb851eb85L    # 0.305

    .line 193
    add-double/2addr v9, v2

    .line 198
    const-wide/high16 v28, 0x4037000000000000L    # 23.0

    .line 199
    mul-double v9, v9, v28

    .line 201
    mul-double/2addr v9, v0

    .line 203
    mul-double v28, v28, v7

    .line 204
    const-wide/high16 v30, 0x4026000000000000L    # 11.0

    .line 206
    mul-double v30, v30, v0

    .line 208
    mul-double v30, v30, v13

    .line 210
    add-double v30, v30, v28

    .line 212
    const-wide/high16 v28, 0x405b000000000000L    # 108.0

    .line 214
    mul-double v0, v0, v28

    .line 216
    mul-double/2addr v0, v11

    .line 218
    add-double v0, v0, v30

    .line 219
    div-double/2addr v9, v0

    .line 221
    mul-double v0, v9, v13

    .line 222
    mul-double/2addr v9, v11

    .line 224
    const-wide v28, 0x407cc00000000000L    # 460.0

    .line 225
    mul-double v2, v2, v28

    .line 230
    const-wide v28, 0x407c300000000000L    # 451.0

    .line 232
    mul-double v28, v28, v0

    .line 237
    add-double v28, v28, v2

    .line 239
    const-wide/high16 v30, 0x4072000000000000L    # 288.0

    .line 241
    mul-double v30, v30, v9

    .line 243
    add-double v30, v30, v28

    .line 245
    const-wide v36, 0x4095ec0000000000L    # 1403.0

    .line 247
    div-double v38, v30, v36

    .line 252
    const-wide v28, 0x408bd80000000000L    # 891.0

    .line 254
    mul-double v28, v28, v0

    .line 259
    sub-double v32, v2, v28

    .line 261
    const-wide v30, 0x4070500000000000L    # 261.0

    .line 263
    move-wide/from16 v28, v9

    .line 268
    move-wide/from16 v34, v36

    .line 270
    invoke-static/range {v28 .. v35}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticOutline0;->m(DDDD)D

    .line 272
    move-result-wide v40

    .line 275
    const-wide v28, 0x406b800000000000L    # 220.0

    .line 276
    mul-double v0, v0, v28

    .line 281
    sub-double v32, v2, v0

    .line 283
    const-wide v30, 0x40b89c0000000000L    # 6300.0

    .line 285
    move-wide/from16 v28, v9

    .line 290
    invoke-static/range {v28 .. v35}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticOutline0;->m(DDDD)D

    .line 292
    move-result-wide v0

    .line 295
    invoke-static/range {v38 .. v39}, Lcom/android/systemui/monet/hct/HctSolver;->inverseChromaticAdaptation(D)D

    .line 296
    move-result-wide v2

    .line 299
    invoke-static/range {v40 .. v41}, Lcom/android/systemui/monet/hct/HctSolver;->inverseChromaticAdaptation(D)D

    .line 300
    move-result-wide v9

    .line 303
    invoke-static {v0, v1}, Lcom/android/systemui/monet/hct/HctSolver;->inverseChromaticAdaptation(D)D

    .line 304
    move-result-wide v0

    .line 307
    move-object/from16 p1, v6

    .line 308
    const/4 v6, 0x3

    .line 310
    new-array v6, v6, [D

    .line 311
    const/16 v16, 0x0

    .line 313
    aput-wide v2, v6, v16

    .line 315
    const/4 v2, 0x1

    .line 317
    aput-wide v9, v6, v2

    .line 318
    const/4 v3, 0x2

    .line 320
    aput-wide v0, v6, v3

    .line 321
    sget-object v0, Lcom/android/systemui/monet/hct/HctSolver;->LINRGB_FROM_SCALED_DISCOUNT:[[D

    .line 323
    invoke-static {v6, v0}, Lcom/android/systemui/monet/utils/MathUtils;->matrixMultiply([D[[D)[D

    .line 325
    move-result-object v1

    .line 328
    aget-wide v9, v1, v16

    .line 329
    cmpg-double v0, v9, v22

    .line 331
    if-ltz v0, :cond_9

    .line 333
    aget-wide v28, v1, v2

    .line 335
    cmpg-double v0, v28, v22

    .line 337
    if-ltz v0, :cond_9

    .line 339
    aget-wide v30, v1, v3

    .line 341
    cmpg-double v0, v30, v22

    .line 343
    if-gez v0, :cond_3

    .line 345
    goto/16 :goto_4

    .line 347
    :cond_3
    aget-wide v32, v17, v16

    .line 349
    aget-wide v34, v17, v2

    .line 351
    aget-wide v36, v17, v3

    .line 353
    mul-double v32, v32, v9

    .line 355
    mul-double v34, v34, v28

    .line 357
    add-double v34, v34, v32

    .line 359
    mul-double v36, v36, v30

    .line 361
    add-double v36, v36, v34

    .line 363
    cmpg-double v2, v36, v22

    .line 365
    if-gtz v2, :cond_4

    .line 367
    goto :goto_4

    .line 369
    :cond_4
    const/4 v2, 0x4

    .line 370
    if-eq v15, v2, :cond_6

    .line 371
    sub-double v2, v36, v24

    .line 373
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 375
    move-result-wide v9

    .line 378
    const-wide v28, 0x3f60624dd2f1a9fcL    # 0.002

    .line 379
    cmpg-double v6, v9, v28

    .line 384
    if-gez v6, :cond_5

    .line 386
    goto :goto_3

    .line 388
    :cond_5
    mul-double/2addr v2, v4

    .line 389
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 390
    mul-double v36, v36, v0

    .line 392
    div-double v2, v2, v36

    .line 394
    sub-double/2addr v4, v2

    .line 396
    add-int/lit8 v15, v15, 0x1

    .line 397
    move-object/from16 v6, p1

    .line 399
    move-wide/from16 v0, v18

    .line 401
    move-wide/from16 v2, v24

    .line 403
    move-wide/from16 v9, v26

    .line 405
    goto/16 :goto_0

    .line 407
    :cond_6
    :goto_3
    const/4 v2, 0x0

    .line 409
    aget-wide v3, v1, v2

    .line 410
    const-wide v5, 0x405900a3d70a3d71L    # 100.01

    .line 412
    cmpl-double v2, v3, v5

    .line 417
    if-gtz v2, :cond_9

    .line 419
    const/4 v2, 0x1

    .line 421
    aget-wide v7, v1, v2

    .line 422
    cmpl-double v7, v7, v5

    .line 424
    if-gtz v7, :cond_9

    .line 426
    const/4 v0, 0x2

    .line 428
    aget-wide v7, v1, v0

    .line 429
    cmpl-double v5, v7, v5

    .line 431
    if-lez v5, :cond_7

    .line 433
    goto :goto_4

    .line 435
    :cond_7
    invoke-static {v3, v4}, Lcom/android/systemui/monet/utils/ColorUtils;->delinearized(D)I

    .line 436
    move-result v3

    .line 439
    aget-wide v4, v1, v2

    .line 440
    invoke-static {v4, v5}, Lcom/android/systemui/monet/utils/ColorUtils;->delinearized(D)I

    .line 442
    move-result v2

    .line 445
    aget-wide v4, v1, v0

    .line 446
    invoke-static {v4, v5}, Lcom/android/systemui/monet/utils/ColorUtils;->delinearized(D)I

    .line 448
    move-result v1

    .line 451
    and-int/lit16 v3, v3, 0xff

    .line 452
    shl-int/lit8 v3, v3, 0x10

    .line 454
    const/high16 v4, -0x1000000

    .line 456
    or-int/2addr v3, v4

    .line 458
    and-int/lit16 v2, v2, 0xff

    .line 459
    shl-int/lit8 v2, v2, 0x8

    .line 461
    or-int/2addr v2, v3

    .line 463
    and-int/lit16 v1, v1, 0xff

    .line 464
    or-int/2addr v1, v2

    .line 466
    goto :goto_5

    .line 467
    :cond_8
    move-wide/from16 v24, v2

    .line 468
    :cond_9
    :goto_4
    const/4 v1, 0x0

    .line 470
    :goto_5
    if-eqz v1, :cond_a

    .line 471
    goto/16 :goto_19

    .line 473
    :cond_a
    const/4 v1, 0x3

    .line 475
    new-array v1, v1, [D

    .line 476
    fill-array-data v1, :array_0

    .line 478
    const/4 v2, 0x1

    .line 481
    move v5, v2

    .line 482
    move-wide/from16 v6, v22

    .line 483
    move-wide v8, v6

    .line 485
    const/4 v3, 0x0

    .line 486
    const/4 v4, 0x0

    .line 487
    move-object v2, v1

    .line 488
    :goto_6
    const/16 v10, 0xc

    .line 489
    if-ge v3, v10, :cond_1a

    .line 491
    const/4 v10, 0x0

    .line 493
    aget-wide v32, v17, v10

    .line 494
    const/4 v10, 0x1

    .line 496
    aget-wide v11, v17, v10

    .line 497
    const/4 v0, 0x2

    .line 499
    aget-wide v40, v17, v0

    .line 500
    rem-int/lit8 v13, v3, 0x4

    .line 502
    if-gt v13, v10, :cond_b

    .line 504
    move-wide/from16 v13, v22

    .line 506
    goto :goto_7

    .line 508
    :cond_b
    move-wide/from16 v13, v20

    .line 509
    :goto_7
    rem-int/lit8 v10, v3, 0x2

    .line 511
    if-nez v10, :cond_c

    .line 513
    move-wide/from16 v42, v22

    .line 515
    goto :goto_8

    .line 517
    :cond_c
    move-wide/from16 v42, v20

    .line 518
    :goto_8
    const/4 v10, 0x4

    .line 520
    if-ge v3, v10, :cond_f

    .line 521
    mul-double/2addr v11, v13

    .line 523
    sub-double v30, v24, v11

    .line 524
    move-wide/from16 v26, v40

    .line 526
    move-wide/from16 v28, v42

    .line 528
    invoke-static/range {v26 .. v33}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticOutline0;->m(DDDD)D

    .line 530
    move-result-wide v10

    .line 533
    cmpg-double v12, v22, v10

    .line 534
    if-gtz v12, :cond_d

    .line 536
    cmpg-double v12, v10, v20

    .line 538
    if-gtz v12, :cond_d

    .line 540
    const/4 v12, 0x1

    .line 542
    goto :goto_9

    .line 543
    :cond_d
    const/4 v12, 0x0

    .line 544
    :goto_9
    const/4 v15, 0x3

    .line 545
    new-array v15, v15, [D

    .line 546
    if-eqz v12, :cond_e

    .line 548
    const/4 v12, 0x0

    .line 550
    aput-wide v10, v15, v12

    .line 551
    const/4 v10, 0x1

    .line 553
    aput-wide v13, v15, v10

    .line 554
    const/4 v0, 0x2

    .line 556
    aput-wide v42, v15, v0

    .line 557
    goto :goto_a

    .line 559
    :cond_e
    fill-array-data v15, :array_1

    .line 560
    :goto_a
    move-object v10, v15

    .line 563
    :goto_b
    const/4 v15, 0x0

    .line 564
    goto :goto_f

    .line 565
    :cond_f
    const/16 v10, 0x8

    .line 566
    if-ge v3, v10, :cond_12

    .line 568
    mul-double v32, v32, v42

    .line 570
    sub-double v38, v24, v32

    .line 572
    move-wide/from16 v34, v40

    .line 574
    move-wide/from16 v36, v13

    .line 576
    move-wide/from16 v40, v11

    .line 578
    invoke-static/range {v34 .. v41}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticOutline0;->m(DDDD)D

    .line 580
    move-result-wide v10

    .line 583
    cmpg-double v12, v22, v10

    .line 584
    if-gtz v12, :cond_10

    .line 586
    cmpg-double v12, v10, v20

    .line 588
    if-gtz v12, :cond_10

    .line 590
    const/4 v12, 0x1

    .line 592
    goto :goto_c

    .line 593
    :cond_10
    const/4 v12, 0x0

    .line 594
    :goto_c
    if-eqz v12, :cond_11

    .line 595
    const/4 v12, 0x3

    .line 597
    new-array v12, v12, [D

    .line 598
    const/4 v15, 0x0

    .line 600
    aput-wide v42, v12, v15

    .line 601
    const/4 v15, 0x1

    .line 603
    aput-wide v10, v12, v15

    .line 604
    const/4 v0, 0x2

    .line 606
    aput-wide v13, v12, v0

    .line 607
    const/4 v15, 0x0

    .line 609
    goto :goto_e

    .line 610
    :cond_11
    const/4 v10, 0x3

    .line 611
    new-array v10, v10, [D

    .line 612
    fill-array-data v10, :array_2

    .line 614
    goto :goto_b

    .line 617
    :cond_12
    mul-double v32, v32, v13

    .line 618
    sub-double v38, v24, v32

    .line 620
    move-wide/from16 v34, v11

    .line 622
    move-wide/from16 v36, v42

    .line 624
    invoke-static/range {v34 .. v41}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticOutline0;->m(DDDD)D

    .line 626
    move-result-wide v10

    .line 629
    cmpg-double v12, v22, v10

    .line 630
    if-gtz v12, :cond_13

    .line 632
    cmpg-double v12, v10, v20

    .line 634
    if-gtz v12, :cond_13

    .line 636
    const/4 v12, 0x1

    .line 638
    goto :goto_d

    .line 639
    :cond_13
    const/4 v12, 0x0

    .line 640
    :goto_d
    if-eqz v12, :cond_14

    .line 641
    const/4 v12, 0x3

    .line 643
    new-array v12, v12, [D

    .line 644
    const/4 v15, 0x0

    .line 646
    aput-wide v13, v12, v15

    .line 647
    const/4 v13, 0x1

    .line 649
    aput-wide v42, v12, v13

    .line 650
    const/4 v0, 0x2

    .line 652
    aput-wide v10, v12, v0

    .line 653
    :goto_e
    move-object v10, v12

    .line 655
    goto :goto_f

    .line 656
    :cond_14
    const/4 v15, 0x0

    .line 657
    const/4 v10, 0x3

    .line 658
    new-array v10, v10, [D

    .line 659
    fill-array-data v10, :array_3

    .line 661
    :goto_f
    aget-wide v11, v10, v15

    .line 664
    cmpg-double v11, v11, v22

    .line 666
    if-gez v11, :cond_15

    .line 668
    goto :goto_11

    .line 670
    :cond_15
    invoke-static {v10}, Lcom/android/systemui/monet/hct/HctSolver;->hueOf([D)D

    .line 671
    move-result-wide v11

    .line 674
    if-nez v4, :cond_16

    .line 675
    const/4 v1, 0x1

    .line 677
    move v4, v1

    .line 678
    move-object v1, v10

    .line 679
    move-object v2, v1

    .line 680
    move-wide v6, v11

    .line 681
    move-wide v8, v6

    .line 682
    goto :goto_11

    .line 683
    :cond_16
    if-nez v5, :cond_17

    .line 684
    move-wide/from16 p0, v6

    .line 686
    move-wide/from16 p2, v11

    .line 688
    move-wide/from16 p4, v8

    .line 690
    invoke-static/range {p0 .. p5}, Lcom/android/systemui/monet/hct/HctSolver;->areInCyclicOrder(DDD)Z

    .line 692
    move-result v13

    .line 695
    if-eqz v13, :cond_19

    .line 696
    :cond_17
    move-wide/from16 p0, v6

    .line 698
    move-wide/from16 p2, v18

    .line 700
    move-wide/from16 p4, v11

    .line 702
    invoke-static/range {p0 .. p5}, Lcom/android/systemui/monet/hct/HctSolver;->areInCyclicOrder(DDD)Z

    .line 704
    move-result v5

    .line 707
    if-eqz v5, :cond_18

    .line 708
    move-object v2, v10

    .line 710
    move-wide v8, v11

    .line 711
    goto :goto_10

    .line 712
    :cond_18
    move-object v1, v10

    .line 713
    move-wide v6, v11

    .line 714
    :goto_10
    const/4 v5, 0x0

    .line 715
    :cond_19
    :goto_11
    add-int/lit8 v3, v3, 0x1

    .line 716
    goto/16 :goto_6

    .line 718
    :cond_1a
    filled-new-array {v1, v2}, [[D

    .line 720
    move-result-object v1

    .line 723
    const/4 v2, 0x0

    .line 724
    aget-object v3, v1, v2

    .line 725
    invoke-static {v3}, Lcom/android/systemui/monet/hct/HctSolver;->hueOf([D)D

    .line 727
    move-result-wide v4

    .line 730
    const/4 v2, 0x1

    .line 731
    aget-object v1, v1, v2

    .line 732
    const/4 v2, 0x0

    .line 734
    :goto_12
    const/4 v6, 0x3

    .line 735
    if-ge v2, v6, :cond_1f

    .line 736
    aget-wide v6, v3, v2

    .line 738
    aget-wide v8, v1, v2

    .line 740
    cmpl-double v10, v6, v8

    .line 742
    if-eqz v10, :cond_1e

    .line 744
    cmpg-double v8, v6, v8

    .line 746
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 748
    if-gez v8, :cond_1b

    .line 750
    invoke-static {v6, v7}, Lcom/android/systemui/monet/hct/HctSolver;->trueDelinearized(D)D

    .line 752
    move-result-wide v6

    .line 755
    sub-double/2addr v6, v9

    .line 756
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 757
    move-result-wide v6

    .line 760
    double-to-int v6, v6

    .line 761
    aget-wide v7, v1, v2

    .line 762
    invoke-static {v7, v8}, Lcom/android/systemui/monet/hct/HctSolver;->trueDelinearized(D)D

    .line 764
    move-result-wide v7

    .line 767
    sub-double/2addr v7, v9

    .line 768
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 769
    move-result-wide v7

    .line 772
    goto :goto_13

    .line 773
    :cond_1b
    invoke-static {v6, v7}, Lcom/android/systemui/monet/hct/HctSolver;->trueDelinearized(D)D

    .line 774
    move-result-wide v6

    .line 777
    sub-double/2addr v6, v9

    .line 778
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 779
    move-result-wide v6

    .line 782
    double-to-int v6, v6

    .line 783
    aget-wide v7, v1, v2

    .line 784
    invoke-static {v7, v8}, Lcom/android/systemui/monet/hct/HctSolver;->trueDelinearized(D)D

    .line 786
    move-result-wide v7

    .line 789
    sub-double/2addr v7, v9

    .line 790
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    .line 791
    move-result-wide v7

    .line 794
    :goto_13
    double-to-int v7, v7

    .line 795
    const/4 v8, 0x0

    .line 796
    :goto_14
    const/16 v9, 0x8

    .line 797
    if-ge v8, v9, :cond_1e

    .line 799
    sub-int v9, v7, v6

    .line 801
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 803
    move-result v9

    .line 806
    const/4 v10, 0x1

    .line 807
    if-gt v9, v10, :cond_1c

    .line 808
    goto :goto_16

    .line 810
    :cond_1c
    add-int v9, v6, v7

    .line 811
    int-to-double v9, v9

    .line 813
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 814
    div-double/2addr v9, v11

    .line 816
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    .line 817
    move-result-wide v9

    .line 820
    double-to-int v9, v9

    .line 821
    sget-object v10, Lcom/android/systemui/monet/hct/HctSolver;->CRITICAL_PLANES:[D

    .line 822
    aget-wide v10, v10, v9

    .line 824
    aget-wide v12, v3, v2

    .line 826
    aget-wide v14, v1, v2

    .line 828
    sub-double/2addr v10, v12

    .line 830
    sub-double/2addr v14, v12

    .line 831
    div-double/2addr v10, v14

    .line 832
    const/4 v12, 0x3

    .line 833
    new-array v12, v12, [D

    .line 834
    const/4 v13, 0x0

    .line 836
    aget-wide v14, v3, v13

    .line 837
    aget-wide v16, v1, v13

    .line 839
    sub-double v16, v16, v14

    .line 841
    mul-double v16, v16, v10

    .line 843
    add-double v16, v16, v14

    .line 845
    aput-wide v16, v12, v13

    .line 847
    const/4 v13, 0x1

    .line 849
    aget-wide v14, v3, v13

    .line 850
    aget-wide v20, v1, v13

    .line 852
    sub-double v20, v20, v14

    .line 854
    mul-double v20, v20, v10

    .line 856
    add-double v20, v20, v14

    .line 858
    aput-wide v20, v12, v13

    .line 860
    const/4 v0, 0x2

    .line 862
    aget-wide v13, v3, v0

    .line 863
    aget-wide v20, v1, v0

    .line 865
    sub-double v20, v20, v13

    .line 867
    mul-double v20, v20, v10

    .line 869
    add-double v20, v20, v13

    .line 871
    aput-wide v20, v12, v0

    .line 873
    invoke-static {v12}, Lcom/android/systemui/monet/hct/HctSolver;->hueOf([D)D

    .line 875
    move-result-wide v10

    .line 878
    move-wide/from16 p0, v4

    .line 879
    move-wide/from16 p2, v18

    .line 881
    move-wide/from16 p4, v10

    .line 883
    invoke-static/range {p0 .. p5}, Lcom/android/systemui/monet/hct/HctSolver;->areInCyclicOrder(DDD)Z

    .line 885
    move-result v13

    .line 888
    if-eqz v13, :cond_1d

    .line 889
    move v7, v9

    .line 891
    move-object v1, v12

    .line 892
    goto :goto_15

    .line 893
    :cond_1d
    move v6, v9

    .line 894
    move-wide v4, v10

    .line 895
    move-object v3, v12

    .line 896
    :goto_15
    add-int/lit8 v8, v8, 0x1

    .line 897
    goto :goto_14

    .line 899
    :cond_1e
    :goto_16
    add-int/lit8 v2, v2, 0x1

    .line 900
    goto/16 :goto_12

    .line 902
    :cond_1f
    new-array v2, v6, [D

    .line 904
    const/4 v4, 0x0

    .line 906
    aget-wide v5, v3, v4

    .line 907
    aget-wide v7, v1, v4

    .line 909
    add-double/2addr v5, v7

    .line 911
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 912
    div-double/2addr v5, v7

    .line 914
    aput-wide v5, v2, v4

    .line 915
    const/4 v4, 0x1

    .line 917
    aget-wide v9, v3, v4

    .line 918
    aget-wide v11, v1, v4

    .line 920
    add-double/2addr v9, v11

    .line 922
    div-double/2addr v9, v7

    .line 923
    aput-wide v9, v2, v4

    .line 924
    const/4 v0, 0x2

    .line 926
    aget-wide v9, v3, v0

    .line 927
    aget-wide v11, v1, v0

    .line 929
    add-double/2addr v9, v11

    .line 931
    div-double/2addr v9, v7

    .line 932
    aput-wide v9, v2, v0

    .line 933
    invoke-static {v5, v6}, Lcom/android/systemui/monet/utils/ColorUtils;->delinearized(D)I

    .line 935
    move-result v1

    .line 938
    aget-wide v3, v2, v4

    .line 939
    invoke-static {v3, v4}, Lcom/android/systemui/monet/utils/ColorUtils;->delinearized(D)I

    .line 941
    move-result v3

    .line 944
    aget-wide v4, v2, v0

    .line 945
    invoke-static {v4, v5}, Lcom/android/systemui/monet/utils/ColorUtils;->delinearized(D)I

    .line 947
    move-result v0

    .line 950
    and-int/lit16 v1, v1, 0xff

    .line 951
    shl-int/lit8 v1, v1, 0x10

    .line 953
    const/high16 v2, -0x1000000

    .line 955
    or-int/2addr v1, v2

    .line 957
    and-int/lit16 v2, v3, 0xff

    .line 958
    shl-int/lit8 v2, v2, 0x8

    .line 960
    or-int/2addr v1, v2

    .line 962
    and-int/lit16 v0, v0, 0xff

    .line 963
    goto :goto_18

    .line 965
    :cond_20
    :goto_17
    invoke-static/range {p4 .. p5}, Lcom/android/systemui/monet/utils/ColorUtils;->yFromLstar(D)D

    .line 966
    move-result-wide v0

    .line 969
    invoke-static {v0, v1}, Lcom/android/systemui/monet/utils/ColorUtils;->delinearized(D)I

    .line 970
    move-result v0

    .line 973
    and-int/lit16 v1, v0, 0xff

    .line 974
    shl-int/lit8 v0, v1, 0x10

    .line 976
    const/high16 v2, -0x1000000

    .line 978
    or-int/2addr v0, v2

    .line 980
    shl-int/lit8 v2, v1, 0x8

    .line 981
    or-int/2addr v0, v2

    .line 983
    :goto_18
    or-int/2addr v1, v0

    .line 984
    :goto_19
    new-instance v0, Lcom/android/systemui/monet/hct/Hct;

    .line 985
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/hct/Hct;-><init>(I)V

    .line 987
    return-object v0

    .line 990
    nop

    .line 991
    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    .line 992
    :array_1
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    .line 1008
    :array_2
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    .line 1024
    :array_3
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
    .line 1040
.end method
