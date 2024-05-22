.class public abstract Lcom/google/protobuf/nano/MessageNanoPrinter;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    move-result v2

    .line 11
    if-ge v1, v2, :cond_2

    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    move-result v2

    .line 17
    if-nez v1, :cond_0

    .line 18
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    .line 20
    move-result v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 24
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 28
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    const/16 v3, 0x5f

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 36
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    .line 39
    move-result v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 47
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    return-object p0
    .line 57
.end method

.method public static print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 12

    .line 1
    if-nez p1, :cond_0

    .line 2
    goto/16 :goto_d

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/nano/MessageNano;

    .line 6
    const-string v1, ">\n"

    .line 8
    const-string v2, "  "

    .line 10
    const-string v3, " <\n"

    .line 12
    const/4 v4, 0x0

    .line 14
    if-eqz v0, :cond_b

    .line 15
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    .line 17
    move-result v0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 23
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v5

    .line 29
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    .line 43
    move-result-object v3

    .line 46
    array-length v5, v3

    .line 47
    move v6, v4

    .line 48
    :goto_0
    if-ge v6, v5, :cond_7

    .line 49
    aget-object v7, v3, v6

    .line 51
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 53
    move-result v8

    .line 56
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 57
    move-result-object v9

    .line 60
    const-string v10, "cachedSize"

    .line 61
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v10

    .line 66
    if-eqz v10, :cond_2

    .line 67
    goto :goto_3

    .line 69
    :cond_2
    and-int/lit8 v10, v8, 0x1

    .line 70
    const/4 v11, 0x1

    .line 72
    if-ne v10, v11, :cond_6

    .line 73
    and-int/lit8 v8, v8, 0x8

    .line 75
    const/16 v10, 0x8

    .line 77
    if-eq v8, v10, :cond_6

    .line 79
    const-string v8, "_"

    .line 81
    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    move-result v10

    .line 86
    if-nez v10, :cond_6

    .line 87
    invoke-virtual {v9, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 89
    move-result v8

    .line 92
    if-nez v8, :cond_6

    .line 93
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 95
    move-result-object v8

    .line 98
    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object v7

    .line 102
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    .line 103
    move-result v10

    .line 106
    if-eqz v10, :cond_5

    .line 107
    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 109
    move-result-object v8

    .line 112
    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 113
    if-ne v8, v10, :cond_3

    .line 115
    invoke-static {v9, v7, p2, p3}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 117
    goto :goto_3

    .line 120
    :cond_3
    if-nez v7, :cond_4

    .line 121
    move v8, v4

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    invoke-static {v7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 125
    move-result v8

    .line 128
    :goto_1
    move v10, v4

    .line 129
    :goto_2
    if-ge v10, v8, :cond_6

    .line 130
    invoke-static {v7, v10}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 132
    move-result-object v11

    .line 135
    invoke-static {v9, v11, p2, p3}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 136
    add-int/lit8 v10, v10, 0x1

    .line 139
    goto :goto_2

    .line 141
    :cond_5
    invoke-static {v9, v7, p2, p3}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 142
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 145
    goto :goto_0

    .line 147
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 148
    move-result-object v3

    .line 151
    array-length v5, v3

    .line 152
    move v6, v4

    .line 153
    :goto_4
    if-ge v6, v5, :cond_a

    .line 154
    aget-object v7, v3, v6

    .line 156
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 158
    move-result-object v7

    .line 161
    const-string/jumbo v8, "set"

    .line 162
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 165
    move-result v8

    .line 168
    if-eqz v8, :cond_9

    .line 169
    const/4 v8, 0x3

    .line 171
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 172
    move-result-object v7

    .line 175
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    const-string v9, "has"

    .line 181
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v8

    .line 192
    new-array v9, v4, [Ljava/lang/Class;

    .line 193
    invoke-virtual {v2, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 195
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    new-array v9, v4, [Ljava/lang/Object;

    .line 199
    invoke-virtual {v8, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    move-result-object v8

    .line 204
    check-cast v8, Ljava/lang/Boolean;

    .line 205
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 207
    move-result v8

    .line 210
    if-nez v8, :cond_8

    .line 211
    goto :goto_5

    .line 213
    :cond_8
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 214
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    const-string v9, "get"

    .line 219
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v8

    .line 230
    new-array v9, v4, [Ljava/lang/Class;

    .line 231
    invoke-virtual {v2, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 233
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 236
    new-array v9, v4, [Ljava/lang/Object;

    .line 237
    invoke-virtual {v8, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    move-result-object v8

    .line 242
    invoke-static {v7, v8, p2, p3}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 243
    :catch_0
    :cond_9
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 246
    goto :goto_4

    .line 248
    :cond_a
    if-eqz p0, :cond_16

    .line 249
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 251
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 254
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    goto/16 :goto_d

    .line 260
    :cond_b
    instance-of v0, p1, Ljava/util/Map;

    .line 262
    if-eqz v0, :cond_c

    .line 264
    check-cast p1, Ljava/util/Map;

    .line 266
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    move-result-object p0

    .line 271
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 272
    move-result-object p1

    .line 275
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 276
    move-result-object p1

    .line 279
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    move-result v0

    .line 283
    if-eqz v0, :cond_16

    .line 284
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    move-result-object v0

    .line 289
    check-cast v0, Ljava/util/Map$Entry;

    .line 290
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 292
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    .line 301
    move-result v4

    .line 304
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 308
    move-result-object v5

    .line 311
    const-string v6, "key"

    .line 312
    invoke-static {v6, v5, p2, p3}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 314
    const-string/jumbo v5, "value"

    .line 317
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 320
    move-result-object v0

    .line 323
    invoke-static {v5, v0, p2, p3}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 324
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 327
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 330
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    goto :goto_6

    .line 336
    :cond_c
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    .line 337
    move-result-object p0

    .line 340
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 341
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    const-string p0, ": "

    .line 347
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    instance-of p0, p1, Ljava/lang/String;

    .line 352
    const/16 p2, 0x22

    .line 354
    const/16 v0, 0x20

    .line 356
    if-eqz p0, :cond_10

    .line 358
    check-cast p1, Ljava/lang/String;

    .line 360
    const-string p0, "http"

    .line 362
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 364
    move-result p0

    .line 367
    if-nez p0, :cond_d

    .line 368
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 370
    move-result p0

    .line 373
    const/16 v1, 0xc8

    .line 374
    if-le p0, v1, :cond_d

    .line 376
    new-instance p0, Ljava/lang/StringBuilder;

    .line 378
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 383
    move-result-object p1

    .line 386
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string p1, "[...]"

    .line 390
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    move-result-object p1

    .line 398
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 399
    move-result p0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    .line 403
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 405
    :goto_7
    if-ge v4, p0, :cond_f

    .line 408
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 410
    move-result v2

    .line 413
    if-lt v2, v0, :cond_e

    .line 414
    const/16 v3, 0x7e

    .line 416
    if-gt v2, v3, :cond_e

    .line 418
    if-eq v2, p2, :cond_e

    .line 420
    const/16 v3, 0x27

    .line 422
    if-eq v2, v3, :cond_e

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    goto :goto_8

    .line 429
    :cond_e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 430
    move-result-object v2

    .line 433
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 434
    move-result-object v2

    .line 437
    const-string v3, "\\u%04x"

    .line 438
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 440
    move-result-object v2

    .line 443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 447
    goto :goto_7

    .line 449
    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    move-result-object p0

    .line 453
    const-string p1, "\""

    .line 454
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    goto :goto_c

    .line 465
    :cond_10
    instance-of p0, p1, [B

    .line 466
    if-eqz p0, :cond_15

    .line 468
    check-cast p1, [B

    .line 470
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 472
    :goto_9
    array-length p0, p1

    .line 475
    if-ge v4, p0, :cond_14

    .line 476
    aget-byte p0, p1, v4

    .line 478
    and-int/lit16 p0, p0, 0xff

    .line 480
    const/16 v1, 0x5c

    .line 482
    if-eq p0, v1, :cond_13

    .line 484
    if-ne p0, p2, :cond_11

    .line 486
    goto :goto_a

    .line 488
    :cond_11
    if-lt p0, v0, :cond_12

    .line 489
    const/16 v1, 0x7f

    .line 491
    if-ge p0, v1, :cond_12

    .line 493
    int-to-char p0, p0

    .line 495
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 496
    goto :goto_b

    .line 499
    :cond_12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 500
    move-result-object p0

    .line 503
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 504
    move-result-object p0

    .line 507
    const-string v1, "\\%03o"

    .line 508
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 510
    move-result-object p0

    .line 513
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    goto :goto_b

    .line 517
    :cond_13
    :goto_a
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 518
    int-to-char p0, p0

    .line 521
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 522
    :goto_b
    add-int/lit8 v4, v4, 0x1

    .line 525
    goto :goto_9

    .line 527
    :cond_14
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 528
    goto :goto_c

    .line 531
    :cond_15
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 532
    :goto_c
    const-string p0, "\n"

    .line 535
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    :cond_16
    :goto_d
    return-void
    .line 540
.end method
