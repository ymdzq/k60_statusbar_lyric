.class public final Landroidx/palette/graphics/Palette$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mFilters:Ljava/util/List;

.field public mMaxColors:I

.field public mRegion:Landroid/graphics/Rect;

.field public mResizeArea:I

.field public mResizeMaxDimension:I

.field public final mTargets:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    .line 10
    const/16 v1, 0x10

    .line 12
    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    .line 14
    const/16 v1, 0x3100

    .line 16
    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    .line 18
    const/4 v1, -0x1

    .line 20
    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object v1, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 30
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    sget-object v2, Landroidx/palette/graphics/Palette;->DEFAULT_FILTER:Landroidx/palette/graphics/Palette$1;

    .line 36
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 41
    sget-object p0, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    .line 43
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object p0, Landroidx/palette/graphics/Target;->VIBRANT:Landroidx/palette/graphics/Target;

    .line 48
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object p0, Landroidx/palette/graphics/Target;->DARK_VIBRANT:Landroidx/palette/graphics/Target;

    .line 53
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object p0, Landroidx/palette/graphics/Target;->LIGHT_MUTED:Landroidx/palette/graphics/Target;

    .line 58
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object p0, Landroidx/palette/graphics/Target;->MUTED:Landroidx/palette/graphics/Target;

    .line 63
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object p0, Landroidx/palette/graphics/Target;->DARK_MUTED:Landroidx/palette/graphics/Target;

    .line 68
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void

    .line 73
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 74
    const-string p1, "Bitmap is not valid"

    .line 76
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p0
    .line 81
.end method


# virtual methods
.method public final generate()Landroidx/palette/graphics/Palette;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 4
    if-eqz v1, :cond_17

    .line 6
    iget v2, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    .line 8
    if-lez v2, :cond_0

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 12
    move-result v2

    .line 15
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 16
    move-result v3

    .line 19
    mul-int/2addr v3, v2

    .line 20
    iget v2, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    .line 21
    if-le v3, v2, :cond_1

    .line 23
    int-to-double v4, v2

    .line 25
    int-to-double v2, v3

    .line 26
    div-double/2addr v4, v2

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 28
    move-result-wide v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget v2, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 33
    if-lez v2, :cond_1

    .line 35
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 37
    move-result v2

    .line 40
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 41
    move-result v3

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 45
    move-result v2

    .line 48
    iget v3, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 49
    if-le v2, v3, :cond_1

    .line 51
    int-to-double v3, v3

    .line 53
    int-to-double v5, v2

    .line 54
    div-double v2, v3, v5

    .line 55
    goto :goto_0

    .line 57
    :cond_1
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 58
    :goto_0
    const-wide/16 v4, 0x0

    .line 60
    cmpg-double v4, v2, v4

    .line 62
    const/4 v5, 0x0

    .line 64
    if-gtz v4, :cond_2

    .line 65
    move-object v2, v1

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 69
    move-result v4

    .line 72
    int-to-double v6, v4

    .line 73
    mul-double/2addr v6, v2

    .line 74
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 75
    move-result-wide v6

    .line 78
    double-to-int v4, v6

    .line 79
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 80
    move-result v6

    .line 83
    int-to-double v6, v6

    .line 84
    mul-double/2addr v6, v2

    .line 85
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 86
    move-result-wide v2

    .line 89
    double-to-int v2, v2

    .line 90
    invoke-static {v1, v4, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 91
    move-result-object v2

    .line 94
    :goto_1
    iget-object v3, v0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 95
    if-eq v2, v1, :cond_3

    .line 97
    if-eqz v3, :cond_3

    .line 99
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 101
    move-result v4

    .line 104
    int-to-double v6, v4

    .line 105
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 106
    move-result v4

    .line 109
    int-to-double v8, v4

    .line 110
    div-double/2addr v6, v8

    .line 111
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 112
    int-to-double v8, v4

    .line 114
    mul-double/2addr v8, v6

    .line 115
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    .line 116
    move-result-wide v8

    .line 119
    double-to-int v4, v8

    .line 120
    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 121
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 123
    int-to-double v8, v4

    .line 125
    mul-double/2addr v8, v6

    .line 126
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    .line 127
    move-result-wide v8

    .line 130
    double-to-int v4, v8

    .line 131
    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 132
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 134
    int-to-double v8, v4

    .line 136
    mul-double/2addr v8, v6

    .line 137
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 138
    move-result-wide v8

    .line 141
    double-to-int v4, v8

    .line 142
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 143
    move-result v8

    .line 146
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    .line 147
    move-result v4

    .line 150
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 151
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 153
    int-to-double v8, v4

    .line 155
    mul-double/2addr v8, v6

    .line 156
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 157
    move-result-wide v6

    .line 160
    double-to-int v4, v6

    .line 161
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 162
    move-result v6

    .line 165
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 166
    move-result v4

    .line 169
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 170
    :cond_3
    new-instance v3, Landroidx/palette/graphics/ColorCutQuantizer;

    .line 172
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 174
    move-result v4

    .line 177
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 178
    move-result v13

    .line 181
    mul-int v6, v4, v13

    .line 182
    new-array v14, v6, [I

    .line 184
    const/4 v8, 0x0

    .line 186
    const/4 v10, 0x0

    .line 187
    const/4 v11, 0x0

    .line 188
    move-object v6, v2

    .line 189
    move-object v7, v14

    .line 190
    move v9, v4

    .line 191
    move v12, v4

    .line 192
    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 193
    iget-object v6, v0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 196
    if-nez v6, :cond_4

    .line 198
    goto :goto_3

    .line 200
    :cond_4
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 201
    move-result v6

    .line 204
    iget-object v7, v0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 205
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 207
    move-result v7

    .line 210
    mul-int v8, v6, v7

    .line 211
    new-array v8, v8, [I

    .line 213
    move v9, v5

    .line 215
    :goto_2
    if-ge v9, v7, :cond_5

    .line 216
    iget-object v10, v0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 218
    iget v11, v10, Landroid/graphics/Rect;->top:I

    .line 220
    add-int/2addr v11, v9

    .line 222
    mul-int/2addr v11, v4

    .line 223
    iget v10, v10, Landroid/graphics/Rect;->left:I

    .line 224
    add-int/2addr v11, v10

    .line 226
    mul-int v10, v9, v6

    .line 227
    invoke-static {v14, v11, v8, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    add-int/lit8 v9, v9, 0x1

    .line 232
    goto :goto_2

    .line 234
    :cond_5
    move-object v14, v8

    .line 235
    :goto_3
    iget v4, v0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    .line 236
    iget-object v6, v0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    .line 238
    move-object v7, v6

    .line 240
    check-cast v7, Ljava/util/ArrayList;

    .line 241
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 243
    move-result v7

    .line 246
    if-eqz v7, :cond_6

    .line 247
    const/4 v6, 0x0

    .line 249
    goto :goto_4

    .line 250
    :cond_6
    move-object v7, v6

    .line 251
    check-cast v7, Ljava/util/ArrayList;

    .line 252
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 254
    move-result v7

    .line 257
    new-array v7, v7, [Landroidx/palette/graphics/Palette$1;

    .line 258
    check-cast v6, Ljava/util/ArrayList;

    .line 260
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 262
    move-result-object v6

    .line 265
    check-cast v6, [Landroidx/palette/graphics/Palette$1;

    .line 266
    :goto_4
    invoke-direct {v3, v14, v4, v6}, Landroidx/palette/graphics/ColorCutQuantizer;-><init>([II[Landroidx/palette/graphics/Palette$1;)V

    .line 268
    if-eq v2, v1, :cond_7

    .line 271
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 273
    :cond_7
    iget-object v1, v3, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 276
    new-instance v2, Landroidx/palette/graphics/Palette;

    .line 278
    iget-object v0, v0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    .line 280
    invoke-direct {v2, v1, v0}, Landroidx/palette/graphics/Palette;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 282
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 285
    move-result v1

    .line 288
    move v3, v5

    .line 289
    :goto_5
    iget-object v4, v2, Landroidx/palette/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    .line 290
    if-ge v3, v1, :cond_16

    .line 292
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 294
    move-result-object v6

    .line 297
    check-cast v6, Landroidx/palette/graphics/Target;

    .line 298
    iget-object v7, v6, Landroidx/palette/graphics/Target;->mWeights:[F

    .line 300
    array-length v9, v7

    .line 302
    const/4 v10, 0x0

    .line 303
    move v11, v5

    .line 304
    move v12, v10

    .line 305
    :goto_6
    if-ge v11, v9, :cond_9

    .line 306
    aget v13, v7, v11

    .line 308
    cmpl-float v14, v13, v10

    .line 310
    if-lez v14, :cond_8

    .line 312
    add-float/2addr v12, v13

    .line 314
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 315
    goto :goto_6

    .line 317
    :cond_9
    cmpl-float v9, v12, v10

    .line 318
    if-eqz v9, :cond_b

    .line 320
    array-length v9, v7

    .line 322
    move v11, v5

    .line 323
    :goto_7
    if-ge v11, v9, :cond_b

    .line 324
    aget v13, v7, v11

    .line 326
    cmpl-float v14, v13, v10

    .line 328
    if-lez v14, :cond_a

    .line 330
    div-float/2addr v13, v12

    .line 332
    aput v13, v7, v11

    .line 333
    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 335
    goto :goto_7

    .line 337
    :cond_b
    iget-object v7, v2, Landroidx/palette/graphics/Palette;->mSelectedSwatches:Landroidx/collection/SimpleArrayMap;

    .line 338
    iget-object v9, v2, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    .line 340
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 342
    move-result v11

    .line 345
    move v12, v5

    .line 346
    move v14, v10

    .line 347
    const/4 v13, 0x0

    .line 348
    :goto_8
    const/4 v15, 0x1

    .line 349
    if-ge v12, v11, :cond_14

    .line 350
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 352
    move-result-object v16

    .line 355
    move-object/from16 v8, v16

    .line 356
    check-cast v8, Landroidx/palette/graphics/Palette$Swatch;

    .line 358
    invoke-virtual {v8}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    .line 360
    move-result-object v16

    .line 363
    aget v17, v16, v15

    .line 364
    iget-object v15, v6, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    .line 366
    aget v18, v15, v5

    .line 368
    cmpl-float v18, v17, v18

    .line 370
    iget-object v10, v6, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    .line 372
    const/16 v20, 0x2

    .line 374
    if-ltz v18, :cond_c

    .line 376
    aget v18, v15, v20

    .line 378
    cmpg-float v17, v17, v18

    .line 380
    if-gtz v17, :cond_c

    .line 382
    aget v16, v16, v20

    .line 384
    aget v17, v10, v5

    .line 386
    cmpl-float v17, v16, v17

    .line 388
    if-ltz v17, :cond_c

    .line 390
    aget v17, v10, v20

    .line 392
    cmpg-float v16, v16, v17

    .line 394
    if-gtz v16, :cond_c

    .line 396
    iget v5, v8, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 398
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 400
    move-result v5

    .line 403
    if-nez v5, :cond_c

    .line 404
    const/4 v5, 0x1

    .line 406
    goto :goto_9

    .line 407
    :cond_c
    const/4 v5, 0x0

    .line 408
    :goto_9
    if-eqz v5, :cond_12

    .line 409
    invoke-virtual {v8}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    .line 411
    move-result-object v5

    .line 414
    move-object/from16 v17, v0

    .line 415
    iget-object v0, v2, Landroidx/palette/graphics/Palette;->mDominantSwatch:Landroidx/palette/graphics/Palette$Swatch;

    .line 417
    if-eqz v0, :cond_d

    .line 419
    iget v0, v0, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 421
    move/from16 v18, v1

    .line 423
    goto :goto_a

    .line 425
    :cond_d
    move/from16 v18, v1

    .line 426
    const/4 v0, 0x1

    .line 428
    :goto_a
    iget-object v1, v6, Landroidx/palette/graphics/Target;->mWeights:[F

    .line 429
    const/16 v16, 0x0

    .line 431
    aget v21, v1, v16

    .line 433
    const/16 v19, 0x0

    .line 435
    cmpl-float v22, v21, v19

    .line 437
    const/high16 v23, 0x3f800000    # 1.0f

    .line 439
    if-lez v22, :cond_e

    .line 441
    const/16 v22, 0x1

    .line 443
    aget v24, v5, v22

    .line 445
    aget v15, v15, v22

    .line 447
    sub-float v24, v24, v15

    .line 449
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    .line 451
    move-result v15

    .line 454
    sub-float v15, v23, v15

    .line 455
    mul-float v15, v15, v21

    .line 457
    goto :goto_b

    .line 459
    :cond_e
    const/16 v22, 0x1

    .line 460
    const/4 v15, 0x0

    .line 462
    :goto_b
    aget v21, v1, v22

    .line 463
    const/16 v19, 0x0

    .line 465
    cmpl-float v24, v21, v19

    .line 467
    if-lez v24, :cond_f

    .line 469
    aget v5, v5, v20

    .line 471
    aget v10, v10, v22

    .line 473
    sub-float/2addr v5, v10

    .line 475
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 476
    move-result v5

    .line 479
    sub-float v23, v23, v5

    .line 480
    mul-float v5, v23, v21

    .line 482
    goto :goto_c

    .line 484
    :cond_f
    move/from16 v5, v19

    .line 485
    :goto_c
    aget v1, v1, v20

    .line 487
    cmpl-float v10, v1, v19

    .line 489
    if-lez v10, :cond_10

    .line 491
    iget v10, v8, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 493
    int-to-float v10, v10

    .line 495
    int-to-float v0, v0

    .line 496
    div-float/2addr v10, v0

    .line 497
    mul-float v0, v10, v1

    .line 498
    goto :goto_d

    .line 500
    :cond_10
    move/from16 v0, v19

    .line 501
    :goto_d
    add-float/2addr v15, v5

    .line 503
    add-float/2addr v15, v0

    .line 504
    if-eqz v13, :cond_11

    .line 505
    cmpl-float v0, v15, v14

    .line 507
    if-lez v0, :cond_13

    .line 509
    :cond_11
    move-object v13, v8

    .line 511
    move v14, v15

    .line 512
    goto :goto_e

    .line 513
    :cond_12
    move-object/from16 v17, v0

    .line 514
    move/from16 v18, v1

    .line 516
    const/16 v16, 0x0

    .line 518
    const/16 v19, 0x0

    .line 520
    :cond_13
    :goto_e
    add-int/lit8 v12, v12, 0x1

    .line 522
    move/from16 v5, v16

    .line 524
    move-object/from16 v0, v17

    .line 526
    move/from16 v1, v18

    .line 528
    move/from16 v10, v19

    .line 530
    goto/16 :goto_8

    .line 532
    :cond_14
    move-object/from16 v17, v0

    .line 534
    move/from16 v18, v1

    .line 536
    move/from16 v16, v5

    .line 538
    if-eqz v13, :cond_15

    .line 540
    iget v0, v13, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 542
    const/4 v1, 0x1

    .line 544
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 545
    :cond_15
    invoke-virtual {v7, v6, v13}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    add-int/lit8 v3, v3, 0x1

    .line 551
    move/from16 v5, v16

    .line 553
    move-object/from16 v0, v17

    .line 555
    move/from16 v1, v18

    .line 557
    goto/16 :goto_5

    .line 559
    :cond_16
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    .line 561
    return-object v2

    .line 564
    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    .line 565
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 567
    throw v0
    .line 570
.end method
