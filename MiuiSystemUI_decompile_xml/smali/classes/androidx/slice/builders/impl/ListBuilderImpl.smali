.class public final Landroidx/slice/builders/impl/ListBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder;


# instance fields
.field public mFirstRowChecked:Z

.field public mFirstRowHasText:Z

.field public mIsFirstRowTypeValid:Z

.field public mSliceHeader:Landroidx/slice/Slice;


# virtual methods
.method public final addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    new-instance v2, Landroidx/slice/Slice$Builder;

    .line 6
    iget-object v3, v0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    .line 8
    invoke-direct {v2, v3}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget-object v4, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mUri:Landroid/net/Uri;

    .line 18
    if-eqz v4, :cond_0

    .line 20
    new-instance v2, Landroidx/slice/Slice$Builder;

    .line 22
    invoke-direct {v2, v4}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 24
    :cond_0
    iget-object v4, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    .line 27
    iget-object v5, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 29
    const/4 v6, 0x0

    .line 31
    if-nez v5, :cond_2

    .line 32
    iget-boolean v7, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    .line 34
    if-eqz v7, :cond_1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    move-object v8, v6

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    iget-boolean v7, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    .line 41
    new-instance v8, Landroidx/slice/SliceItem;

    .line 43
    const-string/jumbo v9, "title"

    .line 45
    filled-new-array {v9}, [Ljava/lang/String;

    .line 48
    move-result-object v9

    .line 51
    const-string/jumbo v10, "text"

    .line 52
    invoke-direct {v8, v5, v10, v6, v9}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    if-eqz v7, :cond_3

    .line 58
    invoke-virtual {v8}, Landroidx/slice/SliceItem;->addHint()V

    .line 60
    :cond_3
    :goto_1
    iget-object v5, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mContentDescription:Ljava/lang/CharSequence;

    .line 63
    if-eqz v5, :cond_4

    .line 65
    goto :goto_2

    .line 67
    :cond_4
    move-object v5, v6

    .line 68
    :goto_2
    iget-object v7, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndItems:Ljava/util/List;

    .line 69
    iget-object v9, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndTypes:Ljava/util/List;

    .line 71
    iget-object v1, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndLoads:Ljava/util/List;

    .line 73
    const/4 v11, 0x0

    .line 75
    :goto_3
    move-object v12, v7

    .line 76
    check-cast v12, Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 79
    move-result v13

    .line 82
    const/4 v14, 0x1

    .line 83
    if-ge v11, v13, :cond_12

    .line 84
    move-object v13, v9

    .line 86
    check-cast v13, Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v13

    .line 92
    check-cast v13, Ljava/lang/Integer;

    .line 93
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 95
    move-result v13

    .line 98
    const-string v15, "_gen"

    .line 99
    iget-object v10, v2, Landroidx/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    .line 101
    if-eqz v13, :cond_11

    .line 103
    const/4 v6, 0x2

    .line 105
    move-object/from16 v16, v7

    .line 106
    const-string v7, "partial"

    .line 108
    if-eq v13, v14, :cond_7

    .line 110
    if-eq v13, v6, :cond_5

    .line 112
    :goto_4
    move-object/from16 v17, v1

    .line 114
    move-object/from16 v19, v4

    .line 116
    move-object/from16 v18, v9

    .line 118
    goto/16 :goto_5

    .line 120
    :cond_5
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object v6

    .line 125
    check-cast v6, Landroidx/slice/builders/SliceAction;

    .line 126
    move-object v10, v1

    .line 128
    check-cast v10, Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    move-result-object v10

    .line 134
    check-cast v10, Ljava/lang/Boolean;

    .line 135
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    move-result v10

    .line 140
    new-instance v12, Landroidx/slice/Slice$Builder;

    .line 141
    invoke-direct {v12, v2}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 143
    if-eqz v10, :cond_6

    .line 146
    filled-new-array {v7}, [Ljava/lang/String;

    .line 148
    move-result-object v7

    .line 151
    invoke-virtual {v12, v7}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    .line 152
    :cond_6
    iget-object v6, v6, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    .line 155
    iget-object v7, v6, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    .line 157
    const-string v10, "Action must be non-null"

    .line 159
    invoke-static {v7, v10}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v10, "shortcut"

    .line 164
    filled-new-array {v10}, [Ljava/lang/String;

    .line 167
    move-result-object v10

    .line 170
    invoke-virtual {v12, v10}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    .line 171
    invoke-virtual {v6, v12}, Landroidx/slice/core/SliceActionImpl;->buildSliceContent(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice$Builder;

    .line 174
    move-result-object v10

    .line 177
    invoke-virtual {v10}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    .line 178
    move-result-object v10

    .line 181
    invoke-virtual {v6}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    .line 182
    move-result-object v6

    .line 185
    invoke-virtual {v12, v7, v10, v6}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v12}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    .line 189
    move-result-object v6

    .line 192
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    goto :goto_4

    .line 196
    :cond_7
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 197
    move-result-object v12

    .line 200
    check-cast v12, Landroidx/core/util/Pair;

    .line 201
    iget-object v13, v12, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    .line 203
    check-cast v13, Landroidx/core/graphics/drawable/IconCompat;

    .line 205
    iget-object v12, v12, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    .line 207
    check-cast v12, Ljava/lang/Integer;

    .line 209
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 211
    move-result v12

    .line 214
    move-object v14, v1

    .line 215
    check-cast v14, Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 218
    move-result-object v14

    .line 221
    check-cast v14, Ljava/lang/Boolean;

    .line 222
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 224
    move-result v14

    .line 227
    new-instance v6, Ljava/util/ArrayList;

    .line 228
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 230
    move-object/from16 v17, v1

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    .line 235
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 240
    move-result-object v10

    .line 243
    invoke-virtual {v10, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 244
    move-result-object v10

    .line 247
    iget v15, v2, Landroidx/slice/Slice$Builder;->mChildId:I

    .line 248
    move-object/from16 v18, v9

    .line 250
    add-int/lit8 v9, v15, 0x1

    .line 252
    iput v9, v2, Landroidx/slice/Slice$Builder;->mChildId:I

    .line 254
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 256
    move-result-object v9

    .line 259
    invoke-virtual {v10, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 260
    move-result-object v9

    .line 263
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 264
    move-result-object v9

    .line 267
    new-instance v10, Ljava/util/ArrayList;

    .line 268
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 270
    const/4 v15, 0x6

    .line 273
    if-ne v12, v15, :cond_8

    .line 274
    const-string/jumbo v15, "show_label"

    .line 276
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_8
    if-eqz v12, :cond_9

    .line 282
    const-string v15, "no_tint"

    .line 284
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_9
    const/4 v15, 0x4

    .line 289
    move-object/from16 v19, v4

    .line 290
    const/4 v4, 0x2

    .line 292
    if-eq v12, v4, :cond_a

    .line 293
    if-ne v12, v15, :cond_b

    .line 295
    :cond_a
    const-string v4, "large"

    .line 297
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_b
    const/4 v4, 0x3

    .line 302
    if-eq v12, v4, :cond_c

    .line 303
    if-ne v12, v15, :cond_d

    .line 305
    :cond_c
    const-string v4, "raw"

    .line 307
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_d
    if-eqz v14, :cond_e

    .line 312
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_e
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    invoke-static {v13}, Landroidx/slice/Slice;->isValidIcon(Landroidx/core/graphics/drawable/IconCompat;)Z

    .line 320
    move-result v4

    .line 323
    if-eqz v4, :cond_f

    .line 324
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 326
    move-result v4

    .line 329
    new-array v4, v4, [Ljava/lang/String;

    .line 330
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 332
    move-result-object v4

    .line 335
    check-cast v4, [Ljava/lang/String;

    .line 336
    invoke-static {v13}, Landroidx/slice/Slice;->isValidIcon(Landroidx/core/graphics/drawable/IconCompat;)Z

    .line 338
    move-result v10

    .line 341
    if-eqz v10, :cond_f

    .line 342
    new-instance v10, Landroidx/slice/SliceItem;

    .line 344
    const-string v12, "image"

    .line 346
    const/4 v15, 0x0

    .line 348
    invoke-direct {v10, v13, v12, v15, v4}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 349
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_f
    if-eqz v14, :cond_10

    .line 355
    filled-new-array {v7}, [Ljava/lang/String;

    .line 357
    move-result-object v4

    .line 360
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 361
    move-result-object v4

    .line 364
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 365
    :cond_10
    new-instance v4, Landroidx/slice/Slice;

    .line 368
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 370
    move-result v7

    .line 373
    new-array v7, v7, [Ljava/lang/String;

    .line 374
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 376
    move-result-object v1

    .line 379
    check-cast v1, [Ljava/lang/String;

    .line 380
    const/4 v7, 0x0

    .line 382
    invoke-direct {v4, v6, v1, v9, v7}, Landroidx/slice/Slice;-><init>(Ljava/util/ArrayList;[Ljava/lang/String;Landroid/net/Uri;Landroidx/slice/SliceSpec;)V

    .line 383
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    goto :goto_5

    .line 389
    :cond_11
    move-object/from16 v17, v1

    .line 390
    move-object/from16 v19, v4

    .line 392
    move-object/from16 v16, v7

    .line 394
    move-object/from16 v18, v9

    .line 396
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 398
    move-result-object v1

    .line 401
    check-cast v1, Ljava/lang/Long;

    .line 402
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 404
    move-result-wide v6

    .line 407
    new-instance v1, Ljava/util/ArrayList;

    .line 408
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    new-instance v4, Ljava/util/ArrayList;

    .line 413
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 415
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 418
    move-result-object v9

    .line 421
    invoke-virtual {v9, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 422
    move-result-object v9

    .line 425
    iget v10, v2, Landroidx/slice/Slice$Builder;->mChildId:I

    .line 426
    add-int/lit8 v12, v10, 0x1

    .line 428
    iput v12, v2, Landroidx/slice/Slice$Builder;->mChildId:I

    .line 430
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 432
    move-result-object v10

    .line 435
    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 436
    move-result-object v9

    .line 439
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 440
    move-result-object v9

    .line 443
    const/4 v10, 0x0

    .line 444
    new-array v12, v10, [Ljava/lang/String;

    .line 445
    new-instance v10, Landroidx/slice/SliceItem;

    .line 447
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 449
    move-result-object v6

    .line 452
    const-string v7, "long"

    .line 453
    const/4 v13, 0x0

    .line 455
    invoke-direct {v10, v6, v7, v13, v12}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 456
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v6, Landroidx/slice/Slice;

    .line 462
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 464
    move-result v7

    .line 467
    new-array v7, v7, [Ljava/lang/String;

    .line 468
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 470
    move-result-object v4

    .line 473
    check-cast v4, [Ljava/lang/String;

    .line 474
    invoke-direct {v6, v1, v4, v9, v13}, Landroidx/slice/Slice;-><init>(Ljava/util/ArrayList;[Ljava/lang/String;Landroid/net/Uri;Landroidx/slice/SliceSpec;)V

    .line 476
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :goto_5
    add-int/lit8 v11, v11, 0x1

    .line 482
    move-object/from16 v7, v16

    .line 484
    move-object/from16 v1, v17

    .line 486
    move-object/from16 v9, v18

    .line 488
    move-object/from16 v4, v19

    .line 490
    const/4 v6, 0x0

    .line 492
    goto/16 :goto_3

    .line 493
    :cond_12
    move-object/from16 v19, v4

    .line 495
    if-nez v8, :cond_13

    .line 497
    const/4 v10, 0x0

    .line 499
    goto :goto_6

    .line 500
    :cond_13
    move v10, v14

    .line 501
    :goto_6
    iget-boolean v1, v0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    .line 502
    if-nez v1, :cond_14

    .line 504
    iput-boolean v14, v0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    .line 506
    iput-boolean v14, v0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsFirstRowTypeValid:Z

    .line 508
    iput-boolean v10, v0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowHasText:Z

    .line 510
    :cond_14
    if-nez v8, :cond_15

    .line 512
    const/4 v10, 0x0

    .line 514
    goto :goto_7

    .line 515
    :cond_15
    move v10, v14

    .line 516
    :goto_7
    iget-boolean v1, v0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    .line 517
    if-nez v1, :cond_16

    .line 519
    iput-boolean v14, v0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    .line 521
    iput-boolean v14, v0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsFirstRowTypeValid:Z

    .line 523
    iput-boolean v10, v0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowHasText:Z

    .line 525
    :cond_16
    const-string v1, "list_item"

    .line 527
    filled-new-array {v1}, [Ljava/lang/String;

    .line 529
    move-result-object v1

    .line 532
    invoke-virtual {v2, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    .line 533
    iget-object v0, v0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    .line 536
    const/4 v1, 0x0

    .line 538
    iput-object v1, v2, Landroidx/slice/Slice$Builder;->mSpec:Landroidx/slice/SliceSpec;

    .line 539
    if-eqz v8, :cond_17

    .line 541
    invoke-virtual {v2, v8}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)V

    .line 543
    :cond_17
    const/4 v10, 0x0

    .line 546
    :goto_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 547
    move-result v1

    .line 550
    if-ge v10, v1, :cond_18

    .line 551
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 553
    move-result-object v1

    .line 556
    check-cast v1, Landroidx/slice/Slice;

    .line 557
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 559
    const/4 v4, 0x0

    .line 562
    invoke-virtual {v2, v1, v4}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    .line 563
    add-int/lit8 v10, v10, 0x1

    .line 566
    goto :goto_8

    .line 568
    :cond_18
    if-eqz v5, :cond_19

    .line 569
    const-string v1, "content_description"

    .line 571
    const/4 v3, 0x0

    .line 573
    new-array v3, v3, [Ljava/lang/String;

    .line 574
    invoke-virtual {v2, v5, v1, v3}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)V

    .line 576
    :cond_19
    if-eqz v19, :cond_1a

    .line 579
    move-object/from16 v1, v19

    .line 581
    invoke-virtual {v1, v2}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    .line 583
    :cond_1a
    invoke-virtual {v2}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    .line 586
    move-result-object v1

    .line 589
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 590
    const/4 v2, 0x0

    .line 593
    invoke-virtual {v0, v1, v2}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    .line 594
    return-void
    .line 597
.end method

.method public final apply(Landroidx/slice/Slice$Builder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mClock:Landroidx/slice/SystemClock;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    move-result-wide v0

    .line 10
    const-string v2, "last_updated"

    .line 11
    filled-new-array {v2}, [Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 16
    const-string v3, "millis"

    .line 17
    invoke-virtual {p1, v0, v1, v3, v2}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;[Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceHeader:Landroidx/slice/Slice;

    .line 22
    if-eqz p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, p0, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    .line 27
    :cond_0
    return-void
    .line 30
.end method

.method public final build()Landroidx/slice/Slice;
    .locals 11

    .line 1
    invoke-super {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "partial"

    .line 7
    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 9
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v2, :cond_0

    .line 15
    move v2, v4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v2, v3

    .line 19
    :goto_0
    const-string/jumbo v5, "slice"

    .line 20
    const-string v6, "list_item"

    .line 23
    invoke-static {v0, v5, v6}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 25
    move-result-object v6

    .line 28
    if-nez v6, :cond_1

    .line 29
    move v3, v4

    .line 31
    :cond_1
    const-string/jumbo v6, "shortcut"

    .line 32
    const-string/jumbo v7, "title"

    .line 35
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 38
    move-result-object v6

    .line 41
    const-string v7, "action"

    .line 42
    invoke-static {v0, v7, v6, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 44
    move-result-object v7

    .line 47
    new-instance v8, Ljava/util/ArrayList;

    .line 48
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v9, Ljava/util/ArrayDeque;

    .line 53
    invoke-direct {v9}, Ljava/util/ArrayDeque;-><init>()V

    .line 55
    iget-object v10, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 58
    invoke-static {v9, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 60
    new-instance v10, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;

    .line 63
    invoke-direct {v10, v5, v6, v1, v4}, Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 65
    invoke-static {v9, v10, v8}, Landroidx/slice/core/SliceQuery;->findAll(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$$ExternalSyntheticLambda0;Ljava/util/List;)V

    .line 68
    if-nez v2, :cond_3

    .line 71
    if-nez v3, :cond_3

    .line 73
    if-nez v7, :cond_3

    .line 75
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 77
    move-result v1

    .line 80
    if-nez v1, :cond_2

    .line 81
    goto :goto_1

    .line 83
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 84
    const-string v0, "A slice requires a primary action; ensure one of your builders has called #setPrimaryAction with a valid SliceAction."

    .line 86
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p0

    .line 91
    :cond_3
    :goto_1
    iget-boolean v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    .line 92
    if-eqz v1, :cond_5

    .line 94
    iget-boolean v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsFirstRowTypeValid:Z

    .line 96
    if-eqz v2, :cond_4

    .line 98
    goto :goto_2

    .line 100
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 101
    const-string v0, "A slice cannot have the first row be constructed from a GridRowBuilder, consider using #setHeader."

    .line 103
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p0

    .line 108
    :cond_5
    :goto_2
    if-eqz v1, :cond_7

    .line 109
    iget-boolean p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowHasText:Z

    .line 111
    if-eqz p0, :cond_6

    .line 113
    goto :goto_3

    .line 115
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 116
    const-string v0, "A slice requires the first row to have some text."

    .line 118
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 120
    throw p0

    .line 123
    :cond_7
    :goto_3
    return-object v0
    .line 124
.end method

.method public final setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsFirstRowTypeValid:Z

    .line 3
    iput-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowHasText:Z

    .line 5
    iput-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    .line 7
    new-instance v0, Landroidx/slice/Slice$Builder;

    .line 9
    iget-object v1, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    .line 11
    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 13
    iget-object v1, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mUri:Landroid/net/Uri;

    .line 16
    if-eqz v1, :cond_0

    .line 18
    new-instance v0, Landroidx/slice/Slice$Builder;

    .line 20
    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 25
    new-array v2, v1, [Ljava/lang/String;

    .line 26
    const-string v3, "layout_direction"

    .line 28
    invoke-virtual {v0, v1, v3, v2}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)V

    .line 30
    iget-object v1, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 33
    const/4 v2, 0x0

    .line 35
    if-nez v1, :cond_2

    .line 36
    iget-boolean v3, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitleLoading:Z

    .line 38
    if-eqz v3, :cond_1

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    move-object v3, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    iget-boolean p1, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitleLoading:Z

    .line 45
    new-instance v3, Landroidx/slice/SliceItem;

    .line 47
    const-string/jumbo v4, "title"

    .line 49
    filled-new-array {v4}, [Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 55
    const-string/jumbo v5, "text"

    .line 56
    invoke-direct {v3, v1, v5, v2, v4}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 59
    if-eqz p1, :cond_3

    .line 62
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->addHint()V

    .line 64
    :cond_3
    :goto_1
    iput-object v2, v0, Landroidx/slice/Slice$Builder;->mSpec:Landroidx/slice/SliceSpec;

    .line 67
    if-eqz v3, :cond_4

    .line 69
    invoke-virtual {v0, v3}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)V

    .line 71
    :cond_4
    if-eqz v3, :cond_5

    .line 74
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    .line 76
    move-result-object p1

    .line 79
    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceHeader:Landroidx/slice/Slice;

    .line 80
    return-void

    .line 82
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 83
    const-string p1, "Header requires a title or subtitle to be set."

    .line 85
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p0
    .line 90
.end method

.method public final setTtl()V
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    .line 2
    const-string/jumbo v0, "ttl"

    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 11
    new-instance v1, Landroidx/slice/SliceItem;

    .line 13
    const-wide/16 v2, -0x1

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    move-result-object v2

    .line 20
    const-string v3, "long"

    .line 21
    const-string v4, "millis"

    .line 23
    invoke-direct {v1, v2, v3, v4, v0}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
    .line 31
.end method
