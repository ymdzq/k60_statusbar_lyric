.class public final Lcom/miui/clock/hct/Hct;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public argb:I

.field public chroma:D

.field public hue:D

.field public tone:D


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/clock/hct/Hct;->setInternalState(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final setInternalState(I)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iput v1, v0, Lcom/miui/clock/hct/Hct;->argb:I

    .line 6
    sget-object v2, Lcom/miui/clock/hct/ViewingConditions;->DEFAULT:Lcom/miui/clock/hct/ViewingConditions;

    .line 8
    const/high16 v3, 0xff0000

    .line 10
    and-int/2addr v3, v1

    .line 12
    shr-int/lit8 v3, v3, 0x10

    .line 13
    const v4, 0xff00

    .line 15
    and-int/2addr v4, v1

    .line 18
    shr-int/lit8 v4, v4, 0x8

    .line 19
    and-int/lit16 v5, v1, 0xff

    .line 21
    invoke-static {v3}, Lcom/miui/clock/hct/ColorUtils;->linearized(I)D

    .line 23
    move-result-wide v6

    .line 26
    invoke-static {v4}, Lcom/miui/clock/hct/ColorUtils;->linearized(I)D

    .line 27
    move-result-wide v3

    .line 30
    invoke-static {v5}, Lcom/miui/clock/hct/ColorUtils;->linearized(I)D

    .line 31
    move-result-wide v8

    .line 34
    const-wide v10, 0x3fda63c2e8477c96L    # 0.41233895

    .line 35
    mul-double/2addr v10, v6

    .line 40
    const-wide v12, 0x3fd6e341ae4b2c79L    # 0.35762064

    .line 41
    mul-double/2addr v12, v3

    .line 46
    add-double/2addr v12, v10

    .line 47
    const-wide v10, 0x3fc71af7273e5d5eL    # 0.18051042

    .line 48
    mul-double/2addr v10, v8

    .line 53
    add-double/2addr v10, v12

    .line 54
    const-wide v12, 0x3fcb367a0f9096bcL    # 0.2126

    .line 55
    mul-double/2addr v12, v6

    .line 60
    const-wide v14, 0x3fe6e2eb1c432ca5L    # 0.7152

    .line 61
    mul-double/2addr v14, v3

    .line 66
    add-double/2addr v14, v12

    .line 67
    const-wide v12, 0x3fb27bb2fec56d5dL    # 0.0722

    .line 68
    mul-double/2addr v12, v8

    .line 73
    add-double/2addr v12, v14

    .line 74
    const-wide v14, 0x3f93c8fde0401c25L    # 0.01932141

    .line 75
    mul-double/2addr v6, v14

    .line 80
    const-wide v14, 0x3fbe818525c434ceL    # 0.11916382

    .line 81
    mul-double/2addr v3, v14

    .line 86
    add-double/2addr v3, v6

    .line 87
    const-wide v6, 0x3fee693974c0c730L    # 0.95034478

    .line 88
    mul-double/2addr v8, v6

    .line 93
    add-double/2addr v8, v3

    .line 94
    sget-object v3, Lcom/miui/clock/hct/Cam16;->XYZ_TO_CAM16RGB:[[D

    .line 95
    const/4 v4, 0x0

    .line 97
    aget-object v6, v3, v4

    .line 98
    aget-wide v14, v6, v4

    .line 100
    mul-double/2addr v14, v10

    .line 102
    const/4 v7, 0x1

    .line 103
    aget-wide v16, v6, v7

    .line 104
    mul-double v16, v16, v12

    .line 106
    add-double v16, v16, v14

    .line 108
    const/4 v14, 0x2

    .line 110
    aget-wide v18, v6, v14

    .line 111
    mul-double v18, v18, v8

    .line 113
    add-double v18, v18, v16

    .line 115
    aget-object v6, v3, v7

    .line 117
    aget-wide v15, v6, v4

    .line 119
    mul-double/2addr v15, v10

    .line 121
    aget-wide v20, v6, v7

    .line 122
    mul-double v20, v20, v12

    .line 124
    add-double v20, v20, v15

    .line 126
    aget-wide v15, v6, v14

    .line 128
    mul-double/2addr v15, v8

    .line 130
    add-double v15, v15, v20

    .line 131
    aget-object v3, v3, v14

    .line 133
    aget-wide v20, v3, v4

    .line 135
    mul-double v20, v20, v10

    .line 137
    aget-wide v10, v3, v7

    .line 139
    mul-double/2addr v10, v12

    .line 141
    add-double v10, v10, v20

    .line 142
    aget-wide v12, v3, v14

    .line 144
    mul-double/2addr v12, v8

    .line 146
    add-double/2addr v12, v10

    .line 147
    iget-object v3, v2, Lcom/miui/clock/hct/ViewingConditions;->rgbD:[D

    .line 148
    aget-wide v8, v3, v4

    .line 150
    mul-double v8, v8, v18

    .line 152
    aget-wide v6, v3, v7

    .line 154
    mul-double/2addr v6, v15

    .line 156
    aget-wide v3, v3, v14

    .line 157
    mul-double/2addr v3, v12

    .line 159
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    .line 160
    move-result-wide v10

    .line 163
    iget-wide v12, v2, Lcom/miui/clock/hct/ViewingConditions;->fl:D

    .line 164
    mul-double/2addr v10, v12

    .line 166
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    .line 167
    div-double/2addr v10, v14

    .line 169
    const-wide v14, 0x3fdae147ae147ae1L    # 0.42

    .line 170
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 175
    move-result-wide v10

    .line 178
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    .line 179
    move-result-wide v18

    .line 182
    mul-double v18, v18, v12

    .line 183
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    .line 185
    div-double v0, v18, v16

    .line 187
    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 189
    move-result-wide v0

    .line 192
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 193
    move-result-wide v18

    .line 196
    mul-double v18, v18, v12

    .line 197
    div-double v12, v18, v16

    .line 199
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 201
    move-result-wide v12

    .line 204
    invoke-static {v8, v9}, Ljava/lang/Math;->signum(D)D

    .line 205
    move-result-wide v8

    .line 208
    const-wide/high16 v14, 0x4079000000000000L    # 400.0

    .line 209
    mul-double/2addr v8, v14

    .line 211
    mul-double/2addr v8, v10

    .line 212
    const-wide v18, 0x403b2147ae147ae1L    # 27.13

    .line 213
    add-double v10, v10, v18

    .line 218
    div-double/2addr v8, v10

    .line 220
    invoke-static {v6, v7}, Ljava/lang/Math;->signum(D)D

    .line 221
    move-result-wide v6

    .line 224
    mul-double/2addr v6, v14

    .line 225
    mul-double/2addr v6, v0

    .line 226
    add-double v0, v0, v18

    .line 227
    div-double/2addr v6, v0

    .line 229
    invoke-static {v3, v4}, Ljava/lang/Math;->signum(D)D

    .line 230
    move-result-wide v0

    .line 233
    mul-double/2addr v0, v14

    .line 234
    mul-double/2addr v0, v12

    .line 235
    add-double v12, v12, v18

    .line 236
    div-double/2addr v0, v12

    .line 238
    const-wide/high16 v3, 0x4026000000000000L    # 11.0

    .line 239
    mul-double v10, v8, v3

    .line 241
    const-wide/high16 v12, -0x3fd8000000000000L    # -12.0

    .line 243
    mul-double/2addr v12, v6

    .line 245
    add-double/2addr v12, v10

    .line 246
    add-double/2addr v12, v0

    .line 247
    div-double/2addr v12, v3

    .line 248
    add-double v22, v8, v6

    .line 249
    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    .line 251
    const-wide/high16 v24, 0x4022000000000000L    # 9.0

    .line 253
    move-wide/from16 v18, v0

    .line 255
    invoke-static/range {v18 .. v25}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticOutline0;->m(DDDD)D

    .line 257
    move-result-wide v3

    .line 260
    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    .line 261
    mul-double v14, v8, v10

    .line 263
    mul-double/2addr v6, v10

    .line 265
    add-double/2addr v14, v6

    .line 266
    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    .line 267
    mul-double v18, v18, v0

    .line 269
    add-double v18, v18, v14

    .line 271
    div-double v18, v18, v10

    .line 273
    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    .line 275
    mul-double/2addr v8, v14

    .line 277
    add-double/2addr v8, v6

    .line 278
    add-double/2addr v8, v0

    .line 279
    div-double/2addr v8, v10

    .line 280
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    .line 281
    move-result-wide v0

    .line 284
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    .line 285
    move-result-wide v0

    .line 288
    const-wide/16 v6, 0x0

    .line 289
    cmpg-double v6, v0, v6

    .line 291
    const-wide v10, 0x4076800000000000L    # 360.0

    .line 293
    if-gez v6, :cond_0

    .line 298
    add-double/2addr v0, v10

    .line 300
    goto :goto_0

    .line 301
    :cond_0
    cmpl-double v6, v0, v10

    .line 302
    if-ltz v6, :cond_1

    .line 304
    sub-double/2addr v0, v10

    .line 306
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 307
    move-result-wide v6

    .line 310
    iget-wide v10, v2, Lcom/miui/clock/hct/ViewingConditions;->nbb:D

    .line 311
    mul-double/2addr v8, v10

    .line 313
    iget-wide v10, v2, Lcom/miui/clock/hct/ViewingConditions;->aw:D

    .line 314
    div-double/2addr v8, v10

    .line 316
    iget-wide v14, v2, Lcom/miui/clock/hct/ViewingConditions;->z:D

    .line 317
    move/from16 v20, v5

    .line 319
    move-wide/from16 v21, v6

    .line 321
    iget-wide v5, v2, Lcom/miui/clock/hct/ViewingConditions;->c:D

    .line 323
    mul-double/2addr v14, v5

    .line 325
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 326
    move-result-wide v7

    .line 329
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    .line 330
    mul-double/2addr v7, v14

    .line 332
    div-double/2addr v7, v14

    .line 333
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 334
    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    .line 337
    add-double/2addr v10, v14

    .line 339
    const-wide v14, 0x403423d70a3d70a4L    # 20.14

    .line 340
    cmpg-double v9, v0, v14

    .line 345
    if-gez v9, :cond_2

    .line 347
    const-wide v14, 0x4076800000000000L    # 360.0

    .line 349
    add-double/2addr v14, v0

    .line 354
    goto :goto_1

    .line 355
    :cond_2
    move-wide v14, v0

    .line 356
    :goto_1
    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    .line 357
    move-result-wide v14

    .line 360
    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    .line 361
    add-double v14, v14, v23

    .line 363
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 365
    move-result-wide v14

    .line 368
    const-wide v23, 0x400e666666666666L    # 3.8

    .line 369
    add-double v14, v14, v23

    .line 374
    const-wide/high16 v23, 0x3fd0000000000000L    # 0.25

    .line 376
    mul-double v14, v14, v23

    .line 378
    const-wide v23, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    .line 380
    mul-double v14, v14, v23

    .line 385
    move-wide/from16 v23, v0

    .line 387
    iget-wide v0, v2, Lcom/miui/clock/hct/ViewingConditions;->nc:D

    .line 389
    mul-double/2addr v14, v0

    .line 391
    iget-wide v0, v2, Lcom/miui/clock/hct/ViewingConditions;->ncb:D

    .line 392
    mul-double/2addr v14, v0

    .line 394
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 395
    move-result-wide v0

    .line 398
    mul-double/2addr v0, v14

    .line 399
    const-wide v3, 0x3fd3851eb851eb85L    # 0.305

    .line 400
    add-double v18, v18, v3

    .line 405
    div-double v0, v0, v18

    .line 407
    const-wide v3, 0x3fd28f5c28f5c28fL    # 0.29

    .line 409
    iget-wide v12, v2, Lcom/miui/clock/hct/ViewingConditions;->n:D

    .line 414
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 416
    move-result-wide v3

    .line 419
    const-wide v12, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 420
    sub-double/2addr v12, v3

    .line 425
    const-wide v3, 0x3fe75c28f5c28f5cL    # 0.73

    .line 426
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 431
    move-result-wide v3

    .line 434
    const-wide v12, 0x3feccccccccccccdL    # 0.9

    .line 435
    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 440
    move-result-wide v0

    .line 443
    mul-double/2addr v0, v3

    .line 444
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 445
    move-result-wide v3

    .line 448
    mul-double/2addr v3, v0

    .line 449
    iget-wide v7, v2, Lcom/miui/clock/hct/ViewingConditions;->flRoot:D

    .line 450
    mul-double/2addr v7, v3

    .line 452
    mul-double/2addr v0, v5

    .line 453
    div-double/2addr v0, v10

    .line 454
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 455
    const-wide v0, 0x3f9758e219652bd4L    # 0.0228

    .line 458
    mul-double/2addr v7, v0

    .line 463
    invoke-static {v7, v8}, Ljava/lang/Math;->log1p(D)D

    .line 464
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    .line 467
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    .line 470
    move-object/from16 v0, p0

    .line 473
    move-wide/from16 v1, v23

    .line 475
    iput-wide v1, v0, Lcom/miui/clock/hct/Hct;->hue:D

    .line 477
    iput-wide v3, v0, Lcom/miui/clock/hct/Hct;->chroma:D

    .line 479
    shr-int/lit8 v1, p1, 0x10

    .line 481
    and-int/lit16 v1, v1, 0xff

    .line 483
    invoke-static {v1}, Lcom/miui/clock/hct/ColorUtils;->linearized(I)D

    .line 485
    move-result-wide v1

    .line 488
    shr-int/lit8 v3, p1, 0x8

    .line 489
    and-int/lit16 v3, v3, 0xff

    .line 491
    invoke-static {v3}, Lcom/miui/clock/hct/ColorUtils;->linearized(I)D

    .line 493
    move-result-wide v3

    .line 496
    invoke-static/range {v20 .. v20}, Lcom/miui/clock/hct/ColorUtils;->linearized(I)D

    .line 497
    move-result-wide v5

    .line 500
    const/4 v7, 0x3

    .line 501
    new-array v7, v7, [D

    .line 502
    const/4 v8, 0x0

    .line 504
    aput-wide v1, v7, v8

    .line 505
    const/4 v1, 0x1

    .line 507
    aput-wide v3, v7, v1

    .line 508
    const/4 v2, 0x2

    .line 510
    aput-wide v5, v7, v2

    .line 511
    sget-object v2, Lcom/miui/clock/hct/ColorUtils;->SRGB_TO_XYZ:[[D

    .line 513
    invoke-static {v7, v2}, Lcom/miui/clock/hct/MathUtils;->matrixMultiply([D[[D)[D

    .line 515
    move-result-object v2

    .line 518
    aget-wide v1, v2, v1

    .line 519
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 521
    div-double/2addr v1, v3

    .line 523
    const-wide v3, 0x3f822354d28f7cd6L    # 0.008856451679035631

    .line 524
    cmpl-double v3, v1, v3

    .line 529
    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    .line 531
    const-wide/high16 v6, 0x405d000000000000L    # 116.0

    .line 533
    if-lez v3, :cond_3

    .line 535
    const-wide v8, 0x3fd5555555555555L    # 0.3333333333333333

    .line 537
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 542
    move-result-wide v1

    .line 545
    goto :goto_2

    .line 546
    :cond_3
    const-wide v8, 0x408c3a5ed097b426L    # 903.2962962962963

    .line 547
    mul-double/2addr v1, v8

    .line 552
    add-double/2addr v1, v4

    .line 553
    div-double/2addr v1, v6

    .line 554
    :goto_2
    mul-double/2addr v1, v6

    .line 555
    sub-double/2addr v1, v4

    .line 556
    iput-wide v1, v0, Lcom/miui/clock/hct/Hct;->tone:D

    .line 557
    return-void
    .line 559
.end method
