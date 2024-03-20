.class public final Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final VBOX_COMPARATOR_VOLUME:Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$1;


# instance fields
.field public final mColors:[I

.field public final mFilters:[Lcom/miui/miwallpaper/material/palette/Palette$Filter;

.field public final mHistogram:[I

.field public final mQuantizedColors:Ljava/util/List;

.field public final mTempHsl:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$1;

    .line 2
    invoke-direct {v0}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$1;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>([II[Lcom/miui/miwallpaper/material/palette/Palette$Filter;)V
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
    iput-object v3, v0, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->mTempHsl:[F

    .line 14
    move-object/from16 v3, p3

    .line 16
    iput-object v3, v0, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->mFilters:[Lcom/miui/miwallpaper/material/palette/Palette$Filter;

    .line 18
    const v3, 0x8000

    .line 20
    new-array v4, v3, [I

    .line 23
    iput-object v4, v0, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->mHistogram:[I

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
    invoke-static {v11, v8, v9}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 42
    move-result v11

    .line 45
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    .line 46
    move-result v12

    .line 49
    invoke-static {v12, v8, v9}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 50
    move-result v12

    .line 53
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    .line 54
    move-result v7

    .line 57
    invoke-static {v7, v8, v9}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->modifyWordWidth(III)I

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
    if-ge v1, v3, :cond_5

    .line 80
    aget v7, v4, v1

    .line 82
    if-lez v7, :cond_3

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
    invoke-static {v7, v9, v8}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 96
    move-result v7

    .line 99
    invoke-static {v11, v9, v8}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 100
    move-result v11

    .line 103
    invoke-static {v12, v9, v8}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 104
    move-result v12

    .line 107
    invoke-static {v7, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    .line 108
    move-result v7

    .line 111
    iget-object v11, v0, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->mTempHsl:[F

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
    move-result v14

    .line 127
    invoke-static {v12, v13, v14, v11}, Landroidx/core/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 128
    iget-object v12, v0, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->mFilters:[Lcom/miui/miwallpaper/material/palette/Palette$Filter;

    .line 131
    if-eqz v12, :cond_2

    .line 133
    array-length v13, v12

    .line 135
    if-lez v13, :cond_2

    .line 136
    array-length v13, v12

    .line 138
    move v14, v5

    .line 139
    :goto_2
    if-ge v14, v13, :cond_2

    .line 140
    aget-object v15, v12, v14

    .line 142
    invoke-interface {v15, v7, v11}, Lcom/miui/miwallpaper/material/palette/Palette$Filter;->isAllowed(I[F)Z

    .line 144
    move-result v15

    .line 147
    if-nez v15, :cond_1

    .line 148
    move v7, v10

    .line 150
    goto :goto_3

    .line 151
    :cond_1
    add-int/lit8 v14, v14, 0x1

    .line 152
    goto :goto_2

    .line 154
    :cond_2
    move v7, v5

    .line 155
    :goto_3
    if-eqz v7, :cond_3

    .line 156
    aput v5, v4, v1

    .line 158
    :cond_3
    aget v7, v4, v1

    .line 160
    if-lez v7, :cond_4

    .line 162
    add-int/lit8 v6, v6, 0x1

    .line 164
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 166
    goto :goto_1

    .line 168
    :cond_5
    new-array v1, v6, [I

    .line 169
    iput-object v1, v0, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->mColors:[I

    .line 171
    move v7, v5

    .line 173
    move v11, v7

    .line 174
    :goto_4
    if-ge v7, v3, :cond_7

    .line 175
    aget v12, v4, v7

    .line 177
    if-lez v12, :cond_6

    .line 179
    add-int/lit8 v12, v11, 0x1

    .line 181
    aput v7, v1, v11

    .line 183
    move v11, v12

    .line 185
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 186
    goto :goto_4

    .line 188
    :cond_7
    if-gt v6, v2, :cond_8

    .line 189
    new-instance v2, Ljava/util/ArrayList;

    .line 191
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    iput-object v2, v0, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 196
    :goto_5
    if-ge v5, v6, :cond_16

    .line 198
    aget v2, v1, v5

    .line 200
    iget-object v3, v0, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 202
    new-instance v7, Lcom/miui/miwallpaper/material/palette/Palette$Swatch;

    .line 204
    shr-int/lit8 v10, v2, 0xa

    .line 206
    and-int/lit8 v10, v10, 0x1f

    .line 208
    shr-int/lit8 v11, v2, 0x5

    .line 210
    and-int/lit8 v11, v11, 0x1f

    .line 212
    and-int/lit8 v12, v2, 0x1f

    .line 214
    invoke-static {v10, v9, v8}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 216
    move-result v10

    .line 219
    invoke-static {v11, v9, v8}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 220
    move-result v11

    .line 223
    invoke-static {v12, v9, v8}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 224
    move-result v12

    .line 227
    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    .line 228
    move-result v10

    .line 231
    aget v2, v4, v2

    .line 232
    invoke-direct {v7, v10, v2}, Lcom/miui/miwallpaper/material/palette/Palette$Swatch;-><init>(II)V

    .line 234
    check-cast v3, Ljava/util/ArrayList;

    .line 237
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v5, v5, 0x1

    .line 242
    goto :goto_5

    .line 244
    :cond_8
    new-instance v1, Ljava/util/PriorityQueue;

    .line 245
    sget-object v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$1;

    .line 247
    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 249
    new-instance v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;

    .line 252
    iget-object v4, v0, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->mColors:[I

    .line 254
    array-length v4, v4

    .line 256
    const/4 v6, -0x1

    .line 257
    add-int/2addr v4, v6

    .line 258
    invoke-direct {v3, v0, v5, v4}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;-><init>(Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;II)V

    .line 259
    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 262
    :goto_6
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 265
    move-result v3

    .line 268
    if-ge v3, v2, :cond_10

    .line 269
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 271
    move-result-object v3

    .line 274
    check-cast v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;

    .line 275
    if-eqz v3, :cond_10

    .line 277
    iget v4, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 279
    add-int/lit8 v7, v4, 0x1

    .line 281
    iget v11, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 283
    sub-int/2addr v7, v11

    .line 285
    if-le v7, v10, :cond_9

    .line 286
    move v7, v10

    .line 288
    goto :goto_7

    .line 289
    :cond_9
    move v7, v5

    .line 290
    :goto_7
    if-eqz v7, :cond_10

    .line 291
    add-int/lit8 v7, v4, 0x1

    .line 293
    sub-int/2addr v7, v11

    .line 295
    if-le v7, v10, :cond_a

    .line 296
    move v7, v10

    .line 298
    goto :goto_8

    .line 299
    :cond_a
    move v7, v5

    .line 300
    :goto_8
    if-eqz v7, :cond_f

    .line 301
    iget v7, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    .line 303
    iget v12, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    .line 305
    sub-int/2addr v7, v12

    .line 307
    iget v12, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    .line 308
    iget v13, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    .line 310
    sub-int/2addr v12, v13

    .line 312
    iget v13, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    .line 313
    iget v14, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    .line 315
    sub-int/2addr v13, v14

    .line 317
    if-lt v7, v12, :cond_b

    .line 318
    if-lt v7, v13, :cond_b

    .line 320
    const/4 v7, -0x3

    .line 322
    goto :goto_9

    .line 323
    :cond_b
    if-lt v12, v7, :cond_c

    .line 324
    if-lt v12, v13, :cond_c

    .line 326
    const/4 v7, -0x2

    .line 328
    goto :goto_9

    .line 329
    :cond_c
    move v7, v6

    .line 330
    :goto_9
    iget-object v12, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;

    .line 331
    iget-object v13, v12, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->mColors:[I

    .line 333
    invoke-static {v7, v11, v4, v13}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->modifySignificantOctet(III[I)V

    .line 335
    iget v4, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 338
    add-int/2addr v4, v10

    .line 340
    invoke-static {v13, v11, v4}, Ljava/util/Arrays;->sort([III)V

    .line 341
    iget v4, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 344
    invoke-static {v7, v11, v4, v13}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->modifySignificantOctet(III[I)V

    .line 346
    iget v4, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->mPopulation:I

    .line 349
    div-int/lit8 v4, v4, 0x2

    .line 351
    move v14, v5

    .line 353
    move v7, v11

    .line 354
    :goto_a
    iget v15, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 355
    if-gt v7, v15, :cond_e

    .line 357
    aget v16, v13, v7

    .line 359
    iget-object v5, v12, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->mHistogram:[I

    .line 361
    aget v5, v5, v16

    .line 363
    add-int/2addr v14, v5

    .line 365
    if-lt v14, v4, :cond_d

    .line 366
    add-int/lit8 v15, v15, -0x1

    .line 368
    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    .line 370
    move-result v11

    .line 373
    goto :goto_b

    .line 374
    :cond_d
    add-int/lit8 v7, v7, 0x1

    .line 375
    const/4 v5, 0x0

    .line 377
    goto :goto_a

    .line 378
    :cond_e
    :goto_b
    new-instance v4, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;

    .line 379
    add-int/lit8 v5, v11, 0x1

    .line 381
    iget v7, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 383
    invoke-direct {v4, v12, v5, v7}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;-><init>(Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;II)V

    .line 385
    iput v11, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 388
    invoke-virtual {v3}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->fitBox()V

    .line 390
    invoke-virtual {v1, v4}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 396
    const/4 v5, 0x0

    .line 399
    goto/16 :goto_6

    .line 400
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 402
    const-string v1, "Can not split a box with only 1 color"

    .line 404
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 406
    throw v0

    .line 409
    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    .line 410
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 412
    move-result v3

    .line 415
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 416
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 419
    move-result-object v1

    .line 422
    :cond_11
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 423
    move-result v3

    .line 426
    if-eqz v3, :cond_15

    .line 427
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 429
    move-result-object v3

    .line 432
    check-cast v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;

    .line 433
    iget-object v4, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;

    .line 435
    iget-object v5, v4, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->mColors:[I

    .line 437
    iget v6, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 439
    const/4 v7, 0x0

    .line 441
    const/4 v11, 0x0

    .line 442
    const/4 v12, 0x0

    .line 443
    const/4 v13, 0x0

    .line 444
    :goto_d
    iget v14, v3, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 445
    if-gt v6, v14, :cond_12

    .line 447
    aget v14, v5, v6

    .line 449
    iget-object v15, v4, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->mHistogram:[I

    .line 451
    aget v15, v15, v14

    .line 453
    add-int/2addr v11, v15

    .line 455
    shr-int/lit8 v16, v14, 0xa

    .line 456
    and-int/lit8 v16, v16, 0x1f

    .line 458
    mul-int v16, v16, v15

    .line 460
    add-int v7, v16, v7

    .line 462
    shr-int/lit8 v16, v14, 0x5

    .line 464
    and-int/lit8 v16, v16, 0x1f

    .line 466
    mul-int v16, v16, v15

    .line 468
    add-int v12, v16, v12

    .line 470
    and-int/lit8 v14, v14, 0x1f

    .line 472
    mul-int/2addr v15, v14

    .line 474
    add-int/2addr v13, v15

    .line 475
    add-int/lit8 v6, v6, 0x1

    .line 476
    goto :goto_d

    .line 478
    :cond_12
    int-to-float v3, v7

    .line 479
    int-to-float v4, v11

    .line 480
    div-float/2addr v3, v4

    .line 481
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 482
    move-result v3

    .line 485
    int-to-float v5, v12

    .line 486
    div-float/2addr v5, v4

    .line 487
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 488
    move-result v5

    .line 491
    int-to-float v6, v13

    .line 492
    div-float/2addr v6, v4

    .line 493
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 494
    move-result v4

    .line 497
    new-instance v6, Lcom/miui/miwallpaper/material/palette/Palette$Swatch;

    .line 498
    invoke-static {v3, v9, v8}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 500
    move-result v3

    .line 503
    invoke-static {v5, v9, v8}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 504
    move-result v5

    .line 507
    invoke-static {v4, v9, v8}, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 508
    move-result v4

    .line 511
    invoke-static {v3, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    .line 512
    move-result v3

    .line 515
    invoke-direct {v6, v3, v11}, Lcom/miui/miwallpaper/material/palette/Palette$Swatch;-><init>(II)V

    .line 516
    invoke-virtual {v6}, Lcom/miui/miwallpaper/material/palette/Palette$Swatch;->getHsl()[F

    .line 519
    move-result-object v3

    .line 522
    iget-object v4, v0, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->mFilters:[Lcom/miui/miwallpaper/material/palette/Palette$Filter;

    .line 523
    if-eqz v4, :cond_14

    .line 525
    array-length v5, v4

    .line 527
    if-lez v5, :cond_14

    .line 528
    array-length v5, v4

    .line 530
    const/4 v7, 0x0

    .line 531
    :goto_e
    if-ge v7, v5, :cond_14

    .line 532
    aget-object v11, v4, v7

    .line 534
    iget v12, v6, Lcom/miui/miwallpaper/material/palette/Palette$Swatch;->mRgb:I

    .line 536
    invoke-interface {v11, v12, v3}, Lcom/miui/miwallpaper/material/palette/Palette$Filter;->isAllowed(I[F)Z

    .line 538
    move-result v11

    .line 541
    if-nez v11, :cond_13

    .line 542
    move v3, v10

    .line 544
    goto :goto_f

    .line 545
    :cond_13
    add-int/lit8 v7, v7, 0x1

    .line 546
    goto :goto_e

    .line 548
    :cond_14
    const/4 v3, 0x0

    .line 549
    :goto_f
    if-nez v3, :cond_11

    .line 550
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    goto/16 :goto_c

    .line 555
    :cond_15
    iput-object v2, v0, Lcom/miui/miwallpaper/material/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 557
    :cond_16
    return-void
    .line 559
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
