.class public final Landroidx/palette/graphics/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final VBOX_COMPARATOR_VOLUME:Landroidx/palette/graphics/ColorCutQuantizer$1;


# instance fields
.field public final mColors:[I

.field public final mFilters:[Landroidx/palette/graphics/Palette$1;

.field public final mHistogram:[I

.field public final mQuantizedColors:Ljava/util/List;

.field public final mTempHsl:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/palette/graphics/ColorCutQuantizer$1;

    .line 2
    invoke-direct {v0}, Landroidx/palette/graphics/ColorCutQuantizer$1;-><init>()V

    .line 4
    sput-object v0, Landroidx/palette/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Landroidx/palette/graphics/ColorCutQuantizer$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>([II[Landroidx/palette/graphics/Palette$1;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v3, 0x3

    .line 11
    new-array v3, v3, [F

    .line 12
    iput-object v3, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    .line 14
    move-object/from16 v3, p3

    .line 16
    iput-object v3, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$1;

    .line 18
    const v3, 0x8000

    .line 20
    new-array v4, v3, [I

    .line 23
    iput-object v4, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 25
    const/4 v5, 0x0

    .line 27
    move v6, v5

    .line 28
    :goto_0
    array-length v7, v1

    .line 29
    const/16 v8, 0x8

    .line 30
    const/4 v9, 0x5

    .line 32
    const/4 v10, 0x1

    .line 33
    if-ge v6, v7, :cond_0

    .line 34
    aget v7, v1, v6

    .line 36
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    .line 38
    move-result v11

    .line 41
    invoke-static {v11, v8, v9}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 42
    move-result v11

    .line 45
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    .line 46
    move-result v12

    .line 49
    invoke-static {v12, v8, v9}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 50
    move-result v12

    .line 53
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    .line 54
    move-result v7

    .line 57
    invoke-static {v7, v8, v9}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 58
    move-result v7

    .line 61
    shl-int/lit8 v8, v11, 0xa

    .line 62
    shl-int/lit8 v9, v12, 0x5

    .line 64
    or-int/2addr v8, v9

    .line 66
    or-int/2addr v7, v8

    .line 67
    aput v7, v1, v6

    .line 68
    aget v8, v4, v7

    .line 70
    add-int/2addr v8, v10

    .line 72
    aput v8, v4, v7

    .line 73
    add-int/lit8 v6, v6, 0x1

    .line 75
    goto :goto_0

    .line 77
    :cond_0
    move v1, v5

    .line 78
    move v6, v1

    .line 79
    :goto_1
    if-ge v1, v3, :cond_3

    .line 80
    aget v7, v4, v1

    .line 82
    if-lez v7, :cond_1

    .line 84
    shr-int/lit8 v7, v1, 0xa

    .line 86
    and-int/lit8 v7, v7, 0x1f

    .line 88
    shr-int/lit8 v11, v1, 0x5

    .line 90
    and-int/lit8 v11, v11, 0x1f

    .line 92
    and-int/lit8 v12, v1, 0x1f

    .line 94
    invoke-static {v7, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 96
    move-result v7

    .line 99
    invoke-static {v11, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 100
    move-result v11

    .line 103
    invoke-static {v12, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 104
    move-result v12

    .line 107
    invoke-static {v7, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    .line 108
    move-result v7

    .line 111
    iget-object v11, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    .line 112
    sget-object v12, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    .line 114
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    .line 116
    move-result v12

    .line 119
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    .line 120
    move-result v13

    .line 123
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    .line 124
    move-result v7

    .line 127
    invoke-static {v12, v13, v7, v11}, Landroidx/core/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 128
    invoke-virtual {v0, v11}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor([F)Z

    .line 131
    move-result v7

    .line 134
    if-eqz v7, :cond_1

    .line 135
    aput v5, v4, v1

    .line 137
    :cond_1
    aget v7, v4, v1

    .line 139
    if-lez v7, :cond_2

    .line 141
    add-int/lit8 v6, v6, 0x1

    .line 143
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 145
    goto :goto_1

    .line 147
    :cond_3
    new-array v1, v6, [I

    .line 148
    iput-object v1, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    .line 150
    move v7, v5

    .line 152
    move v11, v7

    .line 153
    :goto_2
    if-ge v7, v3, :cond_5

    .line 154
    aget v12, v4, v7

    .line 156
    if-lez v12, :cond_4

    .line 158
    add-int/lit8 v12, v11, 0x1

    .line 160
    aput v7, v1, v11

    .line 162
    move v11, v12

    .line 164
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 165
    goto :goto_2

    .line 167
    :cond_5
    if-gt v6, v2, :cond_6

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    .line 170
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iput-object v2, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 175
    :goto_3
    if-ge v5, v6, :cond_12

    .line 177
    aget v2, v1, v5

    .line 179
    iget-object v3, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 181
    new-instance v7, Landroidx/palette/graphics/Palette$Swatch;

    .line 183
    shr-int/lit8 v10, v2, 0xa

    .line 185
    and-int/lit8 v10, v10, 0x1f

    .line 187
    shr-int/lit8 v11, v2, 0x5

    .line 189
    and-int/lit8 v11, v11, 0x1f

    .line 191
    and-int/lit8 v12, v2, 0x1f

    .line 193
    invoke-static {v10, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 195
    move-result v10

    .line 198
    invoke-static {v11, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 199
    move-result v11

    .line 202
    invoke-static {v12, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 203
    move-result v12

    .line 206
    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    .line 207
    move-result v10

    .line 210
    aget v2, v4, v2

    .line 211
    invoke-direct {v7, v10, v2}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    .line 213
    check-cast v3, Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v5, v5, 0x1

    .line 221
    goto :goto_3

    .line 223
    :cond_6
    new-instance v1, Ljava/util/PriorityQueue;

    .line 224
    sget-object v3, Landroidx/palette/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Landroidx/palette/graphics/ColorCutQuantizer$1;

    .line 226
    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 228
    new-instance v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 231
    iget-object v4, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    .line 233
    array-length v4, v4

    .line 235
    const/4 v6, -0x1

    .line 236
    add-int/2addr v4, v6

    .line 237
    invoke-direct {v3, v0, v5, v4}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;-><init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V

    .line 238
    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 241
    :goto_4
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 244
    move-result v3

    .line 247
    if-ge v3, v2, :cond_e

    .line 248
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 250
    move-result-object v3

    .line 253
    check-cast v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 254
    if-eqz v3, :cond_e

    .line 256
    iget v4, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 258
    add-int/lit8 v7, v4, 0x1

    .line 260
    iget v11, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 262
    sub-int/2addr v7, v11

    .line 264
    if-le v7, v10, :cond_7

    .line 265
    move v7, v10

    .line 267
    goto :goto_5

    .line 268
    :cond_7
    move v7, v5

    .line 269
    :goto_5
    if-eqz v7, :cond_e

    .line 270
    add-int/lit8 v7, v4, 0x1

    .line 272
    sub-int/2addr v7, v11

    .line 274
    if-le v7, v10, :cond_8

    .line 275
    move v7, v10

    .line 277
    goto :goto_6

    .line 278
    :cond_8
    move v7, v5

    .line 279
    :goto_6
    if-eqz v7, :cond_d

    .line 280
    iget v7, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    .line 282
    iget v12, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    .line 284
    sub-int/2addr v7, v12

    .line 286
    iget v12, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    .line 287
    iget v13, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    .line 289
    sub-int/2addr v12, v13

    .line 291
    iget v13, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    .line 292
    iget v14, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    .line 294
    sub-int/2addr v13, v14

    .line 296
    if-lt v7, v12, :cond_9

    .line 297
    if-lt v7, v13, :cond_9

    .line 299
    const/4 v7, -0x3

    .line 301
    goto :goto_7

    .line 302
    :cond_9
    if-lt v12, v7, :cond_a

    .line 303
    if-lt v12, v13, :cond_a

    .line 305
    const/4 v7, -0x2

    .line 307
    goto :goto_7

    .line 308
    :cond_a
    move v7, v6

    .line 309
    :goto_7
    iget-object v12, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    .line 310
    iget-object v13, v12, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    .line 312
    invoke-static {v7, v11, v4, v13}, Landroidx/palette/graphics/ColorCutQuantizer;->modifySignificantOctet(III[I)V

    .line 314
    iget v4, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 317
    add-int/2addr v4, v10

    .line 319
    invoke-static {v13, v11, v4}, Ljava/util/Arrays;->sort([III)V

    .line 320
    iget v4, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 323
    invoke-static {v7, v11, v4, v13}, Landroidx/palette/graphics/ColorCutQuantizer;->modifySignificantOctet(III[I)V

    .line 325
    iget v4, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mPopulation:I

    .line 328
    div-int/lit8 v4, v4, 0x2

    .line 330
    move v14, v5

    .line 332
    move v7, v11

    .line 333
    :goto_8
    iget v15, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 334
    if-gt v7, v15, :cond_c

    .line 336
    aget v16, v13, v7

    .line 338
    iget-object v5, v12, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 340
    aget v5, v5, v16

    .line 342
    add-int/2addr v14, v5

    .line 344
    if-lt v14, v4, :cond_b

    .line 345
    add-int/lit8 v15, v15, -0x1

    .line 347
    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    .line 349
    move-result v11

    .line 352
    goto :goto_9

    .line 353
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 354
    const/4 v5, 0x0

    .line 356
    goto :goto_8

    .line 357
    :cond_c
    :goto_9
    new-instance v4, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 358
    add-int/lit8 v5, v11, 0x1

    .line 360
    iget v7, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 362
    invoke-direct {v4, v12, v5, v7}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;-><init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V

    .line 364
    iput v11, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 367
    invoke-virtual {v3}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->fitBox()V

    .line 369
    invoke-virtual {v1, v4}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 372
    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 375
    const/4 v5, 0x0

    .line 378
    goto/16 :goto_4

    .line 379
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 381
    const-string v1, "Can not split a box with only 1 color"

    .line 383
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 385
    throw v0

    .line 388
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    .line 389
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 391
    move-result v3

    .line 394
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 395
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 398
    move-result-object v1

    .line 401
    :cond_f
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 402
    move-result v3

    .line 405
    if-eqz v3, :cond_11

    .line 406
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 408
    move-result-object v3

    .line 411
    check-cast v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 412
    iget-object v4, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    .line 414
    iget-object v5, v4, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    .line 416
    iget v6, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 418
    const/4 v7, 0x0

    .line 420
    const/4 v10, 0x0

    .line 421
    const/4 v11, 0x0

    .line 422
    const/4 v12, 0x0

    .line 423
    :goto_b
    iget v13, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 424
    if-gt v6, v13, :cond_10

    .line 426
    aget v13, v5, v6

    .line 428
    iget-object v14, v4, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 430
    aget v14, v14, v13

    .line 432
    add-int/2addr v10, v14

    .line 434
    shr-int/lit8 v15, v13, 0xa

    .line 435
    and-int/lit8 v15, v15, 0x1f

    .line 437
    mul-int/2addr v15, v14

    .line 439
    add-int/2addr v7, v15

    .line 440
    shr-int/lit8 v15, v13, 0x5

    .line 441
    and-int/lit8 v15, v15, 0x1f

    .line 443
    mul-int/2addr v15, v14

    .line 445
    add-int/2addr v11, v15

    .line 446
    and-int/lit8 v13, v13, 0x1f

    .line 447
    mul-int/2addr v14, v13

    .line 449
    add-int/2addr v12, v14

    .line 450
    add-int/lit8 v6, v6, 0x1

    .line 451
    goto :goto_b

    .line 453
    :cond_10
    int-to-float v3, v7

    .line 454
    int-to-float v4, v10

    .line 455
    div-float/2addr v3, v4

    .line 456
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 457
    move-result v3

    .line 460
    int-to-float v5, v11

    .line 461
    div-float/2addr v5, v4

    .line 462
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 463
    move-result v5

    .line 466
    int-to-float v6, v12

    .line 467
    div-float/2addr v6, v4

    .line 468
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 469
    move-result v4

    .line 472
    new-instance v6, Landroidx/palette/graphics/Palette$Swatch;

    .line 473
    invoke-static {v3, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 475
    move-result v3

    .line 478
    invoke-static {v5, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 479
    move-result v5

    .line 482
    invoke-static {v4, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 483
    move-result v4

    .line 486
    invoke-static {v3, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    .line 487
    move-result v3

    .line 490
    invoke-direct {v6, v3, v10}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    .line 491
    invoke-virtual {v6}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    .line 494
    move-result-object v3

    .line 497
    invoke-virtual {v0, v3}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor([F)Z

    .line 498
    move-result v3

    .line 501
    if-nez v3, :cond_f

    .line 502
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    goto :goto_a

    .line 507
    :cond_11
    iput-object v2, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 508
    :cond_12
    return-void
    .line 510
.end method

.method public static modifySignificantOctet(III[I)V
    .locals 2

    .line 1
    const/4 v0, -0x2

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    const/4 v0, -0x1

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    goto :goto_2

    .line 8
    :cond_0
    :goto_0
    if-gt p1, p2, :cond_2

    .line 9
    aget p0, p3, p1

    .line 11
    and-int/lit8 v0, p0, 0x1f

    .line 13
    shl-int/lit8 v0, v0, 0xa

    .line 15
    shr-int/lit8 v1, p0, 0x5

    .line 17
    and-int/lit8 v1, v1, 0x1f

    .line 19
    shl-int/lit8 v1, v1, 0x5

    .line 21
    or-int/2addr v0, v1

    .line 23
    shr-int/lit8 p0, p0, 0xa

    .line 24
    and-int/lit8 p0, p0, 0x1f

    .line 26
    or-int/2addr p0, v0

    .line 28
    aput p0, p3, p1

    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    if-gt p1, p2, :cond_2

    .line 34
    aget p0, p3, p1

    .line 36
    shr-int/lit8 v0, p0, 0x5

    .line 38
    and-int/lit8 v0, v0, 0x1f

    .line 40
    shl-int/lit8 v0, v0, 0xa

    .line 42
    shr-int/lit8 v1, p0, 0xa

    .line 44
    and-int/lit8 v1, v1, 0x1f

    .line 46
    shl-int/lit8 v1, v1, 0x5

    .line 48
    or-int/2addr v0, v1

    .line 50
    and-int/lit8 p0, p0, 0x1f

    .line 51
    or-int/2addr p0, v0

    .line 53
    aput p0, p3, p1

    .line 54
    add-int/lit8 p1, p1, 0x1

    .line 56
    goto :goto_1

    .line 58
    :cond_2
    :goto_2
    return-void
    .line 59
.end method

.method public static modifyWordWidth(III)I
    .locals 0

    .line 1
    if-le p2, p1, :cond_0

    .line 2
    sub-int p1, p2, p1

    .line 4
    shl-int/2addr p0, p1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sub-int/2addr p1, p2

    .line 8
    shr-int/2addr p0, p1

    .line 9
    :goto_0
    const/4 p1, 0x1

    .line 10
    shl-int p2, p1, p2

    .line 11
    sub-int/2addr p2, p1

    .line 13
    and-int/2addr p0, p2

    .line 14
    return p0
    .line 15
.end method


# virtual methods
.method public final shouldIgnoreColor([F)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$1;

    .line 3
    if-eqz p0, :cond_5

    .line 5
    array-length v1, p0

    .line 7
    if-lez v1, :cond_5

    .line 8
    array-length v1, p0

    .line 10
    move v2, v0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_5

    .line 12
    aget-object v3, p0, v2

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const/4 v3, 0x2

    .line 19
    aget v3, p1, v3

    .line 20
    const v4, 0x3f733333    # 0.95f

    .line 22
    cmpl-float v4, v3, v4

    .line 25
    const/4 v5, 0x1

    .line 27
    if-ltz v4, :cond_0

    .line 28
    move v4, v5

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v4, v0

    .line 32
    :goto_1
    if-nez v4, :cond_3

    .line 33
    const v4, 0x3d4ccccd    # 0.05f

    .line 35
    cmpg-float v3, v3, v4

    .line 38
    if-gtz v3, :cond_1

    .line 40
    move v3, v5

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    move v3, v0

    .line 44
    :goto_2
    if-nez v3, :cond_3

    .line 45
    aget v3, p1, v0

    .line 47
    const/high16 v4, 0x41200000    # 10.0f

    .line 49
    cmpl-float v4, v3, v4

    .line 51
    if-ltz v4, :cond_2

    .line 53
    const/high16 v4, 0x42140000    # 37.0f

    .line 55
    cmpg-float v3, v3, v4

    .line 57
    if-gtz v3, :cond_2

    .line 59
    aget v3, p1, v5

    .line 61
    const v4, 0x3f51eb85    # 0.82f

    .line 63
    cmpg-float v3, v3, v4

    .line 66
    if-gtz v3, :cond_2

    .line 68
    move v3, v5

    .line 70
    goto :goto_3

    .line 71
    :cond_2
    move v3, v0

    .line 72
    :goto_3
    if-nez v3, :cond_3

    .line 73
    move v3, v5

    .line 75
    goto :goto_4

    .line 76
    :cond_3
    move v3, v0

    .line 77
    :goto_4
    if-nez v3, :cond_4

    .line 78
    return v5

    .line 80
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 81
    goto :goto_0

    .line 83
    :cond_5
    return v0
    .line 84
.end method
