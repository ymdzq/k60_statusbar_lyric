.class public final Lkotlin/jvm/internal/ClassReference;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/reflect/KClass;
.implements Lkotlin/jvm/internal/ClassBasedDeclarationContainer;


# static fields
.field public static final FUNCTION_CLASSES:Ljava/util/Map;

.field public static final classFqNames:Ljava/util/HashMap;

.field public static final simpleNames:Ljava/util/Map;


# instance fields
.field public final jClass:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    .line 1
    const-class v0, Lkotlin/jvm/functions/Function0;

    .line 2
    const-class v1, Lkotlin/jvm/functions/Function1;

    .line 4
    const-class v2, Lkotlin/jvm/functions/Function2;

    .line 6
    const-class v3, Lkotlin/jvm/functions/Function3;

    .line 8
    const-class v4, Lkotlin/jvm/functions/Function4;

    .line 10
    const-class v5, Lkotlin/jvm/functions/Function5;

    .line 12
    const-class v6, Lkotlin/jvm/functions/Function6;

    .line 14
    const-class v7, Lkotlin/jvm/functions/Function7;

    .line 16
    const-class v8, Lkotlin/jvm/functions/Function8;

    .line 18
    const-class v9, Lkotlin/jvm/functions/Function9;

    .line 20
    const-class v10, Lkotlin/jvm/functions/Function10;

    .line 22
    const-class v11, Lkotlin/jvm/functions/Function11;

    .line 24
    const-class v12, Lkotlin/jvm/functions/Function12;

    .line 26
    const-class v13, Lkotlin/jvm/functions/Function13;

    .line 28
    const-class v14, Lkotlin/jvm/functions/Function14;

    .line 30
    const-class v15, Lkotlin/jvm/functions/Function15;

    .line 32
    const-class v16, Lkotlin/jvm/functions/Function16;

    .line 34
    const-class v17, Lkotlin/jvm/functions/Function17;

    .line 36
    const-class v18, Lkotlin/jvm/functions/Function18;

    .line 38
    const-class v19, Lkotlin/jvm/functions/Function19;

    .line 40
    const-class v20, Lkotlin/jvm/functions/Function20;

    .line 42
    const-class v21, Lkotlin/jvm/functions/Function21;

    .line 44
    const-class v22, Lkotlin/jvm/functions/Function22;

    .line 46
    filled-new-array/range {v0 .. v22}, [Ljava/lang/Class;

    .line 48
    move-result-object v0

    .line 51
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    move-result-object v0

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 58
    move-result v2

    .line 61
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v0

    .line 68
    const/4 v2, 0x0

    .line 69
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v3

    .line 73
    if-eqz v3, :cond_1

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v3

    .line 79
    add-int/lit8 v4, v2, 0x1

    .line 80
    if-ltz v2, :cond_0

    .line 82
    check-cast v3, Ljava/lang/Class;

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v2

    .line 89
    new-instance v5, Lkotlin/Pair;

    .line 90
    invoke-direct {v5, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    move v2, v4

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 100
    const/4 v0, 0x0

    .line 103
    throw v0

    .line 104
    :cond_1
    invoke-static {v1}, Lkotlin/collections/MapsKt___MapsJvmKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    .line 105
    move-result-object v0

    .line 108
    sput-object v0, Lkotlin/jvm/internal/ClassReference;->FUNCTION_CLASSES:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    .line 111
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    const-string v1, "boolean"

    .line 116
    const-string v2, "kotlin.Boolean"

    .line 118
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "char"

    .line 123
    const-string v3, "kotlin.Char"

    .line 125
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "byte"

    .line 130
    const-string v4, "kotlin.Byte"

    .line 132
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string/jumbo v1, "short"

    .line 137
    const-string v5, "kotlin.Short"

    .line 140
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "int"

    .line 145
    const-string v6, "kotlin.Int"

    .line 147
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "float"

    .line 152
    const-string v7, "kotlin.Float"

    .line 154
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v1, "long"

    .line 159
    const-string v8, "kotlin.Long"

    .line 161
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "double"

    .line 166
    const-string v9, "kotlin.Double"

    .line 168
    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v1, Ljava/util/HashMap;

    .line 173
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 175
    const-string v10, "java.lang.Boolean"

    .line 178
    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v2, "java.lang.Character"

    .line 183
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v2, "java.lang.Byte"

    .line 188
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v2, "java.lang.Short"

    .line 193
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v2, "java.lang.Integer"

    .line 198
    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v2, "java.lang.Float"

    .line 203
    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v2, "java.lang.Long"

    .line 208
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v2, "java.lang.Double"

    .line 213
    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v2, Ljava/util/HashMap;

    .line 218
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 220
    const-string v3, "java.lang.Object"

    .line 223
    const-string v4, "kotlin.Any"

    .line 225
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v3, "java.lang.String"

    .line 230
    const-string v4, "kotlin.String"

    .line 232
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v3, "java.lang.CharSequence"

    .line 237
    const-string v4, "kotlin.CharSequence"

    .line 239
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v3, "java.lang.Throwable"

    .line 244
    const-string v4, "kotlin.Throwable"

    .line 246
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v3, "java.lang.Cloneable"

    .line 251
    const-string v4, "kotlin.Cloneable"

    .line 253
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v3, "java.lang.Number"

    .line 258
    const-string v4, "kotlin.Number"

    .line 260
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v3, "java.lang.Comparable"

    .line 265
    const-string v4, "kotlin.Comparable"

    .line 267
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v3, "java.lang.Enum"

    .line 272
    const-string v4, "kotlin.Enum"

    .line 274
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v3, "java.lang.annotation.Annotation"

    .line 279
    const-string v4, "kotlin.Annotation"

    .line 281
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v3, "java.lang.Iterable"

    .line 286
    const-string v4, "kotlin.collections.Iterable"

    .line 288
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v3, "java.util.Iterator"

    .line 293
    const-string v4, "kotlin.collections.Iterator"

    .line 295
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v3, "java.util.Collection"

    .line 300
    const-string v4, "kotlin.collections.Collection"

    .line 302
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v3, "java.util.List"

    .line 307
    const-string v4, "kotlin.collections.List"

    .line 309
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v3, "java.util.Set"

    .line 314
    const-string v4, "kotlin.collections.Set"

    .line 316
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v3, "java.util.ListIterator"

    .line 321
    const-string v4, "kotlin.collections.ListIterator"

    .line 323
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v3, "java.util.Map"

    .line 328
    const-string v4, "kotlin.collections.Map"

    .line 330
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v3, "java.util.Map$Entry"

    .line 335
    const-string v4, "kotlin.collections.Map.Entry"

    .line 337
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v3, "kotlin.jvm.internal.StringCompanionObject"

    .line 342
    const-string v4, "kotlin.String.Companion"

    .line 344
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v3, "kotlin.jvm.internal.EnumCompanionObject"

    .line 349
    const-string v4, "kotlin.Enum.Companion"

    .line 351
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 356
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 359
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 362
    move-result-object v0

    .line 365
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 366
    move-result-object v0

    .line 369
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 370
    move-result v1

    .line 373
    const/4 v3, -0x1

    .line 374
    const/16 v4, 0x2e

    .line 375
    if-eqz v1, :cond_3

    .line 377
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 379
    move-result-object v1

    .line 382
    check-cast v1, Ljava/lang/String;

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    .line 385
    const-string v6, "kotlin.jvm.internal."

    .line 387
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    .line 392
    move-result v6

    .line 395
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->lastIndexOf(II)I

    .line 396
    move-result v4

    .line 399
    if-ne v4, v3, :cond_2

    .line 400
    move-object v3, v1

    .line 402
    goto :goto_2

    .line 403
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 404
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 406
    move-result v3

    .line 409
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 410
    move-result-object v3

    .line 413
    :goto_2
    const-string v4, "CompanionObject"

    .line 414
    invoke-static {v5, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    move-result-object v3

    .line 419
    const-string v4, ".Companion"

    .line 420
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 422
    move-result-object v1

    .line 425
    new-instance v4, Lkotlin/Pair;

    .line 426
    invoke-direct {v4, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 428
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 431
    move-result-object v1

    .line 434
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 435
    move-result-object v3

    .line 438
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    goto :goto_1

    .line 442
    :cond_3
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->FUNCTION_CLASSES:Ljava/util/Map;

    .line 443
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 445
    move-result-object v0

    .line 448
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 449
    move-result-object v0

    .line 452
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 453
    move-result v1

    .line 456
    if-eqz v1, :cond_4

    .line 457
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 459
    move-result-object v1

    .line 462
    check-cast v1, Ljava/util/Map$Entry;

    .line 463
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 465
    move-result-object v5

    .line 468
    check-cast v5, Ljava/lang/Class;

    .line 469
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 471
    move-result-object v1

    .line 474
    check-cast v1, Ljava/lang/Number;

    .line 475
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 477
    move-result v1

    .line 480
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 481
    move-result-object v5

    .line 484
    new-instance v6, Ljava/lang/StringBuilder;

    .line 485
    const-string v7, "kotlin.Function"

    .line 487
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    move-result-object v1

    .line 498
    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    goto :goto_3

    .line 502
    :cond_4
    sput-object v2, Lkotlin/jvm/internal/ClassReference;->classFqNames:Ljava/util/HashMap;

    .line 503
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 505
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 507
    move-result v1

    .line 510
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 511
    move-result v1

    .line 514
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 515
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 518
    move-result-object v1

    .line 521
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 522
    move-result-object v1

    .line 525
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 526
    move-result v2

    .line 529
    if-eqz v2, :cond_6

    .line 530
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 532
    move-result-object v2

    .line 535
    check-cast v2, Ljava/util/Map$Entry;

    .line 536
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 538
    move-result-object v5

    .line 541
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 542
    move-result-object v2

    .line 545
    check-cast v2, Ljava/lang/String;

    .line 546
    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    .line 548
    move-result v6

    .line 551
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->lastIndexOf(II)I

    .line 552
    move-result v6

    .line 555
    if-ne v6, v3, :cond_5

    .line 556
    goto :goto_5

    .line 558
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 559
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 561
    move-result v7

    .line 564
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 565
    move-result-object v2

    .line 568
    :goto_5
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    goto :goto_4

    .line 572
    :cond_6
    sput-object v0, Lkotlin/jvm/internal/ClassReference;->simpleNames:Ljava/util/Map;

    .line 573
    return-void
    .line 575
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/jvm/internal/ClassReference;->jClass:Ljava/lang/Class;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lkotlin/jvm/internal/ClassReference;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 6
    move-result-object p0

    .line 9
    check-cast p1, Lkotlin/reflect/KClass;

    .line 10
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 12
    move-result-object p1

    .line 15
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
    .line 25
.end method

.method public final getJClass()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/ClassReference;->jClass:Ljava/lang/Class;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSimpleName()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/ClassReference;->jClass:Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto/16 :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 22
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    .line 23
    move-result-object v0

    .line 26
    const/16 v2, 0x24

    .line 27
    if-eqz v0, :cond_1

    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    invoke-static {v1, p0}, Lkotlin/text/StringsKt__StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 53
    goto/16 :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    .line 56
    move-result-object p0

    .line 59
    if-eqz p0, :cond_2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 80
    invoke-static {v1, p0}, Lkotlin/text/StringsKt__StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-static {v1, v2}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;C)I

    .line 86
    move-result p0

    .line 89
    const/4 v0, -0x1

    .line 90
    if-ne p0, v0, :cond_3

    .line 91
    goto :goto_0

    .line 93
    :cond_3
    add-int/lit8 p0, p0, 0x1

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 96
    move-result v0

    .line 99
    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 103
    goto :goto_0

    .line 104
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 105
    move-result v0

    .line 108
    sget-object v2, Lkotlin/jvm/internal/ClassReference;->simpleNames:Ljava/util/Map;

    .line 109
    if-eqz v0, :cond_6

    .line 111
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 113
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 117
    move-result v0

    .line 120
    const-string v3, "Array"

    .line 121
    if-eqz v0, :cond_5

    .line 123
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 128
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 129
    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    move-result-object p0

    .line 134
    check-cast p0, Ljava/lang/String;

    .line 135
    if-eqz p0, :cond_5

    .line 137
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 142
    :cond_5
    if-nez v1, :cond_7

    .line 143
    move-object v1, v3

    .line 145
    goto :goto_0

    .line 146
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 150
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 151
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    move-result-object v0

    .line 156
    move-object v1, v0

    .line 157
    check-cast v1, Ljava/lang/String;

    .line 158
    if-nez v1, :cond_7

    .line 160
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 162
    move-result-object v1

    .line 165
    :cond_7
    :goto_0
    return-object v1
    .line 166
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->hashCode()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object p0, p0, Lkotlin/jvm/internal/ClassReference;->jClass:Ljava/lang/Class;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string p0, " (Kotlin reflection is not available)"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    return-object p0
    .line 25
.end method
