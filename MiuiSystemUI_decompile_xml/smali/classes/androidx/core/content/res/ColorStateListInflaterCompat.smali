.class public abstract Landroidx/core/content/res/ColorStateListInflaterCompat;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sTempTypedValue:Ljava/lang/ThreadLocal;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    sput-object v0, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 7
    return-void
    .line 9
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 2
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    const/4 v3, 0x1

    .line 13
    if-eq v1, v3, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    if-ne v1, v2, :cond_1

    .line 17
    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 19
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 24
    const-string p1, "No start tag found"

    .line 26
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0
    .line 31
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    move-object/from16 v2, p3

    .line 6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 8
    move-result-object v3

    .line 11
    const-string/jumbo v4, "selector"

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v4

    .line 18
    if-eqz v4, :cond_23

    .line 19
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 21
    move-result v3

    .line 24
    const/4 v4, 0x1

    .line 25
    add-int/2addr v3, v4

    .line 26
    const/16 v5, 0x14

    .line 27
    new-array v6, v5, [[I

    .line 29
    new-array v5, v5, [I

    .line 31
    const/4 v7, 0x0

    .line 33
    move v8, v7

    .line 34
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 35
    move-result v9

    .line 38
    if-eq v9, v4, :cond_22

    .line 39
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 41
    move-result v10

    .line 44
    const/4 v11, 0x3

    .line 45
    if-ge v10, v3, :cond_0

    .line 46
    if-eq v9, v11, :cond_22

    .line 48
    :cond_0
    const/4 v12, 0x2

    .line 50
    if-ne v9, v12, :cond_21

    .line 51
    if-gt v10, v3, :cond_21

    .line 53
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 55
    move-result-object v9

    .line 58
    const-string v10, "item"

    .line 59
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v9

    .line 64
    if-nez v9, :cond_1

    .line 65
    goto/16 :goto_17

    .line 67
    :cond_1
    sget-object v9, Landroidx/core/R$styleable;->ColorStateListItem:[I

    .line 69
    if-nez v2, :cond_2

    .line 71
    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 73
    move-result-object v9

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {v2, v1, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 78
    move-result-object v9

    .line 81
    :goto_1
    const/4 v10, -0x1

    .line 82
    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 83
    move-result v13

    .line 86
    const v14, -0xff01

    .line 87
    if-eq v13, v10, :cond_5

    .line 90
    sget-object v10, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 92
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 94
    move-result-object v15

    .line 97
    check-cast v15, Landroid/util/TypedValue;

    .line 98
    if-nez v15, :cond_3

    .line 100
    new-instance v15, Landroid/util/TypedValue;

    .line 102
    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 104
    invoke-virtual {v10, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 107
    :cond_3
    invoke-virtual {v0, v13, v15, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 110
    iget v10, v15, Landroid/util/TypedValue;->type:I

    .line 113
    const/16 v15, 0x1c

    .line 115
    if-lt v10, v15, :cond_4

    .line 117
    const/16 v15, 0x1f

    .line 119
    if-gt v10, v15, :cond_4

    .line 121
    move v10, v4

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    move v10, v7

    .line 125
    :goto_2
    if-nez v10, :cond_5

    .line 126
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 128
    move-result-object v10

    .line 131
    invoke-static {v0, v10, v2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 132
    move-result-object v10

    .line 135
    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 136
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_3

    .line 140
    :catch_0
    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 141
    move-result v10

    .line 144
    goto :goto_3

    .line 145
    :cond_5
    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 146
    move-result v10

    .line 149
    :goto_3
    invoke-virtual {v9, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 150
    move-result v13

    .line 153
    const/high16 v14, 0x3f800000    # 1.0f

    .line 154
    if-eqz v13, :cond_6

    .line 156
    invoke-virtual {v9, v4, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 158
    move-result v11

    .line 161
    goto :goto_4

    .line 162
    :cond_6
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 163
    move-result v13

    .line 166
    if-eqz v13, :cond_7

    .line 167
    invoke-virtual {v9, v11, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 169
    move-result v11

    .line 172
    goto :goto_4

    .line 173
    :cond_7
    move v11, v14

    .line 174
    :goto_4
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 175
    move-result v13

    .line 178
    const/4 v15, 0x4

    .line 179
    const/high16 v4, -0x40800000    # -1.0f

    .line 180
    if-eqz v13, :cond_8

    .line 182
    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 184
    move-result v4

    .line 187
    goto :goto_5

    .line 188
    :cond_8
    invoke-virtual {v9, v15, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 189
    move-result v4

    .line 192
    :goto_5
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 196
    move-result v9

    .line 199
    new-array v13, v9, [I

    .line 200
    move v12, v7

    .line 202
    move v15, v12

    .line 203
    :goto_6
    if-ge v15, v9, :cond_b

    .line 204
    invoke-interface {v1, v15}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 206
    move-result v14

    .line 209
    const v7, 0x10101a5    # @android:attr/color

    .line 210
    if-eq v14, v7, :cond_a

    .line 213
    const v7, 0x101031f    # @android:attr/alpha

    .line 215
    if-eq v14, v7, :cond_a

    .line 218
    const v7, 0x7f040085    # @attr/alpha

    .line 220
    if-eq v14, v7, :cond_a

    .line 223
    const v7, 0x7f040410    # @attr/lStar

    .line 225
    if-eq v14, v7, :cond_a

    .line 228
    add-int/lit8 v7, v12, 0x1

    .line 230
    const/4 v0, 0x0

    .line 232
    invoke-interface {v1, v15, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 233
    move-result v19

    .line 236
    if-eqz v19, :cond_9

    .line 237
    goto :goto_7

    .line 239
    :cond_9
    neg-int v14, v14

    .line 240
    :goto_7
    aput v14, v13, v12

    .line 241
    move v12, v7

    .line 243
    :cond_a
    add-int/lit8 v15, v15, 0x1

    .line 244
    move-object/from16 v0, p0

    .line 246
    const/4 v7, 0x0

    .line 248
    const/high16 v14, 0x3f800000    # 1.0f

    .line 249
    goto :goto_6

    .line 251
    :cond_b
    invoke-static {v13, v12}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 252
    move-result-object v0

    .line 255
    const/4 v7, 0x0

    .line 256
    cmpl-float v9, v4, v7

    .line 257
    const/high16 v12, 0x42c80000    # 100.0f

    .line 259
    if-ltz v9, :cond_c

    .line 261
    cmpg-float v9, v4, v12

    .line 263
    if-gtz v9, :cond_c

    .line 265
    const/4 v9, 0x1

    .line 267
    goto :goto_8

    .line 268
    :cond_c
    const/4 v9, 0x0

    .line 269
    :goto_8
    const/high16 v13, 0x3f800000    # 1.0f

    .line 270
    cmpl-float v14, v11, v13

    .line 272
    if-nez v14, :cond_d

    .line 274
    if-nez v9, :cond_d

    .line 276
    move-object v7, v0

    .line 278
    move/from16 v28, v3

    .line 279
    const/16 v16, 0x1

    .line 281
    goto/16 :goto_14

    .line 283
    :cond_d
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    .line 285
    move-result v13

    .line 288
    int-to-float v13, v13

    .line 289
    mul-float/2addr v13, v11

    .line 290
    const/high16 v11, 0x3f000000    # 0.5f

    .line 291
    add-float/2addr v13, v11

    .line 293
    float-to-int v11, v13

    .line 294
    const/16 v13, 0xff

    .line 295
    const/4 v14, 0x0

    .line 297
    invoke-static {v11, v14, v13}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 298
    move-result v11

    .line 301
    if-eqz v9, :cond_1c

    .line 302
    invoke-static {v10}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    .line 304
    move-result-object v9

    .line 307
    sget-object v10, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 308
    iget v13, v9, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 310
    float-to-double v14, v13

    .line 312
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 313
    cmpg-double v14, v14, v19

    .line 315
    if-ltz v14, :cond_1b

    .line 317
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 319
    move-result v14

    .line 322
    int-to-double v14, v14

    .line 323
    const-wide/16 v19, 0x0

    .line 324
    cmpg-double v14, v14, v19

    .line 326
    if-lez v14, :cond_1b

    .line 328
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 330
    move-result v14

    .line 333
    int-to-double v14, v14

    .line 334
    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    .line 335
    cmpl-double v14, v14, v19

    .line 337
    if-ltz v14, :cond_e

    .line 339
    goto/16 :goto_12

    .line 341
    :cond_e
    iget v9, v9, Landroidx/core/content/res/CamColor;->mHue:F

    .line 343
    cmpg-float v14, v9, v7

    .line 345
    if-gez v14, :cond_f

    .line 347
    move v9, v7

    .line 349
    goto :goto_9

    .line 350
    :cond_f
    const/high16 v14, 0x43b40000    # 360.0f

    .line 351
    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    .line 353
    move-result v9

    .line 356
    :goto_9
    move/from16 v20, v7

    .line 357
    move v15, v13

    .line 359
    const/4 v14, 0x0

    .line 360
    const/16 v19, 0x1

    .line 361
    :goto_a
    sub-float v21, v20, v13

    .line 363
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    .line 365
    move-result v21

    .line 368
    const v22, 0x3ecccccd    # 0.4f

    .line 369
    cmpl-float v21, v21, v22

    .line 372
    if-ltz v21, :cond_19

    .line 374
    const/high16 v21, 0x447a0000    # 1000.0f

    .line 376
    move/from16 v23, v7

    .line 378
    move/from16 v24, v12

    .line 380
    move/from16 v22, v21

    .line 382
    const/16 v25, 0x0

    .line 384
    :goto_b
    sub-float v26, v23, v24

    .line 386
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    .line 388
    move-result v26

    .line 391
    const v27, 0x3c23d70a    # 0.01f

    .line 392
    cmpl-float v26, v26, v27

    .line 395
    const/high16 v27, 0x40000000    # 2.0f

    .line 397
    if-lez v26, :cond_15

    .line 399
    sub-float v26, v24, v23

    .line 401
    div-float v26, v26, v27

    .line 403
    add-float v7, v26, v23

    .line 405
    invoke-static {v7, v15, v9}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    .line 407
    move-result-object v12

    .line 410
    sget-object v1, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 411
    invoke-virtual {v12, v1}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    .line 413
    move-result v1

    .line 416
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 417
    move-result v12

    .line 420
    invoke-static {v12}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    .line 421
    move-result v12

    .line 424
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 425
    move-result v28

    .line 428
    invoke-static/range {v28 .. v28}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    .line 429
    move-result v28

    .line 432
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 433
    move-result v29

    .line 436
    invoke-static/range {v29 .. v29}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    .line 437
    move-result v29

    .line 440
    sget-object v30, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    .line 441
    const/16 v16, 0x1

    .line 443
    aget-object v30, v30, v16

    .line 445
    const/16 v18, 0x0

    .line 447
    aget v31, v30, v18

    .line 449
    mul-float v12, v12, v31

    .line 451
    aget v31, v30, v16

    .line 453
    mul-float v28, v28, v31

    .line 455
    add-float v28, v28, v12

    .line 457
    const/4 v12, 0x2

    .line 459
    aget v17, v30, v12

    .line 460
    mul-float v29, v29, v17

    .line 462
    add-float v29, v29, v28

    .line 464
    const/high16 v17, 0x42c80000    # 100.0f

    .line 466
    div-float v12, v29, v17

    .line 468
    const v28, 0x3c111aa7

    .line 470
    cmpg-float v28, v12, v28

    .line 473
    if-gtz v28, :cond_10

    .line 475
    const v28, 0x4461d2f7

    .line 477
    mul-float v12, v12, v28

    .line 480
    move/from16 v28, v3

    .line 482
    goto :goto_c

    .line 484
    :cond_10
    move/from16 v28, v3

    .line 485
    float-to-double v2, v12

    .line 487
    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    .line 488
    move-result-wide v2

    .line 491
    double-to-float v2, v2

    .line 492
    const/high16 v3, 0x42e80000    # 116.0f

    .line 493
    mul-float/2addr v2, v3

    .line 495
    const/high16 v3, 0x41800000    # 16.0f

    .line 496
    sub-float v12, v2, v3

    .line 498
    :goto_c
    sub-float v2, v4, v12

    .line 500
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 502
    move-result v2

    .line 505
    const v3, 0x3e4ccccd    # 0.2f

    .line 506
    cmpg-float v3, v2, v3

    .line 509
    if-gez v3, :cond_11

    .line 511
    invoke-static {v1}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    .line 513
    move-result-object v1

    .line 516
    iget v3, v1, Landroidx/core/content/res/CamColor;->mJ:F

    .line 517
    move/from16 v29, v2

    .line 519
    iget v2, v1, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 521
    invoke-static {v3, v2, v9}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    .line 523
    move-result-object v2

    .line 526
    iget v3, v2, Landroidx/core/content/res/CamColor;->mJstar:F

    .line 527
    move/from16 v30, v7

    .line 529
    iget v7, v1, Landroidx/core/content/res/CamColor;->mJstar:F

    .line 531
    sub-float/2addr v7, v3

    .line 533
    iget v3, v1, Landroidx/core/content/res/CamColor;->mAstar:F

    .line 534
    move/from16 v31, v9

    .line 536
    iget v9, v2, Landroidx/core/content/res/CamColor;->mAstar:F

    .line 538
    sub-float/2addr v3, v9

    .line 540
    iget v9, v1, Landroidx/core/content/res/CamColor;->mBstar:F

    .line 541
    iget v2, v2, Landroidx/core/content/res/CamColor;->mBstar:F

    .line 543
    sub-float/2addr v9, v2

    .line 545
    mul-float/2addr v7, v7

    .line 546
    mul-float/2addr v3, v3

    .line 547
    add-float/2addr v3, v7

    .line 548
    mul-float/2addr v9, v9

    .line 549
    add-float/2addr v9, v3

    .line 550
    float-to-double v2, v9

    .line 551
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 552
    move-result-wide v2

    .line 555
    move-object v7, v0

    .line 556
    move-object v9, v1

    .line 557
    const-wide v0, 0x3fe428f5c28f5c29L    # 0.63

    .line 558
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 563
    move-result-wide v0

    .line 566
    const-wide v2, 0x3ff68f5c28f5c28fL    # 1.41

    .line 567
    mul-double/2addr v0, v2

    .line 572
    double-to-float v0, v0

    .line 573
    const/high16 v1, 0x3f800000    # 1.0f

    .line 574
    cmpg-float v2, v0, v1

    .line 576
    if-gtz v2, :cond_12

    .line 578
    move/from16 v22, v0

    .line 580
    move-object/from16 v25, v9

    .line 582
    move/from16 v21, v29

    .line 584
    goto :goto_d

    .line 586
    :cond_11
    move/from16 v30, v7

    .line 587
    move/from16 v31, v9

    .line 589
    const/high16 v1, 0x3f800000    # 1.0f

    .line 591
    move-object v7, v0

    .line 593
    :cond_12
    :goto_d
    const/4 v0, 0x0

    .line 594
    cmpl-float v2, v21, v0

    .line 595
    if-nez v2, :cond_13

    .line 597
    cmpl-float v2, v22, v0

    .line 599
    if-nez v2, :cond_13

    .line 601
    goto :goto_f

    .line 603
    :cond_13
    cmpg-float v2, v12, v4

    .line 604
    if-gez v2, :cond_14

    .line 606
    move/from16 v23, v30

    .line 608
    goto :goto_e

    .line 610
    :cond_14
    move/from16 v24, v30

    .line 611
    :goto_e
    move-object/from16 v1, p2

    .line 613
    move-object/from16 v2, p3

    .line 615
    move/from16 v12, v17

    .line 617
    move/from16 v3, v28

    .line 619
    move/from16 v9, v31

    .line 621
    move-object/from16 v32, v7

    .line 623
    move v7, v0

    .line 625
    move-object/from16 v0, v32

    .line 626
    goto/16 :goto_b

    .line 628
    :cond_15
    move/from16 v28, v3

    .line 630
    move/from16 v31, v9

    .line 632
    move/from16 v17, v12

    .line 634
    const/high16 v1, 0x3f800000    # 1.0f

    .line 636
    const/16 v16, 0x1

    .line 638
    move/from16 v32, v7

    .line 640
    move-object v7, v0

    .line 642
    move/from16 v0, v32

    .line 643
    :goto_f
    move-object/from16 v2, v25

    .line 645
    if-eqz v19, :cond_17

    .line 647
    if-eqz v2, :cond_16

    .line 649
    invoke-virtual {v2, v10}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    .line 651
    move-result v10

    .line 654
    goto :goto_13

    .line 655
    :cond_16
    sub-float v2, v13, v20

    .line 656
    div-float v2, v2, v27

    .line 658
    add-float v2, v2, v20

    .line 660
    move v15, v2

    .line 662
    const/16 v19, 0x0

    .line 663
    goto :goto_11

    .line 665
    :cond_17
    if-nez v2, :cond_18

    .line 666
    move v13, v15

    .line 668
    move/from16 v15, v20

    .line 669
    goto :goto_10

    .line 671
    :cond_18
    move-object v14, v2

    .line 672
    :goto_10
    sub-float v2, v13, v15

    .line 673
    div-float v2, v2, v27

    .line 675
    add-float/2addr v2, v15

    .line 677
    move/from16 v20, v15

    .line 678
    move v15, v2

    .line 680
    :goto_11
    move-object/from16 v1, p2

    .line 681
    move-object/from16 v2, p3

    .line 683
    move/from16 v12, v17

    .line 685
    move/from16 v3, v28

    .line 687
    move/from16 v9, v31

    .line 689
    move-object/from16 v32, v7

    .line 691
    move v7, v0

    .line 693
    move-object/from16 v0, v32

    .line 694
    goto/16 :goto_a

    .line 696
    :cond_19
    move-object v7, v0

    .line 698
    move/from16 v28, v3

    .line 699
    const/16 v16, 0x1

    .line 701
    if-nez v14, :cond_1a

    .line 703
    invoke-static {v4}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    .line 705
    move-result v10

    .line 708
    goto :goto_13

    .line 709
    :cond_1a
    invoke-virtual {v14, v10}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    .line 710
    move-result v10

    .line 713
    goto :goto_13

    .line 714
    :cond_1b
    :goto_12
    move-object v7, v0

    .line 715
    move/from16 v28, v3

    .line 716
    const/16 v16, 0x1

    .line 718
    invoke-static {v4}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    .line 720
    move-result v10

    .line 723
    goto :goto_13

    .line 724
    :cond_1c
    move-object v7, v0

    .line 725
    move/from16 v28, v3

    .line 726
    const/16 v16, 0x1

    .line 728
    :goto_13
    const v0, 0xffffff

    .line 730
    and-int/2addr v0, v10

    .line 733
    shl-int/lit8 v1, v11, 0x18

    .line 734
    or-int v10, v0, v1

    .line 736
    :goto_14
    add-int/lit8 v0, v8, 0x1

    .line 738
    array-length v1, v5

    .line 740
    const/16 v2, 0x8

    .line 741
    if-le v0, v1, :cond_1e

    .line 743
    const/4 v1, 0x4

    .line 745
    if-gt v8, v1, :cond_1d

    .line 746
    move v1, v2

    .line 748
    goto :goto_15

    .line 749
    :cond_1d
    mul-int/lit8 v1, v8, 0x2

    .line 750
    :goto_15
    new-array v1, v1, [I

    .line 752
    const/4 v3, 0x0

    .line 754
    invoke-static {v5, v3, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    move-object v5, v1

    .line 758
    :cond_1e
    aput v10, v5, v8

    .line 759
    array-length v1, v6

    .line 761
    if-le v0, v1, :cond_20

    .line 762
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 764
    move-result-object v1

    .line 767
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 768
    move-result-object v1

    .line 771
    const/4 v3, 0x4

    .line 772
    if-gt v8, v3, :cond_1f

    .line 773
    goto :goto_16

    .line 775
    :cond_1f
    mul-int/lit8 v2, v8, 0x2

    .line 776
    :goto_16
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 778
    move-result-object v1

    .line 781
    check-cast v1, [Ljava/lang/Object;

    .line 782
    const/4 v2, 0x0

    .line 784
    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    move-object v6, v1

    .line 788
    :cond_20
    aput-object v7, v6, v8

    .line 789
    check-cast v6, [[I

    .line 791
    move-object/from16 v1, p2

    .line 793
    move-object/from16 v2, p3

    .line 795
    move v8, v0

    .line 797
    move/from16 v4, v16

    .line 798
    move/from16 v3, v28

    .line 800
    const/4 v7, 0x0

    .line 802
    move-object/from16 v0, p0

    .line 803
    goto/16 :goto_0

    .line 805
    :cond_21
    :goto_17
    move/from16 v28, v3

    .line 807
    move/from16 v16, v4

    .line 809
    move-object/from16 v0, p0

    .line 811
    move-object/from16 v1, p2

    .line 813
    move-object/from16 v2, p3

    .line 815
    move/from16 v4, v16

    .line 817
    move/from16 v3, v28

    .line 819
    const/4 v7, 0x0

    .line 821
    goto/16 :goto_0

    .line 822
    :cond_22
    new-array v0, v8, [I

    .line 824
    new-array v1, v8, [[I

    .line 826
    const/4 v2, 0x0

    .line 828
    invoke-static {v5, v2, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 835
    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 837
    return-object v2

    .line 840
    :cond_23
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    .line 843
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 848
    move-result-object v2

    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    const-string v2, ": invalid color state list tag "

    .line 855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 863
    move-result-object v1

    .line 866
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 867
    throw v0
    .line 870
.end method
