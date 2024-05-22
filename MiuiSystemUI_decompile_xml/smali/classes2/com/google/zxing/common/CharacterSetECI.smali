.class public final enum Lcom/google/zxing/common/CharacterSetECI;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $VALUES:[Lcom/google/zxing/common/CharacterSetECI;

.field public static final NAME_TO_ECI:Ljava/util/Map;

.field public static final VALUE_TO_ECI:Ljava/util/Map;


# instance fields
.field private final otherEncodingNames:[Ljava/lang/String;

.field private final values:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 32

    .line 1
    new-instance v1, Lcom/google/zxing/common/CharacterSetECI;

    .line 2
    move-object v0, v1

    .line 4
    const/4 v15, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    filled-new-array {v15, v3}, [I

    .line 7
    move-result-object v2

    .line 10
    new-array v4, v15, [Ljava/lang/String;

    .line 11
    const-string v5, "Cp437"

    .line 13
    invoke-direct {v1, v5, v15, v2, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 15
    new-instance v2, Lcom/google/zxing/common/CharacterSetECI;

    .line 18
    move-object v1, v2

    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x3

    .line 22
    filled-new-array {v4, v5}, [I

    .line 23
    move-result-object v6

    .line 26
    const-string v7, "ISO-8859-1"

    .line 27
    filled-new-array {v7}, [Ljava/lang/String;

    .line 29
    move-result-object v7

    .line 32
    const-string v8, "ISO8859_1"

    .line 33
    invoke-direct {v2, v8, v4, v6, v7}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 35
    new-instance v4, Lcom/google/zxing/common/CharacterSetECI;

    .line 38
    move-object v2, v4

    .line 40
    const-string v6, "ISO-8859-2"

    .line 41
    filled-new-array {v6}, [Ljava/lang/String;

    .line 43
    move-result-object v6

    .line 46
    const-string v7, "ISO8859_2"

    .line 47
    const/4 v8, 0x4

    .line 49
    invoke-direct {v4, v7, v3, v8, v6}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 50
    new-instance v4, Lcom/google/zxing/common/CharacterSetECI;

    .line 53
    move-object v3, v4

    .line 55
    const-string v6, "ISO-8859-3"

    .line 56
    filled-new-array {v6}, [Ljava/lang/String;

    .line 58
    move-result-object v6

    .line 61
    const-string v7, "ISO8859_3"

    .line 62
    const/4 v9, 0x5

    .line 64
    invoke-direct {v4, v7, v5, v9, v6}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 65
    new-instance v5, Lcom/google/zxing/common/CharacterSetECI;

    .line 68
    move-object v4, v5

    .line 70
    const-string v6, "ISO-8859-4"

    .line 71
    filled-new-array {v6}, [Ljava/lang/String;

    .line 73
    move-result-object v6

    .line 76
    const-string v7, "ISO8859_4"

    .line 77
    const/4 v10, 0x6

    .line 79
    invoke-direct {v5, v7, v8, v10, v6}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 80
    new-instance v6, Lcom/google/zxing/common/CharacterSetECI;

    .line 83
    move-object v5, v6

    .line 85
    const-string v7, "ISO-8859-5"

    .line 86
    filled-new-array {v7}, [Ljava/lang/String;

    .line 88
    move-result-object v7

    .line 91
    const-string v8, "ISO8859_5"

    .line 92
    const/4 v11, 0x7

    .line 94
    invoke-direct {v6, v8, v9, v11, v7}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 95
    new-instance v7, Lcom/google/zxing/common/CharacterSetECI;

    .line 98
    move-object v6, v7

    .line 100
    const-string v8, "ISO-8859-6"

    .line 101
    filled-new-array {v8}, [Ljava/lang/String;

    .line 103
    move-result-object v8

    .line 106
    const-string v9, "ISO8859_6"

    .line 107
    const/16 v12, 0x8

    .line 109
    invoke-direct {v7, v9, v10, v12, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 111
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    .line 114
    move-object v7, v8

    .line 116
    const-string v9, "ISO-8859-7"

    .line 117
    filled-new-array {v9}, [Ljava/lang/String;

    .line 119
    move-result-object v9

    .line 122
    const-string v10, "ISO8859_7"

    .line 123
    const/16 v13, 0x9

    .line 125
    invoke-direct {v8, v10, v11, v13, v9}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 127
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    .line 130
    move-object v8, v9

    .line 132
    const-string v10, "ISO-8859-8"

    .line 133
    filled-new-array {v10}, [Ljava/lang/String;

    .line 135
    move-result-object v10

    .line 138
    const-string v11, "ISO8859_8"

    .line 139
    const/16 v14, 0xa

    .line 141
    invoke-direct {v9, v11, v12, v14, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 143
    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    .line 146
    move-object v9, v10

    .line 148
    const-string v11, "ISO-8859-9"

    .line 149
    filled-new-array {v11}, [Ljava/lang/String;

    .line 151
    move-result-object v11

    .line 154
    const-string v12, "ISO8859_9"

    .line 155
    const/16 v15, 0xb

    .line 157
    invoke-direct {v10, v12, v13, v15, v11}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 159
    new-instance v11, Lcom/google/zxing/common/CharacterSetECI;

    .line 162
    move-object v10, v11

    .line 164
    const-string v12, "ISO-8859-10"

    .line 165
    filled-new-array {v12}, [Ljava/lang/String;

    .line 167
    move-result-object v12

    .line 170
    const-string v13, "ISO8859_10"

    .line 171
    const/16 v15, 0xc

    .line 173
    invoke-direct {v11, v13, v14, v15, v12}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 175
    new-instance v12, Lcom/google/zxing/common/CharacterSetECI;

    .line 178
    move-object v11, v12

    .line 180
    const-string v13, "ISO-8859-11"

    .line 181
    filled-new-array {v13}, [Ljava/lang/String;

    .line 183
    move-result-object v13

    .line 186
    const-string v14, "ISO8859_11"

    .line 187
    const/16 v15, 0xd

    .line 189
    move-object/from16 v27, v0

    .line 191
    const/16 v0, 0xb

    .line 193
    invoke-direct {v12, v14, v0, v15, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 195
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 198
    move-object v12, v0

    .line 200
    const-string v13, "ISO-8859-13"

    .line 201
    filled-new-array {v13}, [Ljava/lang/String;

    .line 203
    move-result-object v13

    .line 206
    const-string v14, "ISO8859_13"

    .line 207
    const/16 v15, 0xf

    .line 209
    move-object/from16 v28, v1

    .line 211
    const/16 v1, 0xc

    .line 213
    invoke-direct {v0, v14, v1, v15, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 215
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 218
    move-object v13, v0

    .line 220
    const-string v1, "ISO-8859-14"

    .line 221
    filled-new-array {v1}, [Ljava/lang/String;

    .line 223
    move-result-object v1

    .line 226
    const-string v14, "ISO8859_14"

    .line 227
    move-object/from16 v29, v2

    .line 229
    const/16 v2, 0x10

    .line 231
    const/16 v15, 0xd

    .line 233
    invoke-direct {v0, v14, v15, v2, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 235
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 238
    move-object v14, v0

    .line 240
    const-string v1, "ISO-8859-15"

    .line 241
    filled-new-array {v1}, [Ljava/lang/String;

    .line 243
    move-result-object v1

    .line 246
    const-string v15, "ISO8859_15"

    .line 247
    const/16 v2, 0xe

    .line 249
    move-object/from16 v30, v3

    .line 251
    const/16 v3, 0x11

    .line 253
    invoke-direct {v0, v15, v2, v3, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 255
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 258
    const/4 v1, 0x0

    .line 260
    const/16 v2, 0xf

    .line 261
    move-object v15, v0

    .line 263
    const-string v16, "ISO-8859-16"

    .line 264
    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    .line 266
    move-result-object v1

    .line 269
    const-string v3, "ISO8859_16"

    .line 270
    move-object/from16 v31, v4

    .line 272
    const/16 v4, 0x12

    .line 274
    invoke-direct {v0, v3, v2, v4, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 276
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 279
    move-object/from16 v16, v0

    .line 281
    const-string v1, "Shift_JIS"

    .line 283
    filled-new-array {v1}, [Ljava/lang/String;

    .line 285
    move-result-object v1

    .line 288
    const-string v2, "SJIS"

    .line 289
    const/16 v3, 0x14

    .line 291
    const/16 v4, 0x10

    .line 293
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 295
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 298
    move-object/from16 v17, v0

    .line 300
    const-string/jumbo v1, "windows-1250"

    .line 302
    filled-new-array {v1}, [Ljava/lang/String;

    .line 305
    move-result-object v1

    .line 308
    const-string v2, "Cp1250"

    .line 309
    const/16 v4, 0x15

    .line 311
    const/16 v3, 0x11

    .line 313
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 315
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 318
    move-object/from16 v18, v0

    .line 320
    const-string/jumbo v1, "windows-1251"

    .line 322
    filled-new-array {v1}, [Ljava/lang/String;

    .line 325
    move-result-object v1

    .line 328
    const-string v2, "Cp1251"

    .line 329
    const/16 v3, 0x16

    .line 331
    const/16 v4, 0x12

    .line 333
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 335
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 338
    move-object/from16 v19, v0

    .line 340
    const-string/jumbo v1, "windows-1252"

    .line 342
    filled-new-array {v1}, [Ljava/lang/String;

    .line 345
    move-result-object v1

    .line 348
    const-string v2, "Cp1252"

    .line 349
    const/16 v4, 0x13

    .line 351
    const/16 v3, 0x17

    .line 353
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 355
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 358
    move-object/from16 v20, v0

    .line 360
    const-string/jumbo v1, "windows-1256"

    .line 362
    filled-new-array {v1}, [Ljava/lang/String;

    .line 365
    move-result-object v1

    .line 368
    const-string v2, "Cp1256"

    .line 369
    const/16 v4, 0x18

    .line 371
    const/16 v3, 0x14

    .line 373
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 375
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 378
    move-object/from16 v21, v0

    .line 380
    const-string v1, "UTF-16BE"

    .line 382
    const-string v2, "UnicodeBig"

    .line 384
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 386
    move-result-object v1

    .line 389
    const-string v2, "UnicodeBigUnmarked"

    .line 390
    const/16 v3, 0x19

    .line 392
    const/16 v4, 0x15

    .line 394
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 396
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 399
    move-object/from16 v22, v0

    .line 401
    const-string v1, "UTF-8"

    .line 403
    filled-new-array {v1}, [Ljava/lang/String;

    .line 405
    move-result-object v1

    .line 408
    const-string v2, "UTF8"

    .line 409
    const/16 v4, 0x1a

    .line 411
    const/16 v3, 0x16

    .line 413
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 415
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 418
    move-object/from16 v23, v0

    .line 420
    const/16 v1, 0x1b

    .line 422
    const/16 v2, 0xaa

    .line 424
    filled-new-array {v1, v2}, [I

    .line 426
    move-result-object v1

    .line 429
    const-string v2, "US-ASCII"

    .line 430
    filled-new-array {v2}, [Ljava/lang/String;

    .line 432
    move-result-object v2

    .line 435
    const-string v3, "ASCII"

    .line 436
    const/16 v4, 0x17

    .line 438
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 440
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 443
    move-object/from16 v24, v0

    .line 445
    const/16 v1, 0x1c

    .line 447
    filled-new-array {v1}, [I

    .line 449
    move-result-object v1

    .line 452
    const/4 v2, 0x0

    .line 453
    new-array v3, v2, [Ljava/lang/String;

    .line 454
    const-string v4, "Big5"

    .line 456
    const/16 v2, 0x18

    .line 458
    invoke-direct {v0, v4, v2, v1, v3}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 460
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 463
    move-object/from16 v25, v0

    .line 465
    const-string v1, "GBK"

    .line 467
    const-string v2, "GB2312"

    .line 469
    const-string v3, "EUC_CN"

    .line 471
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    .line 473
    move-result-object v1

    .line 476
    const-string v2, "GB18030"

    .line 477
    const/16 v3, 0x1d

    .line 479
    const/16 v4, 0x19

    .line 481
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 483
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 486
    move-object/from16 v26, v0

    .line 488
    const-string v1, "EUC-KR"

    .line 490
    filled-new-array {v1}, [Ljava/lang/String;

    .line 492
    move-result-object v1

    .line 495
    const-string v2, "EUC_KR"

    .line 496
    const/16 v3, 0x1e

    .line 498
    const/16 v4, 0x1a

    .line 500
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 502
    move-object/from16 v0, v27

    .line 505
    move-object/from16 v1, v28

    .line 507
    move-object/from16 v2, v29

    .line 509
    move-object/from16 v3, v30

    .line 511
    move-object/from16 v4, v31

    .line 513
    const/16 v27, 0x0

    .line 515
    filled-new-array/range {v0 .. v26}, [Lcom/google/zxing/common/CharacterSetECI;

    .line 517
    move-result-object v0

    .line 520
    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    .line 521
    new-instance v0, Ljava/util/HashMap;

    .line 523
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 525
    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    .line 528
    new-instance v0, Ljava/util/HashMap;

    .line 530
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 532
    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 535
    invoke-static {}, Lcom/google/zxing/common/CharacterSetECI;->values()[Lcom/google/zxing/common/CharacterSetECI;

    .line 537
    move-result-object v0

    .line 540
    array-length v1, v0

    .line 541
    move/from16 v15, v27

    .line 542
    :goto_0
    if-ge v15, v1, :cond_2

    .line 544
    aget-object v2, v0, v15

    .line 546
    iget-object v3, v2, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 548
    array-length v4, v3

    .line 550
    move/from16 v5, v27

    .line 551
    :goto_1
    if-ge v5, v4, :cond_0

    .line 553
    aget v6, v3, v5

    .line 555
    sget-object v7, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    .line 557
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 559
    move-result-object v6

    .line 562
    check-cast v7, Ljava/util/HashMap;

    .line 563
    invoke-virtual {v7, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    add-int/lit8 v5, v5, 0x1

    .line 568
    goto :goto_1

    .line 570
    :cond_0
    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 571
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 573
    move-result-object v4

    .line 576
    check-cast v3, Ljava/util/HashMap;

    .line 577
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    iget-object v3, v2, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    .line 582
    array-length v4, v3

    .line 584
    move/from16 v5, v27

    .line 585
    :goto_2
    if-ge v5, v4, :cond_1

    .line 587
    aget-object v6, v3, v5

    .line 589
    sget-object v7, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 591
    check-cast v7, Ljava/util/HashMap;

    .line 593
    invoke-virtual {v7, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    add-int/lit8 v5, v5, 0x1

    .line 598
    goto :goto_2

    .line 600
    :cond_1
    add-int/lit8 v15, v15, 0x1

    .line 601
    goto :goto_0

    .line 603
    :cond_2
    return-void
    .line 604
.end method

.method public varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    filled-new-array {p3}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 3
    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-object p3, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 6
    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    .line 2
    invoke-virtual {v0}, [Lcom/google/zxing/common/CharacterSetECI;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/common/CharacterSetECI;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 2
    const/4 v0, 0x0

    .line 4
    aget p0, p0, v0

    .line 5
    return p0
    .line 7
.end method
