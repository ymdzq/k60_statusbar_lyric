.class public final Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final bezierAnchorHorizontal:[Landroid/graphics/PointF;

.field public final bezierAnchorVertical:[Landroid/graphics/PointF;

.field public radius:F

.field public rect:Landroid/graphics/RectF;

.field public smoothForHorizontal:D

.field public smoothForVertical:D

.field public swapAngle:F

.field public thetaForHorizontal:D

.field public thetaForVertical:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [Landroid/graphics/PointF;

    .line 6
    iput-object v1, p0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    .line 8
    new-array v0, v0, [Landroid/graphics/PointF;

    .line 10
    iput-object v0, p0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final build(FIIDI)V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    move/from16 v4, p6

    .line 10
    iput v1, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 12
    int-to-double v5, v2

    .line 14
    add-float v7, v1, v1

    .line 15
    float-to-double v7, v7

    .line 17
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 18
    add-double v11, p4, v9

    .line 20
    mul-double/2addr v7, v11

    .line 22
    cmpg-double v7, v5, v7

    .line 23
    if-gtz v7, :cond_0

    .line 25
    const/4 v7, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v7, 0x0

    .line 29
    :goto_0
    const/4 v14, 0x0

    .line 30
    const/high16 v15, 0x40000000    # 2.0f

    .line 31
    const/high16 v13, 0x3f800000    # 1.0f

    .line 33
    if-eqz v7, :cond_1

    .line 35
    int-to-float v7, v2

    .line 37
    mul-float/2addr v1, v15

    .line 38
    div-float/2addr v7, v1

    .line 39
    sub-float/2addr v7, v13

    .line 40
    invoke-static {v7, v13}, Ljava/lang/Math;->min(FF)F

    .line 41
    move-result v1

    .line 44
    invoke-static {v1, v14}, Ljava/lang/Math;->max(FF)F

    .line 45
    move-result v1

    .line 48
    float-to-double v8, v1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move-wide/from16 v8, p4

    .line 51
    :goto_1
    iput-wide v8, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    .line 53
    iget v1, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 55
    int-to-double v8, v3

    .line 57
    add-float v10, v1, v1

    .line 58
    float-to-double v13, v10

    .line 60
    mul-double/2addr v11, v13

    .line 61
    cmpg-double v10, v8, v11

    .line 62
    if-gtz v10, :cond_2

    .line 64
    const/4 v10, 0x1

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    const/4 v10, 0x0

    .line 68
    :goto_2
    if-eqz v10, :cond_3

    .line 69
    int-to-float v10, v3

    .line 71
    mul-float/2addr v1, v15

    .line 72
    div-float/2addr v10, v1

    .line 73
    const/high16 v1, 0x3f800000    # 1.0f

    .line 74
    sub-float/2addr v10, v1

    .line 76
    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    .line 77
    move-result v1

    .line 80
    const/4 v10, 0x0

    .line 81
    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    .line 82
    move-result v1

    .line 85
    float-to-double v10, v1

    .line 86
    goto :goto_3

    .line 87
    :cond_3
    move-wide/from16 v10, p4

    .line 88
    :goto_3
    iput-wide v10, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->smoothForVertical:D

    .line 90
    iget-wide v12, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    .line 92
    const-wide v19, 0x400921fb54442d18L    # Math.PI

    .line 94
    mul-double v12, v12, v19

    .line 99
    const-wide/high16 v21, 0x4010000000000000L    # 4.0

    .line 101
    div-double v12, v12, v21

    .line 103
    iput-wide v12, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    .line 105
    mul-double v10, v10, v19

    .line 107
    div-double v10, v10, v21

    .line 109
    iput-wide v10, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->thetaForVertical:D

    .line 111
    const-wide v19, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 113
    sub-double v19, v19, v10

    .line 118
    sub-double v19, v19, v12

    .line 120
    invoke-static/range {v19 .. v20}, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->radToAngle(D)D

    .line 122
    move-result-wide v10

    .line 125
    double-to-float v1, v10

    .line 126
    iput v1, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->swapAngle:F

    .line 127
    iget-wide v10, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    .line 129
    iget-wide v12, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    .line 131
    const-wide/16 v19, 0x0

    .line 133
    cmpl-double v1, v12, v19

    .line 135
    const-wide/high16 v21, 0x4008000000000000L    # 3.0

    .line 137
    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    .line 139
    if-nez v1, :cond_4

    .line 141
    move-wide/from16 v10, v19

    .line 143
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 145
    goto :goto_4

    .line 147
    :cond_4
    div-double v25, v12, v23

    .line 148
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->tan(D)D

    .line 150
    move-result-wide v27

    .line 153
    add-double v27, v27, v10

    .line 154
    mul-double v27, v27, v23

    .line 156
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    .line 158
    move-result-wide v10

    .line 161
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 162
    add-double/2addr v10, v12

    .line 164
    mul-double v10, v10, v27

    .line 165
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->tan(D)D

    .line 167
    move-result-wide v16

    .line 170
    mul-double v16, v16, v21

    .line 171
    div-double v10, v10, v16

    .line 173
    sub-double/2addr v10, v12

    .line 175
    :goto_4
    iget v1, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 176
    move-wide/from16 v25, v8

    .line 178
    iget-wide v7, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    .line 180
    move-wide/from16 v27, v5

    .line 182
    float-to-double v5, v1

    .line 184
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 185
    move-result-wide v7

    .line 188
    sub-double v7, v12, v7

    .line 189
    mul-double/2addr v5, v7

    .line 191
    iget v1, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 192
    iget-wide v7, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    .line 194
    float-to-double v1, v1

    .line 196
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 197
    move-result-wide v7

    .line 200
    sub-double v7, v12, v7

    .line 201
    mul-double/2addr v1, v7

    .line 203
    iget v7, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 204
    iget-wide v8, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    .line 206
    float-to-double v12, v7

    .line 208
    div-double v8, v8, v23

    .line 209
    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    .line 211
    move-result-wide v7

    .line 214
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 215
    sub-double v7, v16, v7

    .line 217
    mul-double v8, v7, v12

    .line 219
    iget v7, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 221
    iget-wide v12, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    .line 223
    move-wide/from16 p4, v8

    .line 225
    float-to-double v7, v7

    .line 227
    const-wide/high16 v29, 0x3ff8000000000000L    # 1.5

    .line 228
    mul-double v7, v7, v29

    .line 230
    div-double v31, v12, v23

    .line 232
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->tan(D)D

    .line 234
    move-result-wide v31

    .line 237
    mul-double v31, v31, v7

    .line 238
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    .line 240
    move-result-wide v7

    .line 243
    add-double v7, v7, v16

    .line 244
    div-double v31, v31, v7

    .line 246
    mul-double v10, v10, v31

    .line 248
    iget-wide v7, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->smoothForVertical:D

    .line 250
    iget-wide v12, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->thetaForVertical:D

    .line 252
    cmpl-double v9, v12, v19

    .line 254
    if-nez v9, :cond_5

    .line 256
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 258
    goto :goto_5

    .line 260
    :cond_5
    div-double v19, v12, v23

    .line 261
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->tan(D)D

    .line 263
    move-result-wide v33

    .line 266
    add-double v33, v33, v7

    .line 267
    mul-double v33, v33, v23

    .line 269
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    .line 271
    move-result-wide v7

    .line 274
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 275
    add-double/2addr v7, v12

    .line 277
    mul-double v7, v7, v33

    .line 278
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->tan(D)D

    .line 280
    move-result-wide v16

    .line 283
    mul-double v16, v16, v21

    .line 284
    div-double v7, v7, v16

    .line 286
    sub-double v19, v7, v12

    .line 288
    :goto_5
    iget v7, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 290
    iget-wide v8, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->thetaForVertical:D

    .line 292
    move-wide/from16 v16, v10

    .line 294
    float-to-double v10, v7

    .line 296
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 297
    move-result-wide v7

    .line 300
    sub-double v7, v12, v7

    .line 301
    mul-double v8, v7, v10

    .line 303
    iget v7, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 305
    iget-wide v10, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->thetaForVertical:D

    .line 307
    move-wide/from16 v21, v8

    .line 309
    float-to-double v7, v7

    .line 311
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 312
    move-result-wide v9

    .line 315
    sub-double v9, v12, v9

    .line 316
    mul-double/2addr v9, v7

    .line 318
    iget v7, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 319
    iget-wide v12, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->thetaForVertical:D

    .line 321
    float-to-double v7, v7

    .line 323
    div-double v12, v12, v23

    .line 324
    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    .line 326
    move-result-wide v11

    .line 329
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 330
    sub-double v11, v13, v11

    .line 332
    mul-double/2addr v11, v7

    .line 334
    iget v7, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 335
    iget-wide v13, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->thetaForVertical:D

    .line 337
    float-to-double v7, v7

    .line 339
    mul-double v7, v7, v29

    .line 340
    div-double v23, v13, v23

    .line 342
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->tan(D)D

    .line 344
    move-result-wide v23

    .line 347
    mul-double v23, v23, v7

    .line 348
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    .line 350
    move-result-wide v7

    .line 353
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 354
    add-double/2addr v7, v13

    .line 356
    div-double v23, v23, v7

    .line 357
    mul-double v19, v19, v23

    .line 359
    const/4 v8, 0x3

    .line 361
    const/4 v13, 0x2

    .line 362
    iget-object v14, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    .line 363
    iget-object v7, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    .line 365
    if-nez v4, :cond_6

    .line 367
    new-instance v3, Landroid/graphics/RectF;

    .line 369
    iget v4, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 371
    mul-float/2addr v4, v15

    .line 373
    const/4 v15, 0x0

    .line 374
    invoke-direct {v3, v15, v15, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 375
    iput-object v3, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    .line 378
    new-instance v0, Landroid/graphics/PointF;

    .line 380
    double-to-float v3, v5

    .line 382
    double-to-float v1, v1

    .line 383
    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 384
    const/4 v1, 0x0

    .line 387
    aput-object v0, v7, v1

    .line 388
    move-object/from16 v29, v7

    .line 390
    new-instance v0, Landroid/graphics/PointF;

    .line 392
    move-wide/from16 v1, p4

    .line 394
    double-to-float v3, v1

    .line 396
    invoke-direct {v0, v3, v15}, Landroid/graphics/PointF;-><init>(FF)V

    .line 397
    const/4 v3, 0x1

    .line 400
    aput-object v0, v29, v3

    .line 401
    new-instance v0, Landroid/graphics/PointF;

    .line 403
    add-double v1, v1, v31

    .line 405
    double-to-float v3, v1

    .line 407
    invoke-direct {v0, v3, v15}, Landroid/graphics/PointF;-><init>(FF)V

    .line 408
    aput-object v0, v29, v13

    .line 411
    new-instance v0, Landroid/graphics/PointF;

    .line 413
    add-double v1, v1, v16

    .line 415
    double-to-float v1, v1

    .line 417
    invoke-direct {v0, v1, v15}, Landroid/graphics/PointF;-><init>(FF)V

    .line 418
    aput-object v0, v29, v8

    .line 421
    new-instance v0, Landroid/graphics/PointF;

    .line 423
    add-double v1, v11, v23

    .line 425
    add-double v3, v19, v1

    .line 427
    double-to-float v3, v3

    .line 429
    invoke-direct {v0, v15, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 430
    const/4 v3, 0x0

    .line 433
    aput-object v0, v14, v3

    .line 434
    new-instance v0, Landroid/graphics/PointF;

    .line 436
    double-to-float v1, v1

    .line 438
    invoke-direct {v0, v15, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 439
    const/4 v1, 0x1

    .line 442
    aput-object v0, v14, v1

    .line 443
    new-instance v0, Landroid/graphics/PointF;

    .line 445
    double-to-float v1, v11

    .line 447
    invoke-direct {v0, v15, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 448
    aput-object v0, v14, v13

    .line 451
    new-instance v0, Landroid/graphics/PointF;

    .line 453
    move-wide/from16 v1, v21

    .line 455
    double-to-float v1, v1

    .line 457
    double-to-float v2, v9

    .line 458
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 459
    aput-object v0, v14, v8

    .line 462
    goto/16 :goto_6

    .line 464
    :cond_6
    move-object/from16 v29, v7

    .line 466
    move-wide/from16 v35, v21

    .line 468
    const/4 v13, 0x1

    .line 470
    move-wide/from16 v7, p4

    .line 471
    if-ne v4, v13, :cond_7

    .line 473
    new-instance v3, Landroid/graphics/RectF;

    .line 475
    move/from16 v13, p2

    .line 477
    int-to-float v4, v13

    .line 479
    iget v13, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 480
    mul-float/2addr v13, v15

    .line 482
    sub-float v15, v4, v13

    .line 483
    move-wide/from16 v21, v11

    .line 485
    const/4 v11, 0x0

    .line 487
    invoke-direct {v3, v15, v11, v4, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 488
    iput-object v3, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    .line 491
    new-instance v0, Landroid/graphics/PointF;

    .line 493
    sub-double v12, v27, v7

    .line 495
    sub-double v7, v12, v31

    .line 497
    move/from16 v18, v4

    .line 499
    sub-double v3, v7, v16

    .line 501
    double-to-float v3, v3

    .line 503
    invoke-direct {v0, v3, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 504
    const/4 v3, 0x0

    .line 507
    aput-object v0, v29, v3

    .line 508
    move-wide v3, v7

    .line 510
    new-instance v0, Landroid/graphics/PointF;

    .line 511
    double-to-float v3, v3

    .line 513
    invoke-direct {v0, v3, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 514
    const/4 v3, 0x1

    .line 517
    aput-object v0, v29, v3

    .line 518
    new-instance v0, Landroid/graphics/PointF;

    .line 520
    double-to-float v3, v12

    .line 522
    invoke-direct {v0, v3, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 523
    const/4 v3, 0x2

    .line 526
    aput-object v0, v29, v3

    .line 527
    new-instance v0, Landroid/graphics/PointF;

    .line 529
    sub-double v5, v27, v5

    .line 531
    double-to-float v3, v5

    .line 533
    double-to-float v1, v1

    .line 534
    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 535
    const/4 v1, 0x3

    .line 538
    aput-object v0, v29, v1

    .line 539
    new-instance v0, Landroid/graphics/PointF;

    .line 541
    move-wide/from16 v11, v35

    .line 543
    sub-double v5, v27, v11

    .line 545
    double-to-float v1, v5

    .line 547
    double-to-float v2, v9

    .line 548
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 549
    const/4 v1, 0x0

    .line 552
    aput-object v0, v14, v1

    .line 553
    new-instance v0, Landroid/graphics/PointF;

    .line 555
    move-wide/from16 v1, v21

    .line 557
    double-to-float v3, v1

    .line 559
    move/from16 v4, v18

    .line 560
    invoke-direct {v0, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 562
    const/4 v3, 0x1

    .line 565
    aput-object v0, v14, v3

    .line 566
    new-instance v0, Landroid/graphics/PointF;

    .line 568
    add-double v11, v1, v23

    .line 570
    double-to-float v1, v11

    .line 572
    invoke-direct {v0, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 573
    const/4 v1, 0x2

    .line 576
    aput-object v0, v14, v1

    .line 577
    new-instance v0, Landroid/graphics/PointF;

    .line 579
    add-double v11, v11, v19

    .line 581
    double-to-float v1, v11

    .line 583
    invoke-direct {v0, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 584
    const/4 v1, 0x3

    .line 587
    aput-object v0, v14, v1

    .line 588
    goto/16 :goto_6

    .line 590
    :cond_7
    move/from16 v13, p2

    .line 592
    move-wide/from16 v21, v11

    .line 594
    move-wide/from16 v11, v35

    .line 596
    const/4 v15, 0x2

    .line 598
    if-ne v4, v15, :cond_8

    .line 599
    new-instance v4, Landroid/graphics/RectF;

    .line 601
    int-to-float v13, v13

    .line 603
    iget v15, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 604
    const/high16 v18, 0x40000000    # 2.0f

    .line 606
    mul-float v15, v15, v18

    .line 608
    move-wide/from16 v34, v9

    .line 610
    sub-float v9, v13, v15

    .line 612
    int-to-float v3, v3

    .line 614
    sub-float v10, v3, v15

    .line 615
    invoke-direct {v4, v9, v10, v13, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 617
    iput-object v4, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    .line 620
    new-instance v0, Landroid/graphics/PointF;

    .line 622
    sub-double v5, v27, v5

    .line 624
    double-to-float v4, v5

    .line 626
    sub-double v1, v25, v1

    .line 627
    double-to-float v1, v1

    .line 629
    invoke-direct {v0, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 630
    const/4 v1, 0x0

    .line 633
    aput-object v0, v29, v1

    .line 634
    new-instance v1, Landroid/graphics/PointF;

    .line 636
    sub-double v5, v27, v7

    .line 638
    double-to-float v2, v5

    .line 640
    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 641
    const/4 v2, 0x1

    .line 644
    aput-object v1, v29, v2

    .line 645
    new-instance v1, Landroid/graphics/PointF;

    .line 647
    sub-double v5, v5, v31

    .line 649
    double-to-float v2, v5

    .line 651
    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 652
    const/4 v2, 0x2

    .line 655
    aput-object v1, v29, v2

    .line 656
    new-instance v1, Landroid/graphics/PointF;

    .line 658
    sub-double v5, v5, v16

    .line 660
    double-to-float v2, v5

    .line 662
    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 663
    const/4 v2, 0x3

    .line 666
    aput-object v1, v29, v2

    .line 667
    new-instance v1, Landroid/graphics/PointF;

    .line 669
    sub-double v8, v25, v21

    .line 671
    sub-double v2, v8, v23

    .line 673
    sub-double v4, v2, v19

    .line 675
    double-to-float v4, v4

    .line 677
    invoke-direct {v1, v13, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 678
    const/4 v0, 0x0

    .line 681
    aput-object v1, v14, v0

    .line 682
    new-instance v0, Landroid/graphics/PointF;

    .line 684
    double-to-float v1, v2

    .line 686
    invoke-direct {v0, v13, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 687
    const/4 v1, 0x1

    .line 690
    aput-object v0, v14, v1

    .line 691
    new-instance v0, Landroid/graphics/PointF;

    .line 693
    double-to-float v1, v8

    .line 695
    invoke-direct {v0, v13, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 696
    const/4 v1, 0x2

    .line 699
    aput-object v0, v14, v1

    .line 700
    new-instance v0, Landroid/graphics/PointF;

    .line 702
    sub-double v5, v27, v11

    .line 704
    double-to-float v1, v5

    .line 706
    sub-double v8, v25, v34

    .line 707
    double-to-float v2, v8

    .line 709
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 710
    const/4 v9, 0x3

    .line 713
    aput-object v0, v14, v9

    .line 714
    goto :goto_6

    .line 716
    :cond_8
    move-wide/from16 v34, v9

    .line 717
    const/4 v9, 0x3

    .line 719
    if-ne v4, v9, :cond_9

    .line 720
    new-instance v4, Landroid/graphics/RectF;

    .line 722
    int-to-float v3, v3

    .line 724
    iget v9, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 725
    const/high16 v13, 0x40000000    # 2.0f

    .line 727
    mul-float/2addr v9, v13

    .line 729
    sub-float v13, v3, v9

    .line 730
    const/4 v15, 0x0

    .line 732
    invoke-direct {v4, v15, v13, v9, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 733
    iput-object v4, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    .line 736
    new-instance v0, Landroid/graphics/PointF;

    .line 738
    move-wide/from16 v27, v11

    .line 740
    add-double v10, v7, v31

    .line 742
    add-double v12, v10, v16

    .line 744
    double-to-float v4, v12

    .line 746
    invoke-direct {v0, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 747
    const/4 v4, 0x0

    .line 750
    aput-object v0, v29, v4

    .line 751
    new-instance v4, Landroid/graphics/PointF;

    .line 753
    double-to-float v9, v10

    .line 755
    invoke-direct {v4, v9, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 756
    const/4 v9, 0x1

    .line 759
    aput-object v4, v29, v9

    .line 760
    new-instance v4, Landroid/graphics/PointF;

    .line 762
    double-to-float v7, v7

    .line 764
    invoke-direct {v4, v7, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 765
    const/4 v3, 0x2

    .line 768
    aput-object v4, v29, v3

    .line 769
    new-instance v3, Landroid/graphics/PointF;

    .line 771
    double-to-float v4, v5

    .line 773
    sub-double v8, v25, v1

    .line 774
    double-to-float v1, v8

    .line 776
    invoke-direct {v3, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 777
    const/4 v1, 0x3

    .line 780
    aput-object v3, v29, v1

    .line 781
    new-instance v1, Landroid/graphics/PointF;

    .line 783
    move-wide/from16 v7, v27

    .line 785
    double-to-float v2, v7

    .line 787
    sub-double v8, v25, v34

    .line 788
    double-to-float v3, v8

    .line 790
    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 791
    const/4 v0, 0x0

    .line 794
    aput-object v1, v14, v0

    .line 795
    new-instance v0, Landroid/graphics/PointF;

    .line 797
    sub-double v8, v25, v21

    .line 799
    double-to-float v1, v8

    .line 801
    const/4 v2, 0x0

    .line 802
    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 803
    const/4 v1, 0x1

    .line 806
    aput-object v0, v14, v1

    .line 807
    new-instance v0, Landroid/graphics/PointF;

    .line 809
    sub-double v8, v8, v23

    .line 811
    double-to-float v1, v8

    .line 813
    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 814
    const/4 v1, 0x2

    .line 817
    aput-object v0, v14, v1

    .line 818
    new-instance v0, Landroid/graphics/PointF;

    .line 820
    sub-double v8, v8, v19

    .line 822
    double-to-float v1, v8

    .line 824
    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 825
    const/4 v1, 0x3

    .line 828
    aput-object v0, v14, v1

    .line 829
    :cond_9
    :goto_6
    return-void
    .line 831
.end method
