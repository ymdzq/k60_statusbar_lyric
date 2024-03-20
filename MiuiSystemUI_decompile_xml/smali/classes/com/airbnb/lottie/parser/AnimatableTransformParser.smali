.class public abstract Lcom/airbnb/lottie/parser/AnimatableTransformParser;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "a"

    .line 2
    const-string v1, "p"

    .line 4
    const-string/jumbo v2, "s"

    .line 6
    const-string/jumbo v3, "rz"

    .line 9
    const-string v4, "r"

    .line 12
    const-string v5, "o"

    .line 14
    const-string/jumbo v6, "so"

    .line 16
    const-string v7, "eo"

    .line 19
    const-string/jumbo v8, "sk"

    .line 21
    const-string/jumbo v9, "sa"

    .line 24
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 31
    move-result-object v0

    .line 34
    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 35
    const-string v0, "k"

    .line 37
    filled-new-array {v0}, [Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 43
    move-result-object v0

    .line 46
    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 47
    return-void
    .line 49
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v8, p1

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 6
    move-result-object v1

    .line 9
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 10
    const/4 v10, 0x0

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    const/4 v11, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v11, v10

    .line 17
    :goto_0
    if-eqz v11, :cond_1

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v13, 0x0

    .line 26
    const/4 v14, 0x0

    .line 27
    const/4 v15, 0x0

    .line 28
    const/16 v21, 0x0

    .line 29
    const/16 v22, 0x0

    .line 31
    const/16 v23, 0x0

    .line 33
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 35
    move-result v2

    .line 38
    const/high16 v3, 0x3f800000    # 1.0f

    .line 39
    const/4 v4, 0x0

    .line 41
    if-eqz v2, :cond_6

    .line 42
    sget-object v2, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 44
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 46
    move-result v2

    .line 49
    packed-switch v2, :pswitch_data_0

    .line 50
    move-object/from16 v26, v6

    .line 53
    move-object/from16 v27, v7

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 60
    goto :goto_1

    .line 63
    :pswitch_0
    invoke-static {v0, v8, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 64
    move-result-object v13

    .line 67
    goto :goto_1

    .line 68
    :pswitch_1
    invoke-static {v0, v8, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 69
    move-result-object v14

    .line 72
    goto :goto_1

    .line 73
    :pswitch_2
    invoke-static {v0, v8, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 74
    move-result-object v23

    .line 77
    goto :goto_1

    .line 78
    :pswitch_3
    invoke-static {v0, v8, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 79
    move-result-object v22

    .line 82
    goto :goto_1

    .line 83
    :pswitch_4
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 84
    move-result-object v21

    .line 87
    goto :goto_1

    .line 88
    :pswitch_5
    const-string v1, "Lottie doesn\'t support 3D layers."

    .line 89
    invoke-virtual {v8, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 91
    :pswitch_6
    invoke-static {v0, v8, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 94
    move-result-object v5

    .line 97
    iget-object v3, v5, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 98
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 100
    move-result v1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    new-instance v2, Lcom/airbnb/lottie/value/Keyframe;

    .line 106
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 108
    move-result-object v16

    .line 111
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 112
    move-result-object v4

    .line 115
    const/16 v17, 0x0

    .line 116
    const/16 v18, 0x0

    .line 118
    iget v1, v8, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 120
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 122
    move-result-object v19

    .line 125
    move-object v1, v2

    .line 126
    move-object v9, v2

    .line 127
    move-object/from16 v2, p1

    .line 128
    move-object v12, v3

    .line 130
    move-object/from16 v3, v16

    .line 131
    move-object/from16 v16, v5

    .line 133
    move-object/from16 v5, v17

    .line 135
    move-object/from16 v26, v6

    .line 137
    move/from16 v6, v18

    .line 139
    move-object/from16 v27, v7

    .line 141
    move-object/from16 v7, v19

    .line 143
    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 145
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    goto :goto_2

    .line 151
    :cond_2
    move-object v12, v3

    .line 152
    move-object/from16 v16, v5

    .line 153
    move-object/from16 v26, v6

    .line 155
    move-object/from16 v27, v7

    .line 157
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    move-result-object v1

    .line 162
    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 163
    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 165
    if-nez v1, :cond_3

    .line 167
    new-instance v9, Lcom/airbnb/lottie/value/Keyframe;

    .line 169
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 171
    move-result-object v3

    .line 174
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 175
    move-result-object v4

    .line 178
    const/4 v5, 0x0

    .line 179
    const/4 v6, 0x0

    .line 180
    iget v1, v8, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 181
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 183
    move-result-object v7

    .line 186
    move-object v1, v9

    .line 187
    move-object/from16 v2, p1

    .line 188
    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 190
    invoke-interface {v12, v10, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_3
    :goto_2
    move-object/from16 v1, v16

    .line 196
    :goto_3
    move-object/from16 v6, v26

    .line 198
    goto :goto_5

    .line 200
    :pswitch_7
    move-object/from16 v27, v7

    .line 201
    new-instance v6, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    .line 203
    sget-object v2, Lcom/airbnb/lottie/parser/ScaleXYParser;->INSTANCE:Lcom/airbnb/lottie/parser/ScaleXYParser;

    .line 205
    invoke-static {v0, v8, v3, v2, v10}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;

    .line 207
    move-result-object v2

    .line 210
    invoke-direct {v6, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;-><init>(Ljava/util/List;)V

    .line 211
    goto :goto_5

    .line 214
    :pswitch_8
    move-object/from16 v26, v6

    .line 215
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 217
    move-result-object v7

    .line 220
    goto/16 :goto_1

    .line 221
    :pswitch_9
    move-object/from16 v26, v6

    .line 223
    move-object/from16 v27, v7

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 227
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 230
    move-result v2

    .line 233
    if-eqz v2, :cond_5

    .line 234
    sget-object v2, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 236
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 238
    move-result v2

    .line 241
    if-eqz v2, :cond_4

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 247
    goto :goto_4

    .line 250
    :cond_4
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    .line 251
    move-result-object v15

    .line 254
    goto :goto_4

    .line 255
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 256
    goto :goto_3

    .line 259
    :goto_5
    move-object/from16 v7, v27

    .line 260
    goto/16 :goto_1

    .line 262
    :cond_6
    move-object/from16 v26, v6

    .line 264
    move-object/from16 v27, v7

    .line 266
    if-eqz v11, :cond_7

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 270
    :cond_7
    if-eqz v15, :cond_9

    .line 273
    invoke-virtual {v15}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->isStatic()Z

    .line 275
    move-result v0

    .line 278
    if-eqz v0, :cond_8

    .line 279
    iget-object v0, v15, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    .line 281
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 283
    move-result-object v0

    .line 286
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 287
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 289
    check-cast v0, Landroid/graphics/PointF;

    .line 291
    invoke-virtual {v0, v4, v4}, Landroid/graphics/PointF;->equals(FF)Z

    .line 293
    move-result v0

    .line 296
    if-eqz v0, :cond_8

    .line 297
    goto :goto_6

    .line 299
    :cond_8
    move v0, v10

    .line 300
    goto :goto_7

    .line 301
    :cond_9
    :goto_6
    const/4 v0, 0x1

    .line 302
    :goto_7
    if-eqz v0, :cond_a

    .line 303
    move-object/from16 v7, v27

    .line 305
    const/16 v17, 0x0

    .line 307
    goto :goto_8

    .line 309
    :cond_a
    move-object/from16 v17, v15

    .line 310
    move-object/from16 v7, v27

    .line 312
    :goto_8
    if-eqz v7, :cond_c

    .line 314
    instance-of v0, v7, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;

    .line 316
    if-nez v0, :cond_b

    .line 318
    invoke-interface {v7}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->isStatic()Z

    .line 320
    move-result v0

    .line 323
    if-eqz v0, :cond_b

    .line 324
    invoke-interface {v7}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->getKeyframes()Ljava/util/List;

    .line 326
    move-result-object v0

    .line 329
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 330
    move-result-object v0

    .line 333
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 334
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 336
    check-cast v0, Landroid/graphics/PointF;

    .line 338
    invoke-virtual {v0, v4, v4}, Landroid/graphics/PointF;->equals(FF)Z

    .line 340
    move-result v0

    .line 343
    if-eqz v0, :cond_b

    .line 344
    goto :goto_9

    .line 346
    :cond_b
    move v0, v10

    .line 347
    goto :goto_a

    .line 348
    :cond_c
    :goto_9
    const/4 v0, 0x1

    .line 349
    :goto_a
    if-eqz v0, :cond_d

    .line 350
    const/16 v18, 0x0

    .line 352
    goto :goto_b

    .line 354
    :cond_d
    move-object/from16 v18, v7

    .line 355
    :goto_b
    if-eqz v1, :cond_f

    .line 357
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->isStatic()Z

    .line 359
    move-result v0

    .line 362
    if-eqz v0, :cond_e

    .line 363
    iget-object v0, v1, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 365
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 367
    move-result-object v0

    .line 370
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 371
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 373
    check-cast v0, Ljava/lang/Float;

    .line 375
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 377
    move-result v0

    .line 380
    cmpl-float v0, v0, v4

    .line 381
    if-nez v0, :cond_e

    .line 383
    goto :goto_c

    .line 385
    :cond_e
    move v0, v10

    .line 386
    goto :goto_d

    .line 387
    :cond_f
    :goto_c
    const/4 v0, 0x1

    .line 388
    :goto_d
    move-object/from16 v6, v26

    .line 389
    if-eqz v0, :cond_10

    .line 391
    const/4 v1, 0x0

    .line 393
    :cond_10
    if-eqz v6, :cond_13

    .line 394
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->isStatic()Z

    .line 396
    move-result v0

    .line 399
    if-eqz v0, :cond_12

    .line 400
    iget-object v0, v6, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 402
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 404
    move-result-object v0

    .line 407
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 408
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 410
    check-cast v0, Lcom/airbnb/lottie/value/ScaleXY;

    .line 412
    iget v2, v0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 414
    cmpl-float v2, v2, v3

    .line 416
    if-nez v2, :cond_11

    .line 418
    iget v0, v0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 420
    cmpl-float v0, v0, v3

    .line 422
    if-nez v0, :cond_11

    .line 424
    const/4 v0, 0x1

    .line 426
    goto :goto_e

    .line 427
    :cond_11
    move v0, v10

    .line 428
    :goto_e
    if-eqz v0, :cond_12

    .line 429
    goto :goto_f

    .line 431
    :cond_12
    move v0, v10

    .line 432
    goto :goto_10

    .line 433
    :cond_13
    :goto_f
    const/4 v0, 0x1

    .line 434
    :goto_10
    if-eqz v0, :cond_14

    .line 435
    const/16 v19, 0x0

    .line 437
    goto :goto_11

    .line 439
    :cond_14
    move-object/from16 v19, v6

    .line 440
    :goto_11
    if-eqz v14, :cond_16

    .line 442
    invoke-virtual {v14}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->isStatic()Z

    .line 444
    move-result v0

    .line 447
    if-eqz v0, :cond_15

    .line 448
    iget-object v0, v14, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 450
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 452
    move-result-object v0

    .line 455
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 456
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 458
    check-cast v0, Ljava/lang/Float;

    .line 460
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 462
    move-result v0

    .line 465
    cmpl-float v0, v0, v4

    .line 466
    if-nez v0, :cond_15

    .line 468
    goto :goto_12

    .line 470
    :cond_15
    move v0, v10

    .line 471
    goto :goto_13

    .line 472
    :cond_16
    :goto_12
    const/4 v0, 0x1

    .line 473
    :goto_13
    if-eqz v0, :cond_17

    .line 474
    const/4 v14, 0x0

    .line 476
    :cond_17
    if-eqz v13, :cond_19

    .line 477
    invoke-virtual {v13}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->isStatic()Z

    .line 479
    move-result v0

    .line 482
    if-eqz v0, :cond_18

    .line 483
    iget-object v0, v13, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 485
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 487
    move-result-object v0

    .line 490
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 491
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 493
    check-cast v0, Ljava/lang/Float;

    .line 495
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 497
    move-result v0

    .line 500
    cmpl-float v0, v0, v4

    .line 501
    if-nez v0, :cond_18

    .line 503
    goto :goto_14

    .line 505
    :cond_18
    move v9, v10

    .line 506
    goto :goto_15

    .line 507
    :cond_19
    :goto_14
    const/4 v9, 0x1

    .line 508
    :goto_15
    if-eqz v9, :cond_1a

    .line 509
    const/16 v25, 0x0

    .line 511
    goto :goto_16

    .line 513
    :cond_1a
    move-object/from16 v25, v13

    .line 514
    :goto_16
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 516
    move-object/from16 v16, v0

    .line 518
    move-object/from16 v20, v1

    .line 520
    move-object/from16 v24, v14

    .line 522
    invoke-direct/range {v16 .. v25}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 524
    return-object v0

    .line 527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 528
.end method
