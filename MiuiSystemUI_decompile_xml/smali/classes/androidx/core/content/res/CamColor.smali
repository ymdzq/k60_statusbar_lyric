.class public final Landroidx/core/content/res/CamColor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAstar:F

.field public final mBstar:F

.field public final mChroma:F

.field public final mHue:F

.field public final mJ:F

.field public final mJstar:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/core/content/res/CamColor;->mHue:F

    .line 5
    iput p2, p0, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 7
    iput p3, p0, Landroidx/core/content/res/CamColor;->mJ:F

    .line 9
    iput p4, p0, Landroidx/core/content/res/CamColor;->mJstar:F

    .line 11
    iput p5, p0, Landroidx/core/content/res/CamColor;->mAstar:F

    .line 13
    iput p6, p0, Landroidx/core/content/res/CamColor;->mBstar:F

    .line 15
    return-void
    .line 17
.end method

.method public static fromColor(I)Landroidx/core/content/res/CamColor;
    .locals 21

    .line 1
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 2
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    .line 4
    move-result v1

    .line 7
    invoke-static {v1}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    .line 8
    move-result v1

    .line 11
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    .line 12
    move-result v2

    .line 15
    invoke-static {v2}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    .line 16
    move-result v2

    .line 19
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    .line 20
    move-result v3

    .line 23
    invoke-static {v3}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    .line 24
    move-result v3

    .line 27
    sget-object v4, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    .line 28
    const/4 v5, 0x0

    .line 30
    aget-object v6, v4, v5

    .line 31
    aget v7, v6, v5

    .line 33
    mul-float/2addr v7, v1

    .line 35
    const/4 v8, 0x1

    .line 36
    aget v9, v6, v8

    .line 37
    mul-float/2addr v9, v2

    .line 39
    add-float/2addr v9, v7

    .line 40
    const/4 v7, 0x2

    .line 41
    aget v6, v6, v7

    .line 42
    mul-float/2addr v6, v3

    .line 44
    add-float/2addr v6, v9

    .line 45
    aget-object v9, v4, v8

    .line 46
    aget v10, v9, v5

    .line 48
    mul-float/2addr v10, v1

    .line 50
    aget v11, v9, v8

    .line 51
    mul-float/2addr v11, v2

    .line 53
    add-float/2addr v11, v10

    .line 54
    aget v9, v9, v7

    .line 55
    mul-float/2addr v9, v3

    .line 57
    add-float/2addr v9, v11

    .line 58
    aget-object v4, v4, v7

    .line 59
    aget v10, v4, v5

    .line 61
    mul-float/2addr v1, v10

    .line 63
    aget v10, v4, v8

    .line 64
    mul-float/2addr v2, v10

    .line 66
    add-float/2addr v2, v1

    .line 67
    aget v1, v4, v7

    .line 68
    mul-float/2addr v3, v1

    .line 70
    add-float/2addr v3, v2

    .line 71
    sget-object v1, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 72
    aget-object v2, v1, v5

    .line 74
    aget v4, v2, v5

    .line 76
    mul-float/2addr v4, v6

    .line 78
    aget v10, v2, v8

    .line 79
    mul-float/2addr v10, v9

    .line 81
    add-float/2addr v10, v4

    .line 82
    aget v2, v2, v7

    .line 83
    mul-float/2addr v2, v3

    .line 85
    add-float/2addr v2, v10

    .line 86
    aget-object v4, v1, v8

    .line 87
    aget v10, v4, v5

    .line 89
    mul-float/2addr v10, v6

    .line 91
    aget v11, v4, v8

    .line 92
    mul-float/2addr v11, v9

    .line 94
    add-float/2addr v11, v10

    .line 95
    aget v4, v4, v7

    .line 96
    mul-float/2addr v4, v3

    .line 98
    add-float/2addr v4, v11

    .line 99
    aget-object v1, v1, v7

    .line 100
    aget v10, v1, v5

    .line 102
    mul-float/2addr v6, v10

    .line 104
    aget v10, v1, v8

    .line 105
    mul-float/2addr v9, v10

    .line 107
    add-float/2addr v9, v6

    .line 108
    aget v1, v1, v7

    .line 109
    mul-float/2addr v3, v1

    .line 111
    add-float/2addr v3, v9

    .line 112
    iget-object v1, v0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    .line 113
    aget v5, v1, v5

    .line 115
    mul-float/2addr v5, v2

    .line 117
    aget v2, v1, v8

    .line 118
    mul-float/2addr v2, v4

    .line 120
    aget v1, v1, v7

    .line 121
    mul-float/2addr v1, v3

    .line 123
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 124
    move-result v3

    .line 127
    iget v4, v0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    .line 128
    mul-float/2addr v3, v4

    .line 130
    float-to-double v6, v3

    .line 131
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 132
    div-double/2addr v6, v8

    .line 134
    const-wide v10, 0x3fdae147ae147ae1L    # 0.42

    .line 135
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 140
    move-result-wide v6

    .line 143
    double-to-float v3, v6

    .line 144
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 145
    move-result v6

    .line 148
    mul-float/2addr v6, v4

    .line 149
    float-to-double v6, v6

    .line 150
    div-double/2addr v6, v8

    .line 151
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 152
    move-result-wide v6

    .line 155
    double-to-float v6, v6

    .line 156
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 157
    move-result v7

    .line 160
    mul-float/2addr v7, v4

    .line 161
    float-to-double v12, v7

    .line 162
    div-double/2addr v12, v8

    .line 163
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 164
    move-result-wide v10

    .line 167
    double-to-float v4, v10

    .line 168
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 169
    move-result v5

    .line 172
    const/high16 v7, 0x43c80000    # 400.0f

    .line 173
    mul-float/2addr v5, v7

    .line 175
    mul-float/2addr v5, v3

    .line 176
    const v10, 0x41d90a3d    # 27.13f

    .line 177
    add-float/2addr v3, v10

    .line 180
    div-float/2addr v5, v3

    .line 181
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 182
    move-result v2

    .line 185
    mul-float/2addr v2, v7

    .line 186
    mul-float/2addr v2, v6

    .line 187
    add-float/2addr v6, v10

    .line 188
    div-float/2addr v2, v6

    .line 189
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 190
    move-result v1

    .line 193
    mul-float/2addr v1, v7

    .line 194
    mul-float/2addr v1, v4

    .line 195
    add-float/2addr v4, v10

    .line 196
    div-float/2addr v1, v4

    .line 197
    const-wide/high16 v3, 0x4026000000000000L    # 11.0

    .line 198
    float-to-double v6, v5

    .line 200
    mul-double/2addr v6, v3

    .line 201
    const-wide/high16 v3, -0x3fd8000000000000L    # -12.0

    .line 202
    float-to-double v10, v2

    .line 204
    mul-double/2addr v10, v3

    .line 205
    add-double/2addr v10, v6

    .line 206
    float-to-double v3, v1

    .line 207
    add-double/2addr v10, v3

    .line 208
    double-to-float v6, v10

    .line 209
    const/high16 v7, 0x41300000    # 11.0f

    .line 210
    div-float/2addr v6, v7

    .line 212
    add-float v7, v5, v2

    .line 213
    float-to-double v10, v7

    .line 215
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 216
    mul-double/2addr v3, v12

    .line 218
    sub-double/2addr v10, v3

    .line 219
    double-to-float v3, v10

    .line 220
    const/high16 v4, 0x41100000    # 9.0f

    .line 221
    div-float/2addr v3, v4

    .line 223
    const/high16 v4, 0x41a00000    # 20.0f

    .line 224
    mul-float v7, v5, v4

    .line 226
    mul-float/2addr v2, v4

    .line 228
    add-float/2addr v7, v2

    .line 229
    const/high16 v10, 0x41a80000    # 21.0f

    .line 230
    mul-float/2addr v10, v1

    .line 232
    add-float/2addr v10, v7

    .line 233
    div-float/2addr v10, v4

    .line 234
    const/high16 v7, 0x42200000    # 40.0f

    .line 235
    mul-float/2addr v5, v7

    .line 237
    add-float/2addr v5, v2

    .line 238
    add-float/2addr v5, v1

    .line 239
    div-float/2addr v5, v4

    .line 240
    float-to-double v1, v3

    .line 241
    float-to-double v14, v6

    .line 242
    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    .line 243
    move-result-wide v1

    .line 246
    double-to-float v1, v1

    .line 247
    const/high16 v2, 0x43340000    # 180.0f

    .line 248
    mul-float/2addr v1, v2

    .line 250
    const v4, 0x40490fdb    # (float)Math.PI

    .line 251
    div-float/2addr v1, v4

    .line 254
    const/4 v7, 0x0

    .line 255
    cmpg-float v7, v1, v7

    .line 256
    const/high16 v11, 0x43b40000    # 360.0f

    .line 258
    if-gez v7, :cond_0

    .line 260
    add-float/2addr v1, v11

    .line 262
    goto :goto_0

    .line 263
    :cond_0
    cmpl-float v7, v1, v11

    .line 264
    if-ltz v7, :cond_1

    .line 266
    sub-float/2addr v1, v11

    .line 268
    :cond_1
    :goto_0
    move v15, v1

    .line 269
    mul-float/2addr v4, v15

    .line 270
    div-float/2addr v4, v2

    .line 271
    iget v1, v0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    .line 272
    mul-float/2addr v5, v1

    .line 274
    iget v1, v0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    .line 275
    div-float/2addr v5, v1

    .line 277
    float-to-double v8, v5

    .line 278
    iget v2, v0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    .line 279
    iget v5, v0, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 281
    mul-float/2addr v2, v5

    .line 283
    float-to-double v12, v2

    .line 284
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 285
    move-result-wide v7

    .line 288
    double-to-float v2, v7

    .line 289
    const/high16 v7, 0x42c80000    # 100.0f

    .line 290
    mul-float/2addr v2, v7

    .line 292
    div-float v7, v2, v7

    .line 293
    float-to-double v7, v7

    .line 295
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 296
    const/high16 v7, 0x40800000    # 4.0f

    .line 299
    add-float/2addr v1, v7

    .line 301
    float-to-double v7, v15

    .line 302
    const-wide v12, 0x403423d70a3d70a4L    # 20.14

    .line 303
    cmpg-double v7, v7, v12

    .line 308
    if-gez v7, :cond_2

    .line 310
    add-float/2addr v11, v15

    .line 312
    goto :goto_1

    .line 313
    :cond_2
    move v11, v15

    .line 314
    :goto_1
    float-to-double v7, v11

    .line 315
    const-wide v11, 0x400921fb54442d18L    # Math.PI

    .line 316
    mul-double/2addr v7, v11

    .line 321
    const-wide v11, 0x4066800000000000L    # 180.0

    .line 322
    div-double/2addr v7, v11

    .line 327
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 328
    add-double/2addr v7, v11

    .line 330
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 331
    move-result-wide v7

    .line 334
    const-wide v11, 0x400e666666666666L    # 3.8

    .line 335
    add-double/2addr v7, v11

    .line 340
    double-to-float v7, v7

    .line 341
    const/high16 v8, 0x3e800000    # 0.25f

    .line 342
    mul-float/2addr v7, v8

    .line 344
    const v8, 0x45706276

    .line 345
    mul-float/2addr v7, v8

    .line 348
    iget v8, v0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    .line 349
    mul-float/2addr v7, v8

    .line 351
    iget v8, v0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    .line 352
    mul-float/2addr v7, v8

    .line 354
    mul-float/2addr v6, v6

    .line 355
    mul-float/2addr v3, v3

    .line 356
    add-float/2addr v3, v6

    .line 357
    float-to-double v8, v3

    .line 358
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 359
    move-result-wide v8

    .line 362
    double-to-float v3, v8

    .line 363
    mul-float/2addr v7, v3

    .line 364
    const v3, 0x3e9c28f6    # 0.305f

    .line 365
    add-float/2addr v10, v3

    .line 368
    div-float/2addr v7, v10

    .line 369
    iget v3, v0, Landroidx/core/content/res/ViewingConditions;->mN:F

    .line 370
    float-to-double v8, v3

    .line 372
    const-wide v10, 0x3fd28f5c28f5c28fL    # 0.29

    .line 373
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 378
    move-result-wide v8

    .line 381
    const-wide v10, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 382
    sub-double/2addr v10, v8

    .line 387
    const-wide v8, 0x3fe75c28f5c28f5cL    # 0.73

    .line 388
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 393
    move-result-wide v8

    .line 396
    double-to-float v3, v8

    .line 397
    float-to-double v6, v7

    .line 398
    const-wide v8, 0x3feccccccccccccdL    # 0.9

    .line 399
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 404
    move-result-wide v6

    .line 407
    double-to-float v6, v6

    .line 408
    mul-float/2addr v3, v6

    .line 409
    float-to-double v6, v2

    .line 410
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 411
    div-double/2addr v6, v8

    .line 413
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 414
    move-result-wide v6

    .line 417
    double-to-float v6, v6

    .line 418
    mul-float v16, v6, v3

    .line 419
    iget v0, v0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    .line 421
    mul-float v0, v0, v16

    .line 423
    mul-float/2addr v3, v5

    .line 425
    div-float/2addr v3, v1

    .line 426
    float-to-double v5, v3

    .line 427
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 428
    const v1, 0x3fd9999a    # 1.7f

    .line 431
    mul-float/2addr v1, v2

    .line 434
    const v3, 0x3be56042    # 0.007f

    .line 435
    mul-float/2addr v3, v2

    .line 438
    const/high16 v5, 0x3f800000    # 1.0f

    .line 439
    add-float/2addr v3, v5

    .line 441
    div-float v18, v1, v3

    .line 442
    const v1, 0x3cbac711    # 0.0228f

    .line 444
    mul-float/2addr v0, v1

    .line 447
    add-float/2addr v0, v5

    .line 448
    float-to-double v0, v0

    .line 449
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 450
    move-result-wide v0

    .line 453
    double-to-float v0, v0

    .line 454
    const v1, 0x422f7048

    .line 455
    mul-float/2addr v0, v1

    .line 458
    float-to-double v3, v4

    .line 459
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 460
    move-result-wide v5

    .line 463
    double-to-float v1, v5

    .line 464
    mul-float v19, v1, v0

    .line 465
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 467
    move-result-wide v3

    .line 470
    double-to-float v1, v3

    .line 471
    mul-float v20, v0, v1

    .line 472
    new-instance v0, Landroidx/core/content/res/CamColor;

    .line 474
    move-object v14, v0

    .line 476
    move/from16 v17, v2

    .line 477
    invoke-direct/range {v14 .. v20}, Landroidx/core/content/res/CamColor;-><init>(FFFFFF)V

    .line 479
    return-object v0
    .line 482
.end method

.method public static fromJch(FFF)Landroidx/core/content/res/CamColor;
    .locals 12

    .line 1
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 2
    iget v1, v0, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 4
    float-to-double v1, p0

    .line 6
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 7
    div-double/2addr v1, v3

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 10
    iget v3, v0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    .line 13
    const/high16 v4, 0x40800000    # 4.0f

    .line 15
    add-float/2addr v3, v4

    .line 17
    iget v4, v0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    .line 18
    mul-float/2addr v4, p1

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 21
    move-result-wide v1

    .line 24
    double-to-float v1, v1

    .line 25
    div-float v1, p1, v1

    .line 26
    iget v0, v0, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 28
    mul-float/2addr v1, v0

    .line 30
    div-float/2addr v1, v3

    .line 31
    float-to-double v0, v1

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 33
    const v0, 0x40490fdb    # (float)Math.PI

    .line 36
    mul-float/2addr v0, p2

    .line 39
    const/high16 v1, 0x43340000    # 180.0f

    .line 40
    div-float/2addr v0, v1

    .line 42
    const v1, 0x3fd9999a    # 1.7f

    .line 43
    mul-float/2addr v1, p0

    .line 46
    const v2, 0x3be56042    # 0.007f

    .line 47
    mul-float/2addr v2, p0

    .line 50
    const/high16 v3, 0x3f800000    # 1.0f

    .line 51
    add-float/2addr v2, v3

    .line 53
    div-float v9, v1, v2

    .line 54
    const-wide v1, 0x3f9758e219652bd4L    # 0.0228

    .line 56
    float-to-double v3, v4

    .line 61
    mul-double/2addr v3, v1

    .line 62
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 63
    add-double/2addr v3, v1

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    .line 66
    move-result-wide v1

    .line 69
    double-to-float v1, v1

    .line 70
    const v2, 0x422f7048

    .line 71
    mul-float/2addr v1, v2

    .line 74
    float-to-double v2, v0

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 76
    move-result-wide v4

    .line 79
    double-to-float v0, v4

    .line 80
    mul-float v10, v1, v0

    .line 81
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 83
    move-result-wide v2

    .line 86
    double-to-float v0, v2

    .line 87
    mul-float v11, v1, v0

    .line 88
    new-instance v0, Landroidx/core/content/res/CamColor;

    .line 90
    move-object v5, v0

    .line 92
    move v6, p2

    .line 93
    move v7, p1

    .line 94
    move v8, p0

    .line 95
    invoke-direct/range {v5 .. v11}, Landroidx/core/content/res/CamColor;-><init>(FFFFFF)V

    .line 96
    return-object v0
    .line 99
.end method


# virtual methods
.method public final viewed(Landroidx/core/content/res/ViewingConditions;)I
    .locals 13

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 2
    float-to-double v1, v0

    .line 4
    const-wide/16 v3, 0x0

    .line 5
    cmpl-double v1, v1, v3

    .line 7
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 9
    iget v2, p0, Landroidx/core/content/res/CamColor;->mJ:F

    .line 11
    if-eqz v1, :cond_1

    .line 13
    float-to-double v7, v2

    .line 15
    cmpl-double v1, v7, v3

    .line 16
    if-nez v1, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    div-double/2addr v7, v5

    .line 21
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 22
    move-result-wide v7

    .line 25
    double-to-float v1, v7

    .line 26
    div-float/2addr v0, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 29
    :goto_1
    float-to-double v0, v0

    .line 30
    iget v7, p1, Landroidx/core/content/res/ViewingConditions;->mN:F

    .line 31
    float-to-double v7, v7

    .line 33
    const-wide v9, 0x3fd28f5c28f5c28fL    # 0.29

    .line 34
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 39
    move-result-wide v7

    .line 42
    const-wide v9, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 43
    sub-double/2addr v9, v7

    .line 48
    const-wide v7, 0x3fe75c28f5c28f5cL    # 0.73

    .line 49
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 54
    move-result-wide v7

    .line 57
    div-double/2addr v0, v7

    .line 58
    const-wide v7, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    .line 59
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 64
    move-result-wide v0

    .line 67
    double-to-float v0, v0

    .line 68
    const v1, 0x40490fdb    # (float)Math.PI

    .line 69
    iget p0, p0, Landroidx/core/content/res/CamColor;->mHue:F

    .line 72
    mul-float/2addr p0, v1

    .line 74
    const/high16 v1, 0x43340000    # 180.0f

    .line 75
    div-float/2addr p0, v1

    .line 77
    float-to-double v7, p0

    .line 78
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 79
    add-double/2addr v9, v7

    .line 81
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 82
    move-result-wide v9

    .line 85
    const-wide v11, 0x400e666666666666L    # 3.8

    .line 86
    add-double/2addr v9, v11

    .line 91
    double-to-float p0, v9

    .line 92
    const/high16 v1, 0x3e800000    # 0.25f

    .line 93
    mul-float/2addr p0, v1

    .line 95
    float-to-double v1, v2

    .line 96
    div-double/2addr v1, v5

    .line 97
    iget v5, p1, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 98
    float-to-double v5, v5

    .line 100
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 101
    div-double/2addr v9, v5

    .line 103
    iget v5, p1, Landroidx/core/content/res/ViewingConditions;->mZ:F

    .line 104
    float-to-double v5, v5

    .line 106
    div-double/2addr v9, v5

    .line 107
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 108
    move-result-wide v1

    .line 111
    double-to-float v1, v1

    .line 112
    iget v2, p1, Landroidx/core/content/res/ViewingConditions;->mAw:F

    .line 113
    mul-float/2addr v2, v1

    .line 115
    const v1, 0x45706276

    .line 116
    mul-float/2addr p0, v1

    .line 119
    iget v1, p1, Landroidx/core/content/res/ViewingConditions;->mNc:F

    .line 120
    mul-float/2addr p0, v1

    .line 122
    iget v1, p1, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    .line 123
    mul-float/2addr p0, v1

    .line 125
    iget v1, p1, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    .line 126
    div-float/2addr v2, v1

    .line 128
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 129
    move-result-wide v5

    .line 132
    double-to-float v1, v5

    .line 133
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 134
    move-result-wide v5

    .line 137
    double-to-float v5, v5

    .line 138
    const v6, 0x3e9c28f6    # 0.305f

    .line 139
    add-float/2addr v6, v2

    .line 142
    const/high16 v7, 0x41b80000    # 23.0f

    .line 143
    mul-float/2addr v6, v7

    .line 145
    mul-float/2addr v6, v0

    .line 146
    mul-float/2addr p0, v7

    .line 147
    const/high16 v7, 0x41300000    # 11.0f

    .line 148
    invoke-static {v0, v7, v5, p0}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 150
    move-result p0

    .line 153
    const/high16 v7, 0x42d80000    # 108.0f

    .line 154
    mul-float/2addr v0, v7

    .line 156
    mul-float/2addr v0, v1

    .line 157
    add-float/2addr v0, p0

    .line 158
    div-float/2addr v6, v0

    .line 159
    mul-float/2addr v5, v6

    .line 160
    mul-float/2addr v6, v1

    .line 161
    const/high16 p0, 0x43e60000    # 460.0f

    .line 162
    mul-float/2addr v2, p0

    .line 164
    const p0, 0x43e18000    # 451.0f

    .line 165
    mul-float/2addr p0, v5

    .line 168
    add-float/2addr p0, v2

    .line 169
    const/high16 v0, 0x43900000    # 288.0f

    .line 170
    mul-float/2addr v0, v6

    .line 172
    add-float/2addr v0, p0

    .line 173
    const p0, 0x44af6000    # 1403.0f

    .line 174
    div-float/2addr v0, p0

    .line 177
    const v1, 0x445ec000    # 891.0f

    .line 178
    mul-float/2addr v1, v5

    .line 181
    sub-float v1, v2, v1

    .line 182
    const v7, 0x43828000    # 261.0f

    .line 184
    invoke-static {v6, v7, v1, p0}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 187
    move-result v1

    .line 190
    const/high16 v7, 0x435c0000    # 220.0f

    .line 191
    mul-float/2addr v5, v7

    .line 193
    sub-float/2addr v2, v5

    .line 194
    const v5, 0x45c4e000    # 6300.0f

    .line 195
    invoke-static {v6, v5, v2, p0}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 198
    move-result p0

    .line 201
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 202
    move-result v2

    .line 205
    float-to-double v5, v2

    .line 206
    const-wide v7, 0x403b2147ae147ae1L    # 27.13

    .line 207
    mul-double/2addr v5, v7

    .line 212
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 213
    move-result v2

    .line 216
    float-to-double v9, v2

    .line 217
    const-wide/high16 v11, 0x4079000000000000L    # 400.0

    .line 218
    sub-double v9, v11, v9

    .line 220
    div-double/2addr v5, v9

    .line 222
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    .line 223
    move-result-wide v2

    .line 226
    double-to-float v2, v2

    .line 227
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 228
    move-result v0

    .line 231
    const/high16 v3, 0x42c80000    # 100.0f

    .line 232
    iget v4, p1, Landroidx/core/content/res/ViewingConditions;->mFl:F

    .line 234
    div-float/2addr v3, v4

    .line 236
    mul-float/2addr v0, v3

    .line 237
    float-to-double v4, v2

    .line 238
    const-wide v9, 0x40030c30c30c30c3L    # 2.380952380952381

    .line 239
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 244
    move-result-wide v4

    .line 247
    double-to-float v2, v4

    .line 248
    mul-float/2addr v0, v2

    .line 249
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 250
    move-result v2

    .line 253
    float-to-double v4, v2

    .line 254
    mul-double/2addr v4, v7

    .line 255
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 256
    move-result v2

    .line 259
    float-to-double v6, v2

    .line 260
    sub-double v6, v11, v6

    .line 261
    div-double/2addr v4, v6

    .line 263
    const-wide/16 v6, 0x0

    .line 264
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    .line 266
    move-result-wide v4

    .line 269
    double-to-float v2, v4

    .line 270
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 271
    move-result v1

    .line 274
    mul-float/2addr v1, v3

    .line 275
    float-to-double v4, v2

    .line 276
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 277
    move-result-wide v4

    .line 280
    double-to-float v2, v4

    .line 281
    mul-float/2addr v1, v2

    .line 282
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 283
    move-result v2

    .line 286
    float-to-double v4, v2

    .line 287
    const-wide v6, 0x403b2147ae147ae1L    # 27.13

    .line 288
    mul-double/2addr v4, v6

    .line 293
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 294
    move-result v2

    .line 297
    float-to-double v6, v2

    .line 298
    sub-double/2addr v11, v6

    .line 299
    div-double/2addr v4, v11

    .line 300
    const-wide/16 v6, 0x0

    .line 301
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    .line 303
    move-result-wide v4

    .line 306
    double-to-float v2, v4

    .line 307
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    .line 308
    move-result p0

    .line 311
    mul-float/2addr p0, v3

    .line 312
    float-to-double v2, v2

    .line 313
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 314
    move-result-wide v2

    .line 317
    double-to-float v2, v2

    .line 318
    mul-float/2addr p0, v2

    .line 319
    iget-object p1, p1, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    .line 320
    const/4 v2, 0x0

    .line 322
    aget v3, p1, v2

    .line 323
    div-float/2addr v0, v3

    .line 325
    const/4 v3, 0x1

    .line 326
    aget v4, p1, v3

    .line 327
    div-float/2addr v1, v4

    .line 329
    const/4 v4, 0x2

    .line 330
    aget p1, p1, v4

    .line 331
    div-float/2addr p0, p1

    .line 333
    sget-object p1, Landroidx/core/content/res/CamUtils;->CAM16RGB_TO_XYZ:[[F

    .line 334
    aget-object v5, p1, v2

    .line 336
    aget v6, v5, v2

    .line 338
    mul-float/2addr v6, v0

    .line 340
    aget v7, v5, v3

    .line 341
    mul-float/2addr v7, v1

    .line 343
    add-float/2addr v7, v6

    .line 344
    aget v5, v5, v4

    .line 345
    mul-float/2addr v5, p0

    .line 347
    add-float/2addr v5, v7

    .line 348
    aget-object v6, p1, v3

    .line 349
    aget v7, v6, v2

    .line 351
    mul-float/2addr v7, v0

    .line 353
    aget v8, v6, v3

    .line 354
    mul-float/2addr v8, v1

    .line 356
    add-float/2addr v8, v7

    .line 357
    aget v6, v6, v4

    .line 358
    mul-float/2addr v6, p0

    .line 360
    add-float/2addr v6, v8

    .line 361
    aget-object p1, p1, v4

    .line 362
    aget v2, p1, v2

    .line 364
    mul-float/2addr v0, v2

    .line 366
    aget v2, p1, v3

    .line 367
    mul-float/2addr v1, v2

    .line 369
    add-float/2addr v1, v0

    .line 370
    aget p1, p1, v4

    .line 371
    mul-float/2addr p0, p1

    .line 373
    add-float/2addr p0, v1

    .line 374
    float-to-double v7, v5

    .line 375
    float-to-double v9, v6

    .line 376
    float-to-double v11, p0

    .line 377
    invoke-static/range {v7 .. v12}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    .line 378
    move-result p0

    .line 381
    return p0
    .line 382
.end method
