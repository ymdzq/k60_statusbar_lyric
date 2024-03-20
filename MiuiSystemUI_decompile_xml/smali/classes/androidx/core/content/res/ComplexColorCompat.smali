.class public final Landroidx/core/content/res/ComplexColorCompat;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mColor:I

.field public final mColorStateList:Landroid/content/res/ColorStateList;

.field public final mShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    .line 5
    iput-object p2, p0, Landroidx/core/content/res/ComplexColorCompat;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 7
    iput p3, p0, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    .line 9
    return-void
    .line 11
.end method

.method public static createFromXml(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/ComplexColorCompat;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 6
    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 10
    move-result-object v3

    .line 13
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 14
    move-result v4

    .line 17
    const/4 v5, 0x2

    .line 18
    const/4 v6, 0x1

    .line 19
    if-eq v4, v5, :cond_0

    .line 20
    if-eq v4, v6, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    if-ne v4, v5, :cond_18

    .line 25
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    const-string v7, "gradient"

    .line 34
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v8

    .line 39
    const/4 v9, 0x0

    .line 40
    if-nez v8, :cond_2

    .line 41
    const-string/jumbo v5, "selector"

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v5

    .line 49
    if-eqz v5, :cond_1

    .line 50
    invoke-static {v0, v2, v3, v1}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 52
    move-result-object v0

    .line 55
    new-instance v1, Landroidx/core/content/res/ComplexColorCompat;

    .line 56
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 58
    move-result v2

    .line 61
    invoke-direct {v1, v9, v0, v2}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    .line 62
    return-object v1

    .line 65
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v2, ": unsupported complex color tag "

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 92
    throw v0

    .line 95
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 96
    move-result-object v4

    .line 99
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v7

    .line 103
    if-eqz v7, :cond_17

    .line 104
    sget-object v4, Landroidx/core/R$styleable;->GradientColor:[I

    .line 106
    invoke-static {v0, v1, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 108
    move-result-object v4

    .line 111
    const-string/jumbo v7, "startX"

    .line 112
    const/16 v8, 0x8

    .line 115
    const/4 v10, 0x0

    .line 117
    invoke-static {v4, v2, v7, v8, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 118
    move-result v12

    .line 121
    const-string/jumbo v7, "startY"

    .line 122
    const/16 v8, 0x9

    .line 125
    invoke-static {v4, v2, v7, v8, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 127
    move-result v13

    .line 130
    const-string v7, "endX"

    .line 131
    const/16 v8, 0xa

    .line 133
    invoke-static {v4, v2, v7, v8, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 135
    move-result v14

    .line 138
    const-string v7, "endY"

    .line 139
    const/16 v8, 0xb

    .line 141
    invoke-static {v4, v2, v7, v8, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 143
    move-result v15

    .line 146
    const-string v7, "centerX"

    .line 147
    const/4 v8, 0x3

    .line 149
    invoke-static {v4, v2, v7, v8, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 150
    move-result v7

    .line 153
    const-string v11, "centerY"

    .line 154
    const/4 v9, 0x4

    .line 156
    invoke-static {v4, v2, v11, v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 157
    move-result v9

    .line 160
    const-string/jumbo v11, "type"

    .line 161
    const/4 v8, 0x0

    .line 164
    invoke-static {v4, v2, v11, v5, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 165
    move-result v11

    .line 168
    const-string/jumbo v5, "startColor"

    .line 169
    invoke-static {v2, v5}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 172
    move-result v5

    .line 175
    if-nez v5, :cond_3

    .line 176
    move v5, v8

    .line 178
    goto :goto_1

    .line 179
    :cond_3
    invoke-virtual {v4, v8, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 180
    move-result v5

    .line 183
    :goto_1
    const-string v10, "centerColor"

    .line 184
    invoke-static {v2, v10}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 186
    move-result v19

    .line 189
    invoke-static {v2, v10}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 190
    move-result v10

    .line 193
    if-nez v10, :cond_4

    .line 194
    move v10, v8

    .line 196
    goto :goto_2

    .line 197
    :cond_4
    const/4 v10, 0x7

    .line 198
    invoke-virtual {v4, v10, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 199
    move-result v10

    .line 202
    :goto_2
    const-string v6, "endColor"

    .line 203
    invoke-static {v2, v6}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 205
    move-result v6

    .line 208
    if-nez v6, :cond_5

    .line 209
    move v6, v8

    .line 211
    goto :goto_3

    .line 212
    :cond_5
    const/4 v6, 0x1

    .line 213
    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 214
    move-result v21

    .line 217
    move/from16 v6, v21

    .line 218
    :goto_3
    move/from16 v21, v7

    .line 220
    const-string/jumbo v7, "tileMode"

    .line 222
    move/from16 v22, v9

    .line 225
    const/4 v9, 0x6

    .line 227
    invoke-static {v4, v2, v7, v9, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 228
    move-result v7

    .line 231
    const-string v9, "gradientRadius"

    .line 232
    const/4 v8, 0x5

    .line 234
    move/from16 v23, v15

    .line 235
    const/4 v15, 0x0

    .line 237
    invoke-static {v4, v2, v9, v8, v15}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 238
    move-result v8

    .line 241
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 245
    move-result v4

    .line 248
    const/4 v9, 0x1

    .line 249
    add-int/2addr v4, v9

    .line 250
    new-instance v15, Ljava/util/ArrayList;

    .line 251
    const/16 v9, 0x14

    .line 253
    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    move/from16 v24, v8

    .line 258
    new-instance v8, Ljava/util/ArrayList;

    .line 260
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 262
    :goto_4
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 265
    move-result v9

    .line 268
    move/from16 v25, v14

    .line 269
    const/4 v14, 0x1

    .line 271
    if-eq v9, v14, :cond_b

    .line 272
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 274
    move-result v14

    .line 277
    move/from16 v26, v13

    .line 278
    if-ge v14, v4, :cond_6

    .line 280
    const/4 v13, 0x3

    .line 282
    if-eq v9, v13, :cond_c

    .line 283
    :cond_6
    const/4 v13, 0x2

    .line 285
    if-eq v9, v13, :cond_7

    .line 286
    goto :goto_5

    .line 288
    :cond_7
    if-gt v14, v4, :cond_a

    .line 289
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 291
    move-result-object v9

    .line 294
    const-string v13, "item"

    .line 295
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    move-result v9

    .line 300
    if-nez v9, :cond_8

    .line 301
    goto :goto_5

    .line 303
    :cond_8
    sget-object v9, Landroidx/core/R$styleable;->GradientColorItem:[I

    .line 304
    invoke-static {v0, v1, v3, v9}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 306
    move-result-object v9

    .line 309
    const/4 v13, 0x0

    .line 310
    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 311
    move-result v14

    .line 314
    const/4 v13, 0x1

    .line 315
    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 316
    move-result v20

    .line 319
    if-eqz v14, :cond_9

    .line 320
    if-eqz v20, :cond_9

    .line 322
    const/4 v14, 0x0

    .line 324
    invoke-virtual {v9, v14, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 325
    move-result v27

    .line 328
    const/4 v14, 0x0

    .line 329
    invoke-virtual {v9, v13, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 330
    move-result v28

    .line 333
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 334
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    move-result-object v9

    .line 340
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 344
    move-result-object v9

    .line 347
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    goto :goto_5

    .line 351
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    .line 354
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 359
    move-result-object v2

    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v2, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    move-result-object v1

    .line 374
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 375
    throw v0

    .line 378
    :cond_a
    :goto_5
    move/from16 v14, v25

    .line 379
    move/from16 v13, v26

    .line 381
    goto :goto_4

    .line 383
    :cond_b
    move/from16 v26, v13

    .line 384
    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 386
    move-result v0

    .line 389
    if-lez v0, :cond_d

    .line 390
    new-instance v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    .line 392
    invoke-direct {v0, v8, v15}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 394
    goto :goto_6

    .line 397
    :cond_d
    const/4 v0, 0x0

    .line 398
    :goto_6
    if-eqz v0, :cond_e

    .line 399
    goto :goto_7

    .line 401
    :cond_e
    if-eqz v19, :cond_f

    .line 402
    new-instance v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    .line 404
    invoke-direct {v0, v5, v10, v6}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(III)V

    .line 406
    goto :goto_7

    .line 409
    :cond_f
    new-instance v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    .line 410
    invoke-direct {v0, v5, v6}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(II)V

    .line 412
    :goto_7
    const/4 v1, 0x1

    .line 415
    if-eq v11, v1, :cond_13

    .line 416
    const/4 v2, 0x2

    .line 418
    if-eq v11, v2, :cond_12

    .line 419
    new-instance v3, Landroid/graphics/LinearGradient;

    .line 421
    iget-object v4, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    .line 423
    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 425
    if-eq v7, v1, :cond_11

    .line 427
    if-eq v7, v2, :cond_10

    .line 429
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 431
    goto :goto_8

    .line 433
    :cond_10
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 434
    goto :goto_8

    .line 436
    :cond_11
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 437
    :goto_8
    move-object/from16 v18, v1

    .line 439
    move-object v11, v3

    .line 441
    move/from16 v13, v26

    .line 442
    move/from16 v14, v25

    .line 444
    move/from16 v15, v23

    .line 446
    move-object/from16 v16, v4

    .line 448
    move-object/from16 v17, v0

    .line 450
    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 452
    goto :goto_a

    .line 455
    :cond_12
    new-instance v3, Landroid/graphics/SweepGradient;

    .line 456
    iget-object v1, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    .line 458
    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 460
    move/from16 v2, v21

    .line 462
    move/from16 v4, v22

    .line 464
    invoke-direct {v3, v2, v4, v1, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 466
    goto :goto_a

    .line 469
    :cond_13
    move/from16 v2, v21

    .line 470
    move/from16 v4, v22

    .line 472
    const/4 v1, 0x0

    .line 474
    cmpg-float v1, v24, v1

    .line 475
    if-lez v1, :cond_16

    .line 477
    new-instance v3, Landroid/graphics/RadialGradient;

    .line 479
    iget-object v1, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    .line 481
    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 483
    const/4 v5, 0x1

    .line 485
    if-eq v7, v5, :cond_15

    .line 486
    const/4 v5, 0x2

    .line 488
    if-eq v7, v5, :cond_14

    .line 489
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 491
    goto :goto_9

    .line 493
    :cond_14
    sget-object v5, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 494
    goto :goto_9

    .line 496
    :cond_15
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 497
    :goto_9
    move-object/from16 v22, v5

    .line 499
    move-object/from16 v16, v3

    .line 501
    move/from16 v17, v2

    .line 503
    move/from16 v18, v4

    .line 505
    move/from16 v19, v24

    .line 507
    move-object/from16 v20, v1

    .line 509
    move-object/from16 v21, v0

    .line 511
    invoke-direct/range {v16 .. v22}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 513
    :goto_a
    new-instance v0, Landroidx/core/content/res/ComplexColorCompat;

    .line 516
    const/4 v1, 0x0

    .line 518
    const/4 v2, 0x0

    .line 519
    invoke-direct {v0, v3, v1, v2}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    .line 520
    return-object v0

    .line 523
    :cond_16
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 524
    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    .line 526
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 528
    throw v0

    .line 531
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    .line 534
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 539
    move-result-object v2

    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string v2, ": invalid gradient color tag "

    .line 546
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    move-result-object v1

    .line 557
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 558
    throw v0

    .line 561
    :cond_18
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 562
    const-string v1, "No start tag found"

    .line 564
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 566
    throw v0
    .line 569
.end method


# virtual methods
.method public final isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Landroidx/core/content/res/ComplexColorCompat;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
    .line 19
.end method
