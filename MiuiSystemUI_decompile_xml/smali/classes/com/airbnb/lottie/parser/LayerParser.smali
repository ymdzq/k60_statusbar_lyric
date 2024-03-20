.class public abstract Lcom/airbnb/lottie/parser/LayerParser;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    .line 1
    const-string v0, "nm"

    .line 2
    const-string v1, "ind"

    .line 4
    const-string v2, "refId"

    .line 6
    const-string/jumbo v3, "ty"

    .line 8
    const-string v4, "parent"

    .line 11
    const-string/jumbo v5, "sw"

    .line 13
    const-string/jumbo v6, "sh"

    .line 16
    const-string/jumbo v7, "sc"

    .line 19
    const-string v8, "ks"

    .line 22
    const-string/jumbo v9, "tt"

    .line 24
    const-string v10, "masksProperties"

    .line 27
    const-string/jumbo v11, "shapes"

    .line 29
    const-string/jumbo v12, "t"

    .line 32
    const-string v13, "ef"

    .line 35
    const-string/jumbo v14, "sr"

    .line 37
    const-string/jumbo v15, "st"

    .line 40
    const-string/jumbo v16, "w"

    .line 43
    const-string v17, "h"

    .line 46
    const-string v18, "ip"

    .line 48
    const-string v19, "op"

    .line 50
    const-string/jumbo v20, "tm"

    .line 52
    const-string v21, "cl"

    .line 55
    const-string v22, "hd"

    .line 57
    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 63
    move-result-object v0

    .line 66
    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 67
    const-string v0, "d"

    .line 69
    const-string v1, "a"

    .line 71
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 77
    move-result-object v0

    .line 80
    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 81
    const-string/jumbo v0, "ty"

    .line 83
    const-string v1, "nm"

    .line 86
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 92
    move-result-object v0

    .line 95
    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 96
    return-void
    .line 98
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 48

    .line 1
    move-object/from16 v7, p1

    .line 2
    sget-object v0, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 4
    new-instance v10, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v8, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 16
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    move-result-object v9

    .line 24
    const/4 v11, 0x0

    .line 25
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    move-result-object v12

    .line 29
    const-string v2, "UNSET"

    .line 30
    const-wide/16 v3, 0x0

    .line 32
    const/4 v5, 0x0

    .line 34
    const-wide/16 v13, -0x1

    .line 35
    move-object/from16 v31, v0

    .line 37
    move/from16 v25, v1

    .line 39
    move/from16 v22, v5

    .line 41
    move/from16 v23, v22

    .line 43
    move/from16 v24, v23

    .line 45
    move/from16 v27, v24

    .line 47
    move/from16 v28, v27

    .line 49
    move/from16 v33, v28

    .line 51
    move/from16 v16, v11

    .line 53
    move/from16 v26, v16

    .line 55
    move/from16 v36, v26

    .line 57
    move-wide/from16 v18, v13

    .line 59
    const/16 v17, 0x0

    .line 61
    const/16 v20, 0x0

    .line 63
    const/16 v21, 0x0

    .line 65
    const/16 v29, 0x0

    .line 67
    const/16 v30, 0x0

    .line 69
    const/16 v32, 0x0

    .line 71
    const/16 v34, 0x0

    .line 73
    const/16 v35, 0x0

    .line 75
    move-object/from16 v0, p0

    .line 77
    move-object v13, v2

    .line 79
    move-wide v14, v3

    .line 80
    const/4 v4, 0x0

    .line 81
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 82
    move-result v2

    .line 85
    if-eqz v2, :cond_4d

    .line 86
    sget-object v2, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 88
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 90
    move-result v2

    .line 93
    const/4 v11, 0x2

    .line 94
    const/4 v6, 0x1

    .line 95
    packed-switch v2, :pswitch_data_0

    .line 96
    move-object/from16 v11, p0

    .line 99
    move-object/from16 v40, v4

    .line 101
    move v4, v5

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 107
    goto/16 :goto_24

    .line 110
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 112
    move-result v33

    .line 115
    goto :goto_1

    .line 116
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 120
    move-object/from16 v11, p0

    .line 121
    goto :goto_3

    .line 123
    :pswitch_2
    invoke-static {v0, v7, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 124
    move-result-object v32

    .line 127
    :goto_1
    move-object/from16 v11, p0

    .line 128
    goto :goto_2

    .line 130
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 131
    move-result-wide v1

    .line 134
    double-to-float v1, v1

    .line 135
    move-object/from16 v11, p0

    .line 136
    move/from16 v36, v1

    .line 138
    goto :goto_2

    .line 140
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 141
    move-result-wide v1

    .line 144
    double-to-float v1, v1

    .line 145
    move-object/from16 v11, p0

    .line 146
    move/from16 v16, v1

    .line 148
    goto :goto_2

    .line 150
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 151
    move-result v1

    .line 154
    int-to-float v1, v1

    .line 155
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 156
    move-result v2

    .line 159
    mul-float/2addr v2, v1

    .line 160
    float-to-int v1, v2

    .line 161
    move-object/from16 v11, p0

    .line 162
    move/from16 v28, v1

    .line 164
    goto :goto_2

    .line 166
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 167
    move-result v1

    .line 170
    int-to-float v1, v1

    .line 171
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 172
    move-result v2

    .line 175
    mul-float/2addr v2, v1

    .line 176
    float-to-int v1, v2

    .line 177
    move-object/from16 v11, p0

    .line 178
    move/from16 v27, v1

    .line 180
    goto :goto_2

    .line 182
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 183
    move-result-wide v1

    .line 186
    double-to-float v1, v1

    .line 187
    move-object/from16 v11, p0

    .line 188
    move/from16 v26, v1

    .line 190
    goto :goto_2

    .line 192
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 193
    move-result-wide v1

    .line 196
    double-to-float v1, v1

    .line 197
    move-object/from16 v11, p0

    .line 198
    move/from16 v25, v1

    .line 200
    :goto_2
    move-object v1, v4

    .line 202
    :goto_3
    move v4, v5

    .line 203
    goto/16 :goto_25

    .line 204
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 206
    new-instance v2, Ljava/util/ArrayList;

    .line 209
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 214
    move-result v40

    .line 217
    if-eqz v40, :cond_1f

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 220
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 223
    move-result v40

    .line 226
    if-eqz v40, :cond_1e

    .line 227
    sget-object v5, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 229
    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 231
    move-result v5

    .line 234
    if-eqz v5, :cond_1

    .line 235
    if-eq v5, v6, :cond_0

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 242
    goto/16 :goto_f

    .line 245
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 247
    move-result-object v5

    .line 250
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    goto/16 :goto_f

    .line 254
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 256
    move-result v5

    .line 259
    const/16 v3, 0x1d

    .line 260
    if-ne v5, v3, :cond_b

    .line 262
    sget-object v3, Lcom/airbnb/lottie/parser/BlurEffectParser;->BLUR_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 264
    const/16 v34, 0x0

    .line 266
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 268
    move-result v3

    .line 271
    if-eqz v3, :cond_a

    .line 272
    sget-object v3, Lcom/airbnb/lottie/parser/BlurEffectParser;->BLUR_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 274
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 276
    move-result v3

    .line 279
    if-eqz v3, :cond_2

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 285
    goto :goto_6

    .line 288
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 289
    :cond_3
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 292
    move-result v3

    .line 295
    if-eqz v3, :cond_9

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 298
    const/4 v3, 0x0

    .line 301
    :cond_4
    const/4 v5, 0x0

    .line 302
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 303
    move-result v41

    .line 306
    if-eqz v41, :cond_8

    .line 307
    sget-object v1, Lcom/airbnb/lottie/parser/BlurEffectParser;->INNER_BLUR_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 309
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 311
    move-result v1

    .line 314
    if-eqz v1, :cond_7

    .line 315
    if-eq v1, v6, :cond_5

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 322
    goto :goto_8

    .line 325
    :cond_5
    if-eqz v5, :cond_6

    .line 326
    new-instance v3, Lcom/airbnb/lottie/model/content/BlurEffect;

    .line 328
    invoke-static {v0, v7, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 330
    move-result-object v1

    .line 333
    invoke-direct {v3, v1}, Lcom/airbnb/lottie/model/content/BlurEffect;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 334
    goto :goto_8

    .line 337
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 338
    goto :goto_8

    .line 341
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 342
    move-result v1

    .line 345
    if-nez v1, :cond_4

    .line 346
    move v5, v6

    .line 348
    goto :goto_8

    .line 349
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 350
    if-eqz v3, :cond_3

    .line 353
    move-object/from16 v34, v3

    .line 355
    goto :goto_7

    .line 357
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 358
    goto :goto_6

    .line 361
    :cond_a
    const/4 v5, 0x0

    .line 362
    goto/16 :goto_5

    .line 363
    :cond_b
    const/16 v1, 0x19

    .line 365
    if-ne v5, v1, :cond_1d

    .line 367
    new-instance v1, Lcom/airbnb/lottie/parser/DropShadowEffectParser;

    .line 369
    invoke-direct {v1}, Lcom/airbnb/lottie/parser/DropShadowEffectParser;-><init>()V

    .line 371
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 374
    move-result v3

    .line 377
    if-eqz v3, :cond_1b

    .line 378
    sget-object v3, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->DROP_SHADOW_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 380
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 382
    move-result v3

    .line 385
    if-eqz v3, :cond_c

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 391
    goto :goto_9

    .line 394
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 395
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 398
    move-result v3

    .line 401
    if-eqz v3, :cond_1a

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 404
    const-string v3, ""

    .line 407
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 409
    move-result v5

    .line 412
    if-eqz v5, :cond_19

    .line 413
    sget-object v5, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->INNER_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 415
    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 417
    move-result v5

    .line 420
    if-eqz v5, :cond_18

    .line 421
    if-eq v5, v6, :cond_d

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 428
    goto/16 :goto_e

    .line 431
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 436
    move-result v5

    .line 439
    sparse-switch v5, :sswitch_data_0

    .line 440
    goto :goto_c

    .line 443
    :sswitch_0
    const-string v5, "Softness"

    .line 444
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 446
    move-result v5

    .line 449
    if-nez v5, :cond_e

    .line 450
    goto :goto_c

    .line 452
    :cond_e
    const/4 v5, 0x4

    .line 453
    goto :goto_d

    .line 454
    :sswitch_1
    const-string v5, "Shadow Color"

    .line 455
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    move-result v5

    .line 460
    if-nez v5, :cond_f

    .line 461
    goto :goto_c

    .line 463
    :cond_f
    const/4 v5, 0x3

    .line 464
    goto :goto_d

    .line 465
    :sswitch_2
    const-string v5, "Direction"

    .line 466
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 468
    move-result v5

    .line 471
    if-nez v5, :cond_10

    .line 472
    goto :goto_c

    .line 474
    :cond_10
    move v5, v11

    .line 475
    goto :goto_d

    .line 476
    :sswitch_3
    const-string v5, "Opacity"

    .line 477
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 479
    move-result v5

    .line 482
    if-nez v5, :cond_11

    .line 483
    goto :goto_c

    .line 485
    :cond_11
    move v5, v6

    .line 486
    goto :goto_d

    .line 487
    :sswitch_4
    const-string v5, "Distance"

    .line 488
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    move-result v5

    .line 493
    if-nez v5, :cond_12

    .line 494
    goto :goto_c

    .line 496
    :cond_12
    const/4 v5, 0x0

    .line 497
    goto :goto_d

    .line 498
    :goto_c
    const/4 v5, -0x1

    .line 499
    :goto_d
    if-eqz v5, :cond_17

    .line 500
    if-eq v5, v6, :cond_16

    .line 502
    if-eq v5, v11, :cond_15

    .line 504
    const/4 v11, 0x3

    .line 506
    if-eq v5, v11, :cond_14

    .line 507
    const/4 v11, 0x4

    .line 509
    if-eq v5, v11, :cond_13

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 512
    goto :goto_e

    .line 515
    :cond_13
    invoke-static {v0, v7, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 516
    move-result-object v5

    .line 519
    iput-object v5, v1, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 520
    goto :goto_e

    .line 522
    :cond_14
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 523
    move-result-object v5

    .line 526
    iput-object v5, v1, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 527
    goto :goto_e

    .line 529
    :cond_15
    const/4 v5, 0x0

    .line 530
    invoke-static {v0, v7, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 531
    move-result-object v11

    .line 534
    iput-object v11, v1, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 535
    goto :goto_e

    .line 537
    :cond_16
    const/4 v5, 0x0

    .line 538
    invoke-static {v0, v7, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 539
    move-result-object v11

    .line 542
    iput-object v11, v1, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 543
    goto :goto_e

    .line 545
    :cond_17
    invoke-static {v0, v7, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 546
    move-result-object v5

    .line 549
    iput-object v5, v1, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 550
    goto :goto_e

    .line 552
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 553
    move-result-object v3

    .line 556
    :goto_e
    const/4 v11, 0x2

    .line 557
    goto/16 :goto_b

    .line 558
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 560
    const/4 v11, 0x2

    .line 563
    goto/16 :goto_a

    .line 564
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 566
    const/4 v11, 0x2

    .line 569
    goto/16 :goto_9

    .line 570
    :cond_1b
    iget-object v3, v1, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 572
    if-eqz v3, :cond_1c

    .line 574
    iget-object v5, v1, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 576
    if-eqz v5, :cond_1c

    .line 578
    iget-object v11, v1, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 580
    if-eqz v11, :cond_1c

    .line 582
    iget-object v6, v1, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 584
    if-eqz v6, :cond_1c

    .line 586
    iget-object v1, v1, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 588
    if-eqz v1, :cond_1c

    .line 590
    new-instance v35, Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 592
    move-object/from16 v42, v35

    .line 594
    move-object/from16 v43, v3

    .line 596
    move-object/from16 v44, v5

    .line 598
    move-object/from16 v45, v11

    .line 600
    move-object/from16 v46, v6

    .line 602
    move-object/from16 v47, v1

    .line 604
    invoke-direct/range {v42 .. v47}, Lcom/airbnb/lottie/parser/DropShadowEffect;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 606
    goto :goto_f

    .line 609
    :cond_1c
    const/16 v35, 0x0

    .line 610
    :cond_1d
    :goto_f
    const/4 v5, 0x0

    .line 612
    const/4 v6, 0x1

    .line 613
    const/4 v11, 0x2

    .line 614
    goto/16 :goto_5

    .line 615
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 617
    const/4 v5, 0x0

    .line 620
    const/4 v6, 0x1

    .line 621
    const/4 v11, 0x2

    .line 622
    goto/16 :goto_4

    .line 623
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    .line 628
    const-string v3, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    .line 630
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    move-result-object v1

    .line 641
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 642
    const/4 v2, 0x0

    .line 645
    const/high16 v6, 0x3f800000    # 1.0f

    .line 646
    goto/16 :goto_15

    .line 648
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 650
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 653
    move-result v1

    .line 656
    if-eqz v1, :cond_2c

    .line 657
    sget-object v1, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 659
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 661
    move-result v1

    .line 664
    if-eqz v1, :cond_2b

    .line 665
    const/4 v2, 0x1

    .line 667
    if-eq v1, v2, :cond_20

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 673
    goto :goto_10

    .line 676
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 680
    move-result v1

    .line 683
    if-eqz v1, :cond_29

    .line 684
    sget-object v1, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 688
    const/4 v1, 0x0

    .line 691
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 692
    move-result v2

    .line 695
    if-eqz v2, :cond_27

    .line 696
    sget-object v2, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 698
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 700
    move-result v2

    .line 703
    if-eqz v2, :cond_21

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 709
    goto :goto_11

    .line 712
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 713
    const/4 v1, 0x0

    .line 716
    const/4 v2, 0x0

    .line 717
    const/4 v3, 0x0

    .line 718
    const/4 v5, 0x0

    .line 719
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 720
    move-result v6

    .line 723
    if-eqz v6, :cond_26

    .line 724
    sget-object v6, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->ANIMATABLE_PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 726
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 728
    move-result v6

    .line 731
    if-eqz v6, :cond_25

    .line 732
    const/4 v11, 0x1

    .line 734
    if-eq v6, v11, :cond_24

    .line 735
    const/4 v11, 0x2

    .line 737
    if-eq v6, v11, :cond_23

    .line 738
    const/4 v11, 0x3

    .line 740
    if-eq v6, v11, :cond_22

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 746
    goto :goto_12

    .line 749
    :cond_22
    const/4 v6, 0x1

    .line 750
    invoke-static {v0, v7, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 751
    move-result-object v5

    .line 754
    goto :goto_12

    .line 755
    :cond_23
    const/4 v6, 0x1

    .line 756
    invoke-static {v0, v7, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 757
    move-result-object v3

    .line 760
    goto :goto_12

    .line 761
    :cond_24
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 762
    move-result-object v2

    .line 765
    goto :goto_12

    .line 766
    :cond_25
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 767
    move-result-object v1

    .line 770
    goto :goto_12

    .line 771
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 772
    new-instance v6, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    .line 775
    invoke-direct {v6, v1, v2, v3, v5}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 777
    move-object v1, v6

    .line 780
    goto :goto_11

    .line 781
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 782
    if-nez v1, :cond_28

    .line 785
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    .line 787
    const/4 v2, 0x0

    .line 789
    invoke-direct {v1, v2, v2, v2, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 790
    goto :goto_13

    .line 793
    :cond_28
    const/4 v2, 0x0

    .line 794
    :goto_13
    move-object/from16 v30, v1

    .line 795
    goto :goto_14

    .line 797
    :cond_29
    const/4 v2, 0x0

    .line 798
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 799
    move-result v1

    .line 802
    if-eqz v1, :cond_2a

    .line 803
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 805
    goto :goto_14

    .line 808
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 809
    goto/16 :goto_10

    .line 812
    :cond_2b
    const/4 v2, 0x0

    .line 814
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 815
    sget-object v3, Lcom/airbnb/lottie/parser/DocumentDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

    .line 817
    const/4 v5, 0x0

    .line 819
    const/high16 v6, 0x3f800000    # 1.0f

    .line 820
    invoke-static {v0, v7, v6, v3, v5}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;

    .line 822
    move-result-object v3

    .line 825
    invoke-direct {v1, v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;)V

    .line 826
    move-object/from16 v29, v1

    .line 829
    goto/16 :goto_10

    .line 831
    :cond_2c
    const/4 v2, 0x0

    .line 833
    const/high16 v6, 0x3f800000    # 1.0f

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 836
    :goto_15
    move-object/from16 v11, p0

    .line 839
    move-object v1, v4

    .line 841
    const/4 v4, 0x0

    .line 842
    goto/16 :goto_25

    .line 843
    :pswitch_b
    const/4 v2, 0x0

    .line 845
    const/high16 v6, 0x3f800000    # 1.0f

    .line 846
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 848
    :cond_2d
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 851
    move-result v0

    .line 854
    if-eqz v0, :cond_2e

    .line 855
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    .line 857
    move-result-object v0

    .line 860
    if-eqz v0, :cond_2d

    .line 861
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    goto :goto_16

    .line 866
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 867
    move-object/from16 v11, p0

    .line 870
    move-object/from16 v40, v4

    .line 872
    const/4 v4, 0x0

    .line 874
    goto/16 :goto_24

    .line 875
    :pswitch_c
    const/4 v2, 0x0

    .line 877
    const/high16 v6, 0x3f800000    # 1.0f

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 880
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 883
    move-result v0

    .line 886
    if-eqz v0, :cond_48

    .line 887
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 889
    move-object v0, v2

    .line 892
    move-object v1, v0

    .line 893
    move-object v3, v1

    .line 894
    const/4 v5, 0x0

    .line 895
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 896
    move-result v11

    .line 899
    if-eqz v11, :cond_47

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    .line 902
    move-result-object v11

    .line 905
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 906
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 909
    move-result v2

    .line 912
    const/16 v6, 0x6f

    .line 913
    if-eq v2, v6, :cond_35

    .line 915
    const/16 v6, 0xe04

    .line 917
    if-eq v2, v6, :cond_33

    .line 919
    const v6, 0x197f1

    .line 921
    if-eq v2, v6, :cond_31

    .line 924
    const v6, 0x3339a3

    .line 926
    if-eq v2, v6, :cond_2f

    .line 929
    goto :goto_19

    .line 931
    :cond_2f
    const-string v2, "mode"

    .line 932
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 934
    move-result v2

    .line 937
    if-nez v2, :cond_30

    .line 938
    goto :goto_19

    .line 940
    :cond_30
    const/4 v2, 0x3

    .line 941
    goto :goto_1a

    .line 942
    :cond_31
    const-string v2, "inv"

    .line 943
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 945
    move-result v2

    .line 948
    if-nez v2, :cond_32

    .line 949
    goto :goto_19

    .line 951
    :cond_32
    const/4 v2, 0x2

    .line 952
    goto :goto_1a

    .line 953
    :cond_33
    const-string v2, "pt"

    .line 954
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 956
    move-result v2

    .line 959
    if-nez v2, :cond_34

    .line 960
    goto :goto_19

    .line 962
    :cond_34
    const/4 v2, 0x1

    .line 963
    goto :goto_1a

    .line 964
    :cond_35
    const-string v2, "o"

    .line 965
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 967
    move-result v2

    .line 970
    if-nez v2, :cond_36

    .line 971
    :goto_19
    const/4 v2, -0x1

    .line 973
    goto :goto_1a

    .line 974
    :cond_36
    const/4 v2, 0x0

    .line 975
    :goto_1a
    if-eqz v2, :cond_46

    .line 976
    const/4 v6, 0x1

    .line 978
    if-eq v2, v6, :cond_45

    .line 979
    const/4 v6, 0x2

    .line 981
    if-eq v2, v6, :cond_44

    .line 982
    const/4 v6, 0x3

    .line 984
    if-eq v2, v6, :cond_37

    .line 985
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 987
    :goto_1b
    const/4 v2, 0x0

    .line 990
    const/high16 v6, 0x3f800000    # 1.0f

    .line 991
    goto :goto_18

    .line 993
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 994
    move-result-object v0

    .line 997
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 998
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 1001
    move-result v2

    .line 1004
    const/16 v6, 0x61

    .line 1005
    if-eq v2, v6, :cond_3e

    .line 1007
    const/16 v6, 0x69

    .line 1009
    if-eq v2, v6, :cond_3c

    .line 1011
    const/16 v6, 0x6e

    .line 1013
    if-eq v2, v6, :cond_3a

    .line 1015
    const/16 v6, 0x73

    .line 1017
    if-eq v2, v6, :cond_38

    .line 1019
    goto :goto_1c

    .line 1021
    :cond_38
    const-string/jumbo v2, "s"

    .line 1022
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1025
    move-result v0

    .line 1028
    if-nez v0, :cond_39

    .line 1029
    goto :goto_1c

    .line 1031
    :cond_39
    const/4 v0, 0x3

    .line 1032
    goto :goto_1d

    .line 1033
    :cond_3a
    const-string v2, "n"

    .line 1034
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1036
    move-result v0

    .line 1039
    if-nez v0, :cond_3b

    .line 1040
    goto :goto_1c

    .line 1042
    :cond_3b
    const/4 v0, 0x2

    .line 1043
    goto :goto_1d

    .line 1044
    :cond_3c
    const-string v2, "i"

    .line 1045
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1047
    move-result v0

    .line 1050
    if-nez v0, :cond_3d

    .line 1051
    goto :goto_1c

    .line 1053
    :cond_3d
    const/4 v0, 0x1

    .line 1054
    goto :goto_1d

    .line 1055
    :cond_3e
    const-string v2, "a"

    .line 1056
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1058
    move-result v0

    .line 1061
    if-nez v0, :cond_3f

    .line 1062
    :goto_1c
    const/4 v0, -0x1

    .line 1064
    goto :goto_1d

    .line 1065
    :cond_3f
    const/4 v0, 0x0

    .line 1066
    :goto_1d
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 1067
    if-eqz v0, :cond_43

    .line 1069
    const/4 v6, 0x1

    .line 1071
    if-eq v0, v6, :cond_42

    .line 1072
    const/4 v6, 0x2

    .line 1074
    if-eq v0, v6, :cond_41

    .line 1075
    const/4 v6, 0x3

    .line 1077
    if-eq v0, v6, :cond_40

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1080
    const-string v6, "Unknown mask mode "

    .line 1082
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    const-string v6, ". Defaulting to Add."

    .line 1090
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1095
    move-result-object v0

    .line 1098
    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 1099
    goto :goto_1f

    .line 1102
    :cond_40
    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_SUBTRACT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 1103
    goto :goto_1e

    .line 1105
    :cond_41
    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 1106
    goto :goto_1e

    .line 1108
    :cond_42
    const-string v0, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    .line 1109
    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1111
    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_INTERSECT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 1114
    :goto_1e
    move-object/from16 v11, p0

    .line 1116
    goto :goto_20

    .line 1118
    :cond_43
    :goto_1f
    move-object/from16 v11, p0

    .line 1119
    move-object v0, v2

    .line 1121
    goto :goto_20

    .line 1122
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1123
    move-result v2

    .line 1126
    move-object/from16 v11, p0

    .line 1127
    move v5, v2

    .line 1129
    :goto_20
    move-object/from16 v40, v4

    .line 1130
    const/4 v4, 0x0

    .line 1132
    goto :goto_21

    .line 1133
    :cond_45
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    .line 1134
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 1136
    move-result v2

    .line 1139
    sget-object v6, Lcom/airbnb/lottie/parser/ShapeDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

    .line 1140
    move-object/from16 v11, p0

    .line 1142
    move-object/from16 v40, v4

    .line 1144
    const/4 v4, 0x0

    .line 1146
    invoke-static {v11, v7, v2, v6, v4}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;

    .line 1147
    move-result-object v2

    .line 1150
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;-><init>(Ljava/util/List;)V

    .line 1151
    goto :goto_21

    .line 1154
    :cond_46
    move-object/from16 v11, p0

    .line 1155
    move-object/from16 v40, v4

    .line 1157
    const/4 v4, 0x0

    .line 1159
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1160
    move-result-object v2

    .line 1163
    move-object v3, v2

    .line 1164
    :goto_21
    move-object/from16 v4, v40

    .line 1165
    goto/16 :goto_1b

    .line 1167
    :cond_47
    move-object/from16 v11, p0

    .line 1169
    move-object/from16 v40, v4

    .line 1171
    const/4 v4, 0x0

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1174
    new-instance v2, Lcom/airbnb/lottie/model/content/Mask;

    .line 1177
    invoke-direct {v2, v0, v1, v3, v5}, Lcom/airbnb/lottie/model/content/Mask;-><init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    .line 1179
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    move-object/from16 v4, v40

    .line 1185
    const/4 v2, 0x0

    .line 1187
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1188
    goto/16 :goto_17

    .line 1190
    :cond_48
    move-object/from16 v11, p0

    .line 1192
    move-object/from16 v40, v4

    .line 1194
    const/4 v4, 0x0

    .line 1196
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1197
    move-result v0

    .line 1200
    iget v1, v7, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    .line 1201
    add-int/2addr v1, v0

    .line 1203
    iput v1, v7, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    .line 1204
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 1206
    goto/16 :goto_24

    .line 1209
    :pswitch_d
    move-object/from16 v11, p0

    .line 1211
    move-object/from16 v40, v4

    .line 1213
    move v4, v5

    .line 1215
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1216
    move-result v0

    .line 1219
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 1220
    move-result-object v1

    .line 1223
    array-length v1, v1

    .line 1224
    if-lt v0, v1, :cond_49

    .line 1225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1227
    const-string v2, "Unsupported matte type: "

    .line 1229
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1237
    move-result-object v0

    .line 1240
    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1241
    goto/16 :goto_24

    .line 1244
    :cond_49
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 1246
    move-result-object v1

    .line 1249
    aget-object v31, v1, v0

    .line 1250
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Enum;->ordinal()I

    .line 1252
    move-result v0

    .line 1255
    const/4 v1, 0x3

    .line 1256
    if-eq v0, v1, :cond_4b

    .line 1257
    const/4 v1, 0x4

    .line 1259
    if-eq v0, v1, :cond_4a

    .line 1260
    goto :goto_22

    .line 1262
    :cond_4a
    const-string v0, "Unsupported matte type: Luma Inverted"

    .line 1263
    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1265
    goto :goto_22

    .line 1268
    :cond_4b
    const-string v0, "Unsupported matte type: Luma"

    .line 1269
    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1271
    :goto_22
    iget v0, v7, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    .line 1274
    const/4 v1, 0x1

    .line 1276
    add-int/2addr v0, v1

    .line 1277
    iput v0, v7, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    .line 1278
    goto/16 :goto_24

    .line 1280
    :pswitch_e
    move-object/from16 v11, p0

    .line 1282
    move-object/from16 v40, v4

    .line 1284
    move v4, v5

    .line 1286
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 1287
    move-result-object v21

    .line 1290
    goto/16 :goto_24

    .line 1291
    :pswitch_f
    move-object/from16 v11, p0

    .line 1293
    move-object/from16 v40, v4

    .line 1295
    move v4, v5

    .line 1297
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1298
    move-result-object v0

    .line 1301
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1302
    move-result v24

    .line 1305
    goto/16 :goto_24

    .line 1306
    :pswitch_10
    move-object/from16 v11, p0

    .line 1308
    move-object/from16 v40, v4

    .line 1310
    move v4, v5

    .line 1312
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1313
    move-result v0

    .line 1316
    int-to-float v0, v0

    .line 1317
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 1318
    move-result v1

    .line 1321
    mul-float/2addr v1, v0

    .line 1322
    float-to-int v0, v1

    .line 1323
    move/from16 v23, v0

    .line 1324
    goto :goto_23

    .line 1326
    :pswitch_11
    move-object/from16 v11, p0

    .line 1327
    move-object/from16 v40, v4

    .line 1329
    move v4, v5

    .line 1331
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1332
    move-result v0

    .line 1335
    int-to-float v0, v0

    .line 1336
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 1337
    move-result v1

    .line 1340
    mul-float/2addr v1, v0

    .line 1341
    float-to-int v0, v1

    .line 1342
    move/from16 v22, v0

    .line 1343
    goto :goto_23

    .line 1345
    :pswitch_12
    move-object/from16 v11, p0

    .line 1346
    move-object/from16 v40, v4

    .line 1348
    move v4, v5

    .line 1350
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1351
    move-result v0

    .line 1354
    int-to-long v0, v0

    .line 1355
    move-wide/from16 v18, v0

    .line 1356
    :goto_23
    move v5, v4

    .line 1358
    move-object v0, v11

    .line 1359
    move-object/from16 v4, v40

    .line 1360
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1362
    const/4 v11, 0x0

    .line 1364
    goto/16 :goto_0

    .line 1365
    :pswitch_13
    move-object/from16 v11, p0

    .line 1367
    move-object/from16 v40, v4

    .line 1369
    move v4, v5

    .line 1371
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1372
    move-result v0

    .line 1375
    const/4 v1, 0x6

    .line 1376
    if-ge v0, v1, :cond_4c

    .line 1377
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 1379
    move-result-object v1

    .line 1382
    aget-object v17, v1, v0

    .line 1383
    goto :goto_24

    .line 1385
    :cond_4c
    sget-object v17, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 1386
    goto :goto_24

    .line 1388
    :pswitch_14
    move-object/from16 v11, p0

    .line 1389
    move-object/from16 v40, v4

    .line 1391
    move v4, v5

    .line 1393
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1394
    move-result-object v20

    .line 1397
    goto :goto_24

    .line 1398
    :pswitch_15
    move-object/from16 v11, p0

    .line 1399
    move-object/from16 v40, v4

    .line 1401
    move v4, v5

    .line 1403
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1404
    move-result v0

    .line 1407
    int-to-long v14, v0

    .line 1408
    goto :goto_24

    .line 1409
    :pswitch_16
    move-object/from16 v11, p0

    .line 1410
    move-object/from16 v40, v4

    .line 1412
    move v4, v5

    .line 1414
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1415
    move-result-object v0

    .line 1418
    move-object v13, v0

    .line 1419
    :goto_24
    move-object v0, v11

    .line 1420
    move-object/from16 v1, v40

    .line 1421
    :goto_25
    move v5, v4

    .line 1423
    const/4 v11, 0x0

    .line 1424
    move-object v4, v1

    .line 1425
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1426
    goto/16 :goto_0

    .line 1428
    :cond_4d
    move-object/from16 v11, p0

    .line 1430
    move-object/from16 v40, v4

    .line 1432
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1434
    new-instance v11, Ljava/util/ArrayList;

    .line 1437
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1439
    const/4 v0, 0x0

    .line 1442
    cmpl-float v1, v16, v0

    .line 1443
    if-lez v1, :cond_4e

    .line 1445
    new-instance v6, Lcom/airbnb/lottie/value/Keyframe;

    .line 1447
    const/4 v4, 0x0

    .line 1449
    const/4 v5, 0x0

    .line 1450
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1451
    move-result-object v37

    .line 1454
    move-object v0, v6

    .line 1455
    move-object/from16 v1, p1

    .line 1456
    move-object v2, v12

    .line 1458
    move-object v3, v12

    .line 1459
    move-object/from16 v38, v10

    .line 1460
    move-object/from16 v10, v40

    .line 1462
    move-wide/from16 v39, v14

    .line 1464
    move-object v14, v6

    .line 1466
    move-object/from16 v6, v37

    .line 1467
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1469
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1472
    goto :goto_26

    .line 1475
    :cond_4e
    move-object/from16 v38, v10

    .line 1476
    move-object/from16 v10, v40

    .line 1478
    move-wide/from16 v39, v14

    .line 1480
    :goto_26
    const/4 v0, 0x0

    .line 1482
    cmpl-float v0, v36, v0

    .line 1483
    if-lez v0, :cond_4f

    .line 1485
    goto :goto_27

    .line 1487
    :cond_4f
    iget v0, v7, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 1488
    move/from16 v36, v0

    .line 1490
    :goto_27
    new-instance v14, Lcom/airbnb/lottie/value/Keyframe;

    .line 1492
    const/4 v15, 0x0

    .line 1494
    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1495
    move-result-object v6

    .line 1498
    const/4 v4, 0x0

    .line 1499
    move-object v0, v14

    .line 1500
    move-object/from16 v1, p1

    .line 1501
    move-object v2, v9

    .line 1503
    move-object v3, v9

    .line 1504
    move/from16 v5, v16

    .line 1505
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1507
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1510
    new-instance v9, Lcom/airbnb/lottie/value/Keyframe;

    .line 1513
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 1515
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1518
    move-result-object v6

    .line 1521
    move-object v0, v9

    .line 1522
    move-object v2, v12

    .line 1523
    move-object v3, v12

    .line 1524
    move-object v4, v15

    .line 1525
    move/from16 v5, v36

    .line 1526
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1528
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    const-string v0, ".ai"

    .line 1534
    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1536
    move-result v0

    .line 1539
    if-nez v0, :cond_50

    .line 1540
    const-string v0, "ai"

    .line 1542
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1544
    move-result v0

    .line 1547
    if-eqz v0, :cond_51

    .line 1548
    :cond_50
    const-string v0, "Convert your Illustrator layers to shape layers."

    .line 1550
    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1552
    :cond_51
    new-instance v36, Lcom/airbnb/lottie/model/layer/Layer;

    .line 1555
    move-object/from16 v0, v36

    .line 1557
    move-object v1, v8

    .line 1559
    move-object/from16 v2, p1

    .line 1560
    move-object v3, v13

    .line 1562
    move-wide/from16 v4, v39

    .line 1563
    move-object/from16 v6, v17

    .line 1565
    move-wide/from16 v7, v18

    .line 1567
    move-object/from16 v9, v20

    .line 1569
    move-object/from16 v10, v38

    .line 1571
    move-object/from16 v37, v11

    .line 1573
    move-object/from16 v11, v21

    .line 1575
    move/from16 v12, v22

    .line 1577
    move/from16 v13, v23

    .line 1579
    move/from16 v14, v24

    .line 1581
    move/from16 v15, v25

    .line 1583
    move/from16 v16, v26

    .line 1585
    move/from16 v17, v27

    .line 1587
    move/from16 v18, v28

    .line 1589
    move-object/from16 v19, v29

    .line 1591
    move-object/from16 v20, v30

    .line 1593
    move-object/from16 v21, v37

    .line 1595
    move-object/from16 v22, v31

    .line 1597
    move-object/from16 v23, v32

    .line 1599
    move/from16 v24, v33

    .line 1601
    move-object/from16 v25, v34

    .line 1603
    move-object/from16 v26, v35

    .line 1605
    invoke-direct/range {v0 .. v26}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZLcom/airbnb/lottie/model/content/BlurEffect;Lcom/airbnb/lottie/parser/DropShadowEffect;)V

    .line 1607
    return-object v36

    .line 1610
    nop

    .line 1611
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1612
    :sswitch_data_0
    .sparse-switch
        0x150bf015 -> :sswitch_4
        0x17b08feb -> :sswitch_3
        0x3e12275f -> :sswitch_2
        0x5237c863 -> :sswitch_1
        0x5279bda1 -> :sswitch_0
    .end sparse-switch
    .line 1662
.end method
