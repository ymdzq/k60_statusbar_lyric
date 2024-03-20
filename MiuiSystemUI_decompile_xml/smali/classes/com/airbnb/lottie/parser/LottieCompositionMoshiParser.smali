.class public abstract Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    const-string/jumbo v0, "w"

    .line 2
    const-string v1, "h"

    .line 5
    const-string v2, "ip"

    .line 7
    const-string v3, "op"

    .line 9
    const-string v4, "fr"

    .line 11
    const-string/jumbo v5, "v"

    .line 13
    const-string v6, "layers"

    .line 16
    const-string v7, "assets"

    .line 18
    const-string v8, "fonts"

    .line 20
    const-string v9, "chars"

    .line 22
    const-string v10, "markers"

    .line 24
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 30
    move-result-object v0

    .line 33
    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 34
    const-string v1, "id"

    .line 36
    const-string v2, "layers"

    .line 38
    const-string/jumbo v3, "w"

    .line 40
    const-string v4, "h"

    .line 43
    const-string v5, "p"

    .line 45
    const-string/jumbo v6, "u"

    .line 47
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 54
    move-result-object v0

    .line 57
    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 58
    const-string v0, "list"

    .line 60
    filled-new-array {v0}, [Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 66
    move-result-object v0

    .line 69
    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 70
    const-string/jumbo v0, "tm"

    .line 72
    const-string v1, "dr"

    .line 75
    const-string v2, "cm"

    .line 77
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 83
    move-result-object v0

    .line 86
    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 87
    return-void
    .line 89
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Lcom/airbnb/lottie/LottieComposition;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 4
    move-result v1

    .line 7
    new-instance v2, Landroidx/collection/LongSparseArray;

    .line 8
    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v4, Ljava/util/HashMap;

    .line 18
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 20
    new-instance v5, Ljava/util/HashMap;

    .line 23
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 25
    new-instance v6, Ljava/util/HashMap;

    .line 28
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 30
    new-instance v7, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v8, Landroidx/collection/SparseArrayCompat;

    .line 38
    invoke-direct {v8}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 40
    new-instance v9, Lcom/airbnb/lottie/LottieComposition;

    .line 43
    invoke-direct {v9}, Lcom/airbnb/lottie/LottieComposition;-><init>()V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 48
    const/4 v10, 0x0

    .line 51
    const/4 v12, 0x0

    .line 52
    const/4 v13, 0x0

    .line 53
    const/4 v14, 0x0

    .line 54
    const/4 v15, 0x0

    .line 55
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 56
    move-result v16

    .line 59
    if-eqz v16, :cond_2b

    .line 60
    sget-object v11, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 62
    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 64
    move-result v11

    .line 67
    move/from16 v17, v12

    .line 68
    const/16 v19, 0x0

    .line 70
    packed-switch v11, :pswitch_data_0

    .line 72
    move/from16 v18, v1

    .line 75
    move-object/from16 v23, v6

    .line 77
    move-object/from16 v21, v7

    .line 79
    move-object/from16 v24, v8

    .line 81
    move/from16 v25, v10

    .line 83
    move/from16 v20, v13

    .line 85
    move/from16 v22, v14

    .line 87
    move-object v8, v2

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 93
    goto/16 :goto_1b

    .line 96
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 98
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 101
    move-result v11

    .line 104
    if-eqz v11, :cond_4

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 107
    move-object/from16 v21, v19

    .line 110
    const/4 v11, 0x0

    .line 112
    const/16 v20, 0x0

    .line 113
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 115
    move-result v18

    .line 118
    if-eqz v18, :cond_3

    .line 119
    sget-object v12, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 121
    invoke-virtual {v0, v12}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 123
    move-result v12

    .line 126
    if-eqz v12, :cond_2

    .line 127
    move/from16 v22, v14

    .line 129
    const/4 v14, 0x1

    .line 131
    if-eq v12, v14, :cond_1

    .line 132
    const/4 v14, 0x2

    .line 134
    if-eq v12, v14, :cond_0

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 140
    goto :goto_4

    .line 143
    :cond_0
    move v14, v13

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 145
    move-result-wide v12

    .line 148
    double-to-float v12, v12

    .line 149
    move/from16 v20, v12

    .line 150
    goto :goto_3

    .line 152
    :cond_1
    move v14, v13

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 154
    move-result-wide v11

    .line 157
    double-to-float v11, v11

    .line 158
    :goto_3
    move v13, v14

    .line 159
    goto :goto_4

    .line 160
    :cond_2
    move/from16 v22, v14

    .line 161
    move v14, v13

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 164
    move-result-object v21

    .line 167
    :goto_4
    move/from16 v14, v22

    .line 168
    goto :goto_2

    .line 170
    :cond_3
    move/from16 v22, v14

    .line 171
    move v14, v13

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 174
    new-instance v12, Lcom/airbnb/lottie/model/Marker;

    .line 177
    move/from16 v13, v20

    .line 179
    move/from16 v20, v14

    .line 181
    move-object/from16 v14, v21

    .line 183
    invoke-direct {v12, v14, v11, v13}, Lcom/airbnb/lottie/model/Marker;-><init>(Ljava/lang/String;FF)V

    .line 185
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    move/from16 v13, v20

    .line 191
    move/from16 v14, v22

    .line 193
    goto :goto_1

    .line 195
    :cond_4
    move/from16 v20, v13

    .line 196
    move/from16 v22, v14

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 200
    goto/16 :goto_9

    .line 203
    :pswitch_1
    move/from16 v20, v13

    .line 205
    move/from16 v22, v14

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 209
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 212
    move-result v11

    .line 215
    if-eqz v11, :cond_f

    .line 216
    sget-object v11, Lcom/airbnb/lottie/parser/FontCharacterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 218
    new-instance v11, Ljava/util/ArrayList;

    .line 220
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 225
    const-wide/16 v12, 0x0

    .line 228
    move-wide/from16 v26, v12

    .line 230
    move-object/from16 v28, v19

    .line 232
    move-object/from16 v29, v28

    .line 234
    const/16 v25, 0x0

    .line 236
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 238
    move-result v12

    .line 241
    if-eqz v12, :cond_e

    .line 242
    sget-object v12, Lcom/airbnb/lottie/parser/FontCharacterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 244
    invoke-virtual {v0, v12}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 246
    move-result v12

    .line 249
    if-eqz v12, :cond_d

    .line 250
    const/4 v13, 0x1

    .line 252
    if-eq v12, v13, :cond_c

    .line 253
    const/4 v13, 0x2

    .line 255
    if-eq v12, v13, :cond_b

    .line 256
    const/4 v13, 0x3

    .line 258
    if-eq v12, v13, :cond_a

    .line 259
    const/4 v13, 0x4

    .line 261
    if-eq v12, v13, :cond_9

    .line 262
    const/4 v13, 0x5

    .line 264
    if-eq v12, v13, :cond_5

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 270
    goto :goto_6

    .line 273
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 274
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 277
    move-result v12

    .line 280
    if-eqz v12, :cond_8

    .line 281
    sget-object v12, Lcom/airbnb/lottie/parser/FontCharacterParser;->DATA_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 283
    invoke-virtual {v0, v12}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 285
    move-result v12

    .line 288
    if-eqz v12, :cond_6

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 294
    goto :goto_7

    .line 297
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 298
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 301
    move-result v12

    .line 304
    if-eqz v12, :cond_7

    .line 305
    invoke-static {v0, v9}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    .line 307
    move-result-object v12

    .line 310
    check-cast v12, Lcom/airbnb/lottie/model/content/ShapeGroup;

    .line 311
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    goto :goto_8

    .line 316
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 317
    goto :goto_7

    .line 320
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 321
    goto :goto_6

    .line 324
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 325
    move-result-object v29

    .line 328
    goto :goto_6

    .line 329
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 330
    move-result-object v28

    .line 333
    goto :goto_6

    .line 334
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 335
    move-result-wide v26

    .line 338
    goto :goto_6

    .line 339
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 340
    goto :goto_6

    .line 343
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 344
    move-result-object v12

    .line 347
    const/4 v13, 0x0

    .line 348
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    .line 349
    move-result v25

    .line 352
    goto :goto_6

    .line 353
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 354
    new-instance v12, Lcom/airbnb/lottie/model/FontCharacter;

    .line 357
    move-object/from16 v23, v12

    .line 359
    move-object/from16 v24, v11

    .line 361
    invoke-direct/range {v23 .. v29}, Lcom/airbnb/lottie/model/FontCharacter;-><init>(Ljava/util/List;CDLjava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v12}, Lcom/airbnb/lottie/model/FontCharacter;->hashCode()I

    .line 366
    move-result v11

    .line 369
    invoke-virtual {v8, v11, v12}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 370
    goto/16 :goto_5

    .line 373
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 375
    :goto_9
    move/from16 v18, v1

    .line 378
    move-object/from16 v23, v6

    .line 380
    move-object/from16 v21, v7

    .line 382
    goto/16 :goto_e

    .line 384
    :pswitch_2
    move/from16 v20, v13

    .line 386
    move/from16 v22, v14

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 390
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 393
    move-result v11

    .line 396
    if-eqz v11, :cond_17

    .line 397
    sget-object v11, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 399
    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 401
    move-result v11

    .line 404
    if-eqz v11, :cond_10

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 410
    goto :goto_a

    .line 413
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 414
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 417
    move-result v11

    .line 420
    if-eqz v11, :cond_16

    .line 421
    sget-object v11, Lcom/airbnb/lottie/parser/FontParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 425
    move-object/from16 v11, v19

    .line 428
    move-object v12, v11

    .line 430
    move-object v13, v12

    .line 431
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 432
    move-result v14

    .line 435
    if-eqz v14, :cond_15

    .line 436
    sget-object v14, Lcom/airbnb/lottie/parser/FontParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 438
    invoke-virtual {v0, v14}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 440
    move-result v14

    .line 443
    if-eqz v14, :cond_14

    .line 444
    move-object/from16 v21, v7

    .line 446
    const/4 v7, 0x1

    .line 448
    if-eq v14, v7, :cond_13

    .line 449
    const/4 v7, 0x2

    .line 451
    if-eq v14, v7, :cond_12

    .line 452
    const/4 v7, 0x3

    .line 454
    if-eq v14, v7, :cond_11

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 460
    goto :goto_d

    .line 463
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 464
    goto :goto_d

    .line 467
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 468
    move-result-object v7

    .line 471
    move-object v13, v7

    .line 472
    goto :goto_d

    .line 473
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 474
    move-result-object v7

    .line 477
    move-object v12, v7

    .line 478
    :goto_d
    move-object/from16 v7, v21

    .line 479
    goto :goto_c

    .line 481
    :cond_14
    move-object/from16 v21, v7

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 484
    move-result-object v11

    .line 487
    goto :goto_c

    .line 488
    :cond_15
    move-object/from16 v21, v7

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 491
    new-instance v7, Lcom/airbnb/lottie/model/Font;

    .line 494
    invoke-direct {v7, v11, v12, v13}, Lcom/airbnb/lottie/model/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v6, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    move-object/from16 v7, v21

    .line 502
    goto :goto_b

    .line 504
    :cond_16
    move-object/from16 v21, v7

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 507
    goto :goto_a

    .line 510
    :cond_17
    move-object/from16 v21, v7

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 513
    move/from16 v18, v1

    .line 516
    move-object/from16 v23, v6

    .line 518
    :goto_e
    move-object/from16 v24, v8

    .line 520
    move/from16 v25, v10

    .line 522
    move-object v8, v2

    .line 524
    goto/16 :goto_1b

    .line 525
    :pswitch_3
    move-object/from16 v21, v7

    .line 527
    move/from16 v20, v13

    .line 529
    move/from16 v22, v14

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 533
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 536
    move-result v7

    .line 539
    if-eqz v7, :cond_21

    .line 540
    new-instance v7, Ljava/util/ArrayList;

    .line 542
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 544
    new-instance v11, Landroidx/collection/LongSparseArray;

    .line 547
    invoke-direct {v11}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 552
    move-object/from16 v23, v6

    .line 555
    move-object/from16 v6, v19

    .line 557
    move-object v14, v6

    .line 559
    const/4 v12, 0x0

    .line 560
    const/4 v13, 0x0

    .line 561
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 562
    move-result v24

    .line 565
    if-eqz v24, :cond_1f

    .line 566
    move-object/from16 v24, v8

    .line 568
    sget-object v8, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 570
    invoke-virtual {v0, v8}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 572
    move-result v8

    .line 575
    if-eqz v8, :cond_1e

    .line 576
    move/from16 v25, v10

    .line 578
    const/4 v10, 0x1

    .line 580
    if-eq v8, v10, :cond_1c

    .line 581
    const/4 v10, 0x2

    .line 583
    if-eq v8, v10, :cond_1b

    .line 584
    const/4 v10, 0x3

    .line 586
    if-eq v8, v10, :cond_1a

    .line 587
    const/4 v10, 0x4

    .line 589
    if-eq v8, v10, :cond_19

    .line 590
    const/4 v10, 0x5

    .line 592
    if-eq v8, v10, :cond_18

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 598
    move/from16 v18, v1

    .line 601
    move-object/from16 v26, v2

    .line 603
    goto :goto_12

    .line 605
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 606
    goto :goto_13

    .line 609
    :cond_19
    const/4 v10, 0x5

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 611
    move-result-object v14

    .line 614
    goto :goto_13

    .line 615
    :cond_1a
    const/4 v10, 0x5

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 617
    move-result v13

    .line 620
    goto :goto_13

    .line 621
    :cond_1b
    const/4 v10, 0x5

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 623
    move-result v12

    .line 626
    goto :goto_13

    .line 627
    :cond_1c
    const/4 v10, 0x5

    .line 628
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 629
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 632
    move-result v8

    .line 635
    if-eqz v8, :cond_1d

    .line 636
    invoke-static {v0, v9}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    .line 638
    move-result-object v8

    .line 641
    move/from16 v18, v1

    .line 642
    move-object/from16 v26, v2

    .line 644
    iget-wide v1, v8, Lcom/airbnb/lottie/model/layer/Layer;->layerId:J

    .line 646
    invoke-virtual {v11, v8, v1, v2}, Landroidx/collection/LongSparseArray;->put(Ljava/lang/Object;J)V

    .line 648
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    move/from16 v1, v18

    .line 654
    move-object/from16 v2, v26

    .line 656
    goto :goto_11

    .line 658
    :cond_1d
    move/from16 v18, v1

    .line 659
    move-object/from16 v26, v2

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 663
    :goto_12
    move/from16 v1, v18

    .line 666
    move-object/from16 v8, v24

    .line 668
    move/from16 v10, v25

    .line 670
    move-object/from16 v2, v26

    .line 672
    goto :goto_10

    .line 674
    :cond_1e
    move/from16 v18, v1

    .line 675
    move-object/from16 v26, v2

    .line 677
    move/from16 v25, v10

    .line 679
    const/4 v10, 0x5

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 682
    move-result-object v6

    .line 685
    :goto_13
    move-object/from16 v8, v24

    .line 686
    move/from16 v10, v25

    .line 688
    goto/16 :goto_10

    .line 690
    :cond_1f
    move/from16 v18, v1

    .line 692
    move-object/from16 v26, v2

    .line 694
    move-object/from16 v24, v8

    .line 696
    move/from16 v25, v10

    .line 698
    const/4 v10, 0x5

    .line 700
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 701
    if-eqz v14, :cond_20

    .line 704
    new-instance v1, Lcom/airbnb/lottie/LottieImageAsset;

    .line 706
    invoke-direct {v1, v6, v14, v12, v13}, Lcom/airbnb/lottie/LottieImageAsset;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 708
    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    goto :goto_14

    .line 714
    :cond_20
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    :goto_14
    move/from16 v1, v18

    .line 718
    move-object/from16 v6, v23

    .line 720
    move-object/from16 v8, v24

    .line 722
    move/from16 v10, v25

    .line 724
    move-object/from16 v2, v26

    .line 726
    goto/16 :goto_f

    .line 728
    :cond_21
    move/from16 v18, v1

    .line 730
    move-object/from16 v26, v2

    .line 732
    move-object/from16 v23, v6

    .line 734
    move-object/from16 v24, v8

    .line 736
    move/from16 v25, v10

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 740
    move-object/from16 v8, v26

    .line 743
    goto/16 :goto_1b

    .line 745
    :pswitch_4
    move/from16 v18, v1

    .line 747
    move-object/from16 v26, v2

    .line 749
    move-object/from16 v23, v6

    .line 751
    move-object/from16 v21, v7

    .line 753
    move-object/from16 v24, v8

    .line 755
    move/from16 v25, v10

    .line 757
    move/from16 v20, v13

    .line 759
    move/from16 v22, v14

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 763
    const/4 v1, 0x0

    .line 766
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 767
    move-result v2

    .line 770
    if-eqz v2, :cond_24

    .line 771
    invoke-static {v0, v9}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    .line 773
    move-result-object v2

    .line 776
    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 777
    iget-object v7, v2, Lcom/airbnb/lottie/model/layer/Layer;->layerType:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 779
    if-ne v7, v6, :cond_22

    .line 781
    add-int/lit8 v1, v1, 0x1

    .line 783
    :cond_22
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    iget-wide v6, v2, Lcom/airbnb/lottie/model/layer/Layer;->layerId:J

    .line 788
    move-object/from16 v8, v26

    .line 790
    invoke-virtual {v8, v2, v6, v7}, Landroidx/collection/LongSparseArray;->put(Ljava/lang/Object;J)V

    .line 792
    const/4 v2, 0x4

    .line 795
    if-le v1, v2, :cond_23

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    .line 798
    const-string v6, "You have "

    .line 800
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 805
    const-string v6, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    .line 808
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    move-result-object v2

    .line 816
    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 817
    :cond_23
    move-object/from16 v26, v8

    .line 820
    goto :goto_15

    .line 822
    :cond_24
    move-object/from16 v8, v26

    .line 823
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 825
    goto/16 :goto_1b

    .line 828
    :pswitch_5
    move/from16 v18, v1

    .line 830
    move-object/from16 v23, v6

    .line 832
    move-object/from16 v21, v7

    .line 834
    move-object/from16 v24, v8

    .line 836
    move/from16 v25, v10

    .line 838
    move/from16 v20, v13

    .line 840
    move/from16 v22, v14

    .line 842
    move-object v8, v2

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 845
    move-result-object v1

    .line 848
    const-string v2, "\\."

    .line 849
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 851
    move-result-object v1

    .line 854
    const/4 v2, 0x0

    .line 855
    aget-object v6, v1, v2

    .line 856
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 858
    move-result v2

    .line 861
    const/4 v6, 0x1

    .line 862
    aget-object v7, v1, v6

    .line 863
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 865
    move-result v7

    .line 868
    const/4 v10, 0x2

    .line 869
    aget-object v1, v1, v10

    .line 870
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 872
    move-result v1

    .line 875
    const/4 v10, 0x4

    .line 876
    if-ge v2, v10, :cond_25

    .line 877
    goto :goto_17

    .line 879
    :cond_25
    if-le v2, v10, :cond_26

    .line 880
    goto :goto_16

    .line 882
    :cond_26
    if-ge v7, v10, :cond_27

    .line 883
    goto :goto_17

    .line 885
    :cond_27
    if-le v7, v10, :cond_28

    .line 886
    goto :goto_16

    .line 888
    :cond_28
    if-ltz v1, :cond_29

    .line 889
    :goto_16
    move v12, v6

    .line 891
    goto :goto_18

    .line 892
    :cond_29
    :goto_17
    const/4 v12, 0x0

    .line 893
    :goto_18
    if-nez v12, :cond_2a

    .line 894
    const-string v1, "Lottie only supports bodymovin >= 4.4.0"

    .line 896
    invoke-virtual {v9, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 898
    goto/16 :goto_1b

    .line 901
    :pswitch_6
    move/from16 v18, v1

    .line 903
    move-object/from16 v23, v6

    .line 905
    move-object/from16 v21, v7

    .line 907
    move-object/from16 v24, v8

    .line 909
    move/from16 v25, v10

    .line 911
    move/from16 v20, v13

    .line 913
    move/from16 v22, v14

    .line 915
    move-object v8, v2

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 918
    move-result-wide v1

    .line 921
    double-to-float v12, v1

    .line 922
    goto/16 :goto_1c

    .line 923
    :pswitch_7
    move/from16 v18, v1

    .line 925
    move-object/from16 v23, v6

    .line 927
    move-object/from16 v21, v7

    .line 929
    move-object/from16 v24, v8

    .line 931
    move/from16 v25, v10

    .line 933
    move/from16 v20, v13

    .line 935
    move-object v8, v2

    .line 937
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 938
    move-result-wide v1

    .line 941
    double-to-float v1, v1

    .line 942
    const v2, 0x3c23d70a    # 0.01f

    .line 943
    sub-float v14, v1, v2

    .line 946
    goto :goto_19

    .line 948
    :pswitch_8
    move/from16 v18, v1

    .line 949
    move-object/from16 v23, v6

    .line 951
    move-object/from16 v21, v7

    .line 953
    move-object/from16 v24, v8

    .line 955
    move/from16 v25, v10

    .line 957
    move/from16 v22, v14

    .line 959
    move-object v8, v2

    .line 961
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 962
    move-result-wide v1

    .line 965
    double-to-float v13, v1

    .line 966
    :goto_19
    move/from16 v12, v17

    .line 967
    goto :goto_1c

    .line 969
    :pswitch_9
    move/from16 v18, v1

    .line 970
    move-object/from16 v23, v6

    .line 972
    move-object/from16 v21, v7

    .line 974
    move-object/from16 v24, v8

    .line 976
    move/from16 v20, v13

    .line 978
    move/from16 v22, v14

    .line 980
    move-object v8, v2

    .line 982
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 983
    move-result v10

    .line 986
    goto :goto_1a

    .line 987
    :pswitch_a
    move/from16 v18, v1

    .line 988
    move-object/from16 v23, v6

    .line 990
    move-object/from16 v21, v7

    .line 992
    move-object/from16 v24, v8

    .line 994
    move/from16 v25, v10

    .line 996
    move/from16 v20, v13

    .line 998
    move/from16 v22, v14

    .line 1000
    move-object v8, v2

    .line 1002
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1003
    move-result v15

    .line 1006
    :goto_1a
    move-object v2, v8

    .line 1007
    move/from16 v12, v17

    .line 1008
    move/from16 v1, v18

    .line 1010
    move/from16 v13, v20

    .line 1012
    move-object/from16 v7, v21

    .line 1014
    move/from16 v14, v22

    .line 1016
    move-object/from16 v6, v23

    .line 1018
    move-object/from16 v8, v24

    .line 1020
    goto/16 :goto_0

    .line 1022
    :cond_2a
    :goto_1b
    move/from16 v12, v17

    .line 1024
    move/from16 v13, v20

    .line 1026
    move/from16 v14, v22

    .line 1028
    :goto_1c
    move-object v2, v8

    .line 1030
    move/from16 v1, v18

    .line 1031
    move-object/from16 v7, v21

    .line 1033
    move-object/from16 v6, v23

    .line 1035
    move-object/from16 v8, v24

    .line 1037
    move/from16 v10, v25

    .line 1039
    goto/16 :goto_0

    .line 1041
    :cond_2b
    move/from16 v18, v1

    .line 1043
    move-object/from16 v23, v6

    .line 1045
    move-object/from16 v21, v7

    .line 1047
    move-object/from16 v24, v8

    .line 1049
    move/from16 v25, v10

    .line 1051
    move/from16 v17, v12

    .line 1053
    move/from16 v20, v13

    .line 1055
    move/from16 v22, v14

    .line 1057
    move-object v8, v2

    .line 1059
    int-to-float v0, v15

    .line 1060
    mul-float v0, v0, v18

    .line 1061
    float-to-int v0, v0

    .line 1063
    int-to-float v1, v10

    .line 1064
    mul-float v1, v1, v18

    .line 1065
    float-to-int v1, v1

    .line 1067
    new-instance v2, Landroid/graphics/Rect;

    .line 1068
    const/4 v6, 0x0

    .line 1070
    invoke-direct {v2, v6, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1071
    iput-object v2, v9, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    .line 1074
    move/from16 v10, v20

    .line 1076
    iput v10, v9, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    .line 1078
    move/from16 v10, v22

    .line 1080
    iput v10, v9, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 1082
    move/from16 v10, v17

    .line 1084
    iput v10, v9, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    .line 1086
    iput-object v3, v9, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    .line 1088
    iput-object v8, v9, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroidx/collection/LongSparseArray;

    .line 1090
    iput-object v4, v9, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    .line 1092
    iput-object v5, v9, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    .line 1094
    move-object/from16 v0, v24

    .line 1096
    iput-object v0, v9, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    .line 1098
    move-object/from16 v0, v23

    .line 1100
    iput-object v0, v9, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    .line 1102
    move-object/from16 v0, v21

    .line 1104
    iput-object v0, v9, Lcom/airbnb/lottie/LottieComposition;->markers:Ljava/util/List;

    .line 1106
    return-object v9

    .line 1108
    nop

    .line 1109
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 1110
.end method
