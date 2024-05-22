.class public final Lcom/google/android/material/shape/ShapeAppearancePathProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final boundsPath:Landroid/graphics/Path;

.field public final cornerPath:Landroid/graphics/Path;

.field public final cornerPaths:[Lcom/google/android/material/shape/ShapePath;

.field public final cornerTransforms:[Landroid/graphics/Matrix;

.field public final edgeIntersectionCheckEnabled:Z

.field public final edgePath:Landroid/graphics/Path;

.field public final edgeTransforms:[Landroid/graphics/Matrix;

.field public final overlappedEdgePath:Landroid/graphics/Path;

.field public final pointF:Landroid/graphics/PointF;

.field public final scratch:[F

.field public final scratch2:[F

.field public final shapePath:Lcom/google/android/material/shape/ShapePath;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [Lcom/google/android/material/shape/ShapePath;

    .line 6
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 8
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 10
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 12
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 14
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 16
    new-instance v1, Landroid/graphics/PointF;

    .line 18
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    .line 23
    new-instance v1, Landroid/graphics/Path;

    .line 25
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    .line 30
    new-instance v1, Landroid/graphics/Path;

    .line 32
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    .line 37
    new-instance v1, Lcom/google/android/material/shape/ShapePath;

    .line 39
    invoke-direct {v1}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    .line 44
    const/4 v1, 0x2

    .line 46
    new-array v2, v1, [F

    .line 47
    iput-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 49
    new-array v1, v1, [F

    .line 51
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    .line 53
    new-instance v1, Landroid/graphics/Path;

    .line 55
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    .line 60
    new-instance v1, Landroid/graphics/Path;

    .line 62
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    .line 67
    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    .line 70
    const/4 v1, 0x0

    .line 72
    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 75
    new-instance v3, Lcom/google/android/material/shape/ShapePath;

    .line 77
    invoke-direct {v3}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    .line 79
    aput-object v3, v2, v1

    .line 82
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 84
    new-instance v3, Landroid/graphics/Matrix;

    .line 86
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 88
    aput-object v3, v2, v1

    .line 91
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 93
    new-instance v3, Landroid/graphics/Matrix;

    .line 95
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    aput-object v3, v2, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    .line 102
    goto :goto_0

    .line 104
    :cond_0
    return-void
    .line 105
.end method


# virtual methods
.method public final calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/MaterialShapeDrawable$1;Landroid/graphics/Path;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move-object/from16 v3, p3

    .line 8
    move-object/from16 v4, p4

    .line 10
    move-object/from16 v5, p5

    .line 12
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    .line 14
    iget-object v6, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    .line 17
    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 19
    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    .line 22
    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 24
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 27
    invoke-virtual {v7, v3, v8}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 29
    const/4 v9, 0x0

    .line 32
    :goto_0
    const/4 v10, 0x2

    .line 33
    const/4 v11, 0x4

    .line 34
    const/4 v13, 0x1

    .line 35
    iget-object v14, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 36
    iget-object v15, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 38
    iget-object v8, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 40
    iget-object v12, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 42
    if-ge v9, v11, :cond_9

    .line 44
    if-eq v9, v13, :cond_2

    .line 46
    if-eq v9, v10, :cond_1

    .line 48
    const/4 v11, 0x3

    .line 50
    if-eq v9, v11, :cond_0

    .line 51
    iget-object v11, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 53
    goto :goto_1

    .line 55
    :cond_0
    iget-object v11, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 56
    goto :goto_1

    .line 58
    :cond_1
    iget-object v11, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 59
    goto :goto_1

    .line 61
    :cond_2
    iget-object v11, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 62
    :goto_1
    if-eq v9, v13, :cond_5

    .line 64
    if-eq v9, v10, :cond_4

    .line 66
    const/4 v10, 0x3

    .line 68
    if-eq v9, v10, :cond_3

    .line 69
    iget-object v10, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 71
    goto :goto_2

    .line 73
    :cond_3
    iget-object v10, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 74
    goto :goto_2

    .line 76
    :cond_4
    iget-object v10, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 77
    goto :goto_2

    .line 79
    :cond_5
    iget-object v10, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 80
    :goto_2
    aget-object v13, v12, v9

    .line 82
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-interface {v11, v3}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    .line 87
    move-result v11

    .line 90
    invoke-virtual {v10, v2, v11, v13}, Lcom/google/android/material/shape/CornerTreatment;->getCornerPath(FFLcom/google/android/material/shape/ShapePath;)V

    .line 91
    add-int/lit8 v10, v9, 0x1

    .line 94
    mul-int/lit8 v11, v10, 0x5a

    .line 96
    int-to-float v11, v11

    .line 98
    aget-object v13, v8, v9

    .line 99
    invoke-virtual {v13}, Landroid/graphics/Matrix;->reset()V

    .line 101
    iget-object v13, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    .line 104
    move/from16 v18, v10

    .line 106
    const/4 v10, 0x1

    .line 108
    if-eq v9, v10, :cond_8

    .line 109
    const/4 v10, 0x2

    .line 111
    if-eq v9, v10, :cond_7

    .line 112
    const/4 v10, 0x3

    .line 114
    if-eq v9, v10, :cond_6

    .line 115
    iget v10, v3, Landroid/graphics/RectF;->right:F

    .line 117
    move-object/from16 v19, v6

    .line 119
    iget v6, v3, Landroid/graphics/RectF;->top:F

    .line 121
    invoke-virtual {v13, v10, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 123
    goto :goto_3

    .line 126
    :cond_6
    move-object/from16 v19, v6

    .line 127
    iget v6, v3, Landroid/graphics/RectF;->left:F

    .line 129
    iget v10, v3, Landroid/graphics/RectF;->top:F

    .line 131
    invoke-virtual {v13, v6, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 133
    goto :goto_3

    .line 136
    :cond_7
    move-object/from16 v19, v6

    .line 137
    iget v6, v3, Landroid/graphics/RectF;->left:F

    .line 139
    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    .line 141
    invoke-virtual {v13, v6, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 143
    goto :goto_3

    .line 146
    :cond_8
    move-object/from16 v19, v6

    .line 147
    iget v6, v3, Landroid/graphics/RectF;->right:F

    .line 149
    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    .line 151
    invoke-virtual {v13, v6, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 153
    :goto_3
    aget-object v6, v8, v9

    .line 156
    iget v10, v13, Landroid/graphics/PointF;->x:F

    .line 158
    iget v13, v13, Landroid/graphics/PointF;->y:F

    .line 160
    invoke-virtual {v6, v10, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 162
    aget-object v6, v8, v9

    .line 165
    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 167
    aget-object v6, v12, v9

    .line 170
    iget v10, v6, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 172
    const/16 v16, 0x0

    .line 174
    aput v10, v15, v16

    .line 176
    iget v6, v6, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 178
    const/4 v10, 0x1

    .line 180
    aput v6, v15, v10

    .line 181
    aget-object v6, v8, v9

    .line 183
    invoke-virtual {v6, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 185
    aget-object v6, v14, v9

    .line 188
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 190
    aget-object v6, v14, v9

    .line 193
    aget v8, v15, v16

    .line 195
    aget v10, v15, v10

    .line 197
    invoke-virtual {v6, v8, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 199
    aget-object v6, v14, v9

    .line 202
    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 204
    move/from16 v9, v18

    .line 207
    move-object/from16 v6, v19

    .line 209
    goto/16 :goto_0

    .line 211
    :cond_9
    move-object/from16 v19, v6

    .line 213
    move v10, v13

    .line 215
    const/16 v16, 0x0

    .line 216
    move/from16 v6, v16

    .line 218
    :goto_4
    if-ge v6, v11, :cond_13

    .line 220
    aget-object v9, v12, v6

    .line 222
    iget v13, v9, Lcom/google/android/material/shape/ShapePath;->startX:F

    .line 224
    aput v13, v15, v16

    .line 226
    iget v9, v9, Lcom/google/android/material/shape/ShapePath;->startY:F

    .line 228
    aput v9, v15, v10

    .line 230
    aget-object v9, v8, v6

    .line 232
    invoke-virtual {v9, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 234
    if-nez v6, :cond_a

    .line 237
    aget v9, v15, v16

    .line 239
    aget v13, v15, v10

    .line 241
    invoke-virtual {v5, v9, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 243
    goto :goto_5

    .line 246
    :cond_a
    aget v9, v15, v16

    .line 247
    aget v13, v15, v10

    .line 249
    invoke-virtual {v5, v9, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 251
    :goto_5
    aget-object v9, v12, v6

    .line 254
    aget-object v10, v8, v6

    .line 256
    invoke-virtual {v9, v10, v5}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 258
    if-eqz v4, :cond_b

    .line 261
    aget-object v9, v12, v6

    .line 263
    aget-object v10, v8, v6

    .line 265
    iget-object v13, v4, Lcom/google/android/material/shape/MaterialShapeDrawable$1;->this$0:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 267
    iget-object v11, v13, Lcom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    .line 269
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    const/4 v3, 0x0

    .line 274
    invoke-virtual {v11, v6, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 275
    iget-object v3, v13, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 278
    iget v11, v9, Lcom/google/android/material/shape/ShapePath;->endShadowAngle:F

    .line 280
    invoke-virtual {v9, v11}, Lcom/google/android/material/shape/ShapePath;->addConnectingShadowIfNecessary(F)V

    .line 282
    new-instance v11, Landroid/graphics/Matrix;

    .line 285
    invoke-direct {v11, v10}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 287
    new-instance v10, Ljava/util/ArrayList;

    .line 290
    iget-object v9, v9, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    .line 292
    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 294
    new-instance v9, Lcom/google/android/material/shape/ShapePath$1;

    .line 297
    invoke-direct {v9, v10, v11}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Ljava/util/List;Landroid/graphics/Matrix;)V

    .line 299
    aput-object v9, v3, v6

    .line 302
    :cond_b
    add-int/lit8 v3, v6, 0x1

    .line 304
    rem-int/lit8 v9, v3, 0x4

    .line 306
    aget-object v10, v12, v6

    .line 308
    iget v11, v10, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 310
    const/4 v13, 0x0

    .line 312
    aput v11, v15, v13

    .line 313
    iget v10, v10, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 315
    const/4 v11, 0x1

    .line 317
    aput v10, v15, v11

    .line 318
    aget-object v10, v8, v6

    .line 320
    invoke-virtual {v10, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 322
    aget-object v10, v12, v9

    .line 325
    iget v11, v10, Lcom/google/android/material/shape/ShapePath;->startX:F

    .line 327
    move/from16 v20, v3

    .line 329
    iget-object v3, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    .line 331
    aput v11, v3, v13

    .line 333
    iget v10, v10, Lcom/google/android/material/shape/ShapePath;->startY:F

    .line 335
    const/4 v11, 0x1

    .line 337
    aput v10, v3, v11

    .line 338
    aget-object v10, v8, v9

    .line 340
    invoke-virtual {v10, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 342
    aget v10, v15, v13

    .line 345
    aget v17, v3, v13

    .line 347
    sub-float v10, v10, v17

    .line 349
    float-to-double v4, v10

    .line 351
    aget v10, v15, v11

    .line 352
    aget v3, v3, v11

    .line 354
    sub-float/2addr v10, v3

    .line 356
    float-to-double v10, v10

    .line 357
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    .line 358
    move-result-wide v3

    .line 361
    double-to-float v3, v3

    .line 362
    const v4, 0x3a83126f    # 0.001f

    .line 363
    sub-float/2addr v3, v4

    .line 366
    const/4 v4, 0x0

    .line 367
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 368
    move-result v3

    .line 371
    aget-object v5, v12, v6

    .line 372
    iget v10, v5, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 374
    const/4 v11, 0x0

    .line 376
    aput v10, v15, v11

    .line 377
    iget v5, v5, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 379
    const/4 v10, 0x1

    .line 381
    aput v5, v15, v10

    .line 382
    aget-object v5, v8, v6

    .line 384
    invoke-virtual {v5, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 386
    if-eq v6, v10, :cond_c

    .line 389
    const/4 v5, 0x3

    .line 391
    if-eq v6, v5, :cond_c

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    .line 394
    move-result v5

    .line 397
    aget v11, v15, v10

    .line 398
    sub-float/2addr v5, v11

    .line 400
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 401
    move-result v5

    .line 404
    goto :goto_6

    .line 405
    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    .line 406
    move-result v5

    .line 409
    const/4 v10, 0x0

    .line 410
    aget v11, v15, v10

    .line 411
    sub-float/2addr v5, v11

    .line 413
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 414
    move-result v5

    .line 417
    :goto_6
    const/high16 v10, 0x43870000    # 270.0f

    .line 418
    iget-object v11, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    .line 420
    invoke-virtual {v11, v4, v4, v10, v4}, Lcom/google/android/material/shape/ShapePath;->reset(FFFF)V

    .line 422
    const/4 v4, 0x1

    .line 425
    if-eq v6, v4, :cond_f

    .line 426
    const/4 v4, 0x2

    .line 428
    if-eq v6, v4, :cond_e

    .line 429
    const/4 v10, 0x3

    .line 431
    if-eq v6, v10, :cond_d

    .line 432
    iget-object v13, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 434
    goto :goto_7

    .line 436
    :cond_d
    iget-object v13, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 437
    goto :goto_7

    .line 439
    :cond_e
    const/4 v10, 0x3

    .line 440
    iget-object v13, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 441
    goto :goto_7

    .line 443
    :cond_f
    const/4 v4, 0x2

    .line 444
    const/4 v10, 0x3

    .line 445
    iget-object v13, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 446
    :goto_7
    invoke-virtual {v13, v3, v5, v2, v11}, Lcom/google/android/material/shape/EdgeTreatment;->getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V

    .line 448
    iget-object v3, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    .line 451
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 453
    aget-object v5, v14, v6

    .line 456
    invoke-virtual {v11, v5, v3}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 458
    iget-boolean v5, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    .line 461
    if-eqz v5, :cond_11

    .line 463
    invoke-virtual {v13}, Lcom/google/android/material/shape/EdgeTreatment;->forceIntersection()Z

    .line 465
    move-result v5

    .line 468
    if-nez v5, :cond_10

    .line 469
    invoke-virtual {v0, v3, v6}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    .line 471
    move-result v5

    .line 474
    if-nez v5, :cond_10

    .line 475
    invoke-virtual {v0, v3, v9}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    .line 477
    move-result v5

    .line 480
    if-eqz v5, :cond_11

    .line 481
    :cond_10
    sget-object v5, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 483
    invoke-virtual {v3, v3, v7, v5}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 485
    iget v3, v11, Lcom/google/android/material/shape/ShapePath;->startX:F

    .line 488
    const/4 v5, 0x0

    .line 490
    aput v3, v15, v5

    .line 491
    iget v3, v11, Lcom/google/android/material/shape/ShapePath;->startY:F

    .line 493
    const/4 v9, 0x1

    .line 495
    aput v3, v15, v9

    .line 496
    aget-object v3, v14, v6

    .line 498
    invoke-virtual {v3, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 500
    aget v3, v15, v5

    .line 503
    aget v5, v15, v9

    .line 505
    move-object/from16 v13, v19

    .line 507
    invoke-virtual {v13, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 509
    aget-object v3, v14, v6

    .line 512
    invoke-virtual {v11, v3, v13}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 514
    move-object/from16 v3, p4

    .line 517
    move-object/from16 v5, p5

    .line 519
    goto :goto_8

    .line 521
    :cond_11
    move-object/from16 v13, v19

    .line 522
    const/4 v9, 0x1

    .line 524
    aget-object v3, v14, v6

    .line 525
    move-object/from16 v5, p5

    .line 527
    invoke-virtual {v11, v3, v5}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 529
    move-object/from16 v3, p4

    .line 532
    :goto_8
    if-eqz v3, :cond_12

    .line 534
    aget-object v4, v14, v6

    .line 536
    iget-object v9, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$1;->this$0:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 538
    iget-object v10, v9, Lcom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    .line 540
    add-int/lit8 v0, v6, 0x4

    .line 542
    const/4 v1, 0x0

    .line 544
    invoke-virtual {v10, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 545
    iget-object v0, v9, Lcom/google/android/material/shape/MaterialShapeDrawable;->edgeShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 548
    iget v9, v11, Lcom/google/android/material/shape/ShapePath;->endShadowAngle:F

    .line 550
    invoke-virtual {v11, v9}, Lcom/google/android/material/shape/ShapePath;->addConnectingShadowIfNecessary(F)V

    .line 552
    new-instance v9, Landroid/graphics/Matrix;

    .line 555
    invoke-direct {v9, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 557
    new-instance v4, Ljava/util/ArrayList;

    .line 560
    iget-object v10, v11, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    .line 562
    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 564
    new-instance v10, Lcom/google/android/material/shape/ShapePath$1;

    .line 567
    invoke-direct {v10, v4, v9}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Ljava/util/List;Landroid/graphics/Matrix;)V

    .line 569
    aput-object v10, v0, v6

    .line 572
    goto :goto_9

    .line 574
    :cond_12
    const/4 v1, 0x0

    .line 575
    :goto_9
    move-object/from16 v0, p0

    .line 576
    move/from16 v16, v1

    .line 578
    move-object v4, v3

    .line 580
    move-object/from16 v19, v13

    .line 581
    move/from16 v6, v20

    .line 583
    const/4 v10, 0x1

    .line 585
    const/4 v11, 0x4

    .line 586
    move-object/from16 v1, p1

    .line 587
    move-object/from16 v3, p3

    .line 589
    goto/16 :goto_4

    .line 591
    :cond_13
    move-object/from16 v13, v19

    .line 593
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    .line 595
    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    .line 598
    invoke-virtual {v13}, Landroid/graphics/Path;->isEmpty()Z

    .line 601
    move-result v0

    .line 604
    if-nez v0, :cond_14

    .line 605
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    .line 607
    invoke-virtual {v5, v13, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 609
    :cond_14
    return-void
    .line 612
.end method

.method public final pathOverlapsCorner(Landroid/graphics/Path;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 7
    aget-object v1, v1, p2

    .line 9
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 11
    aget-object p0, p0, p2

    .line 13
    invoke-virtual {v1, p0, v0}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 15
    new-instance p0, Landroid/graphics/RectF;

    .line 18
    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 20
    const/4 p2, 0x1

    .line 23
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 24
    invoke-virtual {v0, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 27
    sget-object v1, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 32
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 35
    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 38
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    .line 44
    move-result p1

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    cmpl-float p1, p1, v0

    .line 50
    if-lez p1, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    .line 54
    move-result p0

    .line 57
    cmpl-float p0, p0, v0

    .line 58
    if-lez p0, :cond_0

    .line 60
    goto :goto_0

    .line 62
    :cond_0
    const/4 p2, 0x0

    .line 63
    :cond_1
    :goto_0
    return p2
    .line 64
.end method
