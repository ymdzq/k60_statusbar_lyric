.class public final Lcom/google/zxing/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/zxing/Writer;


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    move/from16 v1, p3

    .line 4
    move/from16 v2, p4

    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    .line 8
    move-result v3

    .line 11
    if-nez v3, :cond_53

    .line 12
    if-ltz v1, :cond_52

    .line 14
    if-ltz v2, :cond_52

    .line 16
    sget-object v3, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 18
    sget-object v4, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    .line 20
    move-object/from16 v5, p5

    .line 22
    check-cast v5, Ljava/util/HashMap;

    .line 24
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 29
    check-cast v4, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 30
    if-eqz v4, :cond_0

    .line 32
    move-object v3, v4

    .line 34
    :cond_0
    sget-object v4, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    .line 35
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/Integer;

    .line 41
    if-eqz v4, :cond_1

    .line 43
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result v4

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v4, 0x4

    .line 50
    :goto_0
    sget-object v5, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    .line 51
    move-object/from16 v6, p5

    .line 53
    check-cast v6, Ljava/util/HashMap;

    .line 55
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v5

    .line 60
    check-cast v5, Ljava/lang/String;

    .line 61
    const-string v6, "ISO-8859-1"

    .line 63
    if-nez v5, :cond_2

    .line 65
    move-object v5, v6

    .line 67
    :cond_2
    const-string v7, "Shift_JIS"

    .line 68
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v8

    .line 73
    sget-object v9, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 74
    sget-object v10, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    .line 76
    const/16 v11, 0x60

    .line 78
    if-eqz v8, :cond_8

    .line 80
    :try_start_0
    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 82
    move-result-object v8
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    array-length v11, v8

    .line 86
    rem-int/lit8 v12, v11, 0x2

    .line 87
    if-eqz v12, :cond_3

    .line 89
    goto :goto_2

    .line 91
    :cond_3
    const/4 v12, 0x0

    .line 92
    :goto_1
    if-ge v12, v11, :cond_6

    .line 93
    aget-byte v13, v8, v12

    .line 95
    and-int/lit16 v13, v13, 0xff

    .line 97
    const/16 v14, 0x81

    .line 99
    if-lt v13, v14, :cond_4

    .line 101
    const/16 v14, 0x9f

    .line 103
    if-le v13, v14, :cond_5

    .line 105
    :cond_4
    const/16 v14, 0xe0

    .line 107
    if-lt v13, v14, :cond_7

    .line 109
    const/16 v14, 0xeb

    .line 111
    if-le v13, v14, :cond_5

    .line 113
    goto :goto_2

    .line 115
    :cond_5
    add-int/lit8 v12, v12, 0x2

    .line 116
    goto :goto_1

    .line 118
    :cond_6
    const/4 v8, 0x1

    .line 119
    goto :goto_3

    .line 120
    :catch_0
    :cond_7
    :goto_2
    const/4 v8, 0x0

    .line 121
    :goto_3
    if-eqz v8, :cond_d

    .line 122
    sget-object v8, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 124
    goto :goto_7

    .line 126
    :cond_8
    const/4 v8, 0x0

    .line 127
    const/4 v12, 0x0

    .line 128
    const/4 v13, 0x0

    .line 129
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 130
    move-result v14

    .line 133
    if-ge v8, v14, :cond_b

    .line 134
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 136
    move-result v14

    .line 139
    const/16 v15, 0x30

    .line 140
    if-lt v14, v15, :cond_9

    .line 142
    const/16 v15, 0x39

    .line 144
    if-gt v14, v15, :cond_9

    .line 146
    const/4 v13, 0x1

    .line 148
    goto :goto_6

    .line 149
    :cond_9
    if-ge v14, v11, :cond_a

    .line 150
    aget v12, v10, v14

    .line 152
    goto :goto_5

    .line 154
    :cond_a
    const/4 v12, -0x1

    .line 155
    :goto_5
    const/4 v14, -0x1

    .line 156
    if-eq v12, v14, :cond_d

    .line 157
    const/4 v12, 0x1

    .line 159
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 160
    goto :goto_4

    .line 162
    :cond_b
    if-eqz v12, :cond_c

    .line 163
    sget-object v8, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 165
    goto :goto_7

    .line 167
    :cond_c
    if-eqz v13, :cond_d

    .line 168
    sget-object v8, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 170
    goto :goto_7

    .line 172
    :cond_d
    move-object v8, v9

    .line 173
    :goto_7
    new-instance v11, Lcom/google/zxing/common/BitArray;

    .line 174
    invoke-direct {v11}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 176
    const/16 v12, 0x8

    .line 179
    if-ne v8, v9, :cond_e

    .line 181
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    move-result v6

    .line 186
    if-nez v6, :cond_e

    .line 187
    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 189
    check-cast v6, Ljava/util/HashMap;

    .line 191
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    move-result-object v6

    .line 196
    check-cast v6, Lcom/google/zxing/common/CharacterSetECI;

    .line 197
    if-eqz v6, :cond_e

    .line 199
    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 201
    invoke-virtual {v13}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    .line 203
    move-result v13

    .line 206
    const/4 v14, 0x4

    .line 207
    invoke-virtual {v11, v13, v14}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 208
    invoke-virtual {v6}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    .line 211
    move-result v6

    .line 214
    invoke-virtual {v11, v6, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 215
    goto :goto_8

    .line 218
    :cond_e
    const/4 v14, 0x4

    .line 219
    :goto_8
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    .line 220
    move-result v6

    .line 223
    invoke-virtual {v11, v6, v14}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 224
    new-instance v6, Lcom/google/zxing/common/BitArray;

    .line 227
    invoke-direct {v6}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 229
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 232
    move-result v12

    .line 235
    const/4 v13, 0x2

    .line 236
    const/4 v15, 0x1

    .line 237
    if-eq v12, v15, :cond_1a

    .line 238
    const/4 v15, 0x6

    .line 240
    if-eq v12, v13, :cond_14

    .line 241
    if-eq v12, v14, :cond_13

    .line 243
    if-ne v12, v15, :cond_12

    .line 245
    :try_start_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 247
    move-result-object v5
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    array-length v7, v5

    .line 251
    const/4 v10, 0x0

    .line 252
    :goto_9
    if-ge v10, v7, :cond_1d

    .line 253
    aget-byte v12, v5, v10

    .line 255
    and-int/lit16 v12, v12, 0xff

    .line 257
    add-int/lit8 v13, v10, 0x1

    .line 259
    aget-byte v13, v5, v13

    .line 261
    and-int/lit16 v13, v13, 0xff

    .line 263
    shl-int/lit8 v12, v12, 0x8

    .line 265
    or-int/2addr v12, v13

    .line 267
    const v13, 0x8140

    .line 268
    if-lt v12, v13, :cond_f

    .line 271
    const v14, 0x9ffc

    .line 273
    if-gt v12, v14, :cond_f

    .line 276
    goto :goto_a

    .line 278
    :cond_f
    const v13, 0xe040

    .line 279
    if-lt v12, v13, :cond_10

    .line 282
    const v13, 0xebbf

    .line 284
    if-gt v12, v13, :cond_10

    .line 287
    const v13, 0xc140

    .line 289
    :goto_a
    sub-int/2addr v12, v13

    .line 292
    goto :goto_b

    .line 293
    :cond_10
    const/4 v12, -0x1

    .line 294
    :goto_b
    const/4 v13, -0x1

    .line 295
    if-eq v12, v13, :cond_11

    .line 296
    shr-int/lit8 v13, v12, 0x8

    .line 298
    mul-int/lit16 v13, v13, 0xc0

    .line 300
    and-int/lit16 v12, v12, 0xff

    .line 302
    add-int/2addr v13, v12

    .line 304
    const/16 v12, 0xd

    .line 305
    invoke-virtual {v6, v13, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 307
    add-int/lit8 v10, v10, 0x2

    .line 310
    goto :goto_9

    .line 312
    :cond_11
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 313
    const-string v1, "Invalid byte sequence"

    .line 315
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 317
    throw v0

    .line 320
    :catch_1
    move-exception v0

    .line 321
    move-object v1, v0

    .line 322
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 323
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    .line 325
    throw v0

    .line 328
    :cond_12
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    .line 331
    const-string v2, "Invalid mode: "

    .line 333
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    move-result-object v1

    .line 344
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 345
    throw v0

    .line 348
    :cond_13
    :try_start_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 349
    move-result-object v5
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 352
    array-length v7, v5

    .line 353
    const/4 v10, 0x0

    .line 354
    :goto_c
    if-ge v10, v7, :cond_1d

    .line 355
    aget-byte v12, v5, v10

    .line 357
    const/16 v13, 0x8

    .line 359
    invoke-virtual {v6, v12, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 361
    add-int/lit8 v10, v10, 0x1

    .line 364
    goto :goto_c

    .line 366
    :catch_2
    move-exception v0

    .line 367
    move-object v1, v0

    .line 368
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 369
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    .line 371
    throw v0

    .line 374
    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 375
    move-result v5

    .line 378
    const/4 v7, 0x0

    .line 379
    :goto_d
    if-ge v7, v5, :cond_1d

    .line 380
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 382
    move-result v12

    .line 385
    const/16 v13, 0x60

    .line 386
    if-ge v12, v13, :cond_15

    .line 388
    aget v12, v10, v12

    .line 390
    goto :goto_e

    .line 392
    :cond_15
    const/4 v12, -0x1

    .line 393
    :goto_e
    const/4 v13, -0x1

    .line 394
    if-eq v12, v13, :cond_19

    .line 395
    add-int/lit8 v13, v7, 0x1

    .line 397
    if-ge v13, v5, :cond_18

    .line 399
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 401
    move-result v13

    .line 404
    const/16 v14, 0x60

    .line 405
    if-ge v13, v14, :cond_16

    .line 407
    aget v13, v10, v13

    .line 409
    goto :goto_f

    .line 411
    :cond_16
    const/4 v13, -0x1

    .line 412
    :goto_f
    const/4 v14, -0x1

    .line 413
    if-eq v13, v14, :cond_17

    .line 414
    mul-int/lit8 v12, v12, 0x2d

    .line 416
    add-int/2addr v12, v13

    .line 418
    const/16 v13, 0xb

    .line 419
    invoke-virtual {v6, v12, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 421
    add-int/lit8 v7, v7, 0x2

    .line 424
    goto :goto_d

    .line 426
    :cond_17
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 427
    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    .line 429
    throw v0

    .line 432
    :cond_18
    invoke-virtual {v6, v12, v15}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 433
    move v7, v13

    .line 436
    goto :goto_d

    .line 437
    :cond_19
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 438
    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    .line 440
    throw v0

    .line 443
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 444
    move-result v5

    .line 447
    const/4 v7, 0x0

    .line 448
    :goto_10
    if-ge v7, v5, :cond_1d

    .line 449
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 451
    move-result v10

    .line 454
    add-int/lit8 v10, v10, -0x30

    .line 455
    add-int/lit8 v12, v7, 0x2

    .line 457
    if-ge v12, v5, :cond_1b

    .line 459
    add-int/lit8 v13, v7, 0x1

    .line 461
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 463
    move-result v13

    .line 466
    add-int/lit8 v13, v13, -0x30

    .line 467
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 469
    move-result v12

    .line 472
    add-int/lit8 v12, v12, -0x30

    .line 473
    mul-int/lit8 v10, v10, 0x64

    .line 475
    const/16 v14, 0xa

    .line 477
    mul-int/2addr v13, v14

    .line 479
    add-int/2addr v13, v10

    .line 480
    add-int/2addr v13, v12

    .line 481
    invoke-virtual {v6, v13, v14}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 482
    add-int/lit8 v7, v7, 0x3

    .line 485
    goto :goto_10

    .line 487
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    .line 488
    if-ge v7, v5, :cond_1c

    .line 490
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 492
    move-result v7

    .line 495
    add-int/lit8 v7, v7, -0x30

    .line 496
    mul-int/lit8 v10, v10, 0xa

    .line 498
    add-int/2addr v10, v7

    .line 500
    const/4 v7, 0x7

    .line 501
    invoke-virtual {v6, v10, v7}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 502
    move v7, v12

    .line 505
    goto :goto_10

    .line 506
    :cond_1c
    const/4 v12, 0x4

    .line 507
    invoke-virtual {v6, v10, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 508
    goto :goto_10

    .line 511
    :cond_1d
    iget v5, v11, Lcom/google/zxing/common/BitArray;->size:I

    .line 512
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    .line 514
    const/4 v10, 0x0

    .line 516
    aget-object v7, v7, v10

    .line 517
    invoke-virtual {v8, v7}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    .line 519
    move-result v7

    .line 522
    add-int/2addr v7, v5

    .line 523
    iget v5, v6, Lcom/google/zxing/common/BitArray;->size:I

    .line 524
    add-int/2addr v7, v5

    .line 526
    invoke-static {v7, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    .line 527
    move-result-object v5

    .line 530
    iget v7, v11, Lcom/google/zxing/common/BitArray;->size:I

    .line 531
    invoke-virtual {v8, v5}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    .line 533
    move-result v5

    .line 536
    add-int/2addr v5, v7

    .line 537
    iget v7, v6, Lcom/google/zxing/common/BitArray;->size:I

    .line 538
    add-int/2addr v5, v7

    .line 540
    invoke-static {v5, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    .line 541
    move-result-object v5

    .line 544
    new-instance v7, Lcom/google/zxing/common/BitArray;

    .line 545
    invoke-direct {v7}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 547
    iget v10, v11, Lcom/google/zxing/common/BitArray;->size:I

    .line 550
    iget v12, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 552
    add-int/2addr v12, v10

    .line 554
    invoke-virtual {v7, v12}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 555
    const/4 v12, 0x0

    .line 558
    :goto_11
    if-ge v12, v10, :cond_1e

    .line 559
    invoke-virtual {v11, v12}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 561
    move-result v13

    .line 564
    invoke-virtual {v7, v13}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 565
    add-int/lit8 v12, v12, 0x1

    .line 568
    goto :goto_11

    .line 570
    :cond_1e
    if-ne v8, v9, :cond_1f

    .line 571
    iget v0, v6, Lcom/google/zxing/common/BitArray;->size:I

    .line 573
    add-int/lit8 v0, v0, 0x7

    .line 575
    shr-int/lit8 v0, v0, 0x3

    .line 577
    goto :goto_12

    .line 579
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 580
    move-result v0

    .line 583
    :goto_12
    invoke-virtual {v8, v5}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    .line 584
    move-result v8

    .line 587
    const/4 v9, 0x1

    .line 588
    shl-int/2addr v9, v8

    .line 589
    if-ge v0, v9, :cond_51

    .line 590
    invoke-virtual {v7, v0, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 592
    iget v0, v6, Lcom/google/zxing/common/BitArray;->size:I

    .line 595
    iget v8, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 597
    add-int/2addr v8, v0

    .line 599
    invoke-virtual {v7, v8}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 600
    const/4 v8, 0x0

    .line 603
    :goto_13
    if-ge v8, v0, :cond_20

    .line 604
    invoke-virtual {v6, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 606
    move-result v9

    .line 609
    invoke-virtual {v7, v9}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 610
    add-int/lit8 v8, v8, 0x1

    .line 613
    goto :goto_13

    .line 615
    :cond_20
    iget-object v0, v5, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    .line 616
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 618
    move-result v6

    .line 621
    aget-object v0, v0, v6

    .line 622
    iget-object v6, v0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    .line 624
    array-length v8, v6

    .line 626
    const/4 v9, 0x0

    .line 627
    const/4 v10, 0x0

    .line 628
    :goto_14
    if-ge v9, v8, :cond_21

    .line 629
    aget-object v11, v6, v9

    .line 631
    iget v11, v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    .line 633
    add-int/2addr v10, v11

    .line 635
    add-int/lit8 v9, v9, 0x1

    .line 636
    goto :goto_14

    .line 638
    :cond_21
    iget v6, v0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    .line 639
    mul-int/2addr v10, v6

    .line 641
    iget v6, v5, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    .line 642
    sub-int v8, v6, v10

    .line 644
    shl-int/lit8 v9, v8, 0x3

    .line 646
    iget v10, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 648
    if-gt v10, v9, :cond_50

    .line 650
    const/4 v10, 0x0

    .line 652
    :goto_15
    const/4 v11, 0x4

    .line 653
    if-ge v10, v11, :cond_22

    .line 654
    iget v11, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 656
    if-ge v11, v9, :cond_22

    .line 658
    const/4 v11, 0x0

    .line 660
    invoke-virtual {v7, v11}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 661
    add-int/lit8 v10, v10, 0x1

    .line 664
    goto :goto_15

    .line 666
    :cond_22
    const/4 v10, 0x0

    .line 667
    iget v11, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 668
    and-int/lit8 v11, v11, 0x7

    .line 670
    if-lez v11, :cond_23

    .line 672
    :goto_16
    const/16 v12, 0x8

    .line 674
    if-ge v11, v12, :cond_23

    .line 676
    invoke-virtual {v7, v10}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 678
    add-int/lit8 v11, v11, 0x1

    .line 681
    const/4 v10, 0x0

    .line 683
    goto :goto_16

    .line 684
    :cond_23
    iget v10, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 685
    add-int/lit8 v10, v10, 0x7

    .line 687
    shr-int/lit8 v10, v10, 0x3

    .line 689
    sub-int v10, v8, v10

    .line 691
    const/4 v11, 0x0

    .line 693
    :goto_17
    if-ge v11, v10, :cond_25

    .line 694
    and-int/lit8 v12, v11, 0x1

    .line 696
    if-nez v12, :cond_24

    .line 698
    const/16 v12, 0xec

    .line 700
    goto :goto_18

    .line 702
    :cond_24
    const/16 v12, 0x11

    .line 703
    :goto_18
    const/16 v13, 0x8

    .line 705
    invoke-virtual {v7, v12, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 707
    add-int/lit8 v11, v11, 0x1

    .line 710
    goto :goto_17

    .line 712
    :cond_25
    iget v10, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 713
    if-ne v10, v9, :cond_4f

    .line 715
    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    .line 717
    array-length v9, v0

    .line 719
    const/4 v10, 0x0

    .line 720
    const/4 v11, 0x0

    .line 721
    :goto_19
    if-ge v10, v9, :cond_26

    .line 722
    aget-object v12, v0, v10

    .line 724
    iget v12, v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    .line 726
    add-int/2addr v11, v12

    .line 728
    add-int/lit8 v10, v10, 0x1

    .line 729
    goto :goto_19

    .line 731
    :cond_26
    iget v0, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 732
    add-int/lit8 v0, v0, 0x7

    .line 734
    shr-int/lit8 v0, v0, 0x3

    .line 736
    if-ne v0, v8, :cond_4e

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    .line 740
    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 742
    const/4 v9, 0x0

    .line 745
    const/4 v10, 0x0

    .line 746
    const/4 v12, 0x0

    .line 747
    const/4 v13, 0x0

    .line 748
    :goto_1a
    if-ge v9, v11, :cond_31

    .line 749
    const/4 v14, 0x1

    .line 751
    new-array v15, v14, [I

    .line 752
    new-array v14, v14, [I

    .line 754
    if-ge v9, v11, :cond_30

    .line 756
    rem-int v16, v6, v11

    .line 758
    sub-int v2, v11, v16

    .line 760
    div-int v17, v6, v11

    .line 762
    add-int/lit8 v18, v17, 0x1

    .line 764
    div-int v19, v8, v11

    .line 766
    add-int/lit8 v20, v19, 0x1

    .line 768
    sub-int v1, v17, v19

    .line 770
    move/from16 p0, v4

    .line 772
    sub-int v4, v18, v20

    .line 774
    if-ne v1, v4, :cond_2f

    .line 776
    move-object/from16 v17, v3

    .line 778
    add-int v3, v2, v16

    .line 780
    if-ne v11, v3, :cond_2e

    .line 782
    add-int v3, v19, v1

    .line 784
    mul-int/2addr v3, v2

    .line 786
    add-int v18, v20, v4

    .line 787
    mul-int v18, v18, v16

    .line 789
    add-int v3, v18, v3

    .line 791
    if-ne v6, v3, :cond_2d

    .line 793
    if-ge v9, v2, :cond_27

    .line 795
    const/4 v2, 0x0

    .line 797
    aput v19, v15, v2

    .line 798
    aput v1, v14, v2

    .line 800
    goto :goto_1b

    .line 802
    :cond_27
    const/4 v2, 0x0

    .line 803
    aput v20, v15, v2

    .line 804
    aput v4, v14, v2

    .line 806
    :goto_1b
    aget v1, v15, v2

    .line 808
    new-array v2, v1, [B

    .line 810
    mul-int/lit8 v3, v10, 0x8

    .line 812
    const/4 v4, 0x0

    .line 814
    :goto_1c
    if-ge v4, v1, :cond_2a

    .line 815
    const/16 v16, 0x8

    .line 817
    const/16 v18, 0x0

    .line 819
    const/16 v19, 0x0

    .line 821
    move-object/from16 p2, v5

    .line 823
    move/from16 p1, v11

    .line 825
    move/from16 v11, v16

    .line 827
    move/from16 v5, v18

    .line 829
    move/from16 v16, v6

    .line 831
    move/from16 v6, v19

    .line 833
    :goto_1d
    if-ge v6, v11, :cond_29

    .line 835
    invoke-virtual {v7, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 837
    move-result v11

    .line 840
    if-eqz v11, :cond_28

    .line 841
    rsub-int/lit8 v11, v6, 0x7

    .line 843
    const/16 v18, 0x1

    .line 845
    shl-int v11, v18, v11

    .line 847
    or-int/2addr v5, v11

    .line 849
    :cond_28
    add-int/lit8 v3, v3, 0x1

    .line 850
    add-int/lit8 v6, v6, 0x1

    .line 852
    const/16 v11, 0x8

    .line 854
    goto :goto_1d

    .line 856
    :cond_29
    add-int/lit8 v6, v4, 0x0

    .line 857
    int-to-byte v5, v5

    .line 859
    aput-byte v5, v2, v6

    .line 860
    add-int/lit8 v4, v4, 0x1

    .line 862
    move/from16 v11, p1

    .line 864
    move-object/from16 v5, p2

    .line 866
    move/from16 v6, v16

    .line 868
    goto :goto_1c

    .line 870
    :cond_2a
    move-object/from16 p2, v5

    .line 871
    move/from16 v16, v6

    .line 873
    move/from16 p1, v11

    .line 875
    const/4 v3, 0x0

    .line 877
    aget v3, v14, v3

    .line 878
    add-int v4, v1, v3

    .line 880
    new-array v4, v4, [I

    .line 882
    const/4 v5, 0x0

    .line 884
    :goto_1e
    if-ge v5, v1, :cond_2b

    .line 885
    aget-byte v6, v2, v5

    .line 887
    and-int/lit16 v6, v6, 0xff

    .line 889
    aput v6, v4, v5

    .line 891
    add-int/lit8 v5, v5, 0x1

    .line 893
    goto :goto_1e

    .line 895
    :cond_2b
    new-instance v5, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    .line 896
    sget-object v6, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 898
    invoke-direct {v5, v6}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 900
    invoke-virtual {v5, v3, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode(I[I)V

    .line 903
    new-array v5, v3, [B

    .line 906
    const/4 v6, 0x0

    .line 908
    :goto_1f
    if-ge v6, v3, :cond_2c

    .line 909
    add-int v11, v1, v6

    .line 911
    aget v11, v4, v11

    .line 913
    int-to-byte v11, v11

    .line 915
    aput-byte v11, v5, v6

    .line 916
    add-int/lit8 v6, v6, 0x1

    .line 918
    goto :goto_1f

    .line 920
    :cond_2c
    new-instance v4, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 921
    invoke-direct {v4, v2, v5}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    .line 923
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    .line 929
    move-result v12

    .line 932
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    .line 933
    move-result v13

    .line 936
    const/4 v1, 0x0

    .line 937
    aget v1, v15, v1

    .line 938
    add-int/2addr v10, v1

    .line 940
    add-int/lit8 v9, v9, 0x1

    .line 941
    move/from16 v4, p0

    .line 943
    move/from16 v11, p1

    .line 945
    move-object/from16 v5, p2

    .line 947
    move/from16 v1, p3

    .line 949
    move/from16 v2, p4

    .line 951
    move/from16 v6, v16

    .line 953
    move-object/from16 v3, v17

    .line 955
    goto/16 :goto_1a

    .line 957
    :cond_2d
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 959
    const-string v1, "Total bytes mismatch"

    .line 961
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 963
    throw v0

    .line 966
    :cond_2e
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 967
    const-string v1, "RS blocks mismatch"

    .line 969
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 971
    throw v0

    .line 974
    :cond_2f
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 975
    const-string v1, "EC bytes mismatch"

    .line 977
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 979
    throw v0

    .line 982
    :cond_30
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 983
    const-string v1, "Block ID too large"

    .line 985
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 987
    throw v0

    .line 990
    :cond_31
    move-object/from16 v17, v3

    .line 991
    move/from16 p0, v4

    .line 993
    move-object/from16 p2, v5

    .line 995
    move/from16 v16, v6

    .line 997
    if-ne v8, v10, :cond_4d

    .line 999
    new-instance v1, Lcom/google/zxing/common/BitArray;

    .line 1001
    invoke-direct {v1}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 1003
    const/4 v2, 0x0

    .line 1006
    :goto_20
    if-ge v2, v12, :cond_34

    .line 1007
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1009
    move-result-object v3

    .line 1012
    :cond_32
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1013
    move-result v4

    .line 1016
    if-eqz v4, :cond_33

    .line 1017
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1019
    move-result-object v4

    .line 1022
    check-cast v4, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 1023
    iget-object v4, v4, Lcom/google/zxing/qrcode/encoder/BlockPair;->dataBytes:[B

    .line 1025
    array-length v5, v4

    .line 1027
    if-ge v2, v5, :cond_32

    .line 1028
    aget-byte v4, v4, v2

    .line 1030
    const/16 v5, 0x8

    .line 1032
    invoke-virtual {v1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 1034
    goto :goto_21

    .line 1037
    :cond_33
    add-int/lit8 v2, v2, 0x1

    .line 1038
    goto :goto_20

    .line 1040
    :cond_34
    const/4 v2, 0x0

    .line 1041
    :goto_22
    if-ge v2, v13, :cond_37

    .line 1042
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1044
    move-result-object v3

    .line 1047
    :cond_35
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1048
    move-result v4

    .line 1051
    if-eqz v4, :cond_36

    .line 1052
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1054
    move-result-object v4

    .line 1057
    check-cast v4, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 1058
    iget-object v4, v4, Lcom/google/zxing/qrcode/encoder/BlockPair;->errorCorrectionBytes:[B

    .line 1060
    array-length v5, v4

    .line 1062
    if-ge v2, v5, :cond_35

    .line 1063
    aget-byte v4, v4, v2

    .line 1065
    const/16 v5, 0x8

    .line 1067
    invoke-virtual {v1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 1069
    goto :goto_23

    .line 1072
    :cond_36
    add-int/lit8 v2, v2, 0x1

    .line 1073
    goto :goto_22

    .line 1075
    :cond_37
    iget v0, v1, Lcom/google/zxing/common/BitArray;->size:I

    .line 1076
    add-int/lit8 v0, v0, 0x7

    .line 1078
    shr-int/lit8 v0, v0, 0x3

    .line 1080
    move/from16 v2, v16

    .line 1082
    if-ne v2, v0, :cond_4c

    .line 1084
    move-object/from16 v0, p2

    .line 1086
    iget v2, v0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    .line 1088
    mul-int/lit8 v2, v2, 0x4

    .line 1090
    add-int/lit8 v2, v2, 0x11

    .line 1092
    new-instance v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 1094
    invoke-direct {v3, v2, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 1096
    const v2, 0x7fffffff

    .line 1099
    const/4 v4, 0x0

    .line 1102
    const/4 v5, -0x1

    .line 1103
    :goto_24
    iget v6, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 1104
    iget v7, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 1106
    const/16 v8, 0x8

    .line 1108
    if-ge v4, v8, :cond_48

    .line 1110
    move-object/from16 v8, v17

    .line 1112
    invoke-static {v1, v8, v0, v4, v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 1114
    const/4 v9, 0x1

    .line 1117
    invoke-static {v3, v9}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    .line 1118
    move-result v9

    .line 1121
    const/4 v10, 0x0

    .line 1122
    invoke-static {v3, v10}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    .line 1123
    move-result v11

    .line 1126
    add-int/2addr v11, v9

    .line 1127
    move v9, v10

    .line 1128
    move v12, v9

    .line 1129
    :goto_25
    add-int/lit8 v13, v6, -0x1

    .line 1130
    iget-object v14, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 1132
    if-ge v10, v13, :cond_3a

    .line 1134
    :goto_26
    add-int/lit8 v13, v7, -0x1

    .line 1136
    if-ge v12, v13, :cond_39

    .line 1138
    aget-object v13, v14, v10

    .line 1140
    aget-byte v15, v13, v12

    .line 1142
    add-int/lit8 v16, v12, 0x1

    .line 1144
    aget-byte v13, v13, v16

    .line 1146
    if-ne v15, v13, :cond_38

    .line 1148
    add-int/lit8 v13, v10, 0x1

    .line 1150
    aget-object v13, v14, v13

    .line 1152
    aget-byte v12, v13, v12

    .line 1154
    if-ne v15, v12, :cond_38

    .line 1156
    aget-byte v12, v13, v16

    .line 1158
    if-ne v15, v12, :cond_38

    .line 1160
    add-int/lit8 v9, v9, 0x1

    .line 1162
    :cond_38
    move/from16 v12, v16

    .line 1164
    goto :goto_26

    .line 1166
    :cond_39
    add-int/lit8 v10, v10, 0x1

    .line 1167
    const/4 v12, 0x0

    .line 1169
    goto :goto_25

    .line 1170
    :cond_3a
    mul-int/lit8 v9, v9, 0x3

    .line 1171
    add-int/2addr v9, v11

    .line 1173
    const/4 v10, 0x0

    .line 1174
    const/4 v11, 0x0

    .line 1175
    :goto_27
    if-ge v10, v6, :cond_43

    .line 1176
    const/4 v12, 0x0

    .line 1178
    :goto_28
    if-ge v12, v7, :cond_42

    .line 1179
    add-int/lit8 v13, v12, 0x6

    .line 1181
    if-ge v13, v7, :cond_3d

    .line 1183
    aget-object v15, v14, v10

    .line 1185
    move-object/from16 p2, v0

    .line 1187
    aget-byte v0, v15, v12

    .line 1189
    move-object/from16 p1, v1

    .line 1191
    const/4 v1, 0x1

    .line 1193
    if-ne v0, v1, :cond_3e

    .line 1194
    add-int/lit8 v0, v12, 0x1

    .line 1196
    aget-byte v0, v15, v0

    .line 1198
    if-nez v0, :cond_3e

    .line 1200
    add-int/lit8 v0, v12, 0x2

    .line 1202
    aget-byte v0, v15, v0

    .line 1204
    if-ne v0, v1, :cond_3e

    .line 1206
    add-int/lit8 v0, v12, 0x3

    .line 1208
    aget-byte v0, v15, v0

    .line 1210
    if-ne v0, v1, :cond_3e

    .line 1212
    add-int/lit8 v0, v12, 0x4

    .line 1214
    aget-byte v0, v15, v0

    .line 1216
    if-ne v0, v1, :cond_3e

    .line 1218
    add-int/lit8 v0, v12, 0x5

    .line 1220
    aget-byte v0, v15, v0

    .line 1222
    if-nez v0, :cond_3e

    .line 1224
    aget-byte v0, v15, v13

    .line 1226
    if-ne v0, v1, :cond_3e

    .line 1228
    add-int/lit8 v0, v12, 0xa

    .line 1230
    if-ge v0, v7, :cond_3b

    .line 1232
    add-int/lit8 v1, v12, 0x7

    .line 1234
    aget-byte v1, v15, v1

    .line 1236
    if-nez v1, :cond_3b

    .line 1238
    add-int/lit8 v1, v12, 0x8

    .line 1240
    aget-byte v1, v15, v1

    .line 1242
    if-nez v1, :cond_3b

    .line 1244
    add-int/lit8 v1, v12, 0x9

    .line 1246
    aget-byte v1, v15, v1

    .line 1248
    if-nez v1, :cond_3b

    .line 1250
    aget-byte v0, v15, v0

    .line 1252
    if-eqz v0, :cond_3c

    .line 1254
    :cond_3b
    add-int/lit8 v0, v12, -0x4

    .line 1256
    if-ltz v0, :cond_3e

    .line 1258
    add-int/lit8 v1, v12, -0x1

    .line 1260
    aget-byte v1, v15, v1

    .line 1262
    if-nez v1, :cond_3e

    .line 1264
    add-int/lit8 v1, v12, -0x2

    .line 1266
    aget-byte v1, v15, v1

    .line 1268
    if-nez v1, :cond_3e

    .line 1270
    add-int/lit8 v1, v12, -0x3

    .line 1272
    aget-byte v1, v15, v1

    .line 1274
    if-nez v1, :cond_3e

    .line 1276
    aget-byte v0, v15, v0

    .line 1278
    if-nez v0, :cond_3e

    .line 1280
    :cond_3c
    add-int/lit8 v11, v11, 0x28

    .line 1282
    goto :goto_29

    .line 1284
    :cond_3d
    move-object/from16 p2, v0

    .line 1285
    move-object/from16 p1, v1

    .line 1287
    :cond_3e
    :goto_29
    add-int/lit8 v0, v10, 0x6

    .line 1289
    if-ge v0, v6, :cond_41

    .line 1291
    aget-object v1, v14, v10

    .line 1293
    aget-byte v1, v1, v12

    .line 1295
    const/4 v13, 0x1

    .line 1297
    if-ne v1, v13, :cond_41

    .line 1298
    add-int/lit8 v1, v10, 0x1

    .line 1300
    aget-object v1, v14, v1

    .line 1302
    aget-byte v1, v1, v12

    .line 1304
    if-nez v1, :cond_41

    .line 1306
    add-int/lit8 v1, v10, 0x2

    .line 1308
    aget-object v1, v14, v1

    .line 1310
    aget-byte v1, v1, v12

    .line 1312
    if-ne v1, v13, :cond_41

    .line 1314
    add-int/lit8 v1, v10, 0x3

    .line 1316
    aget-object v1, v14, v1

    .line 1318
    aget-byte v1, v1, v12

    .line 1320
    if-ne v1, v13, :cond_41

    .line 1322
    add-int/lit8 v1, v10, 0x4

    .line 1324
    aget-object v1, v14, v1

    .line 1326
    aget-byte v1, v1, v12

    .line 1328
    if-ne v1, v13, :cond_41

    .line 1330
    add-int/lit8 v1, v10, 0x5

    .line 1332
    aget-object v1, v14, v1

    .line 1334
    aget-byte v1, v1, v12

    .line 1336
    if-nez v1, :cond_41

    .line 1338
    aget-object v0, v14, v0

    .line 1340
    aget-byte v0, v0, v12

    .line 1342
    if-ne v0, v13, :cond_41

    .line 1344
    add-int/lit8 v0, v10, 0xa

    .line 1346
    if-ge v0, v6, :cond_3f

    .line 1348
    add-int/lit8 v1, v10, 0x7

    .line 1350
    aget-object v1, v14, v1

    .line 1352
    aget-byte v1, v1, v12

    .line 1354
    if-nez v1, :cond_3f

    .line 1356
    add-int/lit8 v1, v10, 0x8

    .line 1358
    aget-object v1, v14, v1

    .line 1360
    aget-byte v1, v1, v12

    .line 1362
    if-nez v1, :cond_3f

    .line 1364
    add-int/lit8 v1, v10, 0x9

    .line 1366
    aget-object v1, v14, v1

    .line 1368
    aget-byte v1, v1, v12

    .line 1370
    if-nez v1, :cond_3f

    .line 1372
    aget-object v0, v14, v0

    .line 1374
    aget-byte v0, v0, v12

    .line 1376
    if-eqz v0, :cond_40

    .line 1378
    :cond_3f
    add-int/lit8 v0, v10, -0x4

    .line 1380
    if-ltz v0, :cond_41

    .line 1382
    add-int/lit8 v1, v10, -0x1

    .line 1384
    aget-object v1, v14, v1

    .line 1386
    aget-byte v1, v1, v12

    .line 1388
    if-nez v1, :cond_41

    .line 1390
    add-int/lit8 v1, v10, -0x2

    .line 1392
    aget-object v1, v14, v1

    .line 1394
    aget-byte v1, v1, v12

    .line 1396
    if-nez v1, :cond_41

    .line 1398
    add-int/lit8 v1, v10, -0x3

    .line 1400
    aget-object v1, v14, v1

    .line 1402
    aget-byte v1, v1, v12

    .line 1404
    if-nez v1, :cond_41

    .line 1406
    aget-object v0, v14, v0

    .line 1408
    aget-byte v0, v0, v12

    .line 1410
    if-nez v0, :cond_41

    .line 1412
    :cond_40
    add-int/lit8 v11, v11, 0x28

    .line 1414
    :cond_41
    add-int/lit8 v12, v12, 0x1

    .line 1416
    move-object/from16 v1, p1

    .line 1418
    move-object/from16 v0, p2

    .line 1420
    goto/16 :goto_28

    .line 1422
    :cond_42
    move-object/from16 p2, v0

    .line 1424
    move-object/from16 p1, v1

    .line 1426
    add-int/lit8 v10, v10, 0x1

    .line 1428
    goto/16 :goto_27

    .line 1430
    :cond_43
    move-object/from16 p2, v0

    .line 1432
    move-object/from16 p1, v1

    .line 1434
    add-int/2addr v9, v11

    .line 1436
    const/4 v0, 0x0

    .line 1437
    const/4 v1, 0x0

    .line 1438
    :goto_2a
    if-ge v0, v6, :cond_46

    .line 1439
    aget-object v10, v14, v0

    .line 1441
    const/4 v11, 0x0

    .line 1443
    :goto_2b
    if-ge v11, v7, :cond_45

    .line 1444
    aget-byte v12, v10, v11

    .line 1446
    const/4 v13, 0x1

    .line 1448
    if-ne v12, v13, :cond_44

    .line 1449
    add-int/lit8 v1, v1, 0x1

    .line 1451
    :cond_44
    add-int/lit8 v11, v11, 0x1

    .line 1453
    goto :goto_2b

    .line 1455
    :cond_45
    add-int/lit8 v0, v0, 0x1

    .line 1456
    goto :goto_2a

    .line 1458
    :cond_46
    mul-int/2addr v6, v7

    .line 1459
    int-to-double v0, v1

    .line 1460
    int-to-double v6, v6

    .line 1461
    div-double/2addr v0, v6

    .line 1462
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 1463
    sub-double/2addr v0, v6

    .line 1465
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 1466
    move-result-wide v0

    .line 1469
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    .line 1470
    mul-double/2addr v0, v6

    .line 1472
    double-to-int v0, v0

    .line 1473
    mul-int/lit8 v0, v0, 0xa

    .line 1474
    add-int/2addr v0, v9

    .line 1476
    if-ge v0, v2, :cond_47

    .line 1477
    move v2, v0

    .line 1479
    move v5, v4

    .line 1480
    :cond_47
    add-int/lit8 v4, v4, 0x1

    .line 1481
    move-object/from16 v1, p1

    .line 1483
    move-object/from16 v0, p2

    .line 1485
    move-object/from16 v17, v8

    .line 1487
    goto/16 :goto_24

    .line 1489
    :cond_48
    move-object/from16 v8, v17

    .line 1491
    invoke-static {v1, v8, v0, v5, v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 1493
    shl-int/lit8 v0, p0, 0x1

    .line 1496
    add-int v1, v7, v0

    .line 1498
    add-int/2addr v0, v6

    .line 1500
    move/from16 v2, p3

    .line 1501
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 1503
    move-result v2

    .line 1506
    move/from16 v4, p4

    .line 1507
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 1509
    move-result v4

    .line 1512
    div-int v1, v2, v1

    .line 1513
    div-int v0, v4, v0

    .line 1515
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 1517
    move-result v0

    .line 1520
    mul-int v1, v7, v0

    .line 1521
    sub-int v1, v2, v1

    .line 1523
    div-int/lit8 v1, v1, 0x2

    .line 1525
    mul-int v5, v6, v0

    .line 1527
    sub-int v5, v4, v5

    .line 1529
    div-int/lit8 v5, v5, 0x2

    .line 1531
    new-instance v8, Lcom/google/zxing/common/BitMatrix;

    .line 1533
    invoke-direct {v8, v2, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 1535
    const/4 v2, 0x0

    .line 1538
    :goto_2c
    if-ge v2, v6, :cond_4b

    .line 1539
    const/4 v4, 0x0

    .line 1541
    move v9, v1

    .line 1542
    :goto_2d
    if-ge v4, v7, :cond_4a

    .line 1543
    invoke-virtual {v3, v4, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 1545
    move-result v10

    .line 1548
    const/4 v11, 0x1

    .line 1549
    if-ne v10, v11, :cond_49

    .line 1550
    invoke-virtual {v8, v9, v5, v0, v0}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 1552
    :cond_49
    add-int/lit8 v4, v4, 0x1

    .line 1555
    add-int/2addr v9, v0

    .line 1557
    goto :goto_2d

    .line 1558
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    .line 1559
    add-int/2addr v5, v0

    .line 1561
    goto :goto_2c

    .line 1562
    :cond_4b
    return-object v8

    .line 1563
    :cond_4c
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 1564
    const-string v3, "Interleaving error: "

    .line 1566
    const-string v4, " and "

    .line 1568
    invoke-static {v3, v2, v4}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    move-result-object v2

    .line 1573
    iget v1, v1, Lcom/google/zxing/common/BitArray;->size:I

    .line 1574
    add-int/lit8 v1, v1, 0x7

    .line 1576
    shr-int/lit8 v1, v1, 0x3

    .line 1578
    const-string v3, " differ."

    .line 1580
    invoke-static {v2, v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 1582
    move-result-object v1

    .line 1585
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 1586
    throw v0

    .line 1589
    :cond_4d
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 1590
    const-string v1, "Data bytes does not match offset"

    .line 1592
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 1594
    throw v0

    .line 1597
    :cond_4e
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 1598
    const-string v1, "Number of bits and data bytes does not match"

    .line 1600
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 1602
    throw v0

    .line 1605
    :cond_4f
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 1606
    const-string v1, "Bits size does not equal capacity"

    .line 1608
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 1610
    throw v0

    .line 1613
    :cond_50
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 1614
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1616
    const-string v2, "data bits cannot fit in the QR Code"

    .line 1618
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1620
    iget v2, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 1623
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1625
    const-string v2, " > "

    .line 1628
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1633
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1636
    move-result-object v1

    .line 1639
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 1640
    throw v0

    .line 1643
    :cond_51
    new-instance v1, Lcom/google/zxing/WriterException;

    .line 1644
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1646
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1648
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1651
    const-string v0, " is bigger than "

    .line 1654
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    add-int/lit8 v9, v9, -0x1

    .line 1659
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1661
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1664
    move-result-object v0

    .line 1667
    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 1668
    throw v1

    .line 1671
    :cond_52
    move v4, v2

    .line 1672
    move v2, v1

    .line 1673
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1674
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1676
    const-string v3, "Requested dimensions are too small: "

    .line 1678
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1680
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1683
    const/16 v2, 0x78

    .line 1686
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1688
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1691
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1694
    move-result-object v1

    .line 1697
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1698
    throw v0

    .line 1701
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1702
    const-string v1, "Found empty contents"

    .line 1704
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1706
    throw v0
    .line 1709
.end method
