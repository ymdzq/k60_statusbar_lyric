.class public final Lcom/android/systemui/animation/FontInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEBUG:Z

.field public static final EMPTY_AXES:[Landroid/graphics/fonts/FontVariationAxis;


# instance fields
.field public final interpCache:Landroid/util/LruCache;

.field public final tmpInterpKey:Lcom/android/systemui/animation/FontInterpolator$InterpKey;

.field public final tmpVarFontKey:Lcom/android/systemui/animation/FontInterpolator$VarFontKey;

.field public final verFontCache:Landroid/util/LruCache;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "FontInterpolator"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/animation/FontInterpolator;->DEBUG:Z

    .line 9
    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [Landroid/graphics/fonts/FontVariationAxis;

    .line 12
    sput-object v0, Lcom/android/systemui/animation/FontInterpolator;->EMPTY_AXES:[Landroid/graphics/fonts/FontVariationAxis;

    .line 14
    return-void
    .line 16
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 7
    move-result p1

    .line 10
    mul-int/lit8 p1, p1, 0x2

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/16 p1, 0xa

    .line 14
    :goto_0
    new-instance v0, Landroid/util/LruCache;

    .line 16
    invoke-direct {v0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 18
    iput-object v0, p0, Lcom/android/systemui/animation/FontInterpolator;->interpCache:Landroid/util/LruCache;

    .line 21
    new-instance v0, Landroid/util/LruCache;

    .line 23
    invoke-direct {v0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 25
    iput-object v0, p0, Lcom/android/systemui/animation/FontInterpolator;->verFontCache:Landroid/util/LruCache;

    .line 28
    new-instance p1, Lcom/android/systemui/animation/FontInterpolator$InterpKey;

    .line 30
    const/4 v0, 0x0

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {p1, v1, v1, v0}, Lcom/android/systemui/animation/FontInterpolator$InterpKey;-><init>(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/animation/FontInterpolator;->tmpInterpKey:Lcom/android/systemui/animation/FontInterpolator$InterpKey;

    .line 37
    new-instance p1, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    const/4 v1, 0x0

    .line 46
    invoke-direct {p1, v0, v1, v1}, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;-><init>(Ljava/util/List;II)V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/animation/FontInterpolator;->tmpVarFontKey:Lcom/android/systemui/animation/FontInterpolator$VarFontKey;

    .line 50
    return-void
    .line 52
.end method


# virtual methods
.method public final lerp(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)Landroid/graphics/fonts/Font;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    const/4 v4, 0x0

    .line 10
    cmpg-float v4, v3, v4

    .line 11
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x1

    .line 14
    if-nez v4, :cond_0

    .line 15
    move v4, v6

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v4, v5

    .line 19
    :goto_0
    if-eqz v4, :cond_1

    .line 20
    return-object v1

    .line 22
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 23
    cmpg-float v4, v3, v4

    .line 25
    if-nez v4, :cond_2

    .line 27
    move v4, v6

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v4, v5

    .line 31
    :goto_1
    if-eqz v4, :cond_3

    .line 32
    return-object v2

    .line 34
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    .line 35
    move-result-object v4

    .line 38
    sget-object v7, Lcom/android/systemui/animation/FontInterpolator;->EMPTY_AXES:[Landroid/graphics/fonts/FontVariationAxis;

    .line 39
    if-nez v4, :cond_4

    .line 41
    move-object v4, v7

    .line 43
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    .line 44
    move-result-object v8

    .line 47
    if-nez v8, :cond_5

    .line 48
    goto :goto_2

    .line 50
    :cond_5
    move-object v7, v8

    .line 51
    :goto_2
    array-length v8, v4

    .line 52
    if-nez v8, :cond_6

    .line 53
    move v8, v6

    .line 55
    goto :goto_3

    .line 56
    :cond_6
    move v8, v5

    .line 57
    :goto_3
    if-eqz v8, :cond_8

    .line 58
    array-length v8, v7

    .line 60
    if-nez v8, :cond_7

    .line 61
    move v8, v6

    .line 63
    goto :goto_4

    .line 64
    :cond_7
    move v8, v5

    .line 65
    :goto_4
    if-eqz v8, :cond_8

    .line 66
    return-object v1

    .line 68
    :cond_8
    iget-object v8, v0, Lcom/android/systemui/animation/FontInterpolator;->tmpInterpKey:Lcom/android/systemui/animation/FontInterpolator$InterpKey;

    .line 69
    iput-object v1, v8, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->l:Landroid/graphics/fonts/Font;

    .line 71
    iput-object v2, v8, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->r:Landroid/graphics/fonts/Font;

    .line 73
    iput v3, v8, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->progress:F

    .line 75
    iget-object v9, v0, Lcom/android/systemui/animation/FontInterpolator;->interpCache:Landroid/util/LruCache;

    .line 77
    invoke-virtual {v9, v8}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v10

    .line 82
    check-cast v10, Landroid/graphics/fonts/Font;

    .line 83
    sget-boolean v11, Lcom/android/systemui/animation/FontInterpolator;->DEBUG:Z

    .line 85
    const-string v12, "["

    .line 87
    const-string v13, "FontInterpolator"

    .line 89
    if-eqz v10, :cond_a

    .line 91
    if-eqz v11, :cond_9

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, "] Interp. cache hit for "

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 114
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_9
    return-object v10

    .line 118
    :cond_a
    new-instance v10, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;

    .line 119
    invoke-direct {v10, v3, v0}, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;-><init>(FLcom/android/systemui/animation/FontInterpolator;)V

    .line 121
    array-length v14, v4

    .line 124
    if-le v14, v6, :cond_b

    .line 125
    new-instance v14, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$1;

    .line 127
    invoke-direct {v14, v5}, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$1;-><init>(I)V

    .line 129
    array-length v15, v4

    .line 132
    if-le v15, v6, :cond_b

    .line 133
    invoke-static {v4, v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 135
    :cond_b
    array-length v14, v7

    .line 138
    if-le v14, v6, :cond_c

    .line 139
    new-instance v14, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$1;

    .line 141
    const/4 v15, 0x3

    .line 143
    invoke-direct {v14, v15}, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$1;-><init>(I)V

    .line 144
    array-length v15, v7

    .line 147
    if-le v15, v6, :cond_c

    .line 148
    invoke-static {v7, v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 150
    :cond_c
    new-instance v14, Ljava/util/ArrayList;

    .line 153
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 155
    move v15, v5

    .line 158
    :goto_5
    array-length v6, v4

    .line 159
    if-lt v15, v6, :cond_12

    .line 160
    array-length v6, v7

    .line 162
    if-ge v5, v6, :cond_d

    .line 163
    goto/16 :goto_6

    .line 165
    :cond_d
    iget-object v4, v0, Lcom/android/systemui/animation/FontInterpolator;->tmpVarFontKey:Lcom/android/systemui/animation/FontInterpolator$VarFontKey;

    .line 167
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    .line 172
    move-result v5

    .line 175
    iput v5, v4, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sourceId:I

    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    .line 178
    move-result v5

    .line 181
    iput v5, v4, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->index:I

    .line 182
    iget-object v5, v4, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sortedAxes:Ljava/util/List;

    .line 184
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 186
    invoke-interface {v5, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 192
    move-result v6

    .line 195
    const/4 v7, 0x1

    .line 196
    if-le v6, v7, :cond_e

    .line 197
    new-instance v6, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$1;

    .line 199
    const/4 v7, 0x2

    .line 201
    invoke-direct {v6, v7}, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$1;-><init>(I)V

    .line 202
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 205
    :cond_e
    iget-object v0, v0, Lcom/android/systemui/animation/FontInterpolator;->verFontCache:Landroid/util/LruCache;

    .line 208
    invoke-virtual {v0, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    move-result-object v5

    .line 213
    check-cast v5, Landroid/graphics/fonts/Font;

    .line 214
    if-eqz v5, :cond_10

    .line 216
    new-instance v0, Lcom/android/systemui/animation/FontInterpolator$InterpKey;

    .line 218
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/animation/FontInterpolator$InterpKey;-><init>(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V

    .line 220
    invoke-virtual {v9, v0, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    if-eqz v11, :cond_f

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, "] Axis cache hit for "

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object v0

    .line 247
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_f
    return-object v5

    .line 251
    :cond_10
    new-instance v5, Landroid/graphics/fonts/Font$Builder;

    .line 252
    invoke-direct {v5, v1}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    .line 254
    const/4 v6, 0x0

    .line 257
    new-array v6, v6, [Landroid/graphics/fonts/FontVariationAxis;

    .line 258
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 260
    move-result-object v6

    .line 263
    check-cast v6, [Landroid/graphics/fonts/FontVariationAxis;

    .line 264
    invoke-virtual {v5, v6}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;

    .line 266
    move-result-object v5

    .line 269
    invoke-virtual {v5}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    .line 270
    move-result-object v5

    .line 273
    new-instance v6, Lcom/android/systemui/animation/FontInterpolator$InterpKey;

    .line 274
    invoke-direct {v6, v1, v2, v3}, Lcom/android/systemui/animation/FontInterpolator$InterpKey;-><init>(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V

    .line 276
    invoke-virtual {v9, v6, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v2, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;

    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    .line 284
    move-result v6

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    .line 288
    move-result v1

    .line 291
    new-instance v7, Ljava/util/ArrayList;

    .line 292
    invoke-direct {v7, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 294
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 297
    move-result v9

    .line 300
    const/4 v10, 0x1

    .line 301
    if-le v9, v10, :cond_11

    .line 302
    new-instance v9, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$1;

    .line 304
    invoke-direct {v9, v10}, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$1;-><init>(I)V

    .line 306
    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 309
    :cond_11
    invoke-direct {v2, v7, v6, v1}, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;-><init>(Ljava/util/List;II)V

    .line 312
    invoke-virtual {v0, v2, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    .line 318
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, "] Cache MISS for "

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    const-string v1, " / "

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    move-result-object v0

    .line 345
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-object v5

    .line 349
    :cond_12
    const/4 v6, 0x0

    .line 350
    :goto_6
    const/16 v16, 0x1

    .line 351
    array-length v6, v4

    .line 353
    if-ge v15, v6, :cond_13

    .line 354
    aget-object v6, v4, v15

    .line 356
    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    .line 358
    move-result-object v6

    .line 361
    goto :goto_7

    .line 362
    :cond_13
    const/4 v6, 0x0

    .line 363
    :goto_7
    array-length v0, v7

    .line 364
    if-ge v5, v0, :cond_14

    .line 365
    aget-object v0, v7, v5

    .line 367
    invoke-virtual {v0}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    .line 369
    move-result-object v0

    .line 372
    goto :goto_8

    .line 373
    :cond_14
    const/4 v0, 0x0

    .line 374
    :goto_8
    if-nez v6, :cond_15

    .line 375
    move/from16 v18, v16

    .line 377
    goto :goto_9

    .line 379
    :cond_15
    if-nez v0, :cond_16

    .line 380
    const/16 v18, -0x1

    .line 382
    goto :goto_9

    .line 384
    :cond_16
    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 385
    move-result v18

    .line 388
    :goto_9
    if-nez v18, :cond_17

    .line 389
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 391
    add-int/lit8 v0, v15, 0x1

    .line 394
    aget-object v15, v4, v15

    .line 396
    invoke-virtual {v15}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    .line 398
    move-result v15

    .line 401
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 402
    move-result-object v15

    .line 405
    add-int/lit8 v17, v5, 0x1

    .line 406
    aget-object v5, v7, v5

    .line 408
    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    .line 410
    move-result v5

    .line 413
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 414
    move-result-object v5

    .line 417
    invoke-virtual {v10, v6, v15, v5}, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    move-result-object v5

    .line 421
    check-cast v5, Ljava/lang/Number;

    .line 422
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 424
    move-result v5

    .line 427
    new-instance v15, Landroid/graphics/fonts/FontVariationAxis;

    .line 428
    invoke-direct {v15, v6, v5}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    .line 430
    move/from16 v5, v17

    .line 433
    goto :goto_a

    .line 435
    :cond_17
    if-gez v18, :cond_18

    .line 436
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 438
    add-int/lit8 v0, v15, 0x1

    .line 441
    aget-object v15, v4, v15

    .line 443
    invoke-virtual {v15}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    .line 445
    move-result v15

    .line 448
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 449
    move-result-object v15

    .line 452
    move/from16 v18, v0

    .line 453
    const/4 v0, 0x0

    .line 455
    invoke-virtual {v10, v6, v15, v0}, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    move-result-object v0

    .line 459
    check-cast v0, Ljava/lang/Number;

    .line 460
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 462
    move-result v0

    .line 465
    new-instance v15, Landroid/graphics/fonts/FontVariationAxis;

    .line 466
    invoke-direct {v15, v6, v0}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    .line 468
    move/from16 v0, v18

    .line 471
    goto :goto_a

    .line 473
    :cond_18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 474
    add-int/lit8 v6, v5, 0x1

    .line 477
    aget-object v5, v7, v5

    .line 479
    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    .line 481
    move-result v5

    .line 484
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 485
    move-result-object v5

    .line 488
    const/4 v1, 0x0

    .line 489
    invoke-virtual {v10, v0, v1, v5}, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    move-result-object v1

    .line 493
    check-cast v1, Ljava/lang/Number;

    .line 494
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 496
    move-result v1

    .line 499
    new-instance v5, Landroid/graphics/fonts/FontVariationAxis;

    .line 500
    invoke-direct {v5, v0, v1}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    .line 502
    move v0, v15

    .line 505
    move-object v15, v5

    .line 506
    move v5, v6

    .line 507
    :goto_a
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    move-object/from16 v1, p1

    .line 511
    move v15, v0

    .line 513
    move-object/from16 v0, p0

    .line 514
    goto/16 :goto_5
    .line 516
.end method
