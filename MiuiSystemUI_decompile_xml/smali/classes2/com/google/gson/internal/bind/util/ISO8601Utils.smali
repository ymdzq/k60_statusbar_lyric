.class public abstract Lcom/google/gson/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TIMEZONE_UTC:Ljava/util/TimeZone;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTC"

    .line 2
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 8
    return-void
    .line 10
.end method

.method public static checkOffset(Ljava/lang/String;IC)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    move-result v0

    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 8
    move-result p0

    .line 11
    if-ne p0, p2, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v2, p1

    .line 4
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    .line 6
    move-result v0

    .line 9
    add-int/lit8 v3, v0, 0x4

    .line 10
    invoke-static {v0, v3, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(IILjava/lang/String;)I

    .line 12
    move-result v0

    .line 15
    const/16 v4, 0x2d

    .line 16
    invoke-static {v1, v3, v4}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 18
    move-result v5

    .line 21
    if-eqz v5, :cond_0

    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 24
    :cond_0
    add-int/lit8 v5, v3, 0x2

    .line 26
    invoke-static {v3, v5, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(IILjava/lang/String;)I

    .line 28
    move-result v3

    .line 31
    invoke-static {v1, v5, v4}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 32
    move-result v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    add-int/lit8 v5, v5, 0x1

    .line 38
    :cond_1
    add-int/lit8 v6, v5, 0x2

    .line 40
    invoke-static {v5, v6, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(IILjava/lang/String;)I

    .line 42
    move-result v5

    .line 45
    const/16 v7, 0x54

    .line 46
    invoke-static {v1, v6, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 48
    move-result v7

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v9, 0x1

    .line 53
    if-nez v7, :cond_2

    .line 54
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 56
    move-result v10

    .line 59
    if-gt v10, v6, :cond_2

    .line 60
    new-instance v4, Ljava/util/GregorianCalendar;

    .line 62
    sub-int/2addr v3, v9

    .line 64
    invoke-direct {v4, v0, v3, v5}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 65
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->setLenient(Z)V

    .line 68
    invoke-virtual {v2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 71
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 74
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    :cond_2
    const/4 v8, 0x2

    .line 79
    const/16 v10, 0x2b

    .line 80
    const/16 v11, 0x5a

    .line 82
    if-eqz v7, :cond_d

    .line 84
    add-int/lit8 v6, v6, 0x1

    .line 86
    add-int/lit8 v7, v6, 0x2

    .line 88
    invoke-static {v6, v7, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(IILjava/lang/String;)I

    .line 90
    move-result v6

    .line 93
    const/16 v12, 0x3a

    .line 94
    invoke-static {v1, v7, v12}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 96
    move-result v13

    .line 99
    if-eqz v13, :cond_3

    .line 100
    add-int/lit8 v7, v7, 0x1

    .line 102
    :cond_3
    add-int/lit8 v13, v7, 0x2

    .line 104
    invoke-static {v7, v13, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(IILjava/lang/String;)I

    .line 106
    move-result v7

    .line 109
    invoke-static {v1, v13, v12}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 110
    move-result v12

    .line 113
    if-eqz v12, :cond_4

    .line 114
    add-int/lit8 v13, v13, 0x1

    .line 116
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 118
    move-result v12

    .line 121
    if-le v12, v13, :cond_c

    .line 122
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 124
    move-result v12

    .line 127
    if-eq v12, v11, :cond_c

    .line 128
    if-eq v12, v10, :cond_c

    .line 130
    if-eq v12, v4, :cond_c

    .line 132
    add-int/lit8 v4, v13, 0x2

    .line 134
    invoke-static {v13, v4, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(IILjava/lang/String;)I

    .line 136
    move-result v12

    .line 139
    const/16 v13, 0x3b

    .line 140
    if-le v12, v13, :cond_5

    .line 142
    const/16 v13, 0x3f

    .line 144
    if-ge v12, v13, :cond_5

    .line 146
    const/16 v12, 0x3b

    .line 148
    :cond_5
    const/16 v13, 0x2e

    .line 150
    invoke-static {v1, v4, v13}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 152
    move-result v13

    .line 155
    if-eqz v13, :cond_b

    .line 156
    add-int/lit8 v4, v4, 0x1

    .line 158
    add-int/lit8 v13, v4, 0x1

    .line 160
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 162
    move-result v14

    .line 165
    if-ge v13, v14, :cond_7

    .line 166
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 168
    move-result v14

    .line 171
    const/16 v15, 0x30

    .line 172
    if-lt v14, v15, :cond_8

    .line 174
    const/16 v15, 0x39

    .line 176
    if-le v14, v15, :cond_6

    .line 178
    goto :goto_1

    .line 180
    :cond_6
    add-int/lit8 v13, v13, 0x1

    .line 181
    goto :goto_0

    .line 183
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 184
    move-result v13

    .line 187
    :cond_8
    :goto_1
    add-int/lit8 v14, v4, 0x3

    .line 188
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    .line 190
    move-result v14

    .line 193
    invoke-static {v4, v14, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(IILjava/lang/String;)I

    .line 194
    move-result v15

    .line 197
    sub-int/2addr v14, v4

    .line 198
    if-eq v14, v9, :cond_a

    .line 199
    if-eq v14, v8, :cond_9

    .line 201
    goto :goto_2

    .line 203
    :cond_9
    mul-int/lit8 v15, v15, 0xa

    .line 204
    goto :goto_2

    .line 206
    :cond_a
    mul-int/lit8 v15, v15, 0x64

    .line 207
    :goto_2
    move v4, v13

    .line 209
    goto :goto_4

    .line 210
    :cond_b
    const/4 v15, 0x0

    .line 211
    goto :goto_4

    .line 212
    :cond_c
    move v4, v6

    .line 213
    move v6, v13

    .line 214
    goto :goto_3

    .line 215
    :cond_d
    const/4 v4, 0x0

    .line 216
    const/4 v7, 0x0

    .line 217
    :goto_3
    const/4 v15, 0x0

    .line 218
    const/4 v12, 0x0

    .line 219
    move/from16 v17, v6

    .line 220
    move v6, v4

    .line 222
    move/from16 v4, v17

    .line 223
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 225
    move-result v13

    .line 228
    if-le v13, v4, :cond_15

    .line 229
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 231
    move-result v13
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    const/4 v14, 0x5

    .line 235
    sget-object v16, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 236
    if-ne v13, v11, :cond_f

    .line 238
    add-int/2addr v4, v9

    .line 240
    :cond_e
    :goto_5
    move-object/from16 v10, v16

    .line 241
    goto/16 :goto_8

    .line 243
    :cond_f
    if-eq v13, v10, :cond_11

    .line 245
    const/16 v10, 0x2d

    .line 247
    if-ne v13, v10, :cond_10

    .line 249
    goto :goto_6

    .line 251
    :cond_10
    :try_start_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    .line 254
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    const-string v4, "Invalid time zone indicator \'"

    .line 259
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    const-string v4, "\'"

    .line 267
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    move-result-object v3

    .line 275
    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 276
    throw v0

    .line 279
    :cond_11
    :goto_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 280
    move-result-object v10

    .line 283
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 284
    move-result v11

    .line 287
    if-lt v11, v14, :cond_12

    .line 288
    goto :goto_7

    .line 290
    :cond_12
    new-instance v11, Ljava/lang/StringBuilder;

    .line 291
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v10, "00"

    .line 299
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    move-result-object v10

    .line 307
    :goto_7
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 308
    move-result v11

    .line 311
    add-int/2addr v4, v11

    .line 312
    const-string v11, "+0000"

    .line 313
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    move-result v11

    .line 318
    if-nez v11, :cond_e

    .line 319
    const-string v11, "+00:00"

    .line 321
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    move-result v11

    .line 326
    if-eqz v11, :cond_13

    .line 327
    goto :goto_5

    .line 329
    :cond_13
    new-instance v11, Ljava/lang/StringBuilder;

    .line 330
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    const-string v13, "GMT"

    .line 335
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    move-result-object v10

    .line 346
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 347
    move-result-object v16

    .line 350
    invoke-virtual/range {v16 .. v16}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 351
    move-result-object v11

    .line 354
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    move-result v13

    .line 358
    if-nez v13, :cond_e

    .line 359
    const-string v13, ":"

    .line 361
    const-string v14, ""

    .line 363
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 365
    move-result-object v11

    .line 368
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    move-result v11

    .line 372
    if-eqz v11, :cond_14

    .line 373
    goto/16 :goto_5

    .line 375
    :cond_14
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    .line 379
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    const-string v4, "Mismatching time zone indicator: "

    .line 384
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v4, " given, resolves to "

    .line 392
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual/range {v16 .. v16}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 397
    move-result-object v4

    .line 400
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    move-result-object v3

    .line 407
    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 408
    throw v0

    .line 411
    :goto_8
    new-instance v11, Ljava/util/GregorianCalendar;

    .line 412
    invoke-direct {v11, v10}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 414
    const/4 v10, 0x0

    .line 417
    invoke-virtual {v11, v10}, Ljava/util/Calendar;->setLenient(Z)V

    .line 418
    invoke-virtual {v11, v9, v0}, Ljava/util/Calendar;->set(II)V

    .line 421
    sub-int/2addr v3, v9

    .line 424
    invoke-virtual {v11, v8, v3}, Ljava/util/Calendar;->set(II)V

    .line 425
    const/4 v0, 0x5

    .line 428
    invoke-virtual {v11, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 429
    const/16 v0, 0xb

    .line 432
    invoke-virtual {v11, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 434
    const/16 v0, 0xc

    .line 437
    invoke-virtual {v11, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 439
    const/16 v0, 0xd

    .line 442
    invoke-virtual {v11, v0, v12}, Ljava/util/Calendar;->set(II)V

    .line 444
    const/16 v0, 0xe

    .line 447
    invoke-virtual {v11, v0, v15}, Ljava/util/Calendar;->set(II)V

    .line 449
    invoke-virtual {v2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 452
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 455
    move-result-object v0

    .line 458
    return-object v0

    .line 459
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 460
    const-string v3, "No time zone indicator"

    .line 462
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 464
    throw v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    if-nez v1, :cond_16

    .line 469
    const/4 v1, 0x0

    .line 471
    goto :goto_9

    .line 472
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 473
    const-string v4, "\""

    .line 475
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const/16 v1, 0x22

    .line 483
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    move-result-object v1

    .line 491
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 492
    move-result-object v3

    .line 495
    if-eqz v3, :cond_17

    .line 496
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 498
    move-result v4

    .line 501
    if-eqz v4, :cond_18

    .line 502
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 504
    const-string v4, "("

    .line 506
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    move-result-object v4

    .line 514
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 515
    move-result-object v4

    .line 518
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const-string v4, ")"

    .line 522
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    move-result-object v3

    .line 530
    :cond_18
    new-instance v4, Ljava/text/ParseException;

    .line 531
    const-string v5, "Failed to parse date ["

    .line 533
    const-string v6, "]: "

    .line 535
    invoke-static {v5, v1, v6, v3}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 537
    move-result-object v1

    .line 540
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    .line 541
    move-result v2

    .line 544
    invoke-direct {v4, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 545
    invoke-virtual {v4, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 548
    throw v4
    .line 551
.end method

.method public static parseInt(IILjava/lang/String;)I
    .locals 5

    .line 1
    if-ltz p0, :cond_4

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 7
    if-gt p1, v0, :cond_4

    .line 8
    if-gt p0, p1, :cond_4

    .line 10
    const-string v0, "Invalid number: "

    .line 12
    const/16 v1, 0xa

    .line 14
    if-ge p0, p1, :cond_1

    .line 16
    add-int/lit8 v2, p0, 0x1

    .line 18
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    .line 20
    move-result v3

    .line 23
    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    .line 24
    move-result v3

    .line 27
    if-ltz v3, :cond_0

    .line 28
    neg-int v3, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v1

    .line 53
    :cond_1
    const/4 v3, 0x0

    .line 54
    move v2, p0

    .line 55
    :goto_0
    if-ge v2, p1, :cond_3

    .line 56
    add-int/lit8 v4, v2, 0x1

    .line 58
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    .line 60
    move-result v2

    .line 63
    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    .line 64
    move-result v2

    .line 67
    if-ltz v2, :cond_2

    .line 68
    mul-int/lit8 v3, v3, 0xa

    .line 70
    sub-int/2addr v3, v2

    .line 72
    move v2, v4

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 85
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 92
    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 93
    throw v1

    .line 96
    :cond_3
    neg-int p0, v3

    .line 97
    return p0

    .line 98
    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 99
    invoke-direct {p0, p2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 101
    throw p0
    .line 104
.end method
