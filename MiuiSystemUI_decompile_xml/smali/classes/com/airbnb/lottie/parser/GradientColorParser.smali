.class public final Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# instance fields
.field public colorPoints:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 9
    move-result-object v2

    .line 12
    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 13
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x1

    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    move v2, v5

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v2, v4

    .line 21
    :goto_0
    if-eqz v2, :cond_1

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 24
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 27
    move-result v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 33
    move-result-wide v6

    .line 36
    double-to-float v3, v6

    .line 37
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    move-result-object v3

    .line 41
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result v3

    .line 49
    const/4 v6, 0x4

    .line 50
    const/4 v7, 0x2

    .line 51
    const/4 v8, 0x3

    .line 52
    if-ne v3, v6, :cond_3

    .line 53
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 58
    check-cast v3, Ljava/lang/Float;

    .line 59
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 61
    move-result v3

    .line 64
    const/high16 v9, 0x3f800000    # 1.0f

    .line 65
    cmpl-float v3, v3, v9

    .line 67
    if-nez v3, :cond_3

    .line 69
    const/4 v3, 0x0

    .line 71
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 72
    move-result-object v3

    .line 75
    invoke-virtual {v1, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    move-result-object v3

    .line 82
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v3

    .line 89
    check-cast v3, Ljava/lang/Float;

    .line 90
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    move-result-object v3

    .line 98
    check-cast v3, Ljava/lang/Float;

    .line 99
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v3

    .line 107
    check-cast v3, Ljava/lang/Float;

    .line 108
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iput v7, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 113
    :cond_3
    if-eqz v2, :cond_4

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 117
    :cond_4
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 120
    const/4 v3, -0x1

    .line 122
    if-ne v2, v3, :cond_5

    .line 123
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 125
    move-result v2

    .line 128
    div-int/2addr v2, v6

    .line 129
    iput v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 130
    :cond_5
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 132
    new-array v3, v2, [F

    .line 134
    new-array v9, v2, [I

    .line 136
    move v10, v4

    .line 138
    move v11, v10

    .line 139
    move v12, v11

    .line 140
    :goto_2
    iget v13, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 141
    mul-int/2addr v13, v6

    .line 143
    if-ge v10, v13, :cond_b

    .line 144
    div-int/lit8 v13, v10, 0x4

    .line 146
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    move-result-object v14

    .line 151
    check-cast v14, Ljava/lang/Float;

    .line 152
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    .line 154
    move-result v14

    .line 157
    float-to-double v14, v14

    .line 158
    rem-int/lit8 v6, v10, 0x4

    .line 159
    if-eqz v6, :cond_9

    .line 161
    const-wide v16, 0x406fe00000000000L    # 255.0

    .line 163
    if-eq v6, v5, :cond_8

    .line 168
    if-eq v6, v7, :cond_7

    .line 170
    if-eq v6, v8, :cond_6

    .line 172
    goto :goto_3

    .line 174
    :cond_6
    mul-double v14, v14, v16

    .line 175
    double-to-int v6, v14

    .line 177
    const/16 v14, 0xff

    .line 178
    invoke-static {v14, v11, v12, v6}, Landroid/graphics/Color;->argb(IIII)I

    .line 180
    move-result v6

    .line 183
    aput v6, v9, v13

    .line 184
    goto :goto_3

    .line 186
    :cond_7
    mul-double v14, v14, v16

    .line 187
    double-to-int v12, v14

    .line 189
    goto :goto_3

    .line 190
    :cond_8
    mul-double v14, v14, v16

    .line 191
    double-to-int v11, v14

    .line 193
    goto :goto_3

    .line 194
    :cond_9
    if-lez v13, :cond_a

    .line 195
    add-int/lit8 v6, v13, -0x1

    .line 197
    aget v6, v3, v6

    .line 199
    double-to-float v5, v14

    .line 201
    cmpl-float v6, v6, v5

    .line 202
    if-ltz v6, :cond_a

    .line 204
    const v6, 0x3c23d70a    # 0.01f

    .line 206
    add-float/2addr v5, v6

    .line 209
    aput v5, v3, v13

    .line 210
    goto :goto_3

    .line 212
    :cond_a
    double-to-float v5, v14

    .line 213
    aput v5, v3, v13

    .line 214
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 216
    const/4 v5, 0x1

    .line 218
    const/4 v6, 0x4

    .line 219
    goto :goto_2

    .line 220
    :cond_b
    new-instance v0, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 221
    invoke-direct {v0, v9, v3}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([I[F)V

    .line 223
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 226
    move-result v5

    .line 229
    if-gt v5, v13, :cond_c

    .line 230
    goto/16 :goto_16

    .line 232
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 234
    move-result v5

    .line 237
    sub-int/2addr v5, v13

    .line 238
    div-int/2addr v5, v7

    .line 239
    new-array v6, v5, [F

    .line 240
    new-array v8, v5, [F

    .line 242
    move v9, v4

    .line 244
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 245
    move-result v10

    .line 248
    if-ge v13, v10, :cond_e

    .line 249
    rem-int/lit8 v10, v13, 0x2

    .line 251
    if-nez v10, :cond_d

    .line 253
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 255
    move-result-object v10

    .line 258
    check-cast v10, Ljava/lang/Float;

    .line 259
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 261
    move-result v10

    .line 264
    aput v10, v6, v9

    .line 265
    goto :goto_5

    .line 267
    :cond_d
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 268
    move-result-object v10

    .line 271
    check-cast v10, Ljava/lang/Float;

    .line 272
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 274
    move-result v10

    .line 277
    aput v10, v8, v9

    .line 278
    add-int/lit8 v9, v9, 0x1

    .line 280
    :goto_5
    add-int/lit8 v13, v13, 0x1

    .line 282
    goto :goto_4

    .line 284
    :cond_e
    iget-object v1, v0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 285
    array-length v9, v1

    .line 287
    if-nez v9, :cond_f

    .line 288
    move-object v1, v6

    .line 290
    goto :goto_b

    .line 291
    :cond_f
    if-nez v5, :cond_10

    .line 292
    goto :goto_b

    .line 294
    :cond_10
    array-length v9, v1

    .line 295
    add-int/2addr v9, v5

    .line 296
    new-array v10, v9, [F

    .line 297
    move v11, v4

    .line 299
    move v12, v11

    .line 300
    move v13, v12

    .line 301
    move v14, v13

    .line 302
    :goto_6
    if-ge v11, v9, :cond_17

    .line 303
    array-length v15, v1

    .line 305
    const/high16 v17, 0x7fc00000    # Float.NaN

    .line 306
    if-ge v13, v15, :cond_11

    .line 308
    aget v15, v1, v13

    .line 310
    goto :goto_7

    .line 312
    :cond_11
    move/from16 v15, v17

    .line 313
    :goto_7
    if-ge v14, v5, :cond_12

    .line 315
    aget v17, v6, v14

    .line 317
    :cond_12
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    .line 319
    move-result v18

    .line 322
    if-nez v18, :cond_16

    .line 323
    cmpg-float v18, v15, v17

    .line 325
    if-gez v18, :cond_13

    .line 327
    goto :goto_9

    .line 329
    :cond_13
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    .line 330
    move-result v18

    .line 333
    if-nez v18, :cond_15

    .line 334
    cmpg-float v18, v17, v15

    .line 336
    if-gez v18, :cond_14

    .line 338
    goto :goto_8

    .line 340
    :cond_14
    aput v15, v10, v11

    .line 341
    add-int/lit8 v13, v13, 0x1

    .line 343
    add-int/lit8 v14, v14, 0x1

    .line 345
    add-int/lit8 v12, v12, 0x1

    .line 347
    goto :goto_a

    .line 349
    :cond_15
    :goto_8
    aput v17, v10, v11

    .line 350
    add-int/lit8 v14, v14, 0x1

    .line 352
    goto :goto_a

    .line 354
    :cond_16
    :goto_9
    aput v15, v10, v11

    .line 355
    add-int/lit8 v13, v13, 0x1

    .line 357
    :goto_a
    add-int/lit8 v11, v11, 0x1

    .line 359
    goto :goto_6

    .line 361
    :cond_17
    if-nez v12, :cond_18

    .line 362
    move-object v1, v10

    .line 364
    goto :goto_b

    .line 365
    :cond_18
    sub-int/2addr v9, v12

    .line 366
    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 367
    move-result-object v1

    .line 370
    :goto_b
    array-length v9, v1

    .line 371
    new-array v10, v9, [I

    .line 372
    move v11, v4

    .line 374
    :goto_c
    if-ge v11, v9, :cond_25

    .line 375
    aget v12, v1, v11

    .line 377
    invoke-static {v3, v12}, Ljava/util/Arrays;->binarySearch([FF)I

    .line 379
    move-result v13

    .line 382
    invoke-static {v6, v12}, Ljava/util/Arrays;->binarySearch([FF)I

    .line 383
    move-result v14

    .line 386
    const-string v15, "Unreachable code."

    .line 387
    iget-object v4, v0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 389
    if-ltz v13, :cond_1f

    .line 391
    if-lez v14, :cond_19

    .line 393
    goto/16 :goto_11

    .line 395
    :cond_19
    aget v4, v4, v13

    .line 397
    if-lt v5, v7, :cond_1e

    .line 399
    const/4 v13, 0x0

    .line 401
    aget v14, v6, v13

    .line 402
    cmpg-float v13, v12, v14

    .line 404
    if-gtz v13, :cond_1a

    .line 406
    goto :goto_f

    .line 408
    :cond_1a
    const/4 v13, 0x1

    .line 409
    :goto_d
    if-ge v13, v5, :cond_1d

    .line 410
    aget v14, v6, v13

    .line 412
    cmpg-float v17, v14, v12

    .line 414
    if-gez v17, :cond_1b

    .line 416
    add-int/lit8 v7, v5, -0x1

    .line 418
    if-eq v13, v7, :cond_1b

    .line 420
    add-int/lit8 v13, v13, 0x1

    .line 422
    const/4 v7, 0x2

    .line 424
    goto :goto_d

    .line 425
    :cond_1b
    if-gtz v17, :cond_1c

    .line 426
    aget v7, v8, v13

    .line 428
    const/high16 v12, 0x437f0000    # 255.0f

    .line 430
    mul-float/2addr v7, v12

    .line 432
    float-to-int v7, v7

    .line 433
    goto :goto_e

    .line 434
    :cond_1c
    add-int/lit8 v7, v13, -0x1

    .line 435
    aget v15, v6, v7

    .line 437
    sub-float/2addr v14, v15

    .line 439
    sub-float/2addr v12, v15

    .line 440
    div-float/2addr v12, v14

    .line 441
    aget v7, v8, v7

    .line 442
    aget v13, v8, v13

    .line 444
    sget-object v14, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    .line 446
    sub-float/2addr v13, v7

    .line 448
    mul-float/2addr v13, v12

    .line 449
    add-float/2addr v13, v7

    .line 450
    const/high16 v7, 0x437f0000    # 255.0f

    .line 451
    mul-float/2addr v13, v7

    .line 453
    float-to-int v7, v13

    .line 454
    :goto_e
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    .line 455
    move-result v12

    .line 458
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    .line 459
    move-result v13

    .line 462
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    .line 463
    move-result v4

    .line 466
    invoke-static {v7, v12, v13, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 467
    move-result v4

    .line 470
    goto :goto_10

    .line 471
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 472
    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 474
    throw v0

    .line 477
    :cond_1e
    :goto_f
    const/4 v7, 0x0

    .line 478
    aget v12, v8, v7

    .line 479
    const/high16 v7, 0x437f0000    # 255.0f

    .line 481
    mul-float/2addr v12, v7

    .line 483
    float-to-int v7, v12

    .line 484
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    .line 485
    move-result v12

    .line 488
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    .line 489
    move-result v13

    .line 492
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    .line 493
    move-result v4

    .line 496
    invoke-static {v7, v12, v13, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 497
    move-result v4

    .line 500
    :goto_10
    aput v4, v10, v11

    .line 501
    move-object/from16 p0, v0

    .line 503
    move/from16 v17, v2

    .line 505
    const/4 v0, 0x0

    .line 507
    goto/16 :goto_15

    .line 508
    :cond_1f
    :goto_11
    if-gez v14, :cond_20

    .line 510
    add-int/lit8 v14, v14, 0x1

    .line 512
    neg-int v14, v14

    .line 514
    :cond_20
    aget v7, v8, v14

    .line 515
    array-length v13, v4

    .line 517
    const/4 v14, 0x2

    .line 518
    if-lt v13, v14, :cond_24

    .line 519
    const/4 v13, 0x0

    .line 521
    aget v17, v3, v13

    .line 522
    cmpl-float v13, v12, v17

    .line 524
    if-nez v13, :cond_21

    .line 526
    goto :goto_13

    .line 528
    :cond_21
    const/4 v13, 0x1

    .line 529
    :goto_12
    if-ge v13, v2, :cond_23

    .line 530
    aget v17, v3, v13

    .line 532
    cmpg-float v18, v17, v12

    .line 534
    if-gez v18, :cond_22

    .line 536
    add-int/lit8 v14, v2, -0x1

    .line 538
    if-eq v13, v14, :cond_22

    .line 540
    add-int/lit8 v13, v13, 0x1

    .line 542
    const/4 v14, 0x2

    .line 544
    goto :goto_12

    .line 545
    :cond_22
    add-int/lit8 v14, v13, -0x1

    .line 546
    aget v15, v3, v14

    .line 548
    sub-float v17, v17, v15

    .line 550
    sub-float/2addr v12, v15

    .line 552
    div-float v12, v12, v17

    .line 553
    aget v13, v4, v13

    .line 555
    aget v4, v4, v14

    .line 557
    const/high16 v14, 0x437f0000    # 255.0f

    .line 559
    mul-float/2addr v7, v14

    .line 561
    float-to-int v7, v7

    .line 562
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    .line 563
    move-result v14

    .line 566
    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    .line 567
    move-result v15

    .line 570
    sget-object v17, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    .line 571
    move-object/from16 p0, v0

    .line 573
    int-to-float v0, v14

    .line 575
    sub-int/2addr v15, v14

    .line 576
    int-to-float v14, v15

    .line 577
    mul-float/2addr v14, v12

    .line 578
    add-float/2addr v14, v0

    .line 579
    float-to-int v0, v14

    .line 580
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    .line 581
    move-result v14

    .line 584
    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    .line 585
    move-result v15

    .line 588
    move/from16 v17, v2

    .line 589
    int-to-float v2, v14

    .line 591
    sub-int/2addr v15, v14

    .line 592
    int-to-float v14, v15

    .line 593
    mul-float/2addr v14, v12

    .line 594
    add-float/2addr v14, v2

    .line 595
    float-to-int v2, v14

    .line 596
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    .line 597
    move-result v4

    .line 600
    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    .line 601
    move-result v13

    .line 604
    int-to-float v14, v4

    .line 605
    sub-int/2addr v13, v4

    .line 606
    int-to-float v4, v13

    .line 607
    mul-float/2addr v12, v4

    .line 608
    add-float/2addr v12, v14

    .line 609
    float-to-int v4, v12

    .line 610
    invoke-static {v7, v0, v2, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 611
    move-result v0

    .line 614
    move v2, v0

    .line 615
    const/4 v0, 0x0

    .line 616
    goto :goto_14

    .line 617
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 618
    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 620
    throw v0

    .line 623
    :cond_24
    :goto_13
    move-object/from16 p0, v0

    .line 624
    move/from16 v17, v2

    .line 626
    const/4 v0, 0x0

    .line 628
    aget v2, v4, v0

    .line 629
    :goto_14
    aput v2, v10, v11

    .line 631
    :goto_15
    add-int/lit8 v11, v11, 0x1

    .line 633
    move v4, v0

    .line 635
    move/from16 v2, v17

    .line 636
    const/4 v7, 0x2

    .line 638
    move-object/from16 v0, p0

    .line 639
    goto/16 :goto_c

    .line 641
    :cond_25
    new-instance v0, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 643
    invoke-direct {v0, v10, v1}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([I[F)V

    .line 645
    :goto_16
    return-object v0
    .line 648
.end method
