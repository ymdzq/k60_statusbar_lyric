.class public final Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public shapeModifiers:Ljava/util/List;

.field public final tempPath:Landroid/graphics/Path;

.field public final tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 2
    new-instance p1, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 5
    invoke-direct {p1}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 10
    new-instance p1, Landroid/graphics/Path;

    .line 12
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    iget-object v3, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 8
    check-cast v3, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 10
    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 12
    check-cast v1, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 14
    iget-object v4, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 16
    iget-object v5, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 18
    if-nez v5, :cond_0

    .line 20
    new-instance v5, Landroid/graphics/PointF;

    .line 22
    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 24
    iput-object v5, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 27
    :cond_0
    iget-boolean v5, v3, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 29
    const/4 v6, 0x1

    .line 31
    if-nez v5, :cond_2

    .line 32
    iget-boolean v5, v1, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 34
    if-eqz v5, :cond_1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    const/4 v5, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    move v5, v6

    .line 41
    :goto_1
    iput-boolean v5, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 42
    iget-object v5, v3, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 44
    check-cast v5, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v7

    .line 51
    iget-object v8, v1, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 52
    check-cast v8, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result v8

    .line 59
    iget-object v9, v1, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 60
    if-eq v7, v8, :cond_3

    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    .line 64
    const-string v8, "Curves must have the same number of control points. Shape 1: "

    .line 66
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result v8

    .line 74
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v8, "\tShape 2: "

    .line 78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    move-object v8, v9

    .line 83
    check-cast v8, Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 86
    move-result v8

    .line 89
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v7

    .line 96
    invoke-static {v7}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 97
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 100
    move-result v7

    .line 103
    check-cast v9, Ljava/util/ArrayList;

    .line 104
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 106
    move-result v8

    .line 109
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 110
    move-result v7

    .line 113
    iget-object v8, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 114
    check-cast v8, Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 118
    move-result v10

    .line 121
    if-ge v10, v7, :cond_4

    .line 122
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 124
    move-result v10

    .line 127
    :goto_2
    if-ge v10, v7, :cond_5

    .line 128
    new-instance v11, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 130
    invoke-direct {v11}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    .line 132
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v10, v10, 0x1

    .line 138
    goto :goto_2

    .line 140
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 141
    move-result v10

    .line 144
    if-le v10, v7, :cond_5

    .line 145
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 147
    move-result v10

    .line 150
    sub-int/2addr v10, v6

    .line 151
    :goto_3
    if-lt v10, v7, :cond_5

    .line 152
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 154
    move-result v11

    .line 157
    sub-int/2addr v11, v6

    .line 158
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 159
    add-int/lit8 v10, v10, -0x1

    .line 162
    goto :goto_3

    .line 164
    :cond_5
    iget-object v3, v3, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 165
    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 167
    iget v7, v3, Landroid/graphics/PointF;->x:F

    .line 169
    iget v10, v1, Landroid/graphics/PointF;->x:F

    .line 171
    sget-object v11, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    .line 173
    invoke-static {v10, v7, v2, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 175
    move-result v7

    .line 178
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 179
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 181
    sub-float/2addr v1, v3

    .line 183
    mul-float/2addr v1, v2

    .line 184
    add-float/2addr v1, v3

    .line 185
    invoke-virtual {v4, v7, v1}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    .line 186
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 189
    move-result v1

    .line 192
    sub-int/2addr v1, v6

    .line 193
    :goto_4
    if-ltz v1, :cond_6

    .line 194
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    move-result-object v3

    .line 199
    check-cast v3, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 200
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    move-result-object v7

    .line 205
    check-cast v7, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 206
    iget-object v10, v3, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 208
    iget-object v11, v7, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 210
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 212
    move-result-object v12

    .line 215
    check-cast v12, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 216
    iget v13, v10, Landroid/graphics/PointF;->x:F

    .line 218
    iget v14, v11, Landroid/graphics/PointF;->x:F

    .line 220
    invoke-static {v14, v13, v2, v13}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 222
    move-result v13

    .line 225
    iget v10, v10, Landroid/graphics/PointF;->y:F

    .line 226
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 228
    invoke-static {v11, v10, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 230
    move-result v10

    .line 233
    iget-object v11, v12, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 234
    invoke-virtual {v11, v13, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 236
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 239
    move-result-object v10

    .line 242
    check-cast v10, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 243
    iget-object v11, v3, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 245
    iget v12, v11, Landroid/graphics/PointF;->x:F

    .line 247
    iget-object v13, v7, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 249
    iget v14, v13, Landroid/graphics/PointF;->x:F

    .line 251
    invoke-static {v14, v12, v2, v12}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 253
    move-result v12

    .line 256
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 257
    iget v13, v13, Landroid/graphics/PointF;->y:F

    .line 259
    invoke-static {v13, v11, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 261
    move-result v11

    .line 264
    iget-object v10, v10, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 265
    invoke-virtual {v10, v12, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 267
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 270
    move-result-object v10

    .line 273
    check-cast v10, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 274
    iget-object v3, v3, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 276
    iget v11, v3, Landroid/graphics/PointF;->x:F

    .line 278
    iget-object v7, v7, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 280
    iget v12, v7, Landroid/graphics/PointF;->x:F

    .line 282
    invoke-static {v12, v11, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 284
    move-result v11

    .line 287
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 288
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 290
    invoke-static {v7, v3, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 292
    move-result v3

    .line 295
    iget-object v7, v10, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 296
    invoke-virtual {v7, v11, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 298
    add-int/lit8 v1, v1, -0x1

    .line 301
    goto :goto_4

    .line 303
    :cond_6
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->shapeModifiers:Ljava/util/List;

    .line 304
    if-eqz v1, :cond_18

    .line 306
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 308
    move-result v1

    .line 311
    sub-int/2addr v1, v6

    .line 312
    :goto_5
    if-ltz v1, :cond_17

    .line 313
    iget-object v2, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->shapeModifiers:Ljava/util/List;

    .line 315
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 317
    move-result-object v2

    .line 320
    check-cast v2, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;

    .line 321
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    iget-object v3, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 326
    check-cast v3, Ljava/util/ArrayList;

    .line 328
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 330
    move-result v5

    .line 333
    const/4 v7, 0x2

    .line 334
    if-gt v5, v7, :cond_7

    .line 335
    goto :goto_6

    .line 337
    :cond_7
    iget-object v5, v2, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->roundedCorners:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 338
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 340
    move-result-object v5

    .line 343
    check-cast v5, Ljava/lang/Float;

    .line 344
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 346
    move-result v5

    .line 349
    const/4 v7, 0x0

    .line 350
    cmpl-float v7, v5, v7

    .line 351
    if-nez v7, :cond_8

    .line 353
    :goto_6
    move/from16 v16, v1

    .line 355
    goto/16 :goto_14

    .line 357
    :cond_8
    iget-object v7, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 359
    iget-boolean v8, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 361
    check-cast v7, Ljava/util/ArrayList;

    .line 363
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 365
    move-result v9

    .line 368
    sub-int/2addr v9, v6

    .line 369
    const/4 v10, 0x0

    .line 370
    :goto_7
    if-ltz v9, :cond_d

    .line 371
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 373
    move-result-object v11

    .line 376
    check-cast v11, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 377
    add-int/lit8 v12, v9, -0x1

    .line 379
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 381
    move-result v13

    .line 384
    invoke-static {v12, v13}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 385
    move-result v13

    .line 388
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 389
    move-result-object v13

    .line 392
    check-cast v13, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 393
    if-nez v9, :cond_9

    .line 395
    if-nez v8, :cond_9

    .line 397
    iget-object v14, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 399
    goto :goto_8

    .line 401
    :cond_9
    iget-object v14, v13, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 402
    :goto_8
    if-nez v9, :cond_a

    .line 404
    if-nez v8, :cond_a

    .line 406
    move-object v13, v14

    .line 408
    goto :goto_9

    .line 409
    :cond_a
    iget-object v13, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 410
    :goto_9
    iget-object v11, v11, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 412
    iget-boolean v15, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 414
    if-nez v15, :cond_b

    .line 416
    if-nez v9, :cond_b

    .line 418
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 420
    move-result v15

    .line 423
    sub-int/2addr v15, v6

    .line 424
    if-ne v9, v15, :cond_b

    .line 425
    move v9, v6

    .line 427
    goto :goto_a

    .line 428
    :cond_b
    const/4 v9, 0x0

    .line 429
    :goto_a
    invoke-virtual {v13, v14}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 430
    move-result v13

    .line 433
    if-eqz v13, :cond_c

    .line 434
    invoke-virtual {v11, v14}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 436
    move-result v11

    .line 439
    if-eqz v11, :cond_c

    .line 440
    if-nez v9, :cond_c

    .line 442
    add-int/lit8 v10, v10, 0x2

    .line 444
    goto :goto_b

    .line 446
    :cond_c
    add-int/lit8 v10, v10, 0x1

    .line 447
    :goto_b
    move v9, v12

    .line 449
    goto :goto_7

    .line 450
    :cond_d
    iget-object v6, v2, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 451
    if-eqz v6, :cond_f

    .line 453
    iget-object v6, v6, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 455
    check-cast v6, Ljava/util/ArrayList;

    .line 457
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 459
    move-result v6

    .line 462
    if-eq v6, v10, :cond_e

    .line 463
    goto :goto_c

    .line 465
    :cond_e
    const/4 v6, 0x0

    .line 466
    goto :goto_e

    .line 467
    :cond_f
    :goto_c
    new-instance v6, Ljava/util/ArrayList;

    .line 468
    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 470
    const/4 v7, 0x0

    .line 473
    :goto_d
    if-ge v7, v10, :cond_10

    .line 474
    new-instance v9, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 476
    invoke-direct {v9}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    .line 478
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    add-int/lit8 v7, v7, 0x1

    .line 484
    goto :goto_d

    .line 486
    :cond_10
    new-instance v7, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 487
    new-instance v9, Landroid/graphics/PointF;

    .line 489
    const/4 v10, 0x0

    .line 491
    invoke-direct {v9, v10, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 492
    const/4 v10, 0x0

    .line 495
    invoke-direct {v7, v9, v10, v6}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    .line 496
    iput-object v7, v2, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 499
    move v6, v10

    .line 501
    :goto_e
    iget-object v2, v2, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 502
    iput-boolean v8, v2, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 504
    iget-object v7, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 506
    iget v8, v7, Landroid/graphics/PointF;->x:F

    .line 508
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 510
    invoke-virtual {v2, v8, v7}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    .line 512
    iget-object v7, v2, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 515
    iget-boolean v8, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 517
    move v9, v6

    .line 519
    :goto_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 520
    move-result v10

    .line 523
    if-ge v6, v10, :cond_16

    .line 524
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 526
    move-result-object v10

    .line 529
    check-cast v10, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 530
    add-int/lit8 v11, v6, -0x1

    .line 532
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 534
    move-result v12

    .line 537
    invoke-static {v11, v12}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 538
    move-result v11

    .line 541
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 542
    move-result-object v11

    .line 545
    check-cast v11, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 546
    add-int/lit8 v12, v6, -0x2

    .line 548
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 550
    move-result v13

    .line 553
    invoke-static {v12, v13}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 554
    move-result v12

    .line 557
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 558
    move-result-object v12

    .line 561
    check-cast v12, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 562
    if-nez v6, :cond_11

    .line 564
    if-nez v8, :cond_11

    .line 566
    iget-object v13, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 568
    goto :goto_10

    .line 570
    :cond_11
    iget-object v13, v11, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 571
    :goto_10
    if-nez v6, :cond_12

    .line 573
    if-nez v8, :cond_12

    .line 575
    move-object v14, v13

    .line 577
    goto :goto_11

    .line 578
    :cond_12
    iget-object v14, v11, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 579
    :goto_11
    iget-object v15, v10, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 581
    iget-object v12, v12, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 583
    move/from16 p1, v8

    .line 585
    iget-boolean v8, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 587
    if-nez v8, :cond_13

    .line 589
    if-nez v6, :cond_13

    .line 591
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 593
    move-result v8

    .line 596
    add-int/lit8 v8, v8, -0x1

    .line 597
    if-ne v6, v8, :cond_13

    .line 599
    const/4 v8, 0x1

    .line 601
    goto :goto_12

    .line 602
    :cond_13
    const/4 v8, 0x0

    .line 603
    :goto_12
    invoke-virtual {v14, v13}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 604
    move-result v14

    .line 607
    iget-object v10, v10, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 608
    if-eqz v14, :cond_15

    .line 610
    invoke-virtual {v15, v13}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 612
    move-result v14

    .line 615
    if-eqz v14, :cond_15

    .line 616
    if-nez v8, :cond_15

    .line 618
    iget v8, v13, Landroid/graphics/PointF;->x:F

    .line 620
    iget v11, v12, Landroid/graphics/PointF;->x:F

    .line 622
    sub-float v11, v8, v11

    .line 624
    iget v14, v13, Landroid/graphics/PointF;->y:F

    .line 626
    iget v15, v12, Landroid/graphics/PointF;->y:F

    .line 628
    sub-float v15, v14, v15

    .line 630
    move-object/from16 p2, v3

    .line 632
    iget v3, v10, Landroid/graphics/PointF;->x:F

    .line 634
    sub-float/2addr v3, v8

    .line 636
    iget v8, v10, Landroid/graphics/PointF;->y:F

    .line 637
    sub-float/2addr v8, v14

    .line 639
    move v14, v1

    .line 640
    float-to-double v0, v11

    .line 641
    move/from16 v16, v14

    .line 642
    float-to-double v14, v15

    .line 644
    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    .line 645
    move-result-wide v0

    .line 648
    double-to-float v0, v0

    .line 649
    float-to-double v14, v3

    .line 650
    move-object v1, v4

    .line 651
    float-to-double v3, v8

    .line 652
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 653
    move-result-wide v3

    .line 656
    double-to-float v3, v3

    .line 657
    div-float v0, v5, v0

    .line 658
    const/high16 v4, 0x3f000000    # 0.5f

    .line 660
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    .line 662
    move-result v0

    .line 665
    div-float v3, v5, v3

    .line 666
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 668
    move-result v3

    .line 671
    iget v4, v13, Landroid/graphics/PointF;->x:F

    .line 672
    iget v8, v12, Landroid/graphics/PointF;->x:F

    .line 674
    invoke-static {v8, v4, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 676
    move-result v8

    .line 679
    iget v11, v13, Landroid/graphics/PointF;->y:F

    .line 680
    iget v12, v12, Landroid/graphics/PointF;->y:F

    .line 682
    invoke-static {v12, v11, v0, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 684
    move-result v0

    .line 687
    iget v12, v10, Landroid/graphics/PointF;->x:F

    .line 688
    invoke-static {v12, v4, v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 690
    move-result v12

    .line 693
    iget v10, v10, Landroid/graphics/PointF;->y:F

    .line 694
    invoke-static {v10, v11, v3, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 696
    move-result v3

    .line 699
    sub-float v10, v8, v4

    .line 700
    const v13, 0x3f0d4952    # 0.5519f

    .line 702
    mul-float/2addr v10, v13

    .line 705
    sub-float v10, v8, v10

    .line 706
    sub-float v14, v0, v11

    .line 708
    mul-float/2addr v14, v13

    .line 710
    sub-float v14, v0, v14

    .line 711
    sub-float v4, v12, v4

    .line 713
    mul-float/2addr v4, v13

    .line 715
    sub-float v4, v12, v4

    .line 716
    sub-float v11, v3, v11

    .line 718
    mul-float/2addr v11, v13

    .line 720
    sub-float v11, v3, v11

    .line 721
    add-int/lit8 v13, v9, -0x1

    .line 723
    move-object v15, v7

    .line 725
    check-cast v15, Ljava/util/ArrayList;

    .line 726
    move-object/from16 v17, v1

    .line 728
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 730
    move-result v1

    .line 733
    invoke-static {v13, v1}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 734
    move-result v1

    .line 737
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 738
    move-result-object v1

    .line 741
    check-cast v1, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 742
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 744
    move-result-object v13

    .line 747
    check-cast v13, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 748
    move/from16 v18, v5

    .line 750
    iget-object v5, v1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 752
    invoke-virtual {v5, v8, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 754
    iget-object v1, v1, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 757
    invoke-virtual {v1, v8, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 759
    if-nez v6, :cond_14

    .line 762
    invoke-virtual {v2, v8, v0}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    .line 764
    :cond_14
    iget-object v0, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 767
    invoke-virtual {v0, v10, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 769
    add-int/lit8 v9, v9, 0x1

    .line 772
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 774
    move-result-object v0

    .line 777
    check-cast v0, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 778
    iget-object v1, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 780
    invoke-virtual {v1, v4, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 782
    iget-object v1, v13, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 785
    invoke-virtual {v1, v12, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 787
    iget-object v0, v0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 790
    invoke-virtual {v0, v12, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 792
    goto :goto_13

    .line 795
    :cond_15
    move/from16 v16, v1

    .line 796
    move-object/from16 p2, v3

    .line 798
    move-object/from16 v17, v4

    .line 800
    move/from16 v18, v5

    .line 802
    add-int/lit8 v0, v9, -0x1

    .line 804
    move-object v1, v7

    .line 806
    check-cast v1, Ljava/util/ArrayList;

    .line 807
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 809
    move-result v3

    .line 812
    invoke-static {v0, v3}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 813
    move-result v0

    .line 816
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 817
    move-result-object v0

    .line 820
    check-cast v0, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 821
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 823
    move-result-object v1

    .line 826
    check-cast v1, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 827
    iget-object v3, v11, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 829
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 831
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 833
    iget-object v5, v0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 835
    invoke-virtual {v5, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 837
    iget-object v3, v11, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 840
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 842
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 844
    iget-object v0, v0, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 846
    invoke-virtual {v0, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 848
    iget v0, v10, Landroid/graphics/PointF;->x:F

    .line 851
    iget v3, v10, Landroid/graphics/PointF;->y:F

    .line 853
    iget-object v1, v1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 855
    invoke-virtual {v1, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 857
    :goto_13
    add-int/lit8 v9, v9, 0x1

    .line 860
    add-int/lit8 v6, v6, 0x1

    .line 862
    move-object/from16 v0, p0

    .line 864
    move/from16 v8, p1

    .line 866
    move-object/from16 v3, p2

    .line 868
    move/from16 v1, v16

    .line 870
    move-object/from16 v4, v17

    .line 872
    move/from16 v5, v18

    .line 874
    goto/16 :goto_f

    .line 876
    :cond_16
    move/from16 v16, v1

    .line 878
    move-object v4, v2

    .line 880
    :goto_14
    add-int/lit8 v1, v16, -0x1

    .line 881
    const/4 v6, 0x1

    .line 883
    move-object/from16 v0, p0

    .line 884
    goto/16 :goto_5

    .line 886
    :cond_17
    move-object/from16 v17, v4

    .line 888
    :cond_18
    move-object/from16 v0, p0

    .line 890
    iget-object v0, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    .line 892
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 894
    iget-object v1, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 897
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 899
    iget v3, v1, Landroid/graphics/PointF;->y:F

    .line 901
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 903
    sget-object v2, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    .line 906
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 908
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 910
    invoke-virtual {v2, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 912
    const/4 v1, 0x0

    .line 915
    :goto_15
    iget-object v3, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 916
    check-cast v3, Ljava/util/ArrayList;

    .line 918
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 920
    move-result v5

    .line 923
    if-ge v1, v5, :cond_1a

    .line 924
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 926
    move-result-object v3

    .line 929
    check-cast v3, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 930
    iget-object v5, v3, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 932
    invoke-virtual {v5, v2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 934
    move-result v6

    .line 937
    iget-object v7, v3, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 938
    iget-object v3, v3, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 940
    if-eqz v6, :cond_19

    .line 942
    invoke-virtual {v7, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 944
    move-result v6

    .line 947
    if-eqz v6, :cond_19

    .line 948
    iget v5, v3, Landroid/graphics/PointF;->x:F

    .line 950
    iget v6, v3, Landroid/graphics/PointF;->y:F

    .line 952
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 954
    goto :goto_16

    .line 957
    :cond_19
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 958
    iget v8, v5, Landroid/graphics/PointF;->y:F

    .line 960
    iget v9, v7, Landroid/graphics/PointF;->x:F

    .line 962
    iget v10, v7, Landroid/graphics/PointF;->y:F

    .line 964
    iget v11, v3, Landroid/graphics/PointF;->x:F

    .line 966
    iget v12, v3, Landroid/graphics/PointF;->y:F

    .line 968
    move-object v5, v0

    .line 970
    move v7, v8

    .line 971
    move v8, v9

    .line 972
    move v9, v10

    .line 973
    move v10, v11

    .line 974
    move v11, v12

    .line 975
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 976
    :goto_16
    iget v5, v3, Landroid/graphics/PointF;->x:F

    .line 979
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 981
    invoke-virtual {v2, v5, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 983
    add-int/lit8 v1, v1, 0x1

    .line 986
    goto :goto_15

    .line 988
    :cond_1a
    iget-boolean v1, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 989
    if-eqz v1, :cond_1b

    .line 991
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 993
    :cond_1b
    return-object v0
    .line 996
.end method
