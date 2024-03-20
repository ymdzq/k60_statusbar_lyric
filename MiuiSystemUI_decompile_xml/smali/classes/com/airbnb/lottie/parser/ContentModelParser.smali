.class public abstract Lcom/airbnb/lottie/parser/ContentModelParser;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ty"

    .line 2
    const-string v1, "d"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 11
    move-result-object v0

    .line 14
    sput-object v0, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 15
    return-void
    .line 17
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 6
    const/4 v2, 0x2

    .line 9
    move v3, v2

    .line 10
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 11
    move-result v4

    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v4, :cond_2

    .line 17
    sget-object v4, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 19
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 21
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    if-eq v4, v5, :cond_0

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 36
    move-result v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-object v4, v6

    .line 46
    :goto_1
    if-nez v4, :cond_3

    .line 47
    return-object v6

    .line 49
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 50
    move-result v6

    .line 53
    const/16 v7, 0xca7

    .line 54
    const/4 v8, 0x0

    .line 56
    const/4 v9, 0x5

    .line 57
    const/4 v10, 0x4

    .line 58
    const/4 v11, 0x3

    .line 59
    if-eq v6, v7, :cond_1e

    .line 60
    const/16 v7, 0xcc6

    .line 62
    if-eq v6, v7, :cond_1c

    .line 64
    const/16 v7, 0xcdf

    .line 66
    if-eq v6, v7, :cond_1a

    .line 68
    const/16 v7, 0xda0

    .line 70
    if-eq v6, v7, :cond_18

    .line 72
    const/16 v7, 0xe3e

    .line 74
    if-eq v6, v7, :cond_16

    .line 76
    const/16 v7, 0xe55

    .line 78
    if-eq v6, v7, :cond_14

    .line 80
    const/16 v7, 0xe5f

    .line 82
    if-eq v6, v7, :cond_12

    .line 84
    const/16 v7, 0xe61

    .line 86
    if-eq v6, v7, :cond_10

    .line 88
    const/16 v7, 0xe79

    .line 90
    if-eq v6, v7, :cond_e

    .line 92
    const/16 v7, 0xe7e

    .line 94
    if-eq v6, v7, :cond_c

    .line 96
    const/16 v7, 0xceb

    .line 98
    if-eq v6, v7, :cond_a

    .line 100
    const/16 v7, 0xcec

    .line 102
    if-eq v6, v7, :cond_8

    .line 104
    const/16 v7, 0xe31

    .line 106
    if-eq v6, v7, :cond_6

    .line 108
    const/16 v7, 0xe32

    .line 110
    if-eq v6, v7, :cond_4

    .line 112
    goto/16 :goto_2

    .line 114
    :cond_4
    const-string v6, "rd"

    .line 116
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v6

    .line 121
    if-nez v6, :cond_5

    .line 122
    goto/16 :goto_2

    .line 124
    :cond_5
    const/4 v6, 0x7

    .line 126
    goto/16 :goto_3

    .line 127
    :cond_6
    const-string v6, "rc"

    .line 129
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result v6

    .line 134
    if-nez v6, :cond_7

    .line 135
    goto/16 :goto_2

    .line 137
    :cond_7
    const/4 v6, 0x6

    .line 139
    goto/16 :goto_3

    .line 140
    :cond_8
    const-string v6, "gs"

    .line 142
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v6

    .line 147
    if-nez v6, :cond_9

    .line 148
    goto/16 :goto_2

    .line 150
    :cond_9
    move v6, v10

    .line 152
    goto/16 :goto_3

    .line 153
    :cond_a
    const-string v6, "gr"

    .line 155
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v6

    .line 160
    if-nez v6, :cond_b

    .line 161
    goto/16 :goto_2

    .line 163
    :cond_b
    move v6, v11

    .line 165
    goto/16 :goto_3

    .line 166
    :cond_c
    const-string/jumbo v6, "tr"

    .line 168
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result v6

    .line 174
    if-nez v6, :cond_d

    .line 175
    goto/16 :goto_2

    .line 177
    :cond_d
    const/16 v6, 0xd

    .line 179
    goto/16 :goto_3

    .line 181
    :cond_e
    const-string/jumbo v6, "tm"

    .line 183
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    move-result v6

    .line 189
    if-nez v6, :cond_f

    .line 190
    goto/16 :goto_2

    .line 192
    :cond_f
    const/16 v6, 0xc

    .line 194
    goto/16 :goto_3

    .line 196
    :cond_10
    const-string/jumbo v6, "st"

    .line 198
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    move-result v6

    .line 204
    if-nez v6, :cond_11

    .line 205
    goto :goto_2

    .line 207
    :cond_11
    const/16 v6, 0xb

    .line 208
    goto :goto_3

    .line 210
    :cond_12
    const-string/jumbo v6, "sr"

    .line 211
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    move-result v6

    .line 217
    if-nez v6, :cond_13

    .line 218
    goto :goto_2

    .line 220
    :cond_13
    const/16 v6, 0xa

    .line 221
    goto :goto_3

    .line 223
    :cond_14
    const-string/jumbo v6, "sh"

    .line 224
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    move-result v6

    .line 230
    if-nez v6, :cond_15

    .line 231
    goto :goto_2

    .line 233
    :cond_15
    const/16 v6, 0x9

    .line 234
    goto :goto_3

    .line 236
    :cond_16
    const-string/jumbo v6, "rp"

    .line 237
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    move-result v6

    .line 243
    if-nez v6, :cond_17

    .line 244
    goto :goto_2

    .line 246
    :cond_17
    const/16 v6, 0x8

    .line 247
    goto :goto_3

    .line 249
    :cond_18
    const-string v6, "mm"

    .line 250
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    move-result v6

    .line 255
    if-nez v6, :cond_19

    .line 256
    goto :goto_2

    .line 258
    :cond_19
    move v6, v9

    .line 259
    goto :goto_3

    .line 260
    :cond_1a
    const-string v6, "gf"

    .line 261
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    move-result v6

    .line 266
    if-nez v6, :cond_1b

    .line 267
    goto :goto_2

    .line 269
    :cond_1b
    move v6, v2

    .line 270
    goto :goto_3

    .line 271
    :cond_1c
    const-string v6, "fl"

    .line 272
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    move-result v6

    .line 277
    if-nez v6, :cond_1d

    .line 278
    goto :goto_2

    .line 280
    :cond_1d
    move v6, v5

    .line 281
    goto :goto_3

    .line 282
    :cond_1e
    const-string v6, "el"

    .line 283
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    move-result v6

    .line 288
    if-nez v6, :cond_1f

    .line 289
    :goto_2
    const/4 v6, -0x1

    .line 291
    goto :goto_3

    .line 292
    :cond_1f
    move v6, v8

    .line 293
    :goto_3
    sget-object v7, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    .line 294
    sget-object v12, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    .line 296
    const-string v13, "o"

    .line 298
    const-string v14, "g"

    .line 300
    const-string v15, "d"

    .line 302
    const/16 v16, 0x0

    .line 304
    packed-switch v6, :pswitch_data_0

    .line 306
    const-string v1, "Unknown shape type "

    .line 309
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    move-result-object v1

    .line 314
    invoke-static {v1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 315
    goto/16 :goto_23

    .line 318
    :pswitch_0
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 320
    move-result-object v1

    .line 323
    goto/16 :goto_24

    .line 324
    :pswitch_1
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 326
    const/4 v3, 0x0

    .line 328
    const/4 v4, 0x0

    .line 329
    const/4 v6, 0x0

    .line 330
    const/4 v7, 0x0

    .line 331
    const/4 v12, 0x0

    .line 332
    move-object v14, v3

    .line 333
    move-object v15, v4

    .line 334
    move-object/from16 v16, v6

    .line 335
    move-object/from16 v17, v7

    .line 337
    move/from16 v19, v8

    .line 339
    move-object/from16 v18, v12

    .line 341
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 343
    move-result v3

    .line 346
    if-eqz v3, :cond_28

    .line 347
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 349
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 351
    move-result v3

    .line 354
    if-eqz v3, :cond_27

    .line 355
    if-eq v3, v5, :cond_26

    .line 357
    if-eq v3, v2, :cond_25

    .line 359
    if-eq v3, v11, :cond_24

    .line 361
    if-eq v3, v10, :cond_21

    .line 363
    if-eq v3, v9, :cond_20

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 367
    goto :goto_4

    .line 370
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 371
    move-result v19

    .line 374
    goto :goto_4

    .line 375
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 376
    move-result v3

    .line 379
    if-eq v3, v5, :cond_23

    .line 380
    if-ne v3, v2, :cond_22

    .line 382
    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 384
    goto :goto_5

    .line 386
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 387
    const-string v1, "Unknown trim path type "

    .line 389
    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 391
    move-result-object v1

    .line 394
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 395
    throw v0

    .line 398
    :cond_23
    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 399
    :goto_5
    move-object v15, v3

    .line 401
    goto :goto_4

    .line 402
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 403
    move-result-object v14

    .line 406
    goto :goto_4

    .line 407
    :cond_25
    invoke-static {v0, v1, v8}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 408
    move-result-object v18

    .line 411
    goto :goto_4

    .line 412
    :cond_26
    invoke-static {v0, v1, v8}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 413
    move-result-object v17

    .line 416
    goto :goto_4

    .line 417
    :cond_27
    invoke-static {v0, v1, v8}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 418
    move-result-object v16

    .line 421
    goto :goto_4

    .line 422
    :cond_28
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    .line 423
    move-object v13, v1

    .line 425
    invoke-direct/range {v13 .. v19}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 426
    goto/16 :goto_24

    .line 429
    :pswitch_2
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 431
    new-instance v3, Ljava/util/ArrayList;

    .line 433
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 435
    const/4 v4, 0x0

    .line 438
    const/4 v6, 0x0

    .line 439
    const/4 v7, 0x0

    .line 440
    const/4 v9, 0x0

    .line 441
    const/4 v10, 0x0

    .line 442
    const/4 v11, 0x0

    .line 443
    const/4 v12, 0x0

    .line 444
    move-object/from16 v18, v6

    .line 445
    move-object/from16 v19, v7

    .line 447
    move/from16 v27, v8

    .line 449
    move-object/from16 v21, v9

    .line 451
    move-object/from16 v23, v10

    .line 453
    move-object/from16 v24, v11

    .line 455
    move-object/from16 v25, v12

    .line 457
    move/from16 v26, v16

    .line 459
    :cond_29
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 461
    move-result v6

    .line 464
    if-eqz v6, :cond_36

    .line 465
    sget-object v6, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 467
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 469
    move-result v6

    .line 472
    packed-switch v6, :pswitch_data_1

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 476
    goto :goto_6

    .line 479
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 480
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 483
    move-result v6

    .line 486
    if-eqz v6, :cond_35

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 489
    const/4 v6, 0x0

    .line 492
    const/4 v7, 0x0

    .line 493
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 494
    move-result v9

    .line 497
    if-eqz v9, :cond_2c

    .line 498
    sget-object v9, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 500
    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 502
    move-result v9

    .line 505
    if-eqz v9, :cond_2b

    .line 506
    if-eq v9, v5, :cond_2a

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 513
    goto :goto_8

    .line 516
    :cond_2a
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 517
    move-result-object v6

    .line 520
    goto :goto_8

    .line 521
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 522
    move-result-object v7

    .line 525
    goto :goto_8

    .line 526
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 527
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 533
    move-result v9

    .line 536
    const/16 v10, 0x64

    .line 537
    if-eq v9, v10, :cond_31

    .line 539
    const/16 v10, 0x67

    .line 541
    if-eq v9, v10, :cond_2f

    .line 543
    const/16 v10, 0x6f

    .line 545
    if-eq v9, v10, :cond_2d

    .line 547
    goto :goto_9

    .line 549
    :cond_2d
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    move-result v7

    .line 553
    if-nez v7, :cond_2e

    .line 554
    goto :goto_9

    .line 556
    :cond_2e
    move v7, v2

    .line 557
    goto :goto_a

    .line 558
    :cond_2f
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    move-result v7

    .line 562
    if-nez v7, :cond_30

    .line 563
    goto :goto_9

    .line 565
    :cond_30
    move v7, v5

    .line 566
    goto :goto_a

    .line 567
    :cond_31
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 568
    move-result v7

    .line 571
    if-nez v7, :cond_32

    .line 572
    :goto_9
    const/4 v7, -0x1

    .line 574
    goto :goto_a

    .line 575
    :cond_32
    move v7, v8

    .line 576
    :goto_a
    if-eqz v7, :cond_34

    .line 577
    if-eq v7, v5, :cond_34

    .line 579
    if-eq v7, v2, :cond_33

    .line 581
    goto :goto_7

    .line 583
    :cond_33
    move-object/from16 v19, v6

    .line 584
    goto :goto_7

    .line 586
    :cond_34
    iput-boolean v5, v1, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern:Z

    .line 587
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    goto :goto_7

    .line 592
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 593
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 596
    move-result v6

    .line 599
    if-ne v6, v5, :cond_29

    .line 600
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 602
    move-result-object v6

    .line 605
    check-cast v6, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 606
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    goto/16 :goto_6

    .line 611
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 613
    move-result v27

    .line 616
    goto/16 :goto_6

    .line 617
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 619
    move-result-wide v6

    .line 622
    double-to-float v6, v6

    .line 623
    move/from16 v26, v6

    .line 624
    goto/16 :goto_6

    .line 626
    :pswitch_6
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 628
    move-result-object v6

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 632
    move-result v7

    .line 635
    sub-int/2addr v7, v5

    .line 636
    aget-object v25, v6, v7

    .line 637
    goto/16 :goto_6

    .line 639
    :pswitch_7
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 641
    move-result-object v6

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 645
    move-result v7

    .line 648
    sub-int/2addr v7, v5

    .line 649
    aget-object v24, v6, v7

    .line 650
    goto/16 :goto_6

    .line 652
    :pswitch_8
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 654
    move-result-object v4

    .line 657
    goto/16 :goto_6

    .line 658
    :pswitch_9
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 660
    move-result-object v23

    .line 663
    goto/16 :goto_6

    .line 664
    :pswitch_a
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 666
    move-result-object v21

    .line 669
    goto/16 :goto_6

    .line 670
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 672
    move-result-object v18

    .line 675
    goto/16 :goto_6

    .line 676
    :cond_36
    if-nez v4, :cond_37

    .line 678
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 680
    new-instance v2, Lcom/airbnb/lottie/value/Keyframe;

    .line 682
    const/16 v4, 0x64

    .line 684
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 686
    move-result-object v4

    .line 689
    invoke-direct {v2, v4}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 690
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 693
    move-result-object v2

    .line 696
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    .line 697
    move-object/from16 v22, v1

    .line 700
    goto :goto_b

    .line 702
    :cond_37
    move-object/from16 v22, v4

    .line 703
    :goto_b
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapeStroke;

    .line 705
    move-object/from16 v17, v1

    .line 707
    move-object/from16 v20, v3

    .line 709
    invoke-direct/range {v17 .. v27}, Lcom/airbnb/lottie/model/content/ShapeStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V

    .line 711
    goto/16 :goto_24

    .line 714
    :pswitch_c
    sget-object v2, Lcom/airbnb/lottie/parser/PolystarShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 716
    if-ne v3, v11, :cond_38

    .line 718
    move v2, v5

    .line 720
    goto :goto_c

    .line 721
    :cond_38
    move v2, v8

    .line 722
    :goto_c
    const/4 v3, 0x0

    .line 723
    const/4 v4, 0x0

    .line 724
    const/4 v6, 0x0

    .line 725
    const/4 v7, 0x0

    .line 726
    const/4 v9, 0x0

    .line 727
    const/4 v10, 0x0

    .line 728
    const/4 v12, 0x0

    .line 729
    const/4 v13, 0x0

    .line 730
    const/4 v14, 0x0

    .line 731
    move/from16 v26, v2

    .line 732
    move-object/from16 v16, v3

    .line 734
    move-object/from16 v17, v4

    .line 736
    move-object/from16 v18, v6

    .line 738
    move-object/from16 v19, v7

    .line 740
    move/from16 v25, v8

    .line 742
    move-object/from16 v20, v9

    .line 744
    move-object/from16 v21, v10

    .line 746
    move-object/from16 v22, v12

    .line 748
    move-object/from16 v23, v13

    .line 750
    move-object/from16 v24, v14

    .line 752
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 754
    move-result v2

    .line 757
    if-eqz v2, :cond_3a

    .line 758
    sget-object v2, Lcom/airbnb/lottie/parser/PolystarShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 760
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 762
    move-result v2

    .line 765
    packed-switch v2, :pswitch_data_2

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 772
    goto :goto_d

    .line 775
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 776
    move-result v2

    .line 779
    if-ne v2, v11, :cond_39

    .line 780
    move/from16 v26, v5

    .line 782
    goto :goto_d

    .line 784
    :cond_39
    move/from16 v26, v8

    .line 785
    goto :goto_d

    .line 787
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 788
    move-result v25

    .line 791
    goto :goto_d

    .line 792
    :pswitch_f
    invoke-static {v0, v1, v8}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 793
    move-result-object v23

    .line 796
    goto :goto_d

    .line 797
    :pswitch_10
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 798
    move-result-object v21

    .line 801
    goto :goto_d

    .line 802
    :pswitch_11
    invoke-static {v0, v1, v8}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 803
    move-result-object v24

    .line 806
    goto :goto_d

    .line 807
    :pswitch_12
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 808
    move-result-object v22

    .line 811
    goto :goto_d

    .line 812
    :pswitch_13
    invoke-static {v0, v1, v8}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 813
    move-result-object v20

    .line 816
    goto :goto_d

    .line 817
    :pswitch_14
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 818
    move-result-object v19

    .line 821
    goto :goto_d

    .line 822
    :pswitch_15
    invoke-static {v0, v1, v8}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 823
    move-result-object v18

    .line 826
    goto :goto_d

    .line 827
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 828
    move-result v2

    .line 831
    invoke-static {v2}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->forValue(I)Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 832
    move-result-object v17

    .line 835
    goto :goto_d

    .line 836
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 837
    move-result-object v16

    .line 840
    goto :goto_d

    .line 841
    :cond_3a
    new-instance v1, Lcom/airbnb/lottie/model/content/PolystarShape;

    .line 842
    move-object v15, v1

    .line 844
    invoke-direct/range {v15 .. v26}, Lcom/airbnb/lottie/model/content/PolystarShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZZ)V

    .line 845
    goto/16 :goto_24

    .line 848
    :pswitch_18
    sget-object v3, Lcom/airbnb/lottie/parser/ShapePathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 850
    const/4 v3, 0x0

    .line 852
    const/4 v4, 0x0

    .line 853
    move v6, v8

    .line 854
    move v7, v6

    .line 855
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 856
    move-result v9

    .line 859
    if-eqz v9, :cond_3f

    .line 860
    sget-object v9, Lcom/airbnb/lottie/parser/ShapePathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 862
    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 864
    move-result v9

    .line 867
    if-eqz v9, :cond_3e

    .line 868
    if-eq v9, v5, :cond_3d

    .line 870
    if-eq v9, v2, :cond_3c

    .line 872
    if-eq v9, v11, :cond_3b

    .line 874
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 876
    goto :goto_e

    .line 879
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 880
    move-result v7

    .line 883
    goto :goto_e

    .line 884
    :cond_3c
    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    .line 885
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 887
    move-result v9

    .line 890
    sget-object v10, Lcom/airbnb/lottie/parser/ShapeDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

    .line 891
    invoke-static {v0, v1, v9, v10, v8}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;

    .line 893
    move-result-object v9

    .line 896
    invoke-direct {v3, v9}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;-><init>(Ljava/util/List;)V

    .line 897
    goto :goto_e

    .line 900
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 901
    move-result v6

    .line 904
    goto :goto_e

    .line 905
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 906
    move-result-object v4

    .line 909
    goto :goto_e

    .line 910
    :cond_3f
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapePath;

    .line 911
    invoke-direct {v1, v4, v6, v3, v7}, Lcom/airbnb/lottie/model/content/ShapePath;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Z)V

    .line 913
    goto/16 :goto_24

    .line 916
    :pswitch_19
    sget-object v3, Lcom/airbnb/lottie/parser/RepeaterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 918
    const/4 v3, 0x0

    .line 920
    const/4 v4, 0x0

    .line 921
    const/4 v6, 0x0

    .line 922
    const/4 v7, 0x0

    .line 923
    move-object v13, v3

    .line 924
    move-object v14, v4

    .line 925
    move-object v15, v6

    .line 926
    move-object/from16 v16, v7

    .line 927
    move/from16 v17, v8

    .line 929
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 931
    move-result v3

    .line 934
    if-eqz v3, :cond_45

    .line 935
    sget-object v3, Lcom/airbnb/lottie/parser/RepeaterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 937
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 939
    move-result v3

    .line 942
    if-eqz v3, :cond_44

    .line 943
    if-eq v3, v5, :cond_43

    .line 945
    if-eq v3, v2, :cond_42

    .line 947
    if-eq v3, v11, :cond_41

    .line 949
    if-eq v3, v10, :cond_40

    .line 951
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 953
    goto :goto_f

    .line 956
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 957
    move-result v17

    .line 960
    goto :goto_f

    .line 961
    :cond_41
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 962
    move-result-object v16

    .line 965
    goto :goto_f

    .line 966
    :cond_42
    invoke-static {v0, v1, v8}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 967
    move-result-object v15

    .line 970
    goto :goto_f

    .line 971
    :cond_43
    invoke-static {v0, v1, v8}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 972
    move-result-object v14

    .line 975
    goto :goto_f

    .line 976
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 977
    move-result-object v13

    .line 980
    goto :goto_f

    .line 981
    :cond_45
    new-instance v1, Lcom/airbnb/lottie/model/content/Repeater;

    .line 982
    move-object v12, v1

    .line 984
    invoke-direct/range {v12 .. v17}, Lcom/airbnb/lottie/model/content/Repeater;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;Z)V

    .line 985
    goto/16 :goto_24

    .line 988
    :pswitch_1a
    sget-object v3, Lcom/airbnb/lottie/parser/RoundedCornersParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 990
    const/4 v3, 0x0

    .line 992
    const/4 v4, 0x0

    .line 993
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 994
    move-result v6

    .line 997
    if-eqz v6, :cond_49

    .line 998
    sget-object v6, Lcom/airbnb/lottie/parser/RoundedCornersParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1000
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1002
    move-result v6

    .line 1005
    if-eqz v6, :cond_48

    .line 1006
    if-eq v6, v5, :cond_47

    .line 1008
    if-eq v6, v2, :cond_46

    .line 1010
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1012
    goto :goto_10

    .line 1015
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1016
    move-result v8

    .line 1019
    goto :goto_10

    .line 1020
    :cond_47
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1021
    move-result-object v4

    .line 1024
    goto :goto_10

    .line 1025
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1026
    move-result-object v3

    .line 1029
    goto :goto_10

    .line 1030
    :cond_49
    if-eqz v8, :cond_4a

    .line 1031
    goto/16 :goto_23

    .line 1033
    :cond_4a
    new-instance v1, Lcom/airbnb/lottie/model/content/RoundedCorners;

    .line 1035
    invoke-direct {v1, v3, v4}, Lcom/airbnb/lottie/model/content/RoundedCorners;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 1037
    goto/16 :goto_24

    .line 1040
    :pswitch_1b
    sget-object v3, Lcom/airbnb/lottie/parser/RectangleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1042
    const/4 v3, 0x0

    .line 1044
    const/4 v4, 0x0

    .line 1045
    const/4 v6, 0x0

    .line 1046
    const/4 v7, 0x0

    .line 1047
    move-object v13, v3

    .line 1048
    move-object v14, v4

    .line 1049
    move-object v15, v6

    .line 1050
    move-object/from16 v16, v7

    .line 1051
    move/from16 v17, v8

    .line 1053
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1055
    move-result v3

    .line 1058
    if-eqz v3, :cond_50

    .line 1059
    sget-object v3, Lcom/airbnb/lottie/parser/RectangleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1061
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1063
    move-result v3

    .line 1066
    if-eqz v3, :cond_4f

    .line 1067
    if-eq v3, v5, :cond_4e

    .line 1069
    if-eq v3, v2, :cond_4d

    .line 1071
    if-eq v3, v11, :cond_4c

    .line 1073
    if-eq v3, v10, :cond_4b

    .line 1075
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1077
    goto :goto_11

    .line 1080
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1081
    move-result v17

    .line 1084
    goto :goto_11

    .line 1085
    :cond_4c
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1086
    move-result-object v16

    .line 1089
    goto :goto_11

    .line 1090
    :cond_4d
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1091
    move-result-object v15

    .line 1094
    goto :goto_11

    .line 1095
    :cond_4e
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 1096
    move-result-object v14

    .line 1099
    goto :goto_11

    .line 1100
    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1101
    move-result-object v13

    .line 1104
    goto :goto_11

    .line 1105
    :cond_50
    new-instance v1, Lcom/airbnb/lottie/model/content/RectangleShape;

    .line 1106
    move-object v12, v1

    .line 1108
    invoke-direct/range {v12 .. v17}, Lcom/airbnb/lottie/model/content/RectangleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 1109
    goto/16 :goto_24

    .line 1112
    :pswitch_1c
    sget-object v3, Lcom/airbnb/lottie/parser/MergePathsParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1114
    const/4 v3, 0x0

    .line 1116
    const/4 v4, 0x0

    .line 1117
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1118
    move-result v6

    .line 1121
    if-eqz v6, :cond_59

    .line 1122
    sget-object v6, Lcom/airbnb/lottie/parser/MergePathsParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1124
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1126
    move-result v6

    .line 1129
    if-eqz v6, :cond_58

    .line 1130
    if-eq v6, v5, :cond_52

    .line 1132
    if-eq v6, v2, :cond_51

    .line 1134
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1136
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1139
    goto :goto_12

    .line 1142
    :cond_51
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1143
    move-result v8

    .line 1146
    goto :goto_12

    .line 1147
    :cond_52
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1148
    move-result v3

    .line 1151
    sget-object v6, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->MERGE:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1152
    if-eq v3, v5, :cond_57

    .line 1154
    if-eq v3, v2, :cond_56

    .line 1156
    if-eq v3, v11, :cond_55

    .line 1158
    if-eq v3, v10, :cond_54

    .line 1160
    if-eq v3, v9, :cond_53

    .line 1162
    goto :goto_13

    .line 1164
    :cond_53
    sget-object v3, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->EXCLUDE_INTERSECTIONS:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1165
    goto :goto_12

    .line 1167
    :cond_54
    sget-object v3, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->INTERSECT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1168
    goto :goto_12

    .line 1170
    :cond_55
    sget-object v3, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->SUBTRACT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1171
    goto :goto_12

    .line 1173
    :cond_56
    sget-object v3, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->ADD:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1174
    goto :goto_12

    .line 1176
    :cond_57
    :goto_13
    move-object v3, v6

    .line 1177
    goto :goto_12

    .line 1178
    :cond_58
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1179
    move-result-object v4

    .line 1182
    goto :goto_12

    .line 1183
    :cond_59
    new-instance v2, Lcom/airbnb/lottie/model/content/MergePaths;

    .line 1184
    invoke-direct {v2, v4, v3, v8}, Lcom/airbnb/lottie/model/content/MergePaths;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;Z)V

    .line 1186
    const-string v3, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    .line 1189
    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1191
    move-object v1, v2

    .line 1194
    goto/16 :goto_24

    .line 1195
    :pswitch_1d
    sget-object v2, Lcom/airbnb/lottie/parser/GradientStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1197
    new-instance v2, Ljava/util/ArrayList;

    .line 1199
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    const/4 v3, 0x0

    .line 1204
    const/4 v4, 0x0

    .line 1205
    const/4 v6, 0x0

    .line 1206
    const/4 v9, 0x0

    .line 1207
    const/4 v10, 0x0

    .line 1208
    const/4 v11, 0x0

    .line 1209
    const/16 v17, 0x0

    .line 1210
    const/16 v18, 0x0

    .line 1212
    const/16 v19, 0x0

    .line 1214
    const/16 v20, 0x0

    .line 1216
    move/from16 v30, v8

    .line 1218
    move-object/from16 v22, v10

    .line 1220
    move-object/from16 v23, v11

    .line 1222
    move/from16 v27, v16

    .line 1224
    move-object/from16 v24, v17

    .line 1226
    move-object/from16 v25, v18

    .line 1228
    move-object/from16 v26, v19

    .line 1230
    move-object/from16 v29, v20

    .line 1232
    move-object/from16 v18, v4

    .line 1234
    move-object/from16 v19, v6

    .line 1236
    move-object/from16 v20, v9

    .line 1238
    :cond_5a
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1240
    move-result v4

    .line 1243
    if-eqz v4, :cond_66

    .line 1244
    sget-object v4, Lcom/airbnb/lottie/parser/GradientStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1246
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1248
    move-result v4

    .line 1251
    packed-switch v4, :pswitch_data_3

    .line 1252
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1255
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1258
    goto :goto_14

    .line 1261
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 1262
    :cond_5b
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1265
    move-result v4

    .line 1268
    if-eqz v4, :cond_61

    .line 1269
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 1271
    const/4 v4, 0x0

    .line 1274
    const/4 v6, 0x0

    .line 1275
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1276
    move-result v9

    .line 1279
    if-eqz v9, :cond_5e

    .line 1280
    sget-object v9, Lcom/airbnb/lottie/parser/GradientStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1282
    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1284
    move-result v9

    .line 1287
    if-eqz v9, :cond_5d

    .line 1288
    if-eq v9, v5, :cond_5c

    .line 1290
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1292
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1295
    goto :goto_16

    .line 1298
    :cond_5c
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1299
    move-result-object v4

    .line 1302
    goto :goto_16

    .line 1303
    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1304
    move-result-object v6

    .line 1307
    goto :goto_16

    .line 1308
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1309
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1312
    move-result v9

    .line 1315
    if-eqz v9, :cond_5f

    .line 1316
    move-object/from16 v29, v4

    .line 1318
    goto :goto_15

    .line 1320
    :cond_5f
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1321
    move-result v9

    .line 1324
    if-nez v9, :cond_60

    .line 1325
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1327
    move-result v6

    .line 1330
    if-eqz v6, :cond_5b

    .line 1331
    :cond_60
    iput-boolean v5, v1, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern:Z

    .line 1333
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    goto :goto_15

    .line 1338
    :cond_61
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 1339
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1342
    move-result v4

    .line 1345
    if-ne v4, v5, :cond_5a

    .line 1346
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1348
    move-result-object v4

    .line 1351
    check-cast v4, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1352
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    goto :goto_14

    .line 1357
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1358
    move-result v30

    .line 1361
    goto :goto_14

    .line 1362
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 1363
    move-result-wide v9

    .line 1366
    double-to-float v4, v9

    .line 1367
    move/from16 v27, v4

    .line 1368
    goto/16 :goto_14

    .line 1370
    :pswitch_21
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 1372
    move-result-object v4

    .line 1375
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1376
    move-result v6

    .line 1379
    sub-int/2addr v6, v5

    .line 1380
    aget-object v26, v4, v6

    .line 1381
    goto/16 :goto_14

    .line 1383
    :pswitch_22
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 1385
    move-result-object v4

    .line 1388
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1389
    move-result v6

    .line 1392
    sub-int/2addr v6, v5

    .line 1393
    aget-object v25, v4, v6

    .line 1394
    goto/16 :goto_14

    .line 1396
    :pswitch_23
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1398
    move-result-object v24

    .line 1401
    goto/16 :goto_14

    .line 1402
    :pswitch_24
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1404
    move-result-object v23

    .line 1407
    goto/16 :goto_14

    .line 1408
    :pswitch_25
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1410
    move-result-object v22

    .line 1413
    goto/16 :goto_14

    .line 1414
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1416
    move-result v4

    .line 1419
    if-ne v4, v5, :cond_62

    .line 1420
    move-object/from16 v19, v7

    .line 1422
    goto/16 :goto_14

    .line 1424
    :cond_62
    move-object/from16 v19, v12

    .line 1426
    goto/16 :goto_14

    .line 1428
    :pswitch_27
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1430
    move-result-object v3

    .line 1433
    goto/16 :goto_14

    .line 1434
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 1436
    const/4 v4, -0x1

    .line 1439
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1440
    move-result v6

    .line 1443
    if-eqz v6, :cond_65

    .line 1444
    sget-object v6, Lcom/airbnb/lottie/parser/GradientStrokeParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1446
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1448
    move-result v6

    .line 1451
    if-eqz v6, :cond_64

    .line 1452
    if-eq v6, v5, :cond_63

    .line 1454
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1456
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1459
    goto :goto_17

    .line 1462
    :cond_63
    new-instance v6, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    .line 1463
    new-instance v9, Lcom/airbnb/lottie/parser/GradientColorParser;

    .line 1465
    invoke-direct {v9, v4}, Lcom/airbnb/lottie/parser/GradientColorParser;-><init>(I)V

    .line 1467
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1470
    invoke-static {v0, v1, v10, v9, v8}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;

    .line 1472
    move-result-object v9

    .line 1475
    invoke-direct {v6, v9}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;-><init>(Ljava/util/List;)V

    .line 1476
    move-object/from16 v20, v6

    .line 1479
    goto :goto_17

    .line 1481
    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1482
    move-result v4

    .line 1485
    goto :goto_17

    .line 1486
    :cond_65
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1487
    goto/16 :goto_14

    .line 1490
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1492
    move-result-object v18

    .line 1495
    goto/16 :goto_14

    .line 1496
    :cond_66
    if-nez v3, :cond_67

    .line 1498
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1500
    new-instance v3, Lcom/airbnb/lottie/value/Keyframe;

    .line 1502
    const/16 v4, 0x64

    .line 1504
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1506
    move-result-object v4

    .line 1509
    invoke-direct {v3, v4}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 1510
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1513
    move-result-object v3

    .line 1516
    invoke-direct {v1, v3}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    .line 1517
    move-object/from16 v21, v1

    .line 1520
    goto :goto_18

    .line 1522
    :cond_67
    move-object/from16 v21, v3

    .line 1523
    :goto_18
    new-instance v1, Lcom/airbnb/lottie/model/content/GradientStroke;

    .line 1525
    move-object/from16 v17, v1

    .line 1527
    move-object/from16 v28, v2

    .line 1529
    invoke-direct/range {v17 .. v30}, Lcom/airbnb/lottie/model/content/GradientStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 1531
    goto/16 :goto_24

    .line 1534
    :pswitch_2a
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeGroupParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1536
    new-instance v3, Ljava/util/ArrayList;

    .line 1538
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1540
    const/4 v4, 0x0

    .line 1543
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1544
    move-result v6

    .line 1547
    if-eqz v6, :cond_6d

    .line 1548
    sget-object v6, Lcom/airbnb/lottie/parser/ShapeGroupParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1550
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1552
    move-result v6

    .line 1555
    if-eqz v6, :cond_6c

    .line 1556
    if-eq v6, v5, :cond_6b

    .line 1558
    if-eq v6, v2, :cond_68

    .line 1560
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1562
    goto :goto_19

    .line 1565
    :cond_68
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 1566
    :cond_69
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1569
    move-result v6

    .line 1572
    if-eqz v6, :cond_6a

    .line 1573
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    .line 1575
    move-result-object v6

    .line 1578
    if-eqz v6, :cond_69

    .line 1579
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1581
    goto :goto_1a

    .line 1584
    :cond_6a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 1585
    goto :goto_19

    .line 1588
    :cond_6b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1589
    move-result v8

    .line 1592
    goto :goto_19

    .line 1593
    :cond_6c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1594
    move-result-object v4

    .line 1597
    goto :goto_19

    .line 1598
    :cond_6d
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapeGroup;

    .line 1599
    invoke-direct {v1, v4, v3, v8}, Lcom/airbnb/lottie/model/content/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1601
    goto/16 :goto_24

    .line 1604
    :pswitch_2b
    sget-object v2, Lcom/airbnb/lottie/parser/GradientFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1606
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1608
    const/4 v3, 0x0

    .line 1610
    const/4 v4, 0x0

    .line 1611
    const/4 v6, 0x0

    .line 1612
    const/4 v9, 0x0

    .line 1613
    const/4 v10, 0x0

    .line 1614
    const/4 v11, 0x0

    .line 1615
    move-object/from16 v16, v2

    .line 1616
    move-object v14, v4

    .line 1618
    move-object v15, v6

    .line 1619
    move/from16 v21, v8

    .line 1620
    move-object/from16 v17, v9

    .line 1622
    move-object/from16 v19, v10

    .line 1624
    move-object/from16 v20, v11

    .line 1626
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1628
    move-result v2

    .line 1631
    if-eqz v2, :cond_73

    .line 1632
    sget-object v2, Lcom/airbnb/lottie/parser/GradientFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1634
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1636
    move-result v2

    .line 1639
    packed-switch v2, :pswitch_data_4

    .line 1640
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1643
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1646
    goto :goto_1b

    .line 1649
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1650
    move-result v21

    .line 1653
    goto :goto_1b

    .line 1654
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1655
    move-result v2

    .line 1658
    if-ne v2, v5, :cond_6e

    .line 1659
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1661
    goto :goto_1c

    .line 1663
    :cond_6e
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 1664
    :goto_1c
    move-object/from16 v16, v2

    .line 1666
    goto :goto_1b

    .line 1668
    :pswitch_2e
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1669
    move-result-object v20

    .line 1672
    goto :goto_1b

    .line 1673
    :pswitch_2f
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1674
    move-result-object v19

    .line 1677
    goto :goto_1b

    .line 1678
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1679
    move-result v2

    .line 1682
    if-ne v2, v5, :cond_6f

    .line 1683
    move-object v15, v7

    .line 1685
    goto :goto_1b

    .line 1686
    :cond_6f
    move-object v15, v12

    .line 1687
    goto :goto_1b

    .line 1688
    :pswitch_31
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1689
    move-result-object v3

    .line 1692
    goto :goto_1b

    .line 1693
    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 1694
    const/4 v2, -0x1

    .line 1697
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1698
    move-result v4

    .line 1701
    if-eqz v4, :cond_72

    .line 1702
    sget-object v4, Lcom/airbnb/lottie/parser/GradientFillParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1704
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1706
    move-result v4

    .line 1709
    if-eqz v4, :cond_71

    .line 1710
    if-eq v4, v5, :cond_70

    .line 1712
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1714
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1717
    goto :goto_1d

    .line 1720
    :cond_70
    new-instance v4, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    .line 1721
    new-instance v6, Lcom/airbnb/lottie/parser/GradientColorParser;

    .line 1723
    invoke-direct {v6, v2}, Lcom/airbnb/lottie/parser/GradientColorParser;-><init>(I)V

    .line 1725
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1728
    invoke-static {v0, v1, v9, v6, v8}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;

    .line 1730
    move-result-object v6

    .line 1733
    invoke-direct {v4, v6}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;-><init>(Ljava/util/List;)V

    .line 1734
    move-object/from16 v17, v4

    .line 1737
    goto :goto_1d

    .line 1739
    :cond_71
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1740
    move-result v2

    .line 1743
    goto :goto_1d

    .line 1744
    :cond_72
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1745
    goto :goto_1b

    .line 1748
    :pswitch_33
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1749
    move-result-object v14

    .line 1752
    goto :goto_1b

    .line 1753
    :cond_73
    if-nez v3, :cond_74

    .line 1754
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1756
    new-instance v2, Lcom/airbnb/lottie/value/Keyframe;

    .line 1758
    const/16 v3, 0x64

    .line 1760
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1762
    move-result-object v3

    .line 1765
    invoke-direct {v2, v3}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 1766
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1769
    move-result-object v2

    .line 1772
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    .line 1773
    move-object/from16 v18, v1

    .line 1776
    goto :goto_1e

    .line 1778
    :cond_74
    move-object/from16 v18, v3

    .line 1779
    :goto_1e
    new-instance v1, Lcom/airbnb/lottie/model/content/GradientFill;

    .line 1781
    move-object v13, v1

    .line 1783
    invoke-direct/range {v13 .. v21}, Lcom/airbnb/lottie/model/content/GradientFill;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Z)V

    .line 1784
    goto/16 :goto_24

    .line 1787
    :pswitch_34
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1789
    const/4 v3, 0x0

    .line 1791
    const/4 v4, 0x0

    .line 1792
    const/4 v6, 0x0

    .line 1793
    move-object v13, v4

    .line 1794
    move v4, v5

    .line 1795
    move-object/from16 v16, v6

    .line 1796
    move v14, v8

    .line 1798
    move/from16 v18, v14

    .line 1799
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1801
    move-result v6

    .line 1804
    if-eqz v6, :cond_7b

    .line 1805
    sget-object v6, Lcom/airbnb/lottie/parser/ShapeFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1807
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1809
    move-result v6

    .line 1812
    if-eqz v6, :cond_7a

    .line 1813
    if-eq v6, v5, :cond_79

    .line 1815
    if-eq v6, v2, :cond_78

    .line 1817
    if-eq v6, v11, :cond_77

    .line 1819
    if-eq v6, v10, :cond_76

    .line 1821
    if-eq v6, v9, :cond_75

    .line 1823
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1825
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1828
    goto :goto_1f

    .line 1831
    :cond_75
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1832
    move-result v18

    .line 1835
    goto :goto_1f

    .line 1836
    :cond_76
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1837
    move-result v4

    .line 1840
    goto :goto_1f

    .line 1841
    :cond_77
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1842
    move-result v14

    .line 1845
    goto :goto_1f

    .line 1846
    :cond_78
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1847
    move-result-object v3

    .line 1850
    goto :goto_1f

    .line 1851
    :cond_79
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 1852
    move-result-object v16

    .line 1855
    goto :goto_1f

    .line 1856
    :cond_7a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1857
    move-result-object v13

    .line 1860
    goto :goto_1f

    .line 1861
    :cond_7b
    if-nez v3, :cond_7c

    .line 1862
    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1864
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 1866
    const/16 v2, 0x64

    .line 1868
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1870
    move-result-object v2

    .line 1873
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 1874
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1877
    move-result-object v1

    .line 1880
    invoke-direct {v3, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    .line 1881
    :cond_7c
    move-object/from16 v17, v3

    .line 1884
    if-ne v4, v5, :cond_7d

    .line 1886
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1888
    goto :goto_20

    .line 1890
    :cond_7d
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 1891
    :goto_20
    move-object v15, v1

    .line 1893
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapeFill;

    .line 1894
    move-object v12, v1

    .line 1896
    invoke-direct/range {v12 .. v18}, Lcom/airbnb/lottie/model/content/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    .line 1897
    goto/16 :goto_24

    .line 1900
    :pswitch_35
    sget-object v4, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1902
    if-ne v3, v11, :cond_7e

    .line 1904
    move v3, v5

    .line 1906
    goto :goto_21

    .line 1907
    :cond_7e
    move v3, v8

    .line 1908
    :goto_21
    const/4 v4, 0x0

    .line 1909
    const/4 v6, 0x0

    .line 1910
    const/4 v7, 0x0

    .line 1911
    move/from16 v16, v3

    .line 1912
    move-object v13, v4

    .line 1914
    move-object v14, v6

    .line 1915
    move-object v15, v7

    .line 1916
    move/from16 v17, v8

    .line 1917
    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1919
    move-result v3

    .line 1922
    if-eqz v3, :cond_85

    .line 1923
    sget-object v3, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1925
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1927
    move-result v3

    .line 1930
    if-eqz v3, :cond_84

    .line 1931
    if-eq v3, v5, :cond_83

    .line 1933
    if-eq v3, v2, :cond_82

    .line 1935
    if-eq v3, v11, :cond_81

    .line 1937
    if-eq v3, v10, :cond_7f

    .line 1939
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1941
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1944
    goto :goto_22

    .line 1947
    :cond_7f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1948
    move-result v3

    .line 1951
    if-ne v3, v11, :cond_80

    .line 1952
    move/from16 v16, v5

    .line 1954
    goto :goto_22

    .line 1956
    :cond_80
    move/from16 v16, v8

    .line 1957
    goto :goto_22

    .line 1959
    :cond_81
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1960
    move-result v17

    .line 1963
    goto :goto_22

    .line 1964
    :cond_82
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1965
    move-result-object v15

    .line 1968
    goto :goto_22

    .line 1969
    :cond_83
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 1970
    move-result-object v14

    .line 1973
    goto :goto_22

    .line 1974
    :cond_84
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1975
    move-result-object v13

    .line 1978
    goto :goto_22

    .line 1979
    :cond_85
    new-instance v1, Lcom/airbnb/lottie/model/content/CircleShape;

    .line 1980
    move-object v12, v1

    .line 1982
    invoke-direct/range {v12 .. v17}, Lcom/airbnb/lottie/model/content/CircleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;ZZ)V

    .line 1983
    goto :goto_24

    .line 1986
    :goto_23
    const/4 v1, 0x0

    .line 1987
    :goto_24
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1988
    move-result v2

    .line 1991
    if-eqz v2, :cond_86

    .line 1992
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1994
    goto :goto_24

    .line 1997
    :cond_86
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1998
    return-object v1

    .line 2001
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_2b
        :pswitch_2a
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2002
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 2034
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_17
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
    .end packed-switch

    .line 2056
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    .line 2082
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
    .end packed-switch
    .line 2110
.end method
