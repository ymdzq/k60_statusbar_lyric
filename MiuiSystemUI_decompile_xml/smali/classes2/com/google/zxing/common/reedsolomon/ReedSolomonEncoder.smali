.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final cachedGenerators:Ljava/util/List;

.field public final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    .line 12
    new-instance p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 14
    const/4 v1, 0x1

    .line 16
    filled-new-array {v1}, [I

    .line 17
    move-result-object v1

    .line 20
    invoke-direct {p0, p1, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 21
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
    .line 27
.end method


# virtual methods
.method public final encode(I[I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    if-eqz v1, :cond_1e

    .line 8
    array-length v3, v2

    .line 10
    sub-int/2addr v3, v1

    .line 11
    if-lez v3, :cond_1d

    .line 12
    iget-object v4, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    .line 14
    check-cast v4, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v5

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x1

    .line 23
    const-string v8, "GenericGFPolys do not have same GenericGF field"

    .line 24
    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 26
    if-lt v1, v5, :cond_a

    .line 28
    invoke-static {v4, v7}, Landroidx/appcompat/view/menu/CascadingMenuPopup$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 33
    check-cast v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 34
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v9

    .line 39
    :goto_0
    if-gt v9, v1, :cond_a

    .line 40
    add-int/lit8 v10, v9, -0x1

    .line 42
    iget v11, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->generatorBase:I

    .line 44
    add-int/2addr v10, v11

    .line 46
    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 47
    iget-object v11, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 50
    aget v10, v11, v10

    .line 52
    filled-new-array {v7, v10}, [I

    .line 54
    move-result-object v10

    .line 57
    aget v11, v10, v6

    .line 58
    if-nez v11, :cond_2

    .line 60
    move v11, v7

    .line 62
    :goto_1
    const/4 v12, 0x2

    .line 63
    if-ge v11, v12, :cond_0

    .line 64
    aget v13, v10, v11

    .line 66
    if-nez v13, :cond_0

    .line 68
    add-int/lit8 v11, v11, 0x1

    .line 70
    goto :goto_1

    .line 72
    :cond_0
    if-ne v11, v12, :cond_1

    .line 73
    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 75
    iget-object v10, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 78
    iget-object v10, v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 80
    goto :goto_2

    .line 82
    :cond_1
    rsub-int/lit8 v12, v11, 0x2

    .line 83
    new-array v13, v12, [I

    .line 85
    invoke-static {v10, v11, v13, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    move-object v10, v13

    .line 90
    :cond_2
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    iget-object v11, v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 94
    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v12

    .line 99
    if-eqz v12, :cond_9

    .line 100
    iget-object v5, v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 102
    aget v12, v5, v6

    .line 104
    if-nez v12, :cond_3

    .line 106
    move v12, v7

    .line 108
    goto :goto_3

    .line 109
    :cond_3
    move v12, v6

    .line 110
    :goto_3
    if-nez v12, :cond_8

    .line 111
    aget v12, v10, v6

    .line 113
    if-nez v12, :cond_4

    .line 115
    goto :goto_4

    .line 117
    :cond_4
    move v7, v6

    .line 118
    :goto_4
    if-eqz v7, :cond_5

    .line 119
    goto :goto_7

    .line 121
    :cond_5
    array-length v7, v5

    .line 122
    array-length v12, v10

    .line 123
    add-int v13, v7, v12

    .line 124
    add-int/lit8 v13, v13, -0x1

    .line 126
    new-array v13, v13, [I

    .line 128
    move v14, v6

    .line 130
    :goto_5
    if-ge v6, v7, :cond_7

    .line 131
    aget v15, v5, v6

    .line 133
    :goto_6
    if-ge v14, v12, :cond_6

    .line 135
    add-int v16, v6, v14

    .line 137
    aget v17, v13, v16

    .line 139
    move-object/from16 p0, v5

    .line 141
    aget v5, v10, v14

    .line 143
    invoke-virtual {v11, v15, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 145
    move-result v5

    .line 148
    xor-int v5, v17, v5

    .line 149
    aput v5, v13, v16

    .line 151
    add-int/lit8 v14, v14, 0x1

    .line 153
    move-object/from16 v5, p0

    .line 155
    goto :goto_6

    .line 157
    :cond_6
    move-object/from16 p0, v5

    .line 158
    add-int/lit8 v6, v6, 0x1

    .line 160
    const/4 v14, 0x0

    .line 162
    goto :goto_5

    .line 163
    :cond_7
    new-instance v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 164
    invoke-direct {v5, v11, v13}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 166
    goto :goto_8

    .line 169
    :cond_8
    :goto_7
    invoke-virtual {v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 170
    iget-object v5, v11, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 173
    :goto_8
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v9, v9, 0x1

    .line 178
    const/4 v6, 0x0

    .line 180
    const/4 v7, 0x1

    .line 181
    goto/16 :goto_0

    .line 182
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 184
    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 186
    throw v0

    .line 189
    :cond_a
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    move-result-object v4

    .line 193
    check-cast v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 194
    new-array v5, v3, [I

    .line 196
    const/4 v6, 0x0

    .line 198
    invoke-static {v2, v6, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    if-eqz v3, :cond_1c

    .line 202
    const/4 v7, 0x1

    .line 204
    if-le v3, v7, :cond_d

    .line 205
    aget v6, v5, v6

    .line 207
    if-nez v6, :cond_d

    .line 209
    const/4 v6, 0x1

    .line 211
    :goto_9
    if-ge v6, v3, :cond_b

    .line 212
    aget v7, v5, v6

    .line 214
    if-nez v7, :cond_b

    .line 216
    add-int/lit8 v6, v6, 0x1

    .line 218
    goto :goto_9

    .line 220
    :cond_b
    if-ne v6, v3, :cond_c

    .line 221
    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 223
    iget-object v5, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 226
    iget-object v5, v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 228
    goto :goto_a

    .line 230
    :cond_c
    sub-int v7, v3, v6

    .line 231
    new-array v9, v7, [I

    .line 233
    const/4 v10, 0x0

    .line 235
    invoke-static {v5, v6, v9, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    move-object v5, v9

    .line 239
    :cond_d
    :goto_a
    if-ltz v1, :cond_1b

    .line 240
    array-length v6, v5

    .line 242
    add-int v7, v1, v6

    .line 243
    new-array v7, v7, [I

    .line 245
    const/4 v9, 0x0

    .line 247
    :goto_b
    if-ge v9, v6, :cond_e

    .line 248
    aget v10, v5, v9

    .line 250
    const/4 v11, 0x1

    .line 252
    invoke-virtual {v0, v10, v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 253
    move-result v10

    .line 256
    aput v10, v7, v9

    .line 257
    add-int/lit8 v9, v9, 0x1

    .line 259
    goto :goto_b

    .line 261
    :cond_e
    new-instance v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 262
    invoke-direct {v5, v0, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 264
    iget-object v6, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 267
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 269
    move-result v6

    .line 272
    if-eqz v6, :cond_1a

    .line 273
    iget-object v6, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 275
    const/4 v7, 0x0

    .line 277
    aget v7, v6, v7

    .line 278
    if-nez v7, :cond_f

    .line 280
    const/4 v7, 0x1

    .line 282
    goto :goto_c

    .line 283
    :cond_f
    const/4 v7, 0x0

    .line 284
    :goto_c
    if-nez v7, :cond_19

    .line 285
    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 287
    iget-object v7, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 290
    array-length v8, v6

    .line 292
    add-int/lit8 v8, v8, -0x1

    .line 293
    array-length v9, v6

    .line 295
    add-int/lit8 v9, v9, -0x1

    .line 296
    sub-int/2addr v9, v8

    .line 298
    aget v8, v6, v9

    .line 299
    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 301
    if-eqz v8, :cond_18

    .line 304
    iget-object v9, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 306
    iget-object v10, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 308
    aget v8, v10, v8

    .line 310
    iget v10, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 312
    sub-int/2addr v10, v8

    .line 314
    add-int/lit8 v10, v10, -0x1

    .line 315
    aget v8, v9, v10

    .line 317
    :goto_d
    iget-object v9, v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 319
    array-length v10, v9

    .line 321
    add-int/lit8 v10, v10, -0x1

    .line 322
    array-length v11, v6

    .line 324
    add-int/lit8 v11, v11, -0x1

    .line 325
    if-lt v10, v11, :cond_16

    .line 327
    const/4 v10, 0x0

    .line 329
    aget v10, v9, v10

    .line 330
    if-nez v10, :cond_10

    .line 332
    const/4 v10, 0x1

    .line 334
    goto :goto_e

    .line 335
    :cond_10
    const/4 v10, 0x0

    .line 336
    :goto_e
    if-nez v10, :cond_16

    .line 337
    array-length v10, v9

    .line 339
    add-int/lit8 v10, v10, -0x1

    .line 340
    array-length v11, v6

    .line 342
    add-int/lit8 v11, v11, -0x1

    .line 343
    sub-int/2addr v10, v11

    .line 345
    array-length v11, v9

    .line 346
    add-int/lit8 v11, v11, -0x1

    .line 347
    array-length v12, v9

    .line 349
    add-int/lit8 v12, v12, -0x1

    .line 350
    sub-int/2addr v12, v11

    .line 352
    aget v9, v9, v12

    .line 353
    invoke-virtual {v0, v9, v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 355
    move-result v9

    .line 358
    if-ltz v10, :cond_15

    .line 359
    iget-object v11, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 361
    if-nez v9, :cond_11

    .line 363
    invoke-virtual {v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 365
    iget-object v11, v11, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 368
    goto :goto_10

    .line 370
    :cond_11
    array-length v12, v6

    .line 371
    add-int v13, v10, v12

    .line 372
    new-array v13, v13, [I

    .line 374
    const/4 v14, 0x0

    .line 376
    :goto_f
    if-ge v14, v12, :cond_12

    .line 377
    aget v15, v6, v14

    .line 379
    invoke-virtual {v11, v15, v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 381
    move-result v15

    .line 384
    aput v15, v13, v14

    .line 385
    add-int/lit8 v14, v14, 0x1

    .line 387
    goto :goto_f

    .line 389
    :cond_12
    new-instance v12, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 390
    invoke-direct {v12, v11, v13}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 392
    move-object v11, v12

    .line 395
    :goto_10
    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 396
    if-ltz v10, :cond_14

    .line 399
    if-nez v9, :cond_13

    .line 401
    iget-object v9, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 403
    goto :goto_11

    .line 405
    :cond_13
    add-int/lit8 v10, v10, 0x1

    .line 406
    new-array v10, v10, [I

    .line 408
    const/4 v12, 0x0

    .line 410
    aput v9, v10, v12

    .line 411
    new-instance v9, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 413
    invoke-direct {v9, v0, v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 415
    :goto_11
    invoke-virtual {v7, v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 418
    move-result-object v7

    .line 421
    invoke-virtual {v5, v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 422
    move-result-object v5

    .line 425
    goto :goto_d

    .line 426
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 427
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 429
    throw v0

    .line 432
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 433
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 435
    throw v0

    .line 438
    :cond_16
    filled-new-array {v7, v5}, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 439
    move-result-object v0

    .line 442
    const/4 v4, 0x1

    .line 443
    aget-object v0, v0, v4

    .line 444
    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 446
    array-length v4, v0

    .line 448
    sub-int/2addr v1, v4

    .line 449
    const/4 v4, 0x0

    .line 450
    :goto_12
    if-ge v4, v1, :cond_17

    .line 451
    add-int v5, v3, v4

    .line 453
    const/4 v6, 0x0

    .line 455
    aput v6, v2, v5

    .line 456
    add-int/lit8 v4, v4, 0x1

    .line 458
    goto :goto_12

    .line 460
    :cond_17
    const/4 v4, 0x0

    .line 461
    add-int/2addr v3, v1

    .line 462
    array-length v1, v0

    .line 463
    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    return-void

    .line 467
    :cond_18
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 468
    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    .line 470
    throw v0

    .line 473
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 474
    const-string v1, "Divide by 0"

    .line 476
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 478
    throw v0

    .line 481
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 482
    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 484
    throw v0

    .line 487
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 488
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 490
    throw v0

    .line 493
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 494
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 496
    throw v0

    .line 499
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 500
    const-string v1, "No data bytes provided"

    .line 502
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 504
    throw v0

    .line 507
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 508
    const-string v1, "No error correction bytes"

    .line 510
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 512
    throw v0
    .line 515
.end method
