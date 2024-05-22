.class public abstract Lcom/google/protobuf/Utf8$Processor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static isNotTrailingByte(B)Z
    .locals 1

    .line 1
    const/16 v0, -0x41

    .line 2
    if-le p0, v0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method


# virtual methods
.method public isValidUtf8([BII)Z
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    move/from16 v1, p2

    .line 4
    move/from16 v2, p3

    .line 6
    move-object/from16 v3, p0

    .line 8
    check-cast v3, Lcom/google/protobuf/Utf8$SafeProcessor;

    .line 10
    const/16 v5, -0x10

    .line 12
    const/16 v6, -0x60

    .line 14
    iget v3, v3, Lcom/google/protobuf/Utf8$SafeProcessor;->$r8$classId:I

    .line 16
    const/16 v7, -0x20

    .line 18
    const/16 v8, -0x3e

    .line 20
    const/16 v9, -0x13

    .line 22
    const/16 v10, -0x41

    .line 24
    packed-switch v3, :pswitch_data_0

    .line 26
    goto/16 :goto_2

    .line 29
    :goto_0
    :pswitch_0
    if-ge v1, v2, :cond_0

    .line 31
    aget-byte v3, v0, v1

    .line 33
    if-ltz v3, :cond_0

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 39
    :cond_0
    if-lt v1, v2, :cond_1

    .line 40
    goto/16 :goto_9

    .line 42
    :cond_1
    :goto_1
    if-lt v1, v2, :cond_2

    .line 44
    goto/16 :goto_9

    .line 46
    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 48
    aget-byte v1, v0, v1

    .line 50
    if-gez v1, :cond_a

    .line 52
    if-ge v1, v7, :cond_4

    .line 54
    if-lt v3, v2, :cond_3

    .line 56
    goto/16 :goto_b

    .line 58
    :cond_3
    if-lt v1, v8, :cond_1f

    .line 60
    add-int/lit8 v1, v3, 0x1

    .line 62
    aget-byte v3, v0, v3

    .line 64
    if-le v3, v10, :cond_1

    .line 66
    goto/16 :goto_a

    .line 68
    :cond_4
    if-ge v1, v5, :cond_8

    .line 70
    add-int/lit8 v11, v2, -0x1

    .line 72
    if-lt v3, v11, :cond_5

    .line 74
    invoke-static {v0, v3, v2}, Lcom/google/protobuf/Utf8;->access$1100([BII)I

    .line 76
    move-result v1

    .line 79
    goto/16 :goto_b

    .line 80
    :cond_5
    add-int/lit8 v11, v3, 0x1

    .line 82
    aget-byte v3, v0, v3

    .line 84
    if-gt v3, v10, :cond_1f

    .line 86
    if-ne v1, v7, :cond_6

    .line 88
    if-lt v3, v6, :cond_1f

    .line 90
    :cond_6
    if-ne v1, v9, :cond_7

    .line 92
    if-ge v3, v6, :cond_1f

    .line 94
    :cond_7
    add-int/lit8 v1, v11, 0x1

    .line 96
    aget-byte v3, v0, v11

    .line 98
    if-le v3, v10, :cond_1

    .line 100
    goto/16 :goto_a

    .line 102
    :cond_8
    add-int/lit8 v11, v2, -0x2

    .line 104
    if-lt v3, v11, :cond_9

    .line 106
    invoke-static {v0, v3, v2}, Lcom/google/protobuf/Utf8;->access$1100([BII)I

    .line 108
    move-result v1

    .line 111
    goto/16 :goto_b

    .line 112
    :cond_9
    add-int/lit8 v11, v3, 0x1

    .line 114
    aget-byte v3, v0, v3

    .line 116
    if-gt v3, v10, :cond_1f

    .line 118
    shl-int/lit8 v1, v1, 0x1c

    .line 120
    add-int/lit8 v3, v3, 0x70

    .line 122
    add-int/2addr v3, v1

    .line 124
    shr-int/lit8 v1, v3, 0x1e

    .line 125
    if-nez v1, :cond_1f

    .line 127
    add-int/lit8 v1, v11, 0x1

    .line 129
    aget-byte v3, v0, v11

    .line 131
    if-gt v3, v10, :cond_1f

    .line 133
    add-int/lit8 v3, v1, 0x1

    .line 135
    aget-byte v1, v0, v1

    .line 137
    if-le v1, v10, :cond_a

    .line 139
    goto/16 :goto_a

    .line 141
    :cond_a
    move v1, v3

    .line 143
    goto :goto_1

    .line 144
    :goto_2
    or-int v3, v1, v2

    .line 145
    array-length v11, v0

    .line 147
    sub-int/2addr v11, v2

    .line 148
    or-int/2addr v3, v11

    .line 149
    if-ltz v3, :cond_21

    .line 150
    int-to-long v11, v1

    .line 152
    int-to-long v1, v2

    .line 153
    sub-long/2addr v1, v11

    .line 154
    long-to-int v1, v1

    .line 155
    const/16 v2, 0x10

    .line 156
    const-wide/16 v13, 0x1

    .line 158
    if-ge v1, v2, :cond_b

    .line 160
    const/4 v3, 0x0

    .line 162
    goto :goto_6

    .line 163
    :cond_b
    long-to-int v2, v11

    .line 164
    and-int/lit8 v2, v2, 0x7

    .line 165
    rsub-int/lit8 v2, v2, 0x8

    .line 167
    move-wide v4, v11

    .line 169
    const/4 v3, 0x0

    .line 170
    :goto_3
    if-ge v3, v2, :cond_d

    .line 171
    add-long v15, v4, v13

    .line 173
    invoke-static {v0, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 175
    move-result v4

    .line 178
    if-gez v4, :cond_c

    .line 179
    goto :goto_6

    .line 181
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 182
    move-wide v4, v15

    .line 184
    goto :goto_3

    .line 185
    :cond_d
    :goto_4
    add-int/lit8 v2, v3, 0x8

    .line 186
    if-gt v2, v1, :cond_f

    .line 188
    sget-wide v15, Lcom/google/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    .line 190
    add-long v9, v15, v4

    .line 192
    invoke-static {v0, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    .line 194
    move-result-wide v9

    .line 197
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 198
    and-long/2addr v9, v15

    .line 203
    const-wide/16 v15, 0x0

    .line 204
    cmp-long v9, v9, v15

    .line 206
    if-eqz v9, :cond_e

    .line 208
    goto :goto_5

    .line 210
    :cond_e
    const-wide/16 v9, 0x8

    .line 211
    add-long/2addr v4, v9

    .line 213
    move v3, v2

    .line 214
    const/16 v9, -0x13

    .line 215
    const/16 v10, -0x41

    .line 217
    goto :goto_4

    .line 219
    :cond_f
    :goto_5
    if-ge v3, v1, :cond_11

    .line 220
    add-long v9, v4, v13

    .line 222
    invoke-static {v0, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 224
    move-result v2

    .line 227
    if-gez v2, :cond_10

    .line 228
    goto :goto_6

    .line 230
    :cond_10
    add-int/lit8 v3, v3, 0x1

    .line 231
    move-wide v4, v9

    .line 233
    goto :goto_5

    .line 234
    :cond_11
    move v3, v1

    .line 235
    :goto_6
    sub-int/2addr v1, v3

    .line 236
    int-to-long v2, v3

    .line 237
    add-long/2addr v11, v2

    .line 238
    :cond_12
    :goto_7
    const/4 v2, 0x0

    .line 239
    :goto_8
    if-lez v1, :cond_14

    .line 240
    add-long v2, v11, v13

    .line 242
    invoke-static {v0, v11, v12}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 244
    move-result v4

    .line 247
    if-ltz v4, :cond_13

    .line 248
    add-int/lit8 v1, v1, -0x1

    .line 250
    move-wide v11, v2

    .line 252
    move v2, v4

    .line 253
    goto :goto_8

    .line 254
    :cond_13
    move-wide v11, v2

    .line 255
    move v2, v4

    .line 256
    :cond_14
    if-nez v1, :cond_15

    .line 257
    :goto_9
    const/4 v1, 0x0

    .line 259
    goto/16 :goto_b

    .line 260
    :cond_15
    add-int/lit8 v1, v1, -0x1

    .line 262
    if-ge v2, v7, :cond_18

    .line 264
    if-nez v1, :cond_16

    .line 266
    move v1, v2

    .line 268
    goto/16 :goto_b

    .line 269
    :cond_16
    add-int/lit8 v1, v1, -0x1

    .line 271
    if-lt v2, v8, :cond_1f

    .line 273
    add-long v2, v11, v13

    .line 275
    invoke-static {v0, v11, v12}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 277
    move-result v4

    .line 280
    const/16 v5, -0x41

    .line 281
    if-le v4, v5, :cond_17

    .line 283
    goto/16 :goto_a

    .line 285
    :cond_17
    move-wide v11, v2

    .line 287
    goto :goto_7

    .line 288
    :cond_18
    const/16 v3, -0x10

    .line 289
    if-ge v2, v3, :cond_1c

    .line 291
    const/4 v4, 0x2

    .line 293
    if-ge v1, v4, :cond_19

    .line 294
    invoke-static {v11, v12, v0, v2, v1}, Lcom/google/protobuf/Utf8$SafeProcessor;->unsafeIncompleteStateFor(J[BII)I

    .line 296
    move-result v1

    .line 299
    goto :goto_b

    .line 300
    :cond_19
    add-int/lit8 v1, v1, -0x2

    .line 301
    add-long v4, v11, v13

    .line 303
    invoke-static {v0, v11, v12}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 305
    move-result v9

    .line 308
    const/16 v10, -0x41

    .line 309
    if-gt v9, v10, :cond_1f

    .line 311
    if-ne v2, v7, :cond_1a

    .line 313
    if-lt v9, v6, :cond_1f

    .line 315
    :cond_1a
    const/16 v10, -0x13

    .line 317
    if-ne v2, v10, :cond_1b

    .line 319
    if-ge v9, v6, :cond_1f

    .line 321
    :cond_1b
    add-long v11, v4, v13

    .line 323
    invoke-static {v0, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 325
    move-result v2

    .line 328
    const/16 v4, -0x41

    .line 329
    if-le v2, v4, :cond_12

    .line 331
    goto :goto_a

    .line 333
    :cond_1c
    const/16 v10, -0x13

    .line 334
    const/4 v4, 0x3

    .line 336
    if-ge v1, v4, :cond_1d

    .line 337
    invoke-static {v11, v12, v0, v2, v1}, Lcom/google/protobuf/Utf8$SafeProcessor;->unsafeIncompleteStateFor(J[BII)I

    .line 339
    move-result v1

    .line 342
    goto :goto_b

    .line 343
    :cond_1d
    add-int/lit8 v1, v1, -0x3

    .line 344
    add-long v4, v11, v13

    .line 346
    invoke-static {v0, v11, v12}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 348
    move-result v9

    .line 351
    const/16 v11, -0x41

    .line 352
    if-gt v9, v11, :cond_1f

    .line 354
    shl-int/lit8 v2, v2, 0x1c

    .line 356
    add-int/lit8 v9, v9, 0x70

    .line 358
    add-int/2addr v9, v2

    .line 360
    shr-int/lit8 v2, v9, 0x1e

    .line 361
    if-nez v2, :cond_1f

    .line 363
    add-long v6, v4, v13

    .line 365
    invoke-static {v0, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 367
    move-result v2

    .line 370
    if-gt v2, v11, :cond_1f

    .line 371
    add-long v4, v6, v13

    .line 373
    invoke-static {v0, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 375
    move-result v2

    .line 378
    if-le v2, v11, :cond_1e

    .line 379
    goto :goto_a

    .line 381
    :cond_1e
    move-wide v11, v4

    .line 382
    const/16 v6, -0x60

    .line 383
    const/16 v7, -0x20

    .line 385
    goto/16 :goto_7

    .line 387
    :cond_1f
    :goto_a
    const/4 v1, -0x1

    .line 389
    :goto_b
    if-nez v1, :cond_20

    .line 390
    const/4 v4, 0x1

    .line 392
    goto :goto_c

    .line 393
    :cond_20
    const/4 v4, 0x0

    .line 394
    :goto_c
    return v4

    .line 395
    :cond_21
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 396
    array-length v0, v0

    .line 398
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 399
    move-result-object v0

    .line 402
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 403
    move-result-object v1

    .line 406
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 407
    move-result-object v2

    .line 410
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 411
    move-result-object v0

    .line 414
    const-string v1, "Array length=%d, index=%d, limit=%d"

    .line 415
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 417
    move-result-object v0

    .line 420
    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 421
    throw v3

    .line 424
    nop

    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 426
.end method
