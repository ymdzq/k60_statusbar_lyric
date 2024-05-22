.class public Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBounds:Landroid/graphics/Rect;

.field public mColor:I

.field public final mPaint:Landroid/graphics/Paint;

.field public mPath:Landroid/graphics/Path;

.field public final mPathProvider:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;

.field public mRadii:[F

.field public mRadius:F

.field public mSmooth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mBounds:Landroid/graphics/Rect;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mPath:Landroid/graphics/Path;

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    .line 15
    const/4 v1, 0x1

    .line 17
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 18
    iput-object v0, p0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;

    .line 23
    invoke-direct {v0}, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mPathProvider:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;

    .line 28
    return-void
    .line 30
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mPath:Landroid/graphics/Path;

    .line 4
    if-nez v1, :cond_14

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v1

    .line 11
    iget v2, v0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mSmooth:F

    .line 12
    iget-object v3, v0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mRadii:[F

    .line 14
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x3

    .line 18
    const/4 v7, 0x2

    .line 19
    if-nez v3, :cond_0

    .line 20
    iget-object v8, v0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mPathProvider:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;

    .line 22
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 24
    move-result v9

    .line 27
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 28
    move-result v10

    .line 31
    iget v1, v0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mRadius:F

    .line 32
    float-to-double v12, v2

    .line 34
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    const/16 v2, 0x8

    .line 38
    new-array v11, v2, [F

    .line 40
    aput v1, v11, v4

    .line 42
    aput v1, v11, v5

    .line 44
    aput v1, v11, v7

    .line 46
    aput v1, v11, v6

    .line 48
    const/4 v2, 0x4

    .line 50
    aput v1, v11, v2

    .line 51
    const/4 v2, 0x5

    .line 53
    aput v1, v11, v2

    .line 54
    const/4 v2, 0x6

    .line 56
    aput v1, v11, v2

    .line 57
    const/4 v2, 0x7

    .line 59
    aput v1, v11, v2

    .line 60
    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->buildSmoothData(II[FD)V

    .line 62
    goto :goto_0

    .line 65
    :cond_0
    iget-object v14, v0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mPathProvider:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;

    .line 66
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 68
    move-result v15

    .line 71
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 72
    move-result v16

    .line 75
    iget-object v1, v0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mRadii:[F

    .line 76
    float-to-double v2, v2

    .line 78
    move-object/from16 v17, v1

    .line 79
    move-wide/from16 v18, v2

    .line 81
    invoke-virtual/range {v14 .. v19}, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->buildSmoothData(II[FD)V

    .line 83
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mPathProvider:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;

    .line 86
    iget-object v2, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 88
    iget-object v3, v2, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 90
    if-eqz v3, :cond_2

    .line 92
    iget-object v3, v2, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 94
    if-eqz v3, :cond_2

    .line 96
    iget-object v3, v2, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 98
    if-eqz v3, :cond_2

    .line 100
    iget-object v2, v2, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 102
    if-nez v2, :cond_1

    .line 104
    goto :goto_1

    .line 106
    :cond_1
    move v2, v4

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    :goto_1
    move v2, v5

    .line 109
    :goto_2
    if-eqz v2, :cond_3

    .line 110
    new-instance v2, Landroid/graphics/Path;

    .line 112
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 114
    new-instance v3, Landroid/graphics/RectF;

    .line 117
    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 119
    iget v4, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->width:I

    .line 121
    int-to-float v4, v4

    .line 123
    iget v1, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->height:I

    .line 124
    int-to-float v1, v1

    .line 126
    const/4 v5, 0x0

    .line 127
    invoke-direct {v3, v5, v5, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 128
    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 131
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 133
    goto/16 :goto_7

    .line 136
    :cond_3
    new-instance v2, Landroid/graphics/Path;

    .line 138
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 140
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 143
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 146
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 148
    iget-object v8, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    .line 150
    const-wide v9, 0x400921fb54442d18L    # Math.PI

    .line 152
    iget-wide v11, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->thetaForVertical:D

    .line 157
    add-double/2addr v11, v9

    .line 159
    invoke-static {v11, v12}, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->radToAngle(D)D

    .line 160
    move-result-wide v9

    .line 163
    double-to-float v3, v9

    .line 164
    iget-object v9, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 165
    iget-object v9, v9, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 167
    iget v9, v9, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->swapAngle:F

    .line 169
    invoke-virtual {v2, v8, v3, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 171
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 174
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 176
    iget-wide v8, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    .line 178
    const-wide/16 v15, 0x0

    .line 180
    cmpl-double v8, v8, v15

    .line 182
    if-eqz v8, :cond_4

    .line 184
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    .line 186
    aget-object v8, v3, v5

    .line 188
    iget v9, v8, Landroid/graphics/PointF;->x:F

    .line 190
    iget v10, v8, Landroid/graphics/PointF;->y:F

    .line 192
    aget-object v8, v3, v7

    .line 194
    iget v11, v8, Landroid/graphics/PointF;->x:F

    .line 196
    iget v12, v8, Landroid/graphics/PointF;->y:F

    .line 198
    aget-object v3, v3, v6

    .line 200
    iget v13, v3, Landroid/graphics/PointF;->x:F

    .line 202
    iget v14, v3, Landroid/graphics/PointF;->y:F

    .line 204
    move-object v8, v2

    .line 206
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 207
    :cond_4
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 210
    iget v8, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->width:I

    .line 212
    iget-object v9, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 214
    iget v9, v9, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 216
    iget-object v10, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 218
    iget v11, v10, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 220
    int-to-double v12, v8

    .line 222
    add-float/2addr v9, v11

    .line 223
    float-to-double v8, v9

    .line 224
    iget-wide v6, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->smooth:D

    .line 225
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 227
    add-double v6, v6, v19

    .line 229
    mul-double/2addr v6, v8

    .line 231
    cmpg-double v3, v12, v6

    .line 232
    if-gtz v3, :cond_5

    .line 234
    move v3, v5

    .line 236
    goto :goto_3

    .line 237
    :cond_5
    move v3, v4

    .line 238
    :goto_3
    if-nez v3, :cond_6

    .line 239
    iget-object v3, v10, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    .line 241
    aget-object v3, v3, v4

    .line 243
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 245
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 247
    invoke-virtual {v2, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 249
    :cond_6
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 252
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 254
    iget-wide v6, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    .line 256
    cmpl-double v6, v6, v15

    .line 258
    if-eqz v6, :cond_7

    .line 260
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    .line 262
    aget-object v6, v3, v5

    .line 264
    iget v9, v6, Landroid/graphics/PointF;->x:F

    .line 266
    iget v10, v6, Landroid/graphics/PointF;->y:F

    .line 268
    const/4 v6, 0x2

    .line 270
    aget-object v7, v3, v6

    .line 271
    iget v11, v7, Landroid/graphics/PointF;->x:F

    .line 273
    iget v12, v7, Landroid/graphics/PointF;->y:F

    .line 275
    const/4 v6, 0x3

    .line 277
    aget-object v3, v3, v6

    .line 278
    iget v13, v3, Landroid/graphics/PointF;->x:F

    .line 280
    iget v14, v3, Landroid/graphics/PointF;->y:F

    .line 282
    move-object v8, v2

    .line 284
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 285
    :cond_7
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 288
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 290
    iget-object v6, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    .line 292
    const-wide v7, 0x4012d97c7f3321d2L    # 4.71238898038469

    .line 294
    iget-wide v9, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    .line 299
    add-double/2addr v9, v7

    .line 301
    invoke-static {v9, v10}, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->radToAngle(D)D

    .line 302
    move-result-wide v7

    .line 305
    double-to-float v3, v7

    .line 306
    iget-object v7, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 307
    iget-object v7, v7, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 309
    iget v7, v7, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->swapAngle:F

    .line 311
    invoke-virtual {v2, v6, v3, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 313
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 316
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 318
    iget-wide v6, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->smoothForVertical:D

    .line 320
    cmpl-double v6, v6, v15

    .line 322
    if-eqz v6, :cond_8

    .line 324
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    .line 326
    aget-object v6, v3, v5

    .line 328
    iget v9, v6, Landroid/graphics/PointF;->x:F

    .line 330
    iget v10, v6, Landroid/graphics/PointF;->y:F

    .line 332
    const/4 v6, 0x2

    .line 334
    aget-object v7, v3, v6

    .line 335
    iget v11, v7, Landroid/graphics/PointF;->x:F

    .line 337
    iget v12, v7, Landroid/graphics/PointF;->y:F

    .line 339
    const/4 v6, 0x3

    .line 341
    aget-object v3, v3, v6

    .line 342
    iget v13, v3, Landroid/graphics/PointF;->x:F

    .line 344
    iget v14, v3, Landroid/graphics/PointF;->y:F

    .line 346
    move-object v8, v2

    .line 348
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 349
    :cond_8
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 352
    iget v6, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->height:I

    .line 354
    iget-object v7, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 356
    iget v7, v7, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 358
    iget-object v8, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 360
    iget v9, v8, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 362
    int-to-double v10, v6

    .line 364
    add-float/2addr v7, v9

    .line 365
    float-to-double v6, v7

    .line 366
    iget-wide v12, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->smooth:D

    .line 367
    add-double v12, v12, v19

    .line 369
    mul-double/2addr v12, v6

    .line 371
    cmpg-double v3, v10, v12

    .line 372
    if-gtz v3, :cond_9

    .line 374
    move v3, v5

    .line 376
    goto :goto_4

    .line 377
    :cond_9
    move v3, v4

    .line 378
    :goto_4
    if-nez v3, :cond_a

    .line 379
    iget-object v3, v8, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    .line 381
    aget-object v3, v3, v4

    .line 383
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 385
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 387
    invoke-virtual {v2, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 389
    :cond_a
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 392
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 394
    iget-wide v6, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->smoothForVertical:D

    .line 396
    cmpl-double v6, v6, v15

    .line 398
    if-eqz v6, :cond_b

    .line 400
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    .line 402
    aget-object v6, v3, v5

    .line 404
    iget v9, v6, Landroid/graphics/PointF;->x:F

    .line 406
    iget v10, v6, Landroid/graphics/PointF;->y:F

    .line 408
    const/4 v6, 0x2

    .line 410
    aget-object v7, v3, v6

    .line 411
    iget v11, v7, Landroid/graphics/PointF;->x:F

    .line 413
    iget v12, v7, Landroid/graphics/PointF;->y:F

    .line 415
    const/4 v6, 0x3

    .line 417
    aget-object v3, v3, v6

    .line 418
    iget v13, v3, Landroid/graphics/PointF;->x:F

    .line 420
    iget v14, v3, Landroid/graphics/PointF;->y:F

    .line 422
    move-object v8, v2

    .line 424
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 425
    :cond_b
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 428
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 430
    iget-object v6, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    .line 432
    iget-wide v7, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->thetaForVertical:D

    .line 434
    invoke-static {v7, v8}, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->radToAngle(D)D

    .line 436
    move-result-wide v7

    .line 439
    double-to-float v3, v7

    .line 440
    iget-object v7, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 441
    iget-object v7, v7, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 443
    iget v7, v7, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->swapAngle:F

    .line 445
    invoke-virtual {v2, v6, v3, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 447
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 450
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 452
    iget-wide v6, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    .line 454
    cmpl-double v6, v6, v15

    .line 456
    if-eqz v6, :cond_c

    .line 458
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    .line 460
    aget-object v6, v3, v5

    .line 462
    iget v9, v6, Landroid/graphics/PointF;->x:F

    .line 464
    iget v10, v6, Landroid/graphics/PointF;->y:F

    .line 466
    const/4 v6, 0x2

    .line 468
    aget-object v7, v3, v6

    .line 469
    iget v11, v7, Landroid/graphics/PointF;->x:F

    .line 471
    iget v12, v7, Landroid/graphics/PointF;->y:F

    .line 473
    const/4 v6, 0x3

    .line 475
    aget-object v3, v3, v6

    .line 476
    iget v13, v3, Landroid/graphics/PointF;->x:F

    .line 478
    iget v14, v3, Landroid/graphics/PointF;->y:F

    .line 480
    move-object v8, v2

    .line 482
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 483
    :cond_c
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 486
    iget v6, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->width:I

    .line 488
    iget-object v7, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 490
    iget v7, v7, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 492
    iget-object v8, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 494
    iget v9, v8, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 496
    int-to-double v10, v6

    .line 498
    add-float/2addr v7, v9

    .line 499
    float-to-double v6, v7

    .line 500
    iget-wide v12, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->smooth:D

    .line 501
    add-double v12, v12, v19

    .line 503
    mul-double/2addr v12, v6

    .line 505
    cmpg-double v3, v10, v12

    .line 506
    if-gtz v3, :cond_d

    .line 508
    move v3, v5

    .line 510
    goto :goto_5

    .line 511
    :cond_d
    move v3, v4

    .line 512
    :goto_5
    if-nez v3, :cond_e

    .line 513
    iget-object v3, v8, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    .line 515
    aget-object v3, v3, v4

    .line 517
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 519
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 521
    invoke-virtual {v2, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 523
    :cond_e
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 526
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 528
    iget-wide v6, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    .line 530
    cmpl-double v6, v6, v15

    .line 532
    if-eqz v6, :cond_f

    .line 534
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    .line 536
    aget-object v6, v3, v5

    .line 538
    iget v9, v6, Landroid/graphics/PointF;->x:F

    .line 540
    iget v10, v6, Landroid/graphics/PointF;->y:F

    .line 542
    const/4 v6, 0x2

    .line 544
    aget-object v7, v3, v6

    .line 545
    iget v11, v7, Landroid/graphics/PointF;->x:F

    .line 547
    iget v12, v7, Landroid/graphics/PointF;->y:F

    .line 549
    const/4 v6, 0x3

    .line 551
    aget-object v3, v3, v6

    .line 552
    iget v13, v3, Landroid/graphics/PointF;->x:F

    .line 554
    iget v14, v3, Landroid/graphics/PointF;->y:F

    .line 556
    move-object v8, v2

    .line 558
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 559
    :cond_f
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 562
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 564
    iget-object v6, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    .line 566
    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 568
    iget-wide v9, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    .line 573
    add-double/2addr v9, v7

    .line 575
    invoke-static {v9, v10}, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->radToAngle(D)D

    .line 576
    move-result-wide v7

    .line 579
    double-to-float v3, v7

    .line 580
    iget-object v7, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 581
    iget-object v7, v7, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 583
    iget v7, v7, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->swapAngle:F

    .line 585
    invoke-virtual {v2, v6, v3, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 587
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 590
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 592
    iget-wide v6, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->smoothForVertical:D

    .line 594
    cmpl-double v6, v6, v15

    .line 596
    if-eqz v6, :cond_10

    .line 598
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    .line 600
    aget-object v6, v3, v5

    .line 602
    iget v9, v6, Landroid/graphics/PointF;->x:F

    .line 604
    iget v10, v6, Landroid/graphics/PointF;->y:F

    .line 606
    const/4 v6, 0x2

    .line 608
    aget-object v7, v3, v6

    .line 609
    iget v11, v7, Landroid/graphics/PointF;->x:F

    .line 611
    iget v12, v7, Landroid/graphics/PointF;->y:F

    .line 613
    const/4 v6, 0x3

    .line 615
    aget-object v3, v3, v6

    .line 616
    iget v13, v3, Landroid/graphics/PointF;->x:F

    .line 618
    iget v14, v3, Landroid/graphics/PointF;->y:F

    .line 620
    move-object v8, v2

    .line 622
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 623
    :cond_10
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 626
    iget v6, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->height:I

    .line 628
    iget-object v7, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 630
    iget v7, v7, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 632
    iget-object v8, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 634
    iget v9, v8, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->radius:F

    .line 636
    int-to-double v10, v6

    .line 638
    add-float/2addr v7, v9

    .line 639
    float-to-double v6, v7

    .line 640
    iget-wide v12, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->smooth:D

    .line 641
    add-double v12, v12, v19

    .line 643
    mul-double/2addr v12, v6

    .line 645
    cmpg-double v3, v10, v12

    .line 646
    if-gtz v3, :cond_11

    .line 648
    move v3, v5

    .line 650
    goto :goto_6

    .line 651
    :cond_11
    move v3, v4

    .line 652
    :goto_6
    if-nez v3, :cond_12

    .line 653
    iget-object v3, v8, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    .line 655
    aget-object v3, v3, v4

    .line 657
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 659
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 661
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 663
    :cond_12
    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 666
    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 668
    iget-wide v3, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->smoothForVertical:D

    .line 670
    cmpl-double v3, v3, v15

    .line 672
    if-eqz v3, :cond_13

    .line 674
    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    .line 676
    aget-object v3, v1, v5

    .line 678
    iget v5, v3, Landroid/graphics/PointF;->x:F

    .line 680
    iget v6, v3, Landroid/graphics/PointF;->y:F

    .line 682
    const/4 v3, 0x2

    .line 684
    aget-object v3, v1, v3

    .line 685
    iget v7, v3, Landroid/graphics/PointF;->x:F

    .line 687
    iget v8, v3, Landroid/graphics/PointF;->y:F

    .line 689
    const/4 v3, 0x3

    .line 691
    aget-object v1, v1, v3

    .line 692
    iget v9, v1, Landroid/graphics/PointF;->x:F

    .line 694
    iget v10, v1, Landroid/graphics/PointF;->y:F

    .line 696
    move-object v4, v2

    .line 698
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 699
    :cond_13
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 702
    :goto_7
    iput-object v2, v0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mPath:Landroid/graphics/Path;

    .line 705
    :cond_14
    iget-object v1, v0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mPath:Landroid/graphics/Path;

    .line 707
    iget-object v0, v0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 709
    move-object/from16 v2, p1

    .line 711
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 713
    return-void
    .line 716
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
    .line 3
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 2
    sget-object p2, Lcom/android/systemui/R$styleable;->SmoothRoundDrawable:[I

    .line 5
    invoke-static {p1, p4, p3, p2}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 7
    move-result-object p1

    .line 10
    const/4 p2, 0x1

    .line 11
    const/4 p3, 0x0

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 13
    move-result p4

    .line 16
    int-to-float p4, p4

    .line 17
    iput p4, p0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mRadius:F

    .line 18
    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 20
    move-result p4

    .line 23
    iput p4, p0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mColor:I

    .line 24
    const/4 p4, 0x2

    .line 26
    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 27
    move-result v0

    .line 30
    const/4 v1, 0x4

    .line 31
    const/4 v2, 0x5

    .line 32
    const/4 v3, 0x3

    .line 33
    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 36
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 42
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 48
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    :cond_0
    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 54
    move-result v0

    .line 57
    int-to-float v0, v0

    .line 58
    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 59
    move-result v4

    .line 62
    int-to-float v4, v4

    .line 63
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 64
    move-result v5

    .line 67
    int-to-float v5, v5

    .line 68
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 69
    move-result v6

    .line 72
    int-to-float v6, v6

    .line 73
    const/16 v7, 0x8

    .line 74
    new-array v7, v7, [F

    .line 76
    aput v0, v7, p3

    .line 78
    aput v0, v7, p2

    .line 80
    aput v4, v7, p4

    .line 82
    aput v4, v7, v3

    .line 84
    aput v5, v7, v1

    .line 86
    aput v5, v7, v2

    .line 88
    const/4 p2, 0x6

    .line 90
    aput v6, v7, p2

    .line 91
    const/4 p2, 0x7

    .line 93
    aput v6, v7, p2

    .line 94
    iput-object v7, p0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mRadii:[F

    .line 96
    :cond_1
    const p2, 0x3f333333    # 0.7f

    .line 98
    iput p2, p0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mSmooth:F

    .line 101
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    iget-object p1, p0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 106
    iget p2, p0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mColor:I

    .line 108
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object p0, p0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 113
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 115
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    return-void
    .line 120
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mPath:Landroid/graphics/Path;

    .line 11
    :cond_0
    return-void
    .line 13
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    return-void
    .line 7
.end method
