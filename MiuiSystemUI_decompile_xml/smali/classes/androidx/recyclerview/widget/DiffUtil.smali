.class public abstract Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DIAGONAL_COMPARATOR:Landroidx/recyclerview/widget/DiffUtil$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    .line 2
    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    .line 4
    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Landroidx/recyclerview/widget/DiffUtil$1;

    .line 7
    return-void
    .line 9
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    .line 4
    move-result v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    .line 8
    move-result v2

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v4, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 22
    invoke-direct {v5, v1, v2}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(II)V

    .line 24
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/2addr v1, v2

    .line 30
    const/4 v2, 0x1

    .line 31
    add-int/2addr v1, v2

    .line 32
    div-int/lit8 v1, v1, 0x2

    .line 33
    mul-int/lit8 v1, v1, 0x2

    .line 35
    add-int/2addr v1, v2

    .line 37
    new-array v5, v1, [I

    .line 38
    div-int/lit8 v6, v1, 0x2

    .line 40
    new-array v1, v1, [I

    .line 42
    new-instance v7, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    move-result v8

    .line 52
    if-nez v8, :cond_1e

    .line 53
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result v8

    .line 58
    sub-int/2addr v8, v2

    .line 59
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    move-result-object v8

    .line 63
    check-cast v8, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 64
    iget v9, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 66
    iget v10, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 68
    sub-int v11, v9, v10

    .line 70
    if-lt v11, v2, :cond_15

    .line 72
    iget v14, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 74
    iget v15, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 76
    sub-int/2addr v14, v15

    .line 78
    if-ge v14, v2, :cond_0

    .line 79
    goto/16 :goto_11

    .line 81
    :cond_0
    add-int/2addr v14, v11

    .line 83
    add-int/2addr v14, v2

    .line 84
    div-int/lit8 v14, v14, 0x2

    .line 85
    add-int v11, v2, v6

    .line 87
    aput v10, v5, v11

    .line 89
    aput v9, v1, v11

    .line 91
    const/4 v9, 0x0

    .line 93
    :goto_1
    if-ge v9, v14, :cond_15

    .line 94
    iget v10, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 96
    iget v11, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 98
    sub-int/2addr v10, v11

    .line 100
    iget v11, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 101
    iget v15, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 103
    sub-int/2addr v11, v15

    .line 105
    sub-int/2addr v10, v11

    .line 106
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 107
    move-result v10

    .line 110
    rem-int/lit8 v10, v10, 0x2

    .line 111
    if-ne v10, v2, :cond_1

    .line 113
    move v10, v2

    .line 115
    goto :goto_2

    .line 116
    :cond_1
    const/4 v10, 0x0

    .line 117
    :goto_2
    iget v11, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 118
    iget v15, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 120
    sub-int/2addr v11, v15

    .line 122
    iget v15, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 123
    iget v12, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 125
    sub-int/2addr v15, v12

    .line 127
    sub-int/2addr v11, v15

    .line 128
    neg-int v12, v9

    .line 129
    move v15, v12

    .line 130
    :goto_3
    if-gt v15, v9, :cond_9

    .line 131
    if-eq v15, v12, :cond_3

    .line 133
    if-eq v15, v9, :cond_2

    .line 135
    add-int/lit8 v16, v15, 0x1

    .line 137
    add-int v16, v16, v6

    .line 139
    aget v2, v5, v16

    .line 141
    add-int/lit8 v16, v15, -0x1

    .line 143
    add-int v16, v16, v6

    .line 145
    aget v13, v5, v16

    .line 147
    if-le v2, v13, :cond_2

    .line 149
    goto :goto_4

    .line 151
    :cond_2
    add-int/lit8 v2, v15, -0x1

    .line 152
    add-int/2addr v2, v6

    .line 154
    aget v2, v5, v2

    .line 155
    add-int/lit8 v13, v2, 0x1

    .line 157
    goto :goto_5

    .line 159
    :cond_3
    :goto_4
    add-int/lit8 v2, v15, 0x1

    .line 160
    add-int/2addr v2, v6

    .line 162
    aget v2, v5, v2

    .line 163
    move v13, v2

    .line 165
    :goto_5
    move/from16 v16, v14

    .line 166
    iget v14, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 168
    move-object/from16 v17, v4

    .line 170
    iget v4, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 172
    sub-int v4, v13, v4

    .line 174
    add-int/2addr v4, v14

    .line 176
    sub-int/2addr v4, v15

    .line 177
    if-eqz v9, :cond_5

    .line 178
    if-eq v13, v2, :cond_4

    .line 180
    goto :goto_6

    .line 182
    :cond_4
    add-int/lit8 v14, v4, -0x1

    .line 183
    goto :goto_7

    .line 185
    :cond_5
    :goto_6
    move v14, v4

    .line 186
    :goto_7
    move-object/from16 v18, v7

    .line 187
    :goto_8
    iget v7, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 189
    if-ge v13, v7, :cond_6

    .line 191
    iget v7, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 193
    if-ge v4, v7, :cond_6

    .line 195
    invoke-virtual {v0, v13, v4}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    .line 197
    move-result v7

    .line 200
    if-eqz v7, :cond_6

    .line 201
    add-int/lit8 v13, v13, 0x1

    .line 203
    add-int/lit8 v4, v4, 0x1

    .line 205
    goto :goto_8

    .line 207
    :cond_6
    add-int v7, v15, v6

    .line 208
    aput v13, v5, v7

    .line 210
    if-eqz v10, :cond_7

    .line 212
    sub-int v7, v11, v15

    .line 214
    move/from16 v19, v10

    .line 216
    add-int/lit8 v10, v12, 0x1

    .line 218
    if-lt v7, v10, :cond_8

    .line 220
    add-int/lit8 v10, v9, -0x1

    .line 222
    if-gt v7, v10, :cond_8

    .line 224
    add-int/2addr v7, v6

    .line 226
    aget v7, v1, v7

    .line 227
    if-gt v7, v13, :cond_8

    .line 229
    new-instance v7, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 231
    invoke-direct {v7}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 233
    iput v2, v7, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 236
    iput v14, v7, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 238
    iput v13, v7, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 240
    iput v4, v7, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 242
    const/4 v2, 0x0

    .line 244
    iput-boolean v2, v7, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 245
    goto :goto_9

    .line 247
    :cond_7
    move/from16 v19, v10

    .line 248
    :cond_8
    const/4 v2, 0x0

    .line 250
    add-int/lit8 v15, v15, 0x2

    .line 251
    move/from16 v14, v16

    .line 253
    move-object/from16 v4, v17

    .line 255
    move-object/from16 v7, v18

    .line 257
    move/from16 v10, v19

    .line 259
    const/4 v2, 0x1

    .line 261
    goto/16 :goto_3

    .line 262
    :cond_9
    move-object/from16 v17, v4

    .line 264
    move-object/from16 v18, v7

    .line 266
    move/from16 v16, v14

    .line 268
    const/4 v2, 0x0

    .line 270
    const/4 v7, 0x0

    .line 271
    :goto_9
    if-eqz v7, :cond_a

    .line 272
    move-object v12, v7

    .line 274
    move-object/from16 v19, v8

    .line 275
    goto/16 :goto_12

    .line 277
    :cond_a
    iget v4, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 279
    iget v7, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 281
    sub-int/2addr v4, v7

    .line 283
    iget v7, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 284
    iget v10, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 286
    sub-int/2addr v7, v10

    .line 288
    sub-int/2addr v4, v7

    .line 289
    rem-int/lit8 v7, v4, 0x2

    .line 290
    if-nez v7, :cond_b

    .line 292
    const/4 v7, 0x1

    .line 294
    goto :goto_a

    .line 295
    :cond_b
    move v7, v2

    .line 296
    :goto_a
    move v10, v12

    .line 297
    :goto_b
    if-gt v10, v9, :cond_13

    .line 298
    if-eq v10, v12, :cond_d

    .line 300
    if-eq v10, v9, :cond_c

    .line 302
    add-int/lit8 v11, v10, 0x1

    .line 304
    add-int/2addr v11, v6

    .line 306
    aget v11, v1, v11

    .line 307
    add-int/lit8 v13, v10, -0x1

    .line 309
    add-int/2addr v13, v6

    .line 311
    aget v13, v1, v13

    .line 312
    if-ge v11, v13, :cond_c

    .line 314
    goto :goto_c

    .line 316
    :cond_c
    add-int/lit8 v11, v10, -0x1

    .line 317
    add-int/2addr v11, v6

    .line 319
    aget v11, v1, v11

    .line 320
    add-int/lit8 v13, v11, -0x1

    .line 322
    goto :goto_d

    .line 324
    :cond_d
    :goto_c
    add-int/lit8 v11, v10, 0x1

    .line 325
    add-int/2addr v11, v6

    .line 327
    aget v11, v1, v11

    .line 328
    move v13, v11

    .line 330
    :goto_d
    iget v14, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 331
    iget v15, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 333
    sub-int/2addr v15, v13

    .line 335
    sub-int/2addr v15, v10

    .line 336
    sub-int/2addr v14, v15

    .line 337
    if-eqz v9, :cond_f

    .line 338
    if-eq v13, v11, :cond_e

    .line 340
    goto :goto_e

    .line 342
    :cond_e
    add-int/lit8 v15, v14, 0x1

    .line 343
    goto :goto_f

    .line 345
    :cond_f
    :goto_e
    move v15, v14

    .line 346
    :goto_f
    iget v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 347
    if-le v13, v2, :cond_10

    .line 349
    iget v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 351
    if-le v14, v2, :cond_10

    .line 353
    add-int/lit8 v2, v13, -0x1

    .line 355
    move-object/from16 v19, v8

    .line 357
    add-int/lit8 v8, v14, -0x1

    .line 359
    invoke-virtual {v0, v2, v8}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    .line 361
    move-result v20

    .line 364
    if-eqz v20, :cond_11

    .line 365
    move v13, v2

    .line 367
    move v14, v8

    .line 368
    move-object/from16 v8, v19

    .line 369
    goto :goto_f

    .line 371
    :cond_10
    move-object/from16 v19, v8

    .line 372
    :cond_11
    add-int v2, v10, v6

    .line 374
    aput v13, v1, v2

    .line 376
    if-eqz v7, :cond_12

    .line 378
    sub-int v2, v4, v10

    .line 380
    if-lt v2, v12, :cond_12

    .line 382
    if-gt v2, v9, :cond_12

    .line 384
    add-int/2addr v2, v6

    .line 386
    aget v2, v5, v2

    .line 387
    if-lt v2, v13, :cond_12

    .line 389
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 391
    invoke-direct {v2}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 393
    iput v13, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 396
    iput v14, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 398
    iput v11, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 400
    iput v15, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 402
    const/4 v4, 0x1

    .line 404
    iput-boolean v4, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 405
    goto :goto_10

    .line 407
    :cond_12
    add-int/lit8 v10, v10, 0x2

    .line 408
    move-object/from16 v8, v19

    .line 410
    const/4 v2, 0x0

    .line 412
    goto :goto_b

    .line 413
    :cond_13
    move-object/from16 v19, v8

    .line 414
    const/4 v2, 0x0

    .line 416
    :goto_10
    if-eqz v2, :cond_14

    .line 417
    move-object v12, v2

    .line 419
    goto :goto_12

    .line 420
    :cond_14
    add-int/lit8 v9, v9, 0x1

    .line 421
    move/from16 v14, v16

    .line 423
    move-object/from16 v4, v17

    .line 425
    move-object/from16 v7, v18

    .line 427
    move-object/from16 v8, v19

    .line 429
    const/4 v2, 0x1

    .line 431
    goto/16 :goto_1

    .line 432
    :cond_15
    :goto_11
    move-object/from16 v17, v4

    .line 434
    move-object/from16 v18, v7

    .line 436
    move-object/from16 v19, v8

    .line 438
    const/4 v12, 0x0

    .line 440
    :goto_12
    if-eqz v12, :cond_1d

    .line 441
    invoke-virtual {v12}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    .line 443
    move-result v2

    .line 446
    if-lez v2, :cond_1b

    .line 447
    iget v2, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 449
    iget v4, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 451
    sub-int/2addr v2, v4

    .line 453
    iget v7, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 454
    iget v8, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 456
    sub-int/2addr v7, v8

    .line 458
    if-eq v2, v7, :cond_16

    .line 459
    const/4 v9, 0x1

    .line 461
    goto :goto_13

    .line 462
    :cond_16
    const/4 v9, 0x0

    .line 463
    :goto_13
    if-eqz v9, :cond_1a

    .line 464
    iget-boolean v9, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 466
    if-eqz v9, :cond_17

    .line 468
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 470
    invoke-virtual {v12}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    .line 472
    move-result v7

    .line 475
    invoke-direct {v2, v8, v4, v7}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 476
    goto :goto_15

    .line 479
    :cond_17
    if-le v2, v7, :cond_18

    .line 480
    const/4 v13, 0x1

    .line 482
    goto :goto_14

    .line 483
    :cond_18
    const/4 v13, 0x0

    .line 484
    :goto_14
    if-eqz v13, :cond_19

    .line 485
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 487
    add-int/lit8 v4, v4, 0x1

    .line 489
    invoke-virtual {v12}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    .line 491
    move-result v7

    .line 494
    invoke-direct {v2, v8, v4, v7}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 495
    goto :goto_15

    .line 498
    :cond_19
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 499
    add-int/lit8 v8, v8, 0x1

    .line 501
    invoke-virtual {v12}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    .line 503
    move-result v7

    .line 506
    invoke-direct {v2, v8, v4, v7}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 507
    goto :goto_15

    .line 510
    :cond_1a
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 511
    invoke-direct {v2, v8, v4, v7}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 513
    :goto_15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_1b
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    .line 519
    move-result v2

    .line 522
    if-eqz v2, :cond_1c

    .line 523
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 525
    invoke-direct {v2}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    .line 527
    move-object/from16 v7, v18

    .line 530
    move-object/from16 v8, v19

    .line 532
    const/4 v4, 0x1

    .line 534
    goto :goto_16

    .line 535
    :cond_1c
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    .line 536
    move-result v2

    .line 539
    const/4 v4, 0x1

    .line 540
    sub-int/2addr v2, v4

    .line 541
    move-object/from16 v7, v18

    .line 542
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 544
    move-result-object v2

    .line 547
    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 548
    move-object/from16 v8, v19

    .line 550
    :goto_16
    iget v9, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 552
    iput v9, v2, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 554
    iget v9, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 556
    iput v9, v2, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 558
    iget v9, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 560
    iput v9, v2, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 562
    iget v9, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 564
    iput v9, v2, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 566
    move-object/from16 v9, v17

    .line 568
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    iget v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 573
    iput v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 575
    iget v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 577
    iput v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 579
    iget v2, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 581
    iput v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 583
    iget v2, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 585
    iput v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 587
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    goto :goto_17

    .line 592
    :cond_1d
    move-object/from16 v9, v17

    .line 593
    move-object/from16 v7, v18

    .line 595
    move-object/from16 v8, v19

    .line 597
    const/4 v4, 0x1

    .line 599
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    :goto_17
    move v2, v4

    .line 603
    move-object v4, v9

    .line 604
    goto/16 :goto_0

    .line 605
    :cond_1e
    sget-object v2, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Landroidx/recyclerview/widget/DiffUtil$1;

    .line 607
    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 609
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 612
    invoke-direct {v2, v0, v3, v5, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[I)V

    .line 614
    return-object v2
    .line 617
.end method
