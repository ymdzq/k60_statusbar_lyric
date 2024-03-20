.class public abstract Lcom/google/protobuf/Utf8;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final processor:Lcom/google/protobuf/Utf8$SafeProcessor;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    sget-boolean v0, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    invoke-static {}, Lcom/google/protobuf/Android;->isOnAndroidDevice()Z

    .line 17
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    new-instance v0, Lcom/google/protobuf/Utf8$SafeProcessor;

    .line 23
    invoke-direct {v0, v1}, Lcom/google/protobuf/Utf8$SafeProcessor;-><init>(I)V

    .line 25
    goto :goto_1

    .line 28
    :cond_1
    new-instance v0, Lcom/google/protobuf/Utf8$SafeProcessor;

    .line 29
    invoke-direct {v0, v2}, Lcom/google/protobuf/Utf8$SafeProcessor;-><init>(I)V

    .line 31
    :goto_1
    sput-object v0, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$SafeProcessor;

    .line 34
    return-void
    .line 36
.end method

.method public static access$1100([BII)I
    .locals 4

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 2
    aget-byte v0, p0, v0

    .line 4
    sub-int/2addr p2, p1

    .line 6
    const/16 v1, -0xc

    .line 7
    const/4 v2, -0x1

    .line 9
    if-eqz p2, :cond_4

    .line 10
    const/4 v3, 0x1

    .line 12
    if-eq p2, v3, :cond_1

    .line 13
    const/4 v1, 0x2

    .line 15
    if-ne p2, v1, :cond_0

    .line 16
    aget-byte p2, p0, p1

    .line 18
    add-int/2addr p1, v3

    .line 20
    aget-byte p0, p0, p1

    .line 21
    invoke-static {v0, p2, p0}, Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I

    .line 23
    move-result p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 28
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 30
    throw p0

    .line 33
    :cond_1
    aget-byte p0, p0, p1

    .line 34
    if-gt v0, v1, :cond_3

    .line 36
    const/16 p1, -0x41

    .line 38
    if-le p0, p1, :cond_2

    .line 40
    goto :goto_0

    .line 42
    :cond_2
    shl-int/lit8 p0, p0, 0x8

    .line 43
    xor-int v2, v0, p0

    .line 45
    :cond_3
    :goto_0
    move p0, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_4
    if-le v0, v1, :cond_5

    .line 49
    move v0, v2

    .line 51
    :cond_5
    move p0, v0

    .line 52
    :goto_1
    return p0
    .line 53
.end method

.method public static encode(Ljava/lang/CharSequence;[BII)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    sget-object v4, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$SafeProcessor;

    .line 10
    iget v4, v4, Lcom/google/protobuf/Utf8$SafeProcessor;->$r8$classId:I

    .line 12
    const/16 v6, 0x800

    .line 14
    const v7, 0xdfff

    .line 16
    const-string v8, " at index "

    .line 19
    const-string v9, "Failed writing "

    .line 21
    const v10, 0xd800

    .line 23
    const/16 v11, 0x80

    .line 26
    packed-switch v4, :pswitch_data_0

    .line 28
    goto/16 :goto_4

    .line 31
    :pswitch_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    .line 33
    move-result v4

    .line 36
    add-int/2addr v3, v2

    .line 37
    const/4 v5, 0x0

    .line 38
    :goto_0
    if-ge v5, v4, :cond_0

    .line 39
    add-int v12, v5, v2

    .line 41
    if-ge v12, v3, :cond_0

    .line 43
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 45
    move-result v13

    .line 48
    if-ge v13, v11, :cond_0

    .line 49
    int-to-byte v13, v13

    .line 51
    aput-byte v13, v1, v12

    .line 52
    add-int/lit8 v5, v5, 0x1

    .line 54
    goto :goto_0

    .line 56
    :cond_0
    if-ne v5, v4, :cond_1

    .line 57
    add-int v0, v2, v4

    .line 59
    goto/16 :goto_9

    .line 61
    :cond_1
    add-int/2addr v2, v5

    .line 63
    :goto_1
    if-ge v5, v4, :cond_b

    .line 64
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 66
    move-result v12

    .line 69
    if-ge v12, v11, :cond_2

    .line 70
    if-ge v2, v3, :cond_2

    .line 72
    add-int/lit8 v13, v2, 0x1

    .line 74
    int-to-byte v12, v12

    .line 76
    aput-byte v12, v1, v2

    .line 77
    goto :goto_2

    .line 79
    :cond_2
    if-ge v12, v6, :cond_3

    .line 80
    add-int/lit8 v13, v3, -0x2

    .line 82
    if-gt v2, v13, :cond_3

    .line 84
    add-int/lit8 v13, v2, 0x1

    .line 86
    ushr-int/lit8 v14, v12, 0x6

    .line 88
    or-int/lit16 v14, v14, 0x3c0

    .line 90
    int-to-byte v14, v14

    .line 92
    aput-byte v14, v1, v2

    .line 93
    add-int/lit8 v2, v13, 0x1

    .line 95
    and-int/lit8 v12, v12, 0x3f

    .line 97
    or-int/2addr v12, v11

    .line 99
    int-to-byte v12, v12

    .line 100
    aput-byte v12, v1, v13

    .line 101
    goto :goto_3

    .line 103
    :cond_3
    if-lt v12, v10, :cond_4

    .line 104
    if-ge v7, v12, :cond_5

    .line 106
    :cond_4
    add-int/lit8 v13, v3, -0x3

    .line 108
    if-gt v2, v13, :cond_5

    .line 110
    add-int/lit8 v13, v2, 0x1

    .line 112
    ushr-int/lit8 v14, v12, 0xc

    .line 114
    or-int/lit16 v14, v14, 0x1e0

    .line 116
    int-to-byte v14, v14

    .line 118
    aput-byte v14, v1, v2

    .line 119
    add-int/lit8 v2, v13, 0x1

    .line 121
    ushr-int/lit8 v14, v12, 0x6

    .line 123
    and-int/lit8 v14, v14, 0x3f

    .line 125
    or-int/2addr v14, v11

    .line 127
    int-to-byte v14, v14

    .line 128
    aput-byte v14, v1, v13

    .line 129
    add-int/lit8 v13, v2, 0x1

    .line 131
    and-int/lit8 v12, v12, 0x3f

    .line 133
    or-int/2addr v12, v11

    .line 135
    int-to-byte v12, v12

    .line 136
    aput-byte v12, v1, v2

    .line 137
    :goto_2
    move v2, v13

    .line 139
    goto :goto_3

    .line 140
    :cond_5
    add-int/lit8 v13, v3, -0x4

    .line 141
    if-gt v2, v13, :cond_8

    .line 143
    add-int/lit8 v13, v5, 0x1

    .line 145
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    .line 147
    move-result v14

    .line 150
    if-eq v13, v14, :cond_7

    .line 151
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    .line 153
    move-result v5

    .line 156
    invoke-static {v12, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 157
    move-result v14

    .line 160
    if-eqz v14, :cond_6

    .line 161
    invoke-static {v12, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 163
    move-result v5

    .line 166
    add-int/lit8 v12, v2, 0x1

    .line 167
    ushr-int/lit8 v14, v5, 0x12

    .line 169
    or-int/lit16 v14, v14, 0xf0

    .line 171
    int-to-byte v14, v14

    .line 173
    aput-byte v14, v1, v2

    .line 174
    add-int/lit8 v2, v12, 0x1

    .line 176
    ushr-int/lit8 v14, v5, 0xc

    .line 178
    and-int/lit8 v14, v14, 0x3f

    .line 180
    or-int/2addr v14, v11

    .line 182
    int-to-byte v14, v14

    .line 183
    aput-byte v14, v1, v12

    .line 184
    add-int/lit8 v12, v2, 0x1

    .line 186
    ushr-int/lit8 v14, v5, 0x6

    .line 188
    and-int/lit8 v14, v14, 0x3f

    .line 190
    or-int/2addr v14, v11

    .line 192
    int-to-byte v14, v14

    .line 193
    aput-byte v14, v1, v2

    .line 194
    add-int/lit8 v2, v12, 0x1

    .line 196
    and-int/lit8 v5, v5, 0x3f

    .line 198
    or-int/2addr v5, v11

    .line 200
    int-to-byte v5, v5

    .line 201
    aput-byte v5, v1, v12

    .line 202
    move v5, v13

    .line 204
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 205
    goto/16 :goto_1

    .line 207
    :cond_6
    move v5, v13

    .line 209
    :cond_7
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    .line 210
    add-int/lit8 v5, v5, -0x1

    .line 212
    invoke-direct {v0, v5, v4}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 214
    throw v0

    .line 217
    :cond_8
    if-gt v10, v12, :cond_a

    .line 218
    if-gt v12, v7, :cond_a

    .line 220
    add-int/lit8 v1, v5, 0x1

    .line 222
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    .line 224
    move-result v3

    .line 227
    if-eq v1, v3, :cond_9

    .line 228
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 230
    move-result v0

    .line 233
    invoke-static {v12, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 234
    move-result v0

    .line 237
    if-nez v0, :cond_a

    .line 238
    :cond_9
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    .line 240
    invoke-direct {v0, v5, v4}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 242
    throw v0

    .line 245
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    .line 248
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    move-result-object v1

    .line 265
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 266
    throw v0

    .line 269
    :cond_b
    move v0, v2

    .line 270
    goto/16 :goto_9

    .line 271
    :goto_4
    int-to-long v12, v2

    .line 273
    int-to-long v14, v3

    .line 274
    add-long/2addr v14, v12

    .line 275
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    .line 276
    move-result v4

    .line 279
    if-gt v4, v3, :cond_18

    .line 280
    array-length v5, v1

    .line 282
    sub-int/2addr v5, v3

    .line 283
    if-lt v5, v2, :cond_18

    .line 284
    const/4 v5, 0x0

    .line 286
    :goto_5
    const-wide/16 v2, 0x1

    .line 287
    if-ge v5, v4, :cond_c

    .line 289
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 291
    move-result v7

    .line 294
    if-ge v7, v11, :cond_c

    .line 295
    add-long/2addr v2, v12

    .line 297
    int-to-byte v7, v7

    .line 298
    invoke-static {v1, v12, v13, v7}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 299
    add-int/lit8 v5, v5, 0x1

    .line 302
    move-wide v12, v2

    .line 304
    const v7, 0xdfff

    .line 305
    goto :goto_5

    .line 308
    :cond_c
    if-ne v5, v4, :cond_d

    .line 309
    goto/16 :goto_8

    .line 311
    :cond_d
    :goto_6
    if-ge v5, v4, :cond_17

    .line 313
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 315
    move-result v7

    .line 318
    if-ge v7, v11, :cond_e

    .line 319
    cmp-long v16, v12, v14

    .line 321
    if-gez v16, :cond_e

    .line 323
    add-long v16, v12, v2

    .line 325
    int-to-byte v7, v7

    .line 327
    invoke-static {v1, v12, v13, v7}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 328
    move-wide v6, v2

    .line 331
    move v2, v5

    .line 332
    move v5, v11

    .line 333
    move-wide/from16 v12, v16

    .line 334
    goto/16 :goto_7

    .line 336
    :cond_e
    if-ge v7, v6, :cond_f

    .line 338
    const-wide/16 v16, 0x2

    .line 340
    sub-long v16, v14, v16

    .line 342
    cmp-long v16, v12, v16

    .line 344
    if-gtz v16, :cond_f

    .line 346
    add-long v10, v12, v2

    .line 348
    ushr-int/lit8 v6, v7, 0x6

    .line 350
    or-int/lit16 v6, v6, 0x3c0

    .line 352
    int-to-byte v6, v6

    .line 354
    invoke-static {v1, v12, v13, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 355
    add-long v12, v10, v2

    .line 358
    and-int/lit8 v6, v7, 0x3f

    .line 360
    const/16 v7, 0x80

    .line 362
    or-int/2addr v6, v7

    .line 364
    int-to-byte v6, v6

    .line 365
    invoke-static {v1, v10, v11, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 366
    move-wide v6, v2

    .line 369
    move v2, v5

    .line 370
    const/16 v5, 0x80

    .line 371
    goto/16 :goto_7

    .line 373
    :cond_f
    move v6, v10

    .line 375
    if-lt v7, v6, :cond_10

    .line 376
    const v6, 0xdfff

    .line 378
    if-ge v6, v7, :cond_11

    .line 381
    :cond_10
    const-wide/16 v10, 0x3

    .line 383
    sub-long v10, v14, v10

    .line 385
    cmp-long v6, v12, v10

    .line 387
    if-gtz v6, :cond_11

    .line 389
    add-long v10, v12, v2

    .line 391
    ushr-int/lit8 v6, v7, 0xc

    .line 393
    or-int/lit16 v6, v6, 0x1e0

    .line 395
    int-to-byte v6, v6

    .line 397
    invoke-static {v1, v12, v13, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 398
    add-long v12, v10, v2

    .line 401
    ushr-int/lit8 v6, v7, 0x6

    .line 403
    and-int/lit8 v6, v6, 0x3f

    .line 405
    const/16 v2, 0x80

    .line 407
    or-int/lit16 v3, v6, 0x80

    .line 409
    int-to-byte v3, v3

    .line 411
    invoke-static {v1, v10, v11, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 412
    const-wide/16 v10, 0x1

    .line 415
    add-long v18, v12, v10

    .line 417
    and-int/lit8 v3, v7, 0x3f

    .line 419
    or-int/2addr v3, v2

    .line 421
    int-to-byte v2, v3

    .line 422
    invoke-static {v1, v12, v13, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 423
    move v2, v5

    .line 426
    move-wide/from16 v12, v18

    .line 427
    const/16 v5, 0x80

    .line 429
    const-wide/16 v6, 0x1

    .line 431
    goto :goto_7

    .line 433
    :cond_11
    const-wide/16 v2, 0x4

    .line 434
    sub-long v2, v14, v2

    .line 436
    cmp-long v2, v12, v2

    .line 438
    if-gtz v2, :cond_14

    .line 440
    add-int/lit8 v2, v5, 0x1

    .line 442
    if-eq v2, v4, :cond_13

    .line 444
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 446
    move-result v3

    .line 449
    invoke-static {v7, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 450
    move-result v5

    .line 453
    if-eqz v5, :cond_12

    .line 454
    invoke-static {v7, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 456
    move-result v3

    .line 459
    const-wide/16 v5, 0x1

    .line 460
    add-long v10, v12, v5

    .line 462
    ushr-int/lit8 v7, v3, 0x12

    .line 464
    or-int/lit16 v7, v7, 0xf0

    .line 466
    int-to-byte v7, v7

    .line 468
    invoke-static {v1, v12, v13, v7}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 469
    add-long v12, v10, v5

    .line 472
    ushr-int/lit8 v7, v3, 0xc

    .line 474
    and-int/lit8 v7, v7, 0x3f

    .line 476
    const/16 v5, 0x80

    .line 478
    or-int/lit16 v6, v7, 0x80

    .line 480
    int-to-byte v6, v6

    .line 482
    invoke-static {v1, v10, v11, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 483
    const-wide/16 v6, 0x1

    .line 486
    add-long v10, v12, v6

    .line 488
    ushr-int/lit8 v17, v3, 0x6

    .line 490
    and-int/lit8 v6, v17, 0x3f

    .line 492
    or-int/2addr v6, v5

    .line 494
    int-to-byte v6, v6

    .line 495
    invoke-static {v1, v12, v13, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 496
    const-wide/16 v6, 0x1

    .line 499
    add-long v12, v10, v6

    .line 501
    and-int/lit8 v3, v3, 0x3f

    .line 503
    or-int/2addr v3, v5

    .line 505
    int-to-byte v3, v3

    .line 506
    invoke-static {v1, v10, v11, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 507
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 510
    move v11, v5

    .line 512
    const v10, 0xd800

    .line 513
    move v5, v2

    .line 516
    move-wide v2, v6

    .line 517
    const/16 v6, 0x800

    .line 518
    goto/16 :goto_6

    .line 520
    :cond_12
    move v5, v2

    .line 522
    :cond_13
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    .line 523
    add-int/lit8 v5, v5, -0x1

    .line 525
    invoke-direct {v0, v5, v4}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 527
    throw v0

    .line 530
    :cond_14
    const v1, 0xd800

    .line 531
    if-gt v1, v7, :cond_16

    .line 534
    const v1, 0xdfff

    .line 536
    if-gt v7, v1, :cond_16

    .line 539
    add-int/lit8 v1, v5, 0x1

    .line 541
    if-eq v1, v4, :cond_15

    .line 543
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 545
    move-result v0

    .line 548
    invoke-static {v7, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 549
    move-result v0

    .line 552
    if-nez v0, :cond_16

    .line 553
    :cond_15
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    .line 555
    invoke-direct {v0, v5, v4}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 557
    throw v0

    .line 560
    :cond_16
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    .line 563
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    move-result-object v1

    .line 580
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 581
    throw v0

    .line 584
    :cond_17
    :goto_8
    long-to-int v0, v12

    .line 585
    :goto_9
    return v0

    .line 586
    :cond_18
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 587
    new-instance v5, Ljava/lang/StringBuilder;

    .line 589
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 591
    add-int/lit8 v4, v4, -0x1

    .line 594
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 596
    move-result v0

    .line 599
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    add-int v0, v2, v3

    .line 606
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 611
    move-result-object v0

    .line 614
    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 615
    throw v1

    .line 618
    nop

    .line 619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 620
.end method

.method public static encodedLength(Ljava/lang/CharSequence;)I
    .locals 8

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 10
    move-result v3

    .line 13
    const/16 v4, 0x80

    .line 14
    if-ge v3, v4, :cond_0

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    move v3, v0

    .line 21
    :goto_1
    if-ge v2, v0, :cond_6

    .line 22
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 24
    move-result v4

    .line 27
    const/16 v5, 0x800

    .line 28
    if-ge v4, v5, :cond_1

    .line 30
    rsub-int/lit8 v4, v4, 0x7f

    .line 32
    ushr-int/lit8 v4, v4, 0x1f

    .line 34
    add-int/2addr v3, v4

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 40
    move-result v4

    .line 43
    :goto_2
    if-ge v2, v4, :cond_5

    .line 44
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 46
    move-result v6

    .line 49
    if-ge v6, v5, :cond_2

    .line 50
    rsub-int/lit8 v6, v6, 0x7f

    .line 52
    ushr-int/lit8 v6, v6, 0x1f

    .line 54
    add-int/2addr v1, v6

    .line 56
    goto :goto_3

    .line 57
    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 58
    const v7, 0xd800

    .line 60
    if-gt v7, v6, :cond_4

    .line 63
    const v7, 0xdfff

    .line 65
    if-gt v6, v7, :cond_4

    .line 68
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 70
    move-result v6

    .line 73
    const/high16 v7, 0x10000

    .line 74
    if-lt v6, v7, :cond_3

    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 78
    goto :goto_3

    .line 80
    :cond_3
    new-instance p0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    .line 81
    invoke-direct {p0, v2, v4}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 83
    throw p0

    .line 86
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 87
    goto :goto_2

    .line 89
    :cond_5
    add-int/2addr v3, v1

    .line 90
    :cond_6
    if-lt v3, v0, :cond_7

    .line 91
    return v3

    .line 93
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "UTF-8 length does not fit in int: "

    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    int-to-long v1, v3

    .line 103
    const-wide v3, 0x100000000L

    .line 104
    add-long/2addr v1, v3

    .line 109
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 116
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    throw p0
    .line 120
.end method

.method public static incompleteStateFor(III)I
    .locals 1

    .line 1
    const/16 v0, -0xc

    .line 2
    if-gt p0, v0, :cond_1

    .line 4
    const/16 v0, -0x41

    .line 6
    if-gt p1, v0, :cond_1

    .line 8
    if-le p2, v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    shl-int/lit8 p1, p1, 0x8

    .line 13
    xor-int/2addr p0, p1

    .line 15
    shl-int/lit8 p1, p2, 0x10

    .line 16
    xor-int/2addr p0, p1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p0, -0x1

    .line 20
    :goto_1
    return p0
    .line 21
.end method
