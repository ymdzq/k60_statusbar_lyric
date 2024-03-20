.class public final Lcom/miui/miwallpaper/material/palette/Palette$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mFilters:Ljava/util/List;

.field public final mMaxColors:I

.field public mResizeArea:I

.field public mResizeMaxDimension:I

.field public final mTargets:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/miwallpaper/material/palette/Palette$Builder;->mTargets:Ljava/util/List;

    .line 10
    const/16 v1, 0x10

    .line 12
    iput v1, p0, Lcom/miui/miwallpaper/material/palette/Palette$Builder;->mMaxColors:I

    .line 14
    const/16 v1, 0x3100

    .line 16
    iput v1, p0, Lcom/miui/miwallpaper/material/palette/Palette$Builder;->mResizeArea:I

    .line 18
    const/4 v1, -0x1

    .line 20
    iput v1, p0, Lcom/miui/miwallpaper/material/palette/Palette$Builder;->mResizeMaxDimension:I

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/miui/miwallpaper/material/palette/Palette$Builder;->mFilters:Ljava/util/List;

    .line 28
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 32
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    iput-object p1, p0, Lcom/miui/miwallpaper/material/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 38
    sget-object p0, Lcom/miui/miwallpaper/material/palette/Target;->LIGHT_VIBRANT:Lcom/miui/miwallpaper/material/palette/Target;

    .line 40
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object p0, Lcom/miui/miwallpaper/material/palette/Target;->VIBRANT:Lcom/miui/miwallpaper/material/palette/Target;

    .line 45
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object p0, Lcom/miui/miwallpaper/material/palette/Target;->DARK_VIBRANT:Lcom/miui/miwallpaper/material/palette/Target;

    .line 50
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object p0, Lcom/miui/miwallpaper/material/palette/Target;->LIGHT_MUTED:Lcom/miui/miwallpaper/material/palette/Target;

    .line 55
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object p0, Lcom/miui/miwallpaper/material/palette/Target;->MUTED:Lcom/miui/miwallpaper/material/palette/Target;

    .line 60
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object p0, Lcom/miui/miwallpaper/material/palette/Target;->DARK_MUTED:Lcom/miui/miwallpaper/material/palette/Target;

    .line 65
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-void

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 71
    const-string p1, "Bitmap is not valid"

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0
    .line 78
.end method


# virtual methods
.method public final generate()Lcom/miui/miwallpaper/material/palette/Palette;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    const/4 v2, 0x0

    .line 4
    iget-object v3, v0, Lcom/miui/miwallpaper/material/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 5
    if-eqz v3, :cond_5

    .line 7
    iget v4, v0, Lcom/miui/miwallpaper/material/palette/Palette$Builder;->mResizeArea:I

    .line 9
    if-lez v4, :cond_0

    .line 11
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 13
    move-result v4

    .line 16
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 17
    move-result v5

    .line 20
    mul-int/2addr v5, v4

    .line 21
    iget v4, v0, Lcom/miui/miwallpaper/material/palette/Palette$Builder;->mResizeArea:I

    .line 22
    if-le v5, v4, :cond_1

    .line 24
    int-to-double v6, v4

    .line 26
    int-to-double v4, v5

    .line 27
    div-double/2addr v6, v4

    .line 28
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 29
    move-result-wide v4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget v4, v0, Lcom/miui/miwallpaper/material/palette/Palette$Builder;->mResizeMaxDimension:I

    .line 34
    if-lez v4, :cond_1

    .line 36
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 38
    move-result v4

    .line 41
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 42
    move-result v5

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 46
    move-result v4

    .line 49
    iget v5, v0, Lcom/miui/miwallpaper/material/palette/Palette$Builder;->mResizeMaxDimension:I

    .line 50
    if-le v4, v5, :cond_1

    .line 52
    int-to-double v5, v5

    .line 54
    int-to-double v7, v4

    .line 55
    div-double v4, v5, v7

    .line 56
    goto :goto_0

    .line 58
    :cond_1
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 59
    :goto_0
    const-wide/16 v6, 0x0

    .line 61
    cmpg-double v6, v4, v6

    .line 63
    if-gtz v6, :cond_2

    .line 65
    move-object v4, v3

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 69
    move-result v6

    .line 72
    int-to-double v6, v6

    .line 73
    mul-double/2addr v6, v4

    .line 74
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 75
    move-result-wide v6

    .line 78
    double-to-int v6, v6

    .line 79
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 80
    move-result v7

    .line 83
    int-to-double v7, v7

    .line 84
    mul-double/2addr v7, v4

    .line 85
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 86
    move-result-wide v4

    .line 89
    double-to-int v4, v4

    .line 90
    invoke-static {v3, v6, v4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 91
    move-result-object v4

    .line 94
    :goto_1
    new-instance v13, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;

    .line 95
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 97
    move-result v11

    .line 100
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 101
    move-result v12

    .line 104
    mul-int v5, v11, v12

    .line 105
    new-array v14, v5, [I

    .line 107
    const/4 v7, 0x0

    .line 109
    const/4 v9, 0x0

    .line 110
    const/4 v10, 0x0

    .line 111
    move-object v5, v4

    .line 112
    move-object v6, v14

    .line 113
    move v8, v11

    .line 114
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 115
    iget-object v5, v0, Lcom/miui/miwallpaper/material/palette/Palette$Builder;->mFilters:Ljava/util/List;

    .line 118
    move-object v6, v5

    .line 120
    check-cast v6, Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 123
    move-result v6

    .line 126
    if-eqz v6, :cond_3

    .line 127
    const/4 v5, 0x0

    .line 129
    goto :goto_2

    .line 130
    :cond_3
    move-object v6, v5

    .line 131
    check-cast v6, Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 134
    move-result v6

    .line 137
    new-array v6, v6, [Lcom/miui/miwallpaper/material/palette/Palette$Filter;

    .line 138
    check-cast v5, Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 142
    move-result-object v5

    .line 145
    check-cast v5, [Lcom/miui/miwallpaper/material/palette/Palette$Filter;

    .line 146
    :goto_2
    iget v6, v0, Lcom/miui/miwallpaper/material/palette/Palette$Builder;->mMaxColors:I

    .line 148
    invoke-direct {v13, v14, v6, v5}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;-><init>([II[Lcom/miui/miwallpaper/material/palette/Palette$Filter;)V

    .line 150
    if-eq v4, v3, :cond_4

    .line 153
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    :cond_4
    iget-object v3, v13, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 158
    goto :goto_3

    .line 160
    :cond_5
    const/4 v3, 0x0

    .line 161
    :goto_3
    new-instance v4, Lcom/miui/miwallpaper/material/palette/Palette;

    .line 162
    iget-object v0, v0, Lcom/miui/miwallpaper/material/palette/Palette$Builder;->mTargets:Ljava/util/List;

    .line 164
    invoke-direct {v4, v3, v0}, Lcom/miui/miwallpaper/material/palette/Palette;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 166
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 169
    move-result v3

    .line 172
    move v5, v2

    .line 173
    :goto_4
    iget-object v6, v4, Lcom/miui/miwallpaper/material/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    .line 174
    if-ge v5, v3, :cond_14

    .line 176
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    move-result-object v7

    .line 181
    check-cast v7, Lcom/miui/miwallpaper/material/palette/Target;

    .line 182
    iget-object v8, v7, Lcom/miui/miwallpaper/material/palette/Target;->mWeights:[F

    .line 184
    array-length v9, v8

    .line 186
    const/4 v10, 0x0

    .line 187
    move v11, v2

    .line 188
    move v12, v10

    .line 189
    :goto_5
    if-ge v11, v9, :cond_7

    .line 190
    aget v13, v8, v11

    .line 192
    cmpl-float v14, v13, v10

    .line 194
    if-lez v14, :cond_6

    .line 196
    add-float/2addr v12, v13

    .line 198
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 199
    goto :goto_5

    .line 201
    :cond_7
    cmpl-float v9, v12, v10

    .line 202
    if-eqz v9, :cond_9

    .line 204
    array-length v9, v8

    .line 206
    move v11, v2

    .line 207
    :goto_6
    if-ge v11, v9, :cond_9

    .line 208
    aget v13, v8, v11

    .line 210
    cmpl-float v14, v13, v10

    .line 212
    if-lez v14, :cond_8

    .line 214
    div-float/2addr v13, v12

    .line 216
    aput v13, v8, v11

    .line 217
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 219
    goto :goto_6

    .line 221
    :cond_9
    iget-object v8, v4, Lcom/miui/miwallpaper/material/palette/Palette;->mSelectedSwatches:Ljava/util/Map;

    .line 222
    iget-object v9, v4, Lcom/miui/miwallpaper/material/palette/Palette;->mSwatches:Ljava/util/List;

    .line 224
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 226
    move-result v11

    .line 229
    move v12, v2

    .line 230
    move v14, v10

    .line 231
    const/4 v13, 0x0

    .line 232
    :goto_7
    const/4 v15, 0x1

    .line 233
    if-ge v12, v11, :cond_12

    .line 234
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    move-result-object v16

    .line 239
    move-object/from16 v1, v16

    .line 240
    check-cast v1, Lcom/miui/miwallpaper/material/palette/Palette$Swatch;

    .line 242
    invoke-virtual {v1}, Lcom/miui/miwallpaper/material/palette/Palette$Swatch;->getHsl()[F

    .line 244
    move-result-object v16

    .line 247
    aget v17, v16, v15

    .line 248
    iget-object v15, v7, Lcom/miui/miwallpaper/material/palette/Target;->mSaturationTargets:[F

    .line 250
    aget v18, v15, v2

    .line 252
    cmpl-float v18, v17, v18

    .line 254
    iget-object v10, v7, Lcom/miui/miwallpaper/material/palette/Target;->mLightnessTargets:[F

    .line 256
    const/16 v20, 0x2

    .line 258
    if-ltz v18, :cond_a

    .line 260
    aget v18, v15, v20

    .line 262
    cmpg-float v17, v17, v18

    .line 264
    if-gtz v17, :cond_a

    .line 266
    aget v16, v16, v20

    .line 268
    aget v17, v10, v2

    .line 270
    cmpl-float v17, v16, v17

    .line 272
    if-ltz v17, :cond_a

    .line 274
    aget v17, v10, v20

    .line 276
    cmpg-float v16, v16, v17

    .line 278
    if-gtz v16, :cond_a

    .line 280
    iget v2, v1, Lcom/miui/miwallpaper/material/palette/Palette$Swatch;->mRgb:I

    .line 282
    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 284
    move-result v2

    .line 287
    if-nez v2, :cond_a

    .line 288
    const/4 v2, 0x1

    .line 290
    goto :goto_8

    .line 291
    :cond_a
    const/4 v2, 0x0

    .line 292
    :goto_8
    if-eqz v2, :cond_10

    .line 293
    invoke-virtual {v1}, Lcom/miui/miwallpaper/material/palette/Palette$Swatch;->getHsl()[F

    .line 295
    move-result-object v2

    .line 298
    move-object/from16 v17, v0

    .line 299
    iget-object v0, v4, Lcom/miui/miwallpaper/material/palette/Palette;->mDominantSwatch:Lcom/miui/miwallpaper/material/palette/Palette$Swatch;

    .line 301
    if-eqz v0, :cond_b

    .line 303
    iget v0, v0, Lcom/miui/miwallpaper/material/palette/Palette$Swatch;->mPopulation:I

    .line 305
    move/from16 v18, v3

    .line 307
    goto :goto_9

    .line 309
    :cond_b
    move/from16 v18, v3

    .line 310
    const/4 v0, 0x1

    .line 312
    :goto_9
    iget-object v3, v7, Lcom/miui/miwallpaper/material/palette/Target;->mWeights:[F

    .line 313
    const/16 v16, 0x0

    .line 315
    aget v21, v3, v16

    .line 317
    const/16 v19, 0x0

    .line 319
    cmpl-float v22, v21, v19

    .line 321
    const/high16 v23, 0x3f800000    # 1.0f

    .line 323
    if-lez v22, :cond_c

    .line 325
    const/16 v22, 0x1

    .line 327
    aget v24, v2, v22

    .line 329
    aget v15, v15, v22

    .line 331
    sub-float v24, v24, v15

    .line 333
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    .line 335
    move-result v15

    .line 338
    sub-float v15, v23, v15

    .line 339
    mul-float v15, v15, v21

    .line 341
    goto :goto_a

    .line 343
    :cond_c
    const/16 v22, 0x1

    .line 344
    const/4 v15, 0x0

    .line 346
    :goto_a
    aget v21, v3, v22

    .line 347
    const/16 v19, 0x0

    .line 349
    cmpl-float v24, v21, v19

    .line 351
    if-lez v24, :cond_d

    .line 353
    aget v2, v2, v20

    .line 355
    aget v10, v10, v22

    .line 357
    sub-float/2addr v2, v10

    .line 359
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 360
    move-result v2

    .line 363
    sub-float v23, v23, v2

    .line 364
    mul-float v2, v23, v21

    .line 366
    goto :goto_b

    .line 368
    :cond_d
    move/from16 v2, v19

    .line 369
    :goto_b
    aget v3, v3, v20

    .line 371
    cmpl-float v10, v3, v19

    .line 373
    if-lez v10, :cond_e

    .line 375
    iget v10, v1, Lcom/miui/miwallpaper/material/palette/Palette$Swatch;->mPopulation:I

    .line 377
    int-to-float v10, v10

    .line 379
    int-to-float v0, v0

    .line 380
    div-float/2addr v10, v0

    .line 381
    mul-float v0, v10, v3

    .line 382
    goto :goto_c

    .line 384
    :cond_e
    move/from16 v0, v19

    .line 385
    :goto_c
    add-float/2addr v15, v2

    .line 387
    add-float/2addr v15, v0

    .line 388
    if-eqz v13, :cond_f

    .line 389
    cmpl-float v0, v15, v14

    .line 391
    if-lez v0, :cond_11

    .line 393
    :cond_f
    move-object v13, v1

    .line 395
    move v14, v15

    .line 396
    goto :goto_d

    .line 397
    :cond_10
    move-object/from16 v17, v0

    .line 398
    move/from16 v18, v3

    .line 400
    const/16 v16, 0x0

    .line 402
    const/16 v19, 0x0

    .line 404
    :cond_11
    :goto_d
    add-int/lit8 v12, v12, 0x1

    .line 406
    move/from16 v2, v16

    .line 408
    move-object/from16 v0, v17

    .line 410
    move/from16 v3, v18

    .line 412
    move/from16 v10, v19

    .line 414
    goto/16 :goto_7

    .line 416
    :cond_12
    move-object/from16 v17, v0

    .line 418
    move/from16 v16, v2

    .line 420
    move/from16 v18, v3

    .line 422
    if-eqz v13, :cond_13

    .line 424
    iget v0, v13, Lcom/miui/miwallpaper/material/palette/Palette$Swatch;->mRgb:I

    .line 426
    const/4 v1, 0x1

    .line 428
    invoke-virtual {v6, v0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 429
    :cond_13
    check-cast v8, Landroid/util/ArrayMap;

    .line 432
    invoke-virtual {v8, v7, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    add-int/lit8 v5, v5, 0x1

    .line 437
    move/from16 v2, v16

    .line 439
    move-object/from16 v0, v17

    .line 441
    move/from16 v3, v18

    .line 443
    goto/16 :goto_4

    .line 445
    :cond_14
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 447
    return-object v4
    .line 450
.end method
