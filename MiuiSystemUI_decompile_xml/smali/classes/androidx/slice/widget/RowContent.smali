.class public final Landroidx/slice/widget/RowContent;
.super Landroidx/slice/widget/SliceContent;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mEndItems:Ljava/util/ArrayList;

.field public mIsHeader:Z

.field public mLineCount:I

.field public mPrimaryAction:Landroidx/slice/SliceItem;

.field public mRange:Landroidx/slice/SliceItem;

.field public mSelection:Landroidx/slice/SliceItem;

.field public mShowActionDivider:Z

.field public mShowBottomDivider:Z

.field public mShowTitleItems:Z

.field public mStartItem:Landroidx/slice/SliceItem;

.field public mSubtitleItem:Landroidx/slice/SliceItem;

.field public mSummaryItem:Landroidx/slice/SliceItem;

.field public mTitleItem:Landroidx/slice/SliceItem;

.field public final mToggleItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;I)V
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/slice/widget/SliceContent;-><init>(Landroidx/slice/SliceItem;I)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/slice/widget/RowContent;->mToggleItems:Ljava/util/ArrayList;

    .line 17
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    .line 20
    const/4 v1, 0x1

    .line 22
    if-nez p2, :cond_0

    .line 23
    move p2, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p2, v0

    .line 27
    :goto_0
    const-string v2, "end_of_section"

    .line 28
    invoke-virtual {p1, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 30
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    iput-boolean v1, p0, Landroidx/slice/widget/RowContent;->mShowBottomDivider:Z

    .line 36
    :cond_1
    iput-boolean p2, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    .line 38
    invoke-static {p1}, Landroidx/slice/widget/RowContent;->isValidRow(Landroidx/slice/SliceItem;)Z

    .line 40
    move-result p2

    .line 43
    if-nez p2, :cond_2

    .line 44
    const-string p0, "RowContent"

    .line 46
    const-string p1, "Provided SliceItem is invalid for RowContent"

    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    goto/16 :goto_d

    .line 53
    :cond_2
    const-string/jumbo p2, "title"

    .line 55
    filled-new-array {p2}, [Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 61
    const/4 v3, 0x0

    .line 62
    filled-new-array {v3}, [Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 66
    invoke-static {p1, v3, v2, v4}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 67
    move-result-object v2

    .line 70
    check-cast v2, Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 73
    move-result v4

    .line 76
    const-string/jumbo v5, "slice"

    .line 77
    const-string v6, "long"

    .line 80
    const-string v7, "action"

    .line 82
    if-lez v4, :cond_5

    .line 84
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v4

    .line 89
    check-cast v4, Landroidx/slice/SliceItem;

    .line 90
    iget-object v4, v4, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 92
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v8

    .line 97
    const-string v9, "image"

    .line 98
    if-eqz v8, :cond_3

    .line 100
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v8

    .line 105
    check-cast v8, Landroidx/slice/SliceItem;

    .line 106
    invoke-static {v8, v9, v3, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 108
    move-result-object v8

    .line 111
    if-nez v8, :cond_4

    .line 112
    :cond_3
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v8

    .line 117
    if-nez v8, :cond_4

    .line 118
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v8

    .line 123
    if-nez v8, :cond_4

    .line 124
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v4

    .line 129
    if-eqz v4, :cond_5

    .line 130
    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    move-result-object v2

    .line 135
    check-cast v2, Landroidx/slice/SliceItem;

    .line 136
    iput-object v2, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    .line 138
    :cond_5
    const-string/jumbo v2, "shortcut"

    .line 140
    filled-new-array {v2, p2}, [Ljava/lang/String;

    .line 143
    move-result-object v4

    .line 146
    invoke-static {p1, v5, v4, v3}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 147
    move-result-object v8

    .line 150
    invoke-static {p1, v7, v4, v3}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 151
    move-result-object v4

    .line 154
    check-cast v8, Ljava/util/ArrayList;

    .line 155
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 157
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 160
    move-result v4

    .line 163
    if-eqz v4, :cond_6

    .line 164
    iget-object v4, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 166
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    move-result v4

    .line 171
    if-eqz v4, :cond_6

    .line 172
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 174
    move-result-object v4

    .line 177
    invoke-virtual {v4}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 178
    move-result-object v4

    .line 181
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 182
    move-result v4

    .line 185
    if-ne v4, v1, :cond_6

    .line 186
    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 188
    goto :goto_1

    .line 190
    :cond_6
    iget-object v4, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    .line 191
    if-eqz v4, :cond_7

    .line 193
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 195
    move-result v4

    .line 198
    if-le v4, v1, :cond_7

    .line 199
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    move-result-object v4

    .line 204
    iget-object v9, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    .line 205
    if-ne v4, v9, :cond_7

    .line 207
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    move-result-object v4

    .line 212
    check-cast v4, Landroidx/slice/SliceItem;

    .line 213
    iput-object v4, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 215
    goto :goto_1

    .line 217
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 218
    move-result v4

    .line 221
    if-lez v4, :cond_8

    .line 222
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 224
    move-result-object v4

    .line 227
    check-cast v4, Landroidx/slice/SliceItem;

    .line 228
    iput-object v4, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 230
    :cond_8
    :goto_1
    invoke-static {p1}, Landroidx/slice/widget/RowContent;->filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    .line 232
    move-result-object v4

    .line 235
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 236
    move-result v8

    .line 239
    if-ne v8, v1, :cond_a

    .line 240
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 242
    move-result-object v8

    .line 245
    check-cast v8, Landroidx/slice/SliceItem;

    .line 246
    iget-object v8, v8, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 248
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    move-result v8

    .line 253
    if-nez v8, :cond_9

    .line 254
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 256
    move-result-object v8

    .line 259
    check-cast v8, Landroidx/slice/SliceItem;

    .line 260
    iget-object v8, v8, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 262
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    move-result v5

    .line 267
    if-eqz v5, :cond_a

    .line 268
    :cond_9
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 270
    move-result-object v5

    .line 273
    check-cast v5, Landroidx/slice/SliceItem;

    .line 274
    filled-new-array {v2, p2}, [Ljava/lang/String;

    .line 276
    move-result-object v2

    .line 279
    invoke-virtual {v5, v2}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    .line 280
    move-result v2

    .line 283
    if-nez v2, :cond_a

    .line 284
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 286
    move-result-object v2

    .line 289
    check-cast v2, Landroidx/slice/SliceItem;

    .line 290
    invoke-static {v2}, Landroidx/slice/widget/RowContent;->isValidRow(Landroidx/slice/SliceItem;)Z

    .line 292
    move-result v2

    .line 295
    if-eqz v2, :cond_a

    .line 296
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 298
    move-result-object p1

    .line 301
    check-cast p1, Landroidx/slice/SliceItem;

    .line 302
    invoke-static {p1}, Landroidx/slice/widget/RowContent;->filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    .line 304
    move-result-object v4

    .line 307
    move v2, v1

    .line 308
    goto :goto_2

    .line 309
    :cond_a
    move v2, v0

    .line 310
    :goto_2
    iget-object v5, p1, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 311
    const-string v8, "range"

    .line 313
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    move-result v5

    .line 318
    if-eqz v5, :cond_e

    .line 319
    invoke-static {p1, v7, v8}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 321
    move-result-object v5

    .line 324
    if-eqz v5, :cond_d

    .line 325
    if-eqz v2, :cond_b

    .line 327
    goto :goto_3

    .line 329
    :cond_b
    iget-object v2, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    .line 330
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 335
    move-result v2

    .line 338
    if-ne v2, v1, :cond_c

    .line 339
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 341
    move-result-object v2

    .line 344
    check-cast v2, Landroidx/slice/SliceItem;

    .line 345
    invoke-static {v2}, Landroidx/slice/widget/RowContent;->isValidRow(Landroidx/slice/SliceItem;)Z

    .line 347
    move-result v2

    .line 350
    if-eqz v2, :cond_e

    .line 351
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 353
    move-result-object p1

    .line 356
    check-cast p1, Landroidx/slice/SliceItem;

    .line 357
    invoke-static {p1}, Landroidx/slice/widget/RowContent;->filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    .line 359
    move-result-object v4

    .line 362
    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 363
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getInputRangeThumb()Landroidx/slice/SliceItem;

    .line 365
    move-result-object v2

    .line 368
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 369
    goto :goto_4

    .line 372
    :cond_c
    invoke-static {p1, v7, v8}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 373
    move-result-object v2

    .line 376
    iput-object v2, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 377
    invoke-static {v2}, Landroidx/slice/widget/RowContent;->filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    .line 379
    move-result-object v2

    .line 382
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getInputRangeThumb()Landroidx/slice/SliceItem;

    .line 383
    move-result-object v5

    .line 386
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 387
    iget-object v5, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 390
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 395
    goto :goto_4

    .line 398
    :cond_d
    :goto_3
    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 399
    :cond_e
    :goto_4
    iget-object v2, p1, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 401
    const-string/jumbo v5, "selection"

    .line 403
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    move-result v2

    .line 409
    if-eqz v2, :cond_f

    .line 410
    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mSelection:Landroidx/slice/SliceItem;

    .line 412
    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 414
    move-result p1

    .line 417
    if-lez p1, :cond_23

    .line 418
    iget-object p1, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    .line 420
    if-eqz p1, :cond_10

    .line 422
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 424
    :cond_10
    iget-object p1, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 427
    if-eqz p1, :cond_11

    .line 429
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 431
    :cond_11
    new-instance p1, Ljava/util/ArrayList;

    .line 434
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    move v2, v0

    .line 439
    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 440
    move-result v5

    .line 443
    if-ge v2, v5, :cond_17

    .line 444
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 446
    move-result-object v5

    .line 449
    check-cast v5, Landroidx/slice/SliceItem;

    .line 450
    iget-object v8, v5, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 452
    const-string/jumbo v9, "text"

    .line 454
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    move-result v8

    .line 460
    if-eqz v8, :cond_15

    .line 461
    iget-object v8, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 463
    const-string/jumbo v9, "summary"

    .line 465
    if-eqz v8, :cond_12

    .line 468
    invoke-virtual {v8, p2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 470
    move-result v8

    .line 473
    if-nez v8, :cond_13

    .line 474
    :cond_12
    invoke-virtual {v5, p2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 476
    move-result v8

    .line 479
    if-eqz v8, :cond_13

    .line 480
    invoke-virtual {v5, v9}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 482
    move-result v8

    .line 485
    if-nez v8, :cond_13

    .line 486
    iput-object v5, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 488
    goto :goto_6

    .line 490
    :cond_13
    iget-object v8, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    .line 491
    if-nez v8, :cond_14

    .line 493
    invoke-virtual {v5, v9}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 495
    move-result v8

    .line 498
    if-nez v8, :cond_14

    .line 499
    iput-object v5, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    .line 501
    goto :goto_6

    .line 503
    :cond_14
    iget-object v8, p0, Landroidx/slice/widget/RowContent;->mSummaryItem:Landroidx/slice/SliceItem;

    .line 504
    if-nez v8, :cond_16

    .line 506
    invoke-virtual {v5, v9}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 508
    move-result v8

    .line 511
    if-eqz v8, :cond_16

    .line 512
    iput-object v5, p0, Landroidx/slice/widget/RowContent;->mSummaryItem:Landroidx/slice/SliceItem;

    .line 514
    goto :goto_6

    .line 516
    :cond_15
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_16
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 520
    goto :goto_5

    .line 522
    :cond_17
    iget-object p2, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 523
    const-string v2, "partial"

    .line 525
    if-eqz p2, :cond_19

    .line 527
    invoke-virtual {p2, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 529
    move-result v4

    .line 532
    if-nez v4, :cond_18

    .line 533
    iget-object p2, p2, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 535
    check-cast p2, Ljava/lang/CharSequence;

    .line 537
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 539
    move-result p2

    .line 542
    if-nez p2, :cond_19

    .line 543
    :cond_18
    move p2, v1

    .line 545
    goto :goto_7

    .line 546
    :cond_19
    move p2, v0

    .line 547
    :goto_7
    if-eqz p2, :cond_1a

    .line 548
    iget p2, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    .line 550
    add-int/2addr p2, v1

    .line 552
    iput p2, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    .line 553
    :cond_1a
    iget-object p2, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    .line 555
    if-eqz p2, :cond_1c

    .line 557
    invoke-virtual {p2, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 559
    move-result v2

    .line 562
    if-nez v2, :cond_1b

    .line 563
    iget-object p2, p2, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 565
    check-cast p2, Ljava/lang/CharSequence;

    .line 567
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 569
    move-result p2

    .line 572
    if-nez p2, :cond_1c

    .line 573
    :cond_1b
    move p2, v1

    .line 575
    goto :goto_8

    .line 576
    :cond_1c
    move p2, v0

    .line 577
    :goto_8
    if-eqz p2, :cond_1d

    .line 578
    iget p2, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    .line 580
    add-int/2addr p2, v1

    .line 582
    iput p2, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    .line 583
    :cond_1d
    iget-object p2, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    .line 585
    if-eqz p2, :cond_1e

    .line 587
    iget-object p2, p2, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 589
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 591
    move-result p2

    .line 594
    if-eqz p2, :cond_1e

    .line 595
    move p2, v1

    .line 597
    goto :goto_9

    .line 598
    :cond_1e
    move p2, v0

    .line 599
    :goto_9
    move v2, v0

    .line 600
    :goto_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 601
    move-result v4

    .line 604
    if-ge v2, v4, :cond_23

    .line 605
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 607
    move-result-object v4

    .line 610
    check-cast v4, Landroidx/slice/SliceItem;

    .line 611
    invoke-static {v4, v7, v3, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 613
    move-result-object v5

    .line 616
    if-eqz v5, :cond_1f

    .line 617
    move v5, v1

    .line 619
    goto :goto_b

    .line 620
    :cond_1f
    move v5, v0

    .line 621
    :goto_b
    iget-object v8, v4, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 622
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 624
    move-result v8

    .line 627
    iget-object v9, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    .line 628
    if-eqz v8, :cond_20

    .line 630
    if-nez p2, :cond_22

    .line 632
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    move p2, v1

    .line 637
    goto :goto_c

    .line 638
    :cond_20
    if-eqz v5, :cond_21

    .line 639
    new-instance v5, Landroidx/slice/core/SliceActionImpl;

    .line 641
    invoke-direct {v5, v4}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 643
    invoke-virtual {v5}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    .line 646
    move-result v8

    .line 649
    if-eqz v8, :cond_21

    .line 650
    iget-object v8, p0, Landroidx/slice/widget/RowContent;->mToggleItems:Ljava/util/ArrayList;

    .line 652
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_21
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_22
    :goto_c
    add-int/lit8 v2, v2, 0x1

    .line 660
    goto :goto_a

    .line 662
    :cond_23
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->isValid()Z

    .line 663
    :goto_d
    return-void
    .line 666
.end method

.method public static filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 7
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 11
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 28
    check-cast v2, Landroidx/slice/SliceItem;

    .line 29
    invoke-static {p0, v2}, Landroidx/slice/widget/RowContent;->isValidRowContent(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z

    .line 31
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    return-object v0
    .line 41
.end method

.method public static isValidRow(Landroidx/slice/SliceItem;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 6
    const-string/jumbo v2, "slice"

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    iget-object v1, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 17
    const-string v2, "action"

    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 24
    if-eqz v1, :cond_4

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 27
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 31
    move-result-object v1

    .line 34
    const-string/jumbo v2, "see_more"

    .line 35
    invoke-virtual {p0, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 38
    move-result v2

    .line 41
    const/4 v3, 0x1

    .line 42
    if-eqz v2, :cond_2

    .line 43
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 45
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    return v3

    .line 51
    :cond_2
    move v2, v0

    .line 52
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 53
    move-result v4

    .line 56
    if-ge v2, v4, :cond_4

    .line 57
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v4

    .line 62
    check-cast v4, Landroidx/slice/SliceItem;

    .line 63
    invoke-static {p0, v4}, Landroidx/slice/widget/RowContent;->isValidRowContent(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z

    .line 65
    move-result v4

    .line 68
    if-eqz v4, :cond_3

    .line 69
    return v3

    .line 71
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 72
    goto :goto_0

    .line 74
    :cond_4
    return v0
    .line 75
.end method

.method public static isValidRowContent(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z
    .locals 4

    .line 1
    const-string v0, "last_updated"

    .line 2
    const-string v1, "horizontal"

    .line 4
    const-string v2, "keywords"

    .line 6
    const-string/jumbo v3, "ttl"

    .line 8
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez v0, :cond_2

    .line 20
    iget-object v0, p1, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 22
    const-string v2, "content_description"

    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    iget-object v0, p1, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 32
    const-string/jumbo v2, "selection_option_key"

    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    iget-object v0, p1, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 43
    const-string/jumbo v2, "selection_option_value"

    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 55
    const-string v0, "image"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 62
    if-nez v0, :cond_1

    .line 63
    const-string/jumbo v0, "text"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    const-string v0, "long"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v0

    .line 79
    if-nez v0, :cond_1

    .line 80
    const-string v0, "action"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    const-string v0, "input"

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v0

    .line 95
    if-nez v0, :cond_1

    .line 96
    const-string/jumbo v0, "slice"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v0

    .line 104
    if-nez v0, :cond_1

    .line 105
    const-string v0, "int"

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result p1

    .line 112
    if-eqz p1, :cond_2

    .line 113
    iget-object p0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 115
    const-string p1, "range"

    .line 117
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result p0

    .line 122
    if-eqz p0, :cond_2

    .line 123
    :cond_1
    const/4 v1, 0x1

    .line 125
    :cond_2
    :goto_0
    return v1
    .line 126
.end method


# virtual methods
.method public final getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p2, Landroidx/slice/widget/SliceViewPolicy;->mMaxSmallHeight:I

    .line 5
    if-lez v0, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget v0, p1, Landroidx/slice/widget/SliceStyle;->mRowMaxHeight:I

    .line 10
    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 12
    if-nez v1, :cond_1

    .line 14
    iget-object v2, p0, Landroidx/slice/widget/RowContent;->mSelection:Landroidx/slice/SliceItem;

    .line 16
    if-nez v2, :cond_1

    .line 18
    iget p2, p2, Landroidx/slice/widget/SliceViewPolicy;->mMode:I

    .line 20
    const/4 v2, 0x2

    .line 22
    if-eq p2, v2, :cond_1

    .line 23
    goto :goto_5

    .line 25
    :cond_1
    const/4 p2, 0x1

    .line 26
    if-eqz v1, :cond_6

    .line 27
    iget-boolean v0, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    .line 29
    if-eqz v0, :cond_2

    .line 31
    iget-boolean v0, p0, Landroidx/slice/widget/RowContent;->mShowTitleItems:Z

    .line 33
    if-nez v0, :cond_2

    .line 35
    const/4 v0, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    .line 39
    :goto_1
    if-nez v0, :cond_5

    .line 41
    iget p0, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    .line 43
    if-nez p0, :cond_3

    .line 45
    const/4 p0, 0x0

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    if-le p0, p2, :cond_4

    .line 49
    iget p0, p1, Landroidx/slice/widget/SliceStyle;->mRowTextWithRangeHeight:I

    .line 51
    goto :goto_2

    .line 53
    :cond_4
    iget p0, p1, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithRangeHeight:I

    .line 54
    :goto_2
    iget p1, p1, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    .line 56
    goto :goto_4

    .line 58
    :cond_5
    iget v0, p1, Landroidx/slice/widget/SliceStyle;->mRowInlineRangeHeight:I

    .line 59
    goto :goto_5

    .line 61
    :cond_6
    iget-object v1, p0, Landroidx/slice/widget/RowContent;->mSelection:Landroidx/slice/SliceItem;

    .line 62
    if-eqz v1, :cond_8

    .line 64
    iget p0, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    .line 66
    if-le p0, p2, :cond_7

    .line 68
    iget p0, p1, Landroidx/slice/widget/SliceStyle;->mRowTextWithSelectionHeight:I

    .line 70
    goto :goto_3

    .line 72
    :cond_7
    iget p0, p1, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithSelectionHeight:I

    .line 73
    :goto_3
    iget p1, p1, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    .line 75
    :goto_4
    add-int v0, p0, p1

    .line 77
    goto :goto_5

    .line 79
    :cond_8
    iget v1, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    .line 80
    if-gt v1, p2, :cond_a

    .line 82
    iget-boolean p0, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    .line 84
    if-eqz p0, :cond_9

    .line 86
    goto :goto_5

    .line 88
    :cond_9
    iget v0, p1, Landroidx/slice/widget/SliceStyle;->mRowMinHeight:I

    .line 89
    :cond_a
    :goto_5
    return v0
    .line 91
.end method

.method public final getInputRangeThumb()Landroidx/slice/SliceItem;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 10
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 15
    move-result v1

    .line 18
    if-ge v0, v1, :cond_1

    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 24
    check-cast v1, Landroidx/slice/SliceItem;

    .line 25
    iget-object v1, v1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 27
    const-string v2, "image"

    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 40
    check-cast p0, Landroidx/slice/SliceItem;

    .line 41
    return-object p0

    .line 43
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    return-object p0
    .line 48
.end method

.method public final isDefaultSeeMore()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 2
    iget-object v0, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 4
    const-string v1, "action"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 14
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 16
    move-result-object v0

    .line 19
    iget-object v0, v0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 20
    const-string/jumbo v1, "see_more"

    .line 22
    invoke-static {v0, v1}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    iget-object p0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 31
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 37
    move-result-object p0

    .line 40
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 41
    move-result p0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    const/4 p0, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p0, 0x0

    .line 49
    :goto_0
    return p0
    .line 50
.end method

.method public final isValid()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    .line 13
    if-nez v0, :cond_2

    .line 15
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 17
    if-nez v0, :cond_2

    .line 19
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 21
    if-nez v0, :cond_2

    .line 23
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    .line 25
    if-nez v0, :cond_2

    .line 27
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v0

    .line 34
    if-gtz v0, :cond_2

    .line 35
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 37
    if-nez v0, :cond_2

    .line 39
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSelection:Landroidx/slice/SliceItem;

    .line 41
    if-nez v0, :cond_2

    .line 43
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->isDefaultSeeMore()Z

    .line 45
    move-result p0

    .line 48
    if-eqz p0, :cond_1

    .line 49
    goto :goto_1

    .line 51
    :cond_1
    move v1, v2

    .line 52
    :cond_2
    :goto_1
    return v1
    .line 53
.end method
