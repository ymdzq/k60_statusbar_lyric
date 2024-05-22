.class public final Lcom/miui/miwallpaper/material/hct/Hct;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public chroma:D

.field public hue:D

.field public tone:D


# direct methods
.method public constructor <init>(I)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v2, Lcom/miui/miwallpaper/material/hct/ViewingConditions;->DEFAULT:Lcom/miui/miwallpaper/material/hct/ViewingConditions;

    .line 9
    const/high16 v3, 0xff0000

    .line 11
    and-int/2addr v3, v1

    .line 13
    shr-int/lit8 v3, v3, 0x10

    .line 14
    const v4, 0xff00

    .line 16
    and-int/2addr v4, v1

    .line 19
    shr-int/lit8 v4, v4, 0x8

    .line 20
    and-int/lit16 v5, v1, 0xff

    .line 22
    invoke-static {v3}, Lcom/miui/miwallpaper/material/utils/ColorUtils;->linearized(I)D

    .line 24
    move-result-wide v6

    .line 27
    invoke-static {v4}, Lcom/miui/miwallpaper/material/utils/ColorUtils;->linearized(I)D

    .line 28
    move-result-wide v3

    .line 31
    invoke-static {v5}, Lcom/miui/miwallpaper/material/utils/ColorUtils;->linearized(I)D

    .line 32
    move-result-wide v8

    .line 35
    const-wide v10, 0x3fda63c2e8477c96L    # 0.41233895

    .line 36
    mul-double/2addr v10, v6

    .line 41
    const-wide v12, 0x3fd6e341ae4b2c79L    # 0.35762064

    .line 42
    mul-double/2addr v12, v3

    .line 47
    add-double/2addr v12, v10

    .line 48
    const-wide v10, 0x3fc71af7273e5d5eL    # 0.18051042

    .line 49
    mul-double/2addr v10, v8

    .line 54
    add-double/2addr v10, v12

    .line 55
    const-wide v12, 0x3fcb367a0f9096bcL    # 0.2126

    .line 56
    mul-double/2addr v12, v6

    .line 61
    const-wide v14, 0x3fe6e2eb1c432ca5L    # 0.7152

    .line 62
    mul-double/2addr v14, v3

    .line 67
    add-double/2addr v14, v12

    .line 68
    const-wide v12, 0x3fb27bb2fec56d5dL    # 0.0722

    .line 69
    mul-double/2addr v12, v8

    .line 74
    add-double/2addr v12, v14

    .line 75
    const-wide v14, 0x3f93c8fde0401c25L    # 0.01932141

    .line 76
    mul-double/2addr v6, v14

    .line 81
    const-wide v14, 0x3fbe818525c434ceL    # 0.11916382

    .line 82
    mul-double/2addr v3, v14

    .line 87
    add-double/2addr v3, v6

    .line 88
    const-wide v6, 0x3fee693974c0c730L    # 0.95034478

    .line 89
    mul-double/2addr v8, v6

    .line 94
    add-double/2addr v8, v3

    .line 95
    sget-object v3, Lcom/miui/miwallpaper/material/hct/Cam16;->XYZ_TO_CAM16RGB:[[D

    .line 96
    const/4 v4, 0x0

    .line 98
    aget-object v6, v3, v4

    .line 99
    aget-wide v14, v6, v4

    .line 101
    mul-double/2addr v14, v10

    .line 103
    const/4 v7, 0x1

    .line 104
    aget-wide v16, v6, v7

    .line 105
    mul-double v16, v16, v12

    .line 107
    add-double v16, v16, v14

    .line 109
    const/4 v14, 0x2

    .line 111
    aget-wide v18, v6, v14

    .line 112
    mul-double v18, v18, v8

    .line 114
    add-double v18, v18, v16

    .line 116
    aget-object v6, v3, v7

    .line 118
    aget-wide v15, v6, v4

    .line 120
    mul-double/2addr v15, v10

    .line 122
    aget-wide v20, v6, v7

    .line 123
    mul-double v20, v20, v12

    .line 125
    add-double v20, v20, v15

    .line 127
    aget-wide v15, v6, v14

    .line 129
    mul-double/2addr v15, v8

    .line 131
    add-double v15, v15, v20

    .line 132
    aget-object v3, v3, v14

    .line 134
    aget-wide v20, v3, v4

    .line 136
    mul-double v20, v20, v10

    .line 138
    aget-wide v10, v3, v7

    .line 140
    mul-double/2addr v10, v12

    .line 142
    add-double v10, v10, v20

    .line 143
    aget-wide v12, v3, v14

    .line 145
    mul-double/2addr v12, v8

    .line 147
    add-double/2addr v12, v10

    .line 148
    iget-object v3, v2, Lcom/miui/miwallpaper/material/hct/ViewingConditions;->rgbD:[D

    .line 149
    aget-wide v8, v3, v4

    .line 151
    mul-double v8, v8, v18

    .line 153
    aget-wide v6, v3, v7

    .line 155
    mul-double/2addr v6, v15

    .line 157
    aget-wide v3, v3, v14

    .line 158
    mul-double/2addr v3, v12

    .line 160
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    .line 161
    move-result-wide v10

    .line 164
    iget-wide v12, v2, Lcom/miui/miwallpaper/material/hct/ViewingConditions;->fl:D

    .line 165
    mul-double/2addr v10, v12

    .line 167
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    .line 168
    div-double/2addr v10, v14

    .line 170
    const-wide v14, 0x3fdae147ae147ae1L    # 0.42

    .line 171
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 176
    move-result-wide v10

    .line 179
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    .line 180
    move-result-wide v18

    .line 183
    mul-double v18, v18, v12

    .line 184
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    .line 186
    div-double v0, v18, v16

    .line 188
    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 190
    move-result-wide v0

    .line 193
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 194
    move-result-wide v18

    .line 197
    mul-double v18, v18, v12

    .line 198
    div-double v12, v18, v16

    .line 200
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 202
    move-result-wide v12

    .line 205
    invoke-static {v8, v9}, Ljava/lang/Math;->signum(D)D

    .line 206
    move-result-wide v8

    .line 209
    const-wide/high16 v14, 0x4079000000000000L    # 400.0

    .line 210
    mul-double/2addr v8, v14

    .line 212
    mul-double/2addr v8, v10

    .line 213
    const-wide v18, 0x403b2147ae147ae1L    # 27.13

    .line 214
    add-double v10, v10, v18

    .line 219
    div-double/2addr v8, v10

    .line 221
    invoke-static {v6, v7}, Ljava/lang/Math;->signum(D)D

    .line 222
    move-result-wide v6

    .line 225
    mul-double/2addr v6, v14

    .line 226
    mul-double/2addr v6, v0

    .line 227
    add-double v0, v0, v18

    .line 228
    div-double/2addr v6, v0

    .line 230
    invoke-static {v3, v4}, Ljava/lang/Math;->signum(D)D

    .line 231
    move-result-wide v0

    .line 234
    mul-double/2addr v0, v14

    .line 235
    mul-double/2addr v0, v12

    .line 236
    add-double v12, v12, v18

    .line 237
    div-double/2addr v0, v12

    .line 239
    const-wide/high16 v3, 0x4026000000000000L    # 11.0

    .line 240
    mul-double v10, v8, v3

    .line 242
    const-wide/high16 v12, -0x3fd8000000000000L    # -12.0

    .line 244
    mul-double/2addr v12, v6

    .line 246
    add-double/2addr v12, v10

    .line 247
    add-double/2addr v12, v0

    .line 248
    div-double/2addr v12, v3

    .line 249
    add-double v22, v8, v6

    .line 250
    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    .line 252
    const-wide/high16 v24, 0x4022000000000000L    # 9.0

    .line 254
    move-wide/from16 v18, v0

    .line 256
    invoke-static/range {v18 .. v25}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticOutline0;->m(DDDD)D

    .line 258
    move-result-wide v3

    .line 261
    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    .line 262
    mul-double v14, v8, v10

    .line 264
    mul-double/2addr v6, v10

    .line 266
    add-double/2addr v14, v6

    .line 267
    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    .line 268
    mul-double v18, v18, v0

    .line 270
    add-double v18, v18, v14

    .line 272
    div-double v18, v18, v10

    .line 274
    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    .line 276
    mul-double/2addr v8, v14

    .line 278
    add-double/2addr v8, v6

    .line 279
    add-double/2addr v8, v0

    .line 280
    div-double/2addr v8, v10

    .line 281
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    .line 282
    move-result-wide v0

    .line 285
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    .line 286
    move-result-wide v0

    .line 289
    const-wide/16 v6, 0x0

    .line 290
    cmpg-double v6, v0, v6

    .line 292
    const-wide v10, 0x4076800000000000L    # 360.0

    .line 294
    if-gez v6, :cond_0

    .line 299
    add-double/2addr v0, v10

    .line 301
    goto :goto_0

    .line 302
    :cond_0
    cmpl-double v6, v0, v10

    .line 303
    if-ltz v6, :cond_1

    .line 305
    sub-double/2addr v0, v10

    .line 307
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 308
    move-result-wide v6

    .line 311
    iget-wide v10, v2, Lcom/miui/miwallpaper/material/hct/ViewingConditions;->nbb:D

    .line 312
    mul-double/2addr v8, v10

    .line 314
    iget-wide v10, v2, Lcom/miui/miwallpaper/material/hct/ViewingConditions;->aw:D

    .line 315
    div-double/2addr v8, v10

    .line 317
    iget-wide v14, v2, Lcom/miui/miwallpaper/material/hct/ViewingConditions;->z:D

    .line 318
    move/from16 v20, v5

    .line 320
    move-wide/from16 v21, v6

    .line 322
    iget-wide v5, v2, Lcom/miui/miwallpaper/material/hct/ViewingConditions;->c:D

    .line 324
    mul-double/2addr v14, v5

    .line 326
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 327
    move-result-wide v7

    .line 330
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    .line 331
    mul-double/2addr v7, v14

    .line 333
    div-double/2addr v7, v14

    .line 334
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 335
    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    .line 338
    add-double/2addr v10, v14

    .line 340
    const-wide v14, 0x403423d70a3d70a4L    # 20.14

    .line 341
    cmpg-double v9, v0, v14

    .line 346
    if-gez v9, :cond_2

    .line 348
    const-wide v14, 0x4076800000000000L    # 360.0

    .line 350
    add-double/2addr v14, v0

    .line 355
    goto :goto_1

    .line 356
    :cond_2
    move-wide v14, v0

    .line 357
    :goto_1
    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    .line 358
    move-result-wide v14

    .line 361
    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    .line 362
    add-double v14, v14, v23

    .line 364
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 366
    move-result-wide v14

    .line 369
    const-wide v23, 0x400e666666666666L    # 3.8

    .line 370
    add-double v14, v14, v23

    .line 375
    const-wide/high16 v23, 0x3fd0000000000000L    # 0.25

    .line 377
    mul-double v14, v14, v23

    .line 379
    const-wide v23, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    .line 381
    mul-double v14, v14, v23

    .line 386
    move-wide/from16 v23, v0

    .line 388
    iget-wide v0, v2, Lcom/miui/miwallpaper/material/hct/ViewingConditions;->nc:D

    .line 390
    mul-double/2addr v14, v0

    .line 392
    iget-wide v0, v2, Lcom/miui/miwallpaper/material/hct/ViewingConditions;->ncb:D

    .line 393
    mul-double/2addr v14, v0

    .line 395
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 396
    move-result-wide v0

    .line 399
    mul-double/2addr v0, v14

    .line 400
    const-wide v3, 0x3fd3851eb851eb85L    # 0.305

    .line 401
    add-double v18, v18, v3

    .line 406
    div-double v0, v0, v18

    .line 408
    const-wide v3, 0x3fd28f5c28f5c28fL    # 0.29

    .line 410
    iget-wide v12, v2, Lcom/miui/miwallpaper/material/hct/ViewingConditions;->n:D

    .line 415
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 417
    move-result-wide v3

    .line 420
    const-wide v12, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 421
    sub-double/2addr v12, v3

    .line 426
    const-wide v3, 0x3fe75c28f5c28f5cL    # 0.73

    .line 427
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 432
    move-result-wide v3

    .line 435
    const-wide v12, 0x3feccccccccccccdL    # 0.9

    .line 436
    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 441
    move-result-wide v0

    .line 444
    mul-double/2addr v0, v3

    .line 445
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 446
    move-result-wide v3

    .line 449
    mul-double/2addr v3, v0

    .line 450
    iget-wide v7, v2, Lcom/miui/miwallpaper/material/hct/ViewingConditions;->flRoot:D

    .line 451
    mul-double/2addr v7, v3

    .line 453
    mul-double/2addr v0, v5

    .line 454
    div-double/2addr v0, v10

    .line 455
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 456
    const-wide v0, 0x3f9758e219652bd4L    # 0.0228

    .line 459
    mul-double/2addr v7, v0

    .line 464
    invoke-static {v7, v8}, Ljava/lang/Math;->log1p(D)D

    .line 465
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    .line 468
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    .line 471
    move-object/from16 v0, p0

    .line 474
    move-wide/from16 v1, v23

    .line 476
    iput-wide v1, v0, Lcom/miui/miwallpaper/material/hct/Hct;->hue:D

    .line 478
    iput-wide v3, v0, Lcom/miui/miwallpaper/material/hct/Hct;->chroma:D

    .line 480
    shr-int/lit8 v1, p1, 0x10

    .line 482
    and-int/lit16 v1, v1, 0xff

    .line 484
    invoke-static {v1}, Lcom/miui/miwallpaper/material/utils/ColorUtils;->linearized(I)D

    .line 486
    move-result-wide v1

    .line 489
    shr-int/lit8 v3, p1, 0x8

    .line 490
    and-int/lit16 v3, v3, 0xff

    .line 492
    invoke-static {v3}, Lcom/miui/miwallpaper/material/utils/ColorUtils;->linearized(I)D

    .line 494
    move-result-wide v3

    .line 497
    invoke-static/range {v20 .. v20}, Lcom/miui/miwallpaper/material/utils/ColorUtils;->linearized(I)D

    .line 498
    move-result-wide v5

    .line 501
    const/4 v7, 0x3

    .line 502
    new-array v7, v7, [D

    .line 503
    const/4 v8, 0x0

    .line 505
    aput-wide v1, v7, v8

    .line 506
    const/4 v1, 0x1

    .line 508
    aput-wide v3, v7, v1

    .line 509
    const/4 v2, 0x2

    .line 511
    aput-wide v5, v7, v2

    .line 512
    sget-object v2, Lcom/miui/miwallpaper/material/utils/ColorUtils;->SRGB_TO_XYZ:[[D

    .line 514
    invoke-static {v7, v2}, Lcom/miui/miwallpaper/material/utils/MathUtils;->matrixMultiply([D[[D)[D

    .line 516
    move-result-object v2

    .line 519
    aget-wide v1, v2, v1

    .line 520
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 522
    div-double/2addr v1, v3

    .line 524
    const-wide v3, 0x3f822354d28f7cd6L    # 0.008856451679035631

    .line 525
    cmpl-double v3, v1, v3

    .line 530
    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    .line 532
    const-wide/high16 v6, 0x405d000000000000L    # 116.0

    .line 534
    if-lez v3, :cond_3

    .line 536
    const-wide v8, 0x3fd5555555555555L    # 0.3333333333333333

    .line 538
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 543
    move-result-wide v1

    .line 546
    goto :goto_2

    .line 547
    :cond_3
    const-wide v8, 0x408c3a5ed097b426L    # 903.2962962962963

    .line 548
    mul-double/2addr v1, v8

    .line 553
    add-double/2addr v1, v4

    .line 554
    div-double/2addr v1, v6

    .line 555
    :goto_2
    mul-double/2addr v1, v6

    .line 556
    sub-double/2addr v1, v4

    .line 557
    iput-wide v1, v0, Lcom/miui/miwallpaper/material/hct/Hct;->tone:D

    .line 558
    return-void
    .line 560
.end method
