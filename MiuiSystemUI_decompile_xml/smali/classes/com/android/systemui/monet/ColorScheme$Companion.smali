.class public final Lcom/android/systemui/monet/ColorScheme$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final access$humanReadable(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 4
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    check-cast p1, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Number;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 29
    move-result v1

    .line 32
    invoke-static {v1}, Lcom/android/systemui/monet/ColorScheme$Companion;->stringForColor(I)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_0

    .line 40
    :cond_0
    const-string v1, "\n"

    .line 41
    const/4 v2, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    sget-object v4, Lcom/android/systemui/monet/ColorScheme$Companion$humanReadable$2;->INSTANCE:Lcom/android/systemui/monet/ColorScheme$Companion$humanReadable$2;

    .line 45
    const/16 v5, 0x1e

    .line 47
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 52
    const-string v0, "\n"

    .line 53
    invoke-static {p0, v0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    return-object p0
    .line 59
.end method

.method public static getSeedColors(Landroid/app/WallpaperColors;Z)Ljava/util/List;
    .locals 20

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    .line 2
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_23

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/Integer;

    .line 34
    check-cast v1, Ljava/lang/Integer;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result v1

    .line 41
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v2

    .line 45
    add-int/2addr v2, v1

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    check-cast v1, Ljava/lang/Number;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 54
    move-result v0

    .line 57
    int-to-double v0, v0

    .line 58
    const-wide/16 v2, 0x0

    .line 59
    cmpg-double v4, v0, v2

    .line 61
    const/4 v5, 0x1

    .line 63
    const/4 v6, 0x0

    .line 64
    if-nez v4, :cond_1

    .line 65
    move v4, v5

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v4, v6

    .line 69
    :goto_1
    const v7, -0xe4910d

    .line 70
    const/high16 v8, 0x40a00000    # 5.0f

    .line 73
    if-eqz v4, :cond_8

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    .line 77
    move-result-object v0

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    .line 81
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 83
    move-result v2

    .line 86
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v0

    .line 93
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v2

    .line 97
    if-eqz v2, :cond_2

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 103
    check-cast v2, Landroid/graphics/Color;

    .line 104
    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    .line 106
    move-result v2

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v2

    .line 113
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    goto :goto_2

    .line 117
    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    .line 118
    move-result-object v0

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    .line 122
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 127
    move-result-object v0

    .line 130
    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    move-result v2

    .line 134
    if-eqz v2, :cond_6

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    move-result-object v2

    .line 140
    move-object v3, v2

    .line 141
    check-cast v3, Ljava/lang/Number;

    .line 142
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 144
    move-result v3

    .line 147
    if-nez p1, :cond_4

    .line 148
    goto :goto_4

    .line 150
    :cond_4
    invoke-static {v3}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    .line 151
    move-result-object v3

    .line 154
    invoke-virtual {v3}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    .line 155
    move-result v3

    .line 158
    cmpl-float v3, v3, v8

    .line 159
    if-ltz v3, :cond_5

    .line 161
    :goto_4
    move v3, v5

    .line 163
    goto :goto_5

    .line 164
    :cond_5
    move v3, v6

    .line 165
    :goto_5
    if-eqz v3, :cond_3

    .line 166
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    goto :goto_3

    .line 171
    :cond_6
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 172
    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 176
    move-result v1

    .line 179
    if-eqz v1, :cond_7

    .line 180
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    move-result-object v0

    .line 185
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 186
    move-result-object v0

    .line 189
    :cond_7
    return-object v0

    .line 190
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    .line 191
    move-result-object v9

    .line 194
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 195
    invoke-interface {v9}, Ljava/util/Map;->size()I

    .line 197
    move-result v11

    .line 200
    invoke-static {v11}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 201
    move-result v11

    .line 204
    invoke-direct {v10, v11}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 205
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 208
    move-result-object v9

    .line 211
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 212
    move-result-object v9

    .line 215
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    move-result v11

    .line 219
    if-eqz v11, :cond_9

    .line 220
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    move-result-object v11

    .line 225
    check-cast v11, Ljava/util/Map$Entry;

    .line 226
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 228
    move-result-object v12

    .line 231
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 232
    move-result-object v11

    .line 235
    check-cast v11, Ljava/lang/Number;

    .line 236
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 238
    move-result v11

    .line 241
    int-to-double v13, v11

    .line 242
    div-double/2addr v13, v0

    .line 243
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 244
    move-result-object v11

    .line 247
    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    goto :goto_6

    .line 251
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    .line 252
    move-result-object v0

    .line 255
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 256
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 258
    move-result v9

    .line 261
    invoke-static {v9}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 262
    move-result v9

    .line 265
    invoke-direct {v1, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 266
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 269
    move-result-object v0

    .line 272
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 273
    move-result-object v0

    .line 276
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 277
    move-result v9

    .line 280
    if-eqz v9, :cond_a

    .line 281
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 283
    move-result-object v9

    .line 286
    check-cast v9, Ljava/util/Map$Entry;

    .line 287
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 289
    move-result-object v11

    .line 292
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 293
    move-result-object v9

    .line 296
    check-cast v9, Ljava/lang/Number;

    .line 297
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 299
    move-result v9

    .line 302
    invoke-static {v9}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    .line 303
    move-result-object v9

    .line 306
    invoke-interface {v1, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    goto :goto_7

    .line 310
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    .line 311
    const/16 v9, 0x168

    .line 313
    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 315
    move v11, v6

    .line 318
    :goto_8
    if-ge v11, v9, :cond_b

    .line 319
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 321
    move-result-object v12

    .line 324
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v11, v11, 0x1

    .line 328
    goto :goto_8

    .line 330
    :cond_b
    new-instance v11, Ljava/util/ArrayList;

    .line 331
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 333
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 336
    move-result-object v0

    .line 339
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 340
    move-result-object v0

    .line 343
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 344
    move-result v12

    .line 347
    if-eqz v12, :cond_d

    .line 348
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 350
    move-result-object v12

    .line 353
    check-cast v12, Ljava/util/Map$Entry;

    .line 354
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 356
    move-result-object v13

    .line 359
    invoke-virtual {v10, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    move-result-object v13

    .line 363
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 364
    check-cast v13, Ljava/lang/Number;

    .line 367
    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    .line 369
    move-result-wide v13

    .line 372
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 373
    move-result-object v12

    .line 376
    invoke-virtual {v1, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    move-result-object v12

    .line 380
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 381
    check-cast v12, Lcom/android/internal/graphics/cam/Cam;

    .line 384
    invoke-virtual {v12}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    .line 386
    move-result v15

    .line 389
    invoke-static {v15}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 390
    move-result v15

    .line 393
    rem-int/2addr v15, v9

    .line 394
    if-eqz p1, :cond_c

    .line 395
    invoke-virtual {v12}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    .line 397
    move-result v12

    .line 400
    cmpg-float v12, v12, v8

    .line 401
    if-gtz v12, :cond_c

    .line 403
    goto :goto_9

    .line 405
    :cond_c
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 406
    move-result-object v12

    .line 409
    check-cast v12, Ljava/lang/Number;

    .line 410
    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    .line 412
    move-result-wide v16

    .line 415
    add-double v16, v16, v13

    .line 416
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 418
    move-result-object v12

    .line 421
    invoke-virtual {v11, v15, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 422
    goto :goto_9

    .line 425
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    .line 426
    move-result-object v0

    .line 429
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 430
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 432
    move-result v12

    .line 435
    invoke-static {v12}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 436
    move-result v12

    .line 439
    invoke-direct {v10, v12}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 440
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 443
    move-result-object v0

    .line 446
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 447
    move-result-object v0

    .line 450
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 451
    move-result v12

    .line 454
    const/16 v13, 0xf

    .line 455
    if-eqz v12, :cond_11

    .line 457
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 459
    move-result-object v12

    .line 462
    check-cast v12, Ljava/util/Map$Entry;

    .line 463
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 465
    move-result-object v14

    .line 468
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 469
    move-result-object v12

    .line 472
    invoke-virtual {v1, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    move-result-object v12

    .line 476
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 477
    check-cast v12, Lcom/android/internal/graphics/cam/Cam;

    .line 480
    invoke-virtual {v12}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    .line 482
    move-result v12

    .line 485
    invoke-static {v12}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 486
    move-result v12

    .line 489
    add-int/lit8 v15, v12, -0xf

    .line 490
    add-int/2addr v12, v13

    .line 492
    move-wide/from16 v16, v2

    .line 493
    if-gt v15, v12, :cond_10

    .line 495
    :goto_b
    if-gez v15, :cond_e

    .line 497
    rem-int/lit16 v13, v15, 0x168

    .line 499
    add-int/2addr v13, v9

    .line 501
    goto :goto_c

    .line 502
    :cond_e
    if-lt v15, v9, :cond_f

    .line 503
    rem-int/lit16 v13, v15, 0x168

    .line 505
    goto :goto_c

    .line 507
    :cond_f
    move v13, v15

    .line 508
    :goto_c
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 509
    move-result-object v13

    .line 512
    check-cast v13, Ljava/lang/Number;

    .line 513
    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    .line 515
    move-result-wide v18

    .line 518
    add-double v16, v18, v16

    .line 519
    if-eq v15, v12, :cond_10

    .line 521
    add-int/lit8 v15, v15, 0x1

    .line 523
    goto :goto_b

    .line 525
    :cond_10
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 526
    move-result-object v12

    .line 529
    invoke-interface {v10, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    goto :goto_a

    .line 533
    :cond_11
    if-nez p1, :cond_12

    .line 534
    move-object v0, v1

    .line 536
    goto :goto_f

    .line 537
    :cond_12
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 538
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 540
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 543
    move-result-object v2

    .line 546
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 547
    move-result-object v2

    .line 550
    :cond_13
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 551
    move-result v3

    .line 554
    if-eqz v3, :cond_16

    .line 555
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 557
    move-result-object v3

    .line 560
    check-cast v3, Ljava/util/Map$Entry;

    .line 561
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 563
    move-result-object v9

    .line 566
    check-cast v9, Lcom/android/internal/graphics/cam/Cam;

    .line 567
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 569
    move-result-object v11

    .line 572
    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    move-result-object v11

    .line 576
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 577
    check-cast v11, Ljava/lang/Number;

    .line 580
    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    .line 582
    move-result-wide v11

    .line 585
    invoke-virtual {v9}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    .line 586
    move-result v9

    .line 589
    cmpl-float v9, v9, v8

    .line 590
    if-ltz v9, :cond_15

    .line 592
    if-nez v4, :cond_14

    .line 594
    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    .line 596
    cmpl-double v9, v11, v14

    .line 601
    if-lez v9, :cond_15

    .line 603
    :cond_14
    move v9, v5

    .line 605
    goto :goto_e

    .line 606
    :cond_15
    move v9, v6

    .line 607
    :goto_e
    if-eqz v9, :cond_13

    .line 608
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 610
    move-result-object v9

    .line 613
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 614
    move-result-object v3

    .line 617
    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    goto :goto_d

    .line 621
    :cond_16
    :goto_f
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 622
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 624
    move-result v3

    .line 627
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 628
    move-result v3

    .line 631
    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 632
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 635
    move-result-object v0

    .line 638
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 639
    move-result-object v0

    .line 642
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 643
    move-result v3

    .line 646
    if-eqz v3, :cond_18

    .line 647
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 649
    move-result-object v3

    .line 652
    check-cast v3, Ljava/util/Map$Entry;

    .line 653
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 655
    move-result-object v4

    .line 658
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 659
    move-result-object v8

    .line 662
    check-cast v8, Lcom/android/internal/graphics/cam/Cam;

    .line 663
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 665
    move-result-object v3

    .line 668
    invoke-virtual {v10, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    move-result-object v3

    .line 672
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 673
    check-cast v3, Ljava/lang/Number;

    .line 676
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    .line 678
    move-result-wide v11

    .line 681
    const-wide v14, 0x4051800000000000L    # 70.0

    .line 682
    mul-double/2addr v11, v14

    .line 687
    invoke-virtual {v8}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    .line 688
    move-result v3

    .line 691
    const/high16 v9, 0x42400000    # 48.0f

    .line 692
    cmpg-float v3, v3, v9

    .line 694
    if-gez v3, :cond_17

    .line 696
    invoke-virtual {v8}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    .line 698
    move-result v3

    .line 701
    sub-float/2addr v3, v9

    .line 702
    float-to-double v8, v3

    .line 703
    const-wide v14, 0x3fb999999999999aL    # 0.1

    .line 704
    goto :goto_11

    .line 709
    :cond_17
    invoke-virtual {v8}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    .line 710
    move-result v3

    .line 713
    sub-float/2addr v3, v9

    .line 714
    float-to-double v8, v3

    .line 715
    const-wide v14, 0x3fd3333333333333L    # 0.3

    .line 716
    :goto_11
    mul-double/2addr v8, v14

    .line 721
    add-double/2addr v8, v11

    .line 722
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 723
    move-result-object v3

    .line 726
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    goto :goto_10

    .line 730
    :cond_18
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 731
    move-result-object v0

    .line 734
    new-instance v2, Ljava/util/ArrayList;

    .line 735
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 737
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 740
    move-result v0

    .line 743
    if-le v0, v5, :cond_19

    .line 744
    new-instance v0, Lcom/android/systemui/monet/ColorScheme$Companion$getSeedColors$$inlined$sortByDescending$1;

    .line 746
    invoke-direct {v0}, Lcom/android/systemui/monet/ColorScheme$Companion$getSeedColors$$inlined$sortByDescending$1;-><init>()V

    .line 748
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 751
    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    .line 754
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 756
    const/16 v3, 0x5a

    .line 759
    :goto_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 761
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 764
    move-result-object v4

    .line 767
    :cond_1a
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 768
    move-result v8

    .line 771
    if-eqz v8, :cond_20

    .line 772
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 774
    move-result-object v8

    .line 777
    check-cast v8, Ljava/util/Map$Entry;

    .line 778
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 780
    move-result-object v8

    .line 783
    check-cast v8, Ljava/lang/Integer;

    .line 784
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 786
    move-result-object v9

    .line 789
    :cond_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 790
    move-result v10

    .line 793
    if-eqz v10, :cond_1d

    .line 794
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 796
    move-result-object v10

    .line 799
    move-object v11, v10

    .line 800
    check-cast v11, Ljava/lang/Number;

    .line 801
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 803
    move-result v11

    .line 806
    invoke-virtual {v1, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    move-result-object v12

    .line 810
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 811
    check-cast v12, Lcom/android/internal/graphics/cam/Cam;

    .line 814
    invoke-virtual {v12}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    .line 816
    move-result v12

    .line 819
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 820
    move-result-object v11

    .line 823
    invoke-virtual {v1, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    move-result-object v11

    .line 827
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 828
    check-cast v11, Lcom/android/internal/graphics/cam/Cam;

    .line 831
    invoke-virtual {v11}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    .line 833
    move-result v11

    .line 836
    sub-float/2addr v12, v11

    .line 837
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 838
    move-result v11

    .line 841
    const/high16 v12, 0x43340000    # 180.0f

    .line 842
    sub-float/2addr v11, v12

    .line 844
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 845
    move-result v11

    .line 848
    sub-float/2addr v12, v11

    .line 849
    int-to-float v11, v3

    .line 850
    cmpg-float v11, v12, v11

    .line 851
    if-gez v11, :cond_1c

    .line 853
    move v11, v5

    .line 855
    goto :goto_14

    .line 856
    :cond_1c
    move v11, v6

    .line 857
    :goto_14
    if-eqz v11, :cond_1b

    .line 858
    goto :goto_15

    .line 860
    :cond_1d
    const/4 v10, 0x0

    .line 861
    :goto_15
    if-eqz v10, :cond_1e

    .line 862
    move v9, v5

    .line 864
    goto :goto_16

    .line 865
    :cond_1e
    move v9, v6

    .line 866
    :goto_16
    if-eqz v9, :cond_1f

    .line 867
    goto :goto_13

    .line 869
    :cond_1f
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 873
    move-result v8

    .line 876
    const/4 v9, 0x4

    .line 877
    if-lt v8, v9, :cond_1a

    .line 878
    goto :goto_17

    .line 880
    :cond_20
    if-eq v3, v13, :cond_21

    .line 881
    add-int/lit8 v3, v3, -0x1

    .line 883
    goto :goto_12

    .line 885
    :cond_21
    :goto_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 886
    move-result v1

    .line 889
    if-eqz v1, :cond_22

    .line 890
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 892
    move-result-object v1

    .line 895
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    :cond_22
    return-object v0

    .line 899
    :cond_23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 900
    const-string v1, "Empty collection can\'t be reduced."

    .line 902
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 904
    throw v0
    .line 907
.end method

.method public static stringForColor(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    .line 6
    move-result v1

    .line 9
    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 10
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->padEnd$default(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    const-string v2, "H"

    .line 22
    invoke-static {v2, v1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    .line 28
    move-result v0

    .line 31
    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 32
    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->padEnd$default(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 43
    const-string v2, "C"

    .line 44
    invoke-static {v2, v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 49
    invoke-static {p0}, Lcom/android/internal/graphics/cam/CamUtils;->lstarFromInt(I)F

    .line 50
    move-result v2

    .line 53
    invoke-static {v2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 54
    move-result v2

    .line 57
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 61
    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->padEnd$default(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 65
    const-string v3, "T"

    .line 66
    invoke-static {v3, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 71
    const v3, 0xffffff

    .line 72
    and-int/2addr p0, v3

    .line 75
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    const/4 v3, 0x6

    .line 80
    invoke-static {p0, v3}, Lkotlin/text/StringsKt__StringsKt;->padStart(Ljava/lang/String;I)Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 84
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 85
    invoke-virtual {p0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v0, " = #"

    .line 105
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 116
    return-object p0
    .line 117
.end method
