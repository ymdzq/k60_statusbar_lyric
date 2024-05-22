.class public final Lcom/android/systemui/animation/TextAnimator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final animator:Landroid/animation/ValueAnimator;

.field public final fontVariationUtils:Lcom/android/systemui/animation/FontVariationUtils;

.field public final invalidateCallback:Lkotlin/jvm/functions/Function0;

.field public final textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

.field public final typefaceCache:Lcom/android/systemui/animation/TypefaceVariantCacheImpl;


# direct methods
.method public constructor <init>(Landroid/text/Layout;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/animation/TextAnimator;->invalidateCallback:Lkotlin/jvm/functions/Function0;

    .line 5
    new-instance p3, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;

    .line 7
    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    .line 13
    move-result-object v0

    .line 16
    invoke-direct {p3, v0}, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;-><init>(Landroid/graphics/Typeface;)V

    .line 17
    iput-object p3, p0, Lcom/android/systemui/animation/TextAnimator;->typefaceCache:Lcom/android/systemui/animation/TypefaceVariantCacheImpl;

    .line 20
    new-instance v0, Lcom/android/systemui/animation/TextInterpolator;

    .line 22
    invoke-direct {v0, p1, p3, p2}, Lcom/android/systemui/animation/TextInterpolator;-><init>(Landroid/text/Layout;Lcom/android/systemui/animation/TypefaceVariantCacheImpl;Ljava/lang/Integer;)V

    .line 24
    iput-object v0, p0, Lcom/android/systemui/animation/TextAnimator;->textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

    .line 27
    const/4 p1, 0x1

    .line 29
    new-array p1, p1, [F

    .line 30
    const/4 p3, 0x0

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    aput v0, p1, p3

    .line 35
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 37
    move-result-object p1

    .line 40
    const-wide/16 v0, 0x12c

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43
    new-instance p3, Lcom/android/systemui/animation/TextAnimator$animator$1$1;

    .line 46
    invoke-direct {p3, p0, p2}, Lcom/android/systemui/animation/TextAnimator$animator$1$1;-><init>(Lcom/android/systemui/animation/TextAnimator;Ljava/lang/Integer;)V

    .line 48
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 51
    new-instance p2, Lcom/android/systemui/animation/TextAnimator$animator$1$2;

    .line 54
    invoke-direct {p2, p0}, Lcom/android/systemui/animation/TextAnimator$animator$1$2;-><init>(Lcom/android/systemui/animation/TextAnimator;)V

    .line 56
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/animation/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    .line 62
    new-instance p1, Lcom/android/systemui/animation/FontVariationUtils;

    .line 64
    invoke-direct {p1}, Lcom/android/systemui/animation/FontVariationUtils;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/systemui/animation/TextAnimator;->fontVariationUtils:Lcom/android/systemui/animation/FontVariationUtils;

    .line 69
    return-void
    .line 71
.end method

.method public static setTextStyle$default(Lcom/android/systemui/animation/TextAnimator;IFLjava/lang/Integer;ZJLandroid/animation/TimeInterpolator;JLjava/lang/Runnable;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move-object/from16 v3, p7

    .line 8
    move-object/from16 v4, p10

    .line 10
    iget-object v5, v0, Lcom/android/systemui/animation/TextAnimator;->fontVariationUtils:Lcom/android/systemui/animation/FontVariationUtils;

    .line 12
    const/4 v6, 0x0

    .line 14
    iput-boolean v6, v5, Lcom/android/systemui/animation/FontVariationUtils;->isUpdated:Z

    .line 15
    const/4 v7, 0x1

    .line 17
    if-ltz v1, :cond_0

    .line 18
    iget v8, v5, Lcom/android/systemui/animation/FontVariationUtils;->mWeight:I

    .line 20
    if-eq v8, v1, :cond_0

    .line 22
    iput-boolean v7, v5, Lcom/android/systemui/animation/FontVariationUtils;->isUpdated:Z

    .line 24
    iput v1, v5, Lcom/android/systemui/animation/FontVariationUtils;->mWeight:I

    .line 26
    :cond_0
    iget v1, v5, Lcom/android/systemui/animation/FontVariationUtils;->mWeight:I

    .line 28
    const-string v8, ""

    .line 30
    if-ltz v1, :cond_1

    .line 32
    const-string v9, "\'wght\' "

    .line 34
    invoke-static {v9, v1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v1, v8

    .line 41
    :goto_0
    iget v9, v5, Lcom/android/systemui/animation/FontVariationUtils;->mWidth:I

    .line 42
    const-string v10, ", "

    .line 44
    if-ltz v9, :cond_3

    .line 46
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 48
    move-result v9

    .line 51
    if-eqz v9, :cond_2

    .line 52
    move-object v9, v8

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move-object v9, v10

    .line 56
    :goto_1
    iget v11, v5, Lcom/android/systemui/animation/FontVariationUtils;->mWidth:I

    .line 57
    new-instance v12, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, "\'wdth\' "

    .line 70
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 81
    :cond_3
    iget v9, v5, Lcom/android/systemui/animation/FontVariationUtils;->mOpticalSize:I

    .line 82
    if-ltz v9, :cond_5

    .line 84
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 86
    move-result v9

    .line 89
    if-eqz v9, :cond_4

    .line 90
    move-object v9, v8

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    move-object v9, v10

    .line 94
    :goto_2
    iget v11, v5, Lcom/android/systemui/animation/FontVariationUtils;->mOpticalSize:I

    .line 95
    new-instance v12, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, "\'opsz\' "

    .line 108
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 119
    :cond_5
    iget v9, v5, Lcom/android/systemui/animation/FontVariationUtils;->mRoundness:I

    .line 120
    if-ltz v9, :cond_7

    .line 122
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 124
    move-result v9

    .line 127
    if-eqz v9, :cond_6

    .line 128
    move-object v9, v8

    .line 130
    goto :goto_3

    .line 131
    :cond_6
    move-object v9, v10

    .line 132
    :goto_3
    iget v11, v5, Lcom/android/systemui/animation/FontVariationUtils;->mRoundness:I

    .line 133
    new-instance v12, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "\'ROND\' "

    .line 146
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v1

    .line 157
    :cond_7
    iget-boolean v5, v5, Lcom/android/systemui/animation/FontVariationUtils;->isUpdated:Z

    .line 158
    if-eqz v5, :cond_8

    .line 160
    move-object v8, v1

    .line 162
    :cond_8
    iget-object v1, v0, Lcom/android/systemui/animation/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    .line 163
    iget-object v5, v0, Lcom/android/systemui/animation/TextAnimator;->textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

    .line 165
    if-eqz p4, :cond_9

    .line 167
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 169
    invoke-virtual {v5}, Lcom/android/systemui/animation/TextInterpolator;->rebase()V

    .line 172
    :cond_9
    const/4 v9, 0x0

    .line 175
    cmpl-float v9, v2, v9

    .line 176
    if-ltz v9, :cond_a

    .line 178
    iget-object v9, v5, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    .line 180
    invoke-virtual {v9, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 182
    :cond_a
    if-eqz v8, :cond_c

    .line 185
    invoke-static {v8}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 187
    move-result v2

    .line 190
    if-eqz v2, :cond_b

    .line 191
    goto :goto_4

    .line 193
    :cond_b
    move v2, v6

    .line 194
    goto :goto_5

    .line 195
    :cond_c
    :goto_4
    move v2, v7

    .line 196
    :goto_5
    if-nez v2, :cond_d

    .line 197
    iget-object v2, v5, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    .line 199
    iget-object v9, v0, Lcom/android/systemui/animation/TextAnimator;->typefaceCache:Lcom/android/systemui/animation/TypefaceVariantCacheImpl;

    .line 201
    invoke-virtual {v9, v8}, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;->getTypefaceForVariant(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 203
    move-result-object v8

    .line 206
    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 207
    :cond_d
    if-eqz p3, :cond_e

    .line 210
    iget-object v2, v5, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    .line 212
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    .line 214
    move-result v8

    .line 217
    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 218
    :cond_e
    iget-object v2, v5, Lcom/android/systemui/animation/TextInterpolator;->layout:Landroid/text/Layout;

    .line 221
    iget-object v8, v5, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    .line 223
    invoke-static {v2, v8}, Lcom/android/systemui/animation/TextInterpolator;->shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/List;

    .line 225
    move-result-object v2

    .line 228
    move-object v8, v2

    .line 229
    check-cast v8, Ljava/util/ArrayList;

    .line 230
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 232
    move-result v9

    .line 235
    iget-object v11, v5, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    .line 236
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 238
    move-result v11

    .line 241
    if-ne v9, v11, :cond_f

    .line 242
    move v6, v7

    .line 244
    :cond_f
    if-eqz v6, :cond_20

    .line 245
    iget-object v6, v5, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    .line 247
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 249
    move-result-object v7

    .line 252
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 253
    move-result-object v8

    .line 256
    new-instance v9, Ljava/util/ArrayList;

    .line 257
    invoke-static {v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 259
    move-result v6

    .line 262
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 263
    move-result v2

    .line 266
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    .line 267
    move-result v2

    .line 270
    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 271
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    move-result v2

    .line 277
    if-eqz v2, :cond_1b

    .line 278
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    move-result v2

    .line 283
    if-eqz v2, :cond_1b

    .line 284
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    move-result-object v2

    .line 289
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    move-result-object v6

    .line 293
    check-cast v6, Ljava/util/List;

    .line 294
    check-cast v2, Lcom/android/systemui/animation/TextInterpolator$Line;

    .line 296
    iget-object v2, v2, Lcom/android/systemui/animation/TextInterpolator$Line;->runs:Ljava/util/List;

    .line 298
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 300
    move-result-object v11

    .line 303
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 304
    move-result-object v12

    .line 307
    new-instance v13, Ljava/util/ArrayList;

    .line 308
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 310
    move-result v2

    .line 313
    invoke-static {v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 314
    move-result v6

    .line 317
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    .line 318
    move-result v2

    .line 321
    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 322
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 325
    move-result v2

    .line 328
    if-eqz v2, :cond_1a

    .line 329
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 331
    move-result v2

    .line 334
    if-eqz v2, :cond_1a

    .line 335
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 337
    move-result-object v2

    .line 340
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 341
    move-result-object v6

    .line 344
    check-cast v6, Landroid/graphics/text/PositionedGlyphs;

    .line 345
    check-cast v2, Lcom/android/systemui/animation/TextInterpolator$Run;

    .line 347
    invoke-virtual {v6}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    .line 349
    move-result v14

    .line 352
    iget-object v15, v2, Lcom/android/systemui/animation/TextInterpolator$Run;->glyphIds:[I

    .line 353
    array-length v15, v15

    .line 355
    if-ne v14, v15, :cond_10

    .line 356
    const/4 v14, 0x1

    .line 358
    goto :goto_8

    .line 359
    :cond_10
    const/4 v14, 0x0

    .line 360
    :goto_8
    if-eqz v14, :cond_19

    .line 361
    iget-object v14, v2, Lcom/android/systemui/animation/TextInterpolator$Run;->fontRuns:Ljava/util/List;

    .line 363
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 365
    move-result-object v14

    .line 368
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    move-result v15

    .line 372
    if-eqz v15, :cond_17

    .line 373
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    move-result-object v15

    .line 378
    check-cast v15, Lcom/android/systemui/animation/TextInterpolator$FontRun;

    .line 379
    move-object/from16 p1, v7

    .line 381
    iget v7, v15, Lcom/android/systemui/animation/TextInterpolator$FontRun;->start:I

    .line 383
    invoke-virtual {v6, v7}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    .line 385
    move-result-object v7

    .line 388
    move-object/from16 p2, v8

    .line 389
    iget v8, v15, Lcom/android/systemui/animation/TextInterpolator$FontRun;->start:I

    .line 391
    move-object/from16 p3, v11

    .line 393
    move-object/from16 v16, v12

    .line 395
    move v11, v8

    .line 397
    :goto_a
    iget v12, v15, Lcom/android/systemui/animation/TextInterpolator$FontRun;->end:I

    .line 398
    if-ge v11, v12, :cond_15

    .line 400
    invoke-virtual {v6, v8}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    .line 402
    move-result v12

    .line 405
    move-object/from16 v17, v14

    .line 406
    iget-object v14, v2, Lcom/android/systemui/animation/TextInterpolator$Run;->glyphIds:[I

    .line 408
    aget v14, v14, v8

    .line 410
    if-ne v12, v14, :cond_11

    .line 412
    const/4 v12, 0x1

    .line 414
    goto :goto_b

    .line 415
    :cond_11
    const/4 v12, 0x0

    .line 416
    :goto_b
    if-eqz v12, :cond_14

    .line 417
    invoke-virtual {v6, v11}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    .line 419
    move-result-object v12

    .line 422
    if-ne v7, v12, :cond_12

    .line 423
    const/4 v12, 0x1

    .line 425
    goto :goto_c

    .line 426
    :cond_12
    const/4 v12, 0x0

    .line 427
    :goto_c
    if-eqz v12, :cond_13

    .line 428
    add-int/lit8 v11, v11, 0x1

    .line 430
    move-object/from16 v14, v17

    .line 432
    goto :goto_a

    .line 434
    :cond_13
    invoke-virtual {v6, v11}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    .line 435
    move-result-object v0

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    .line 439
    const-string v2, "The new layout has different font run. "

    .line 441
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 446
    const-string v2, " vs "

    .line 449
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 454
    const-string v0, " at "

    .line 457
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    move-result-object v0

    .line 468
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 469
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 471
    move-result-object v0

    .line 474
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 475
    throw v1

    .line 478
    :cond_14
    const-string v0, "The new layout has different glyph ID at "

    .line 479
    invoke-static {v0, v8}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 481
    move-result-object v0

    .line 484
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 485
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 487
    move-result-object v0

    .line 490
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 491
    throw v1

    .line 494
    :cond_15
    move-object/from16 v17, v14

    .line 495
    sget-boolean v8, Lcom/android/systemui/animation/FontInterpolator;->DEBUG:Z

    .line 497
    iget-object v8, v15, Lcom/android/systemui/animation/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    .line 499
    invoke-static {v7, v8}, Lcom/android/systemui/animation/FontInterpolator$Companion;->canInterpolate(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)Z

    .line 501
    move-result v8

    .line 504
    if-eqz v8, :cond_16

    .line 505
    iput-object v7, v15, Lcom/android/systemui/animation/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    .line 507
    move-object/from16 v7, p1

    .line 509
    move-object/from16 v8, p2

    .line 511
    move-object/from16 v11, p3

    .line 513
    move-object/from16 v12, v16

    .line 515
    move-object/from16 v14, v17

    .line 517
    goto/16 :goto_9

    .line 519
    :cond_16
    iget-object v0, v15, Lcom/android/systemui/animation/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    .line 523
    const-string v2, "New font cannot be interpolated with existing font. "

    .line 525
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    move-result-object v0

    .line 542
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 543
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 545
    move-result-object v0

    .line 548
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 549
    throw v1

    .line 552
    :cond_17
    move-object/from16 p1, v7

    .line 553
    move-object/from16 p2, v8

    .line 555
    move-object/from16 p3, v11

    .line 557
    move-object/from16 v16, v12

    .line 559
    iget-object v7, v2, Lcom/android/systemui/animation/TextInterpolator$Run;->baseX:[F

    .line 561
    array-length v7, v7

    .line 563
    const/4 v8, 0x0

    .line 564
    :goto_d
    if-ge v8, v7, :cond_18

    .line 565
    invoke-virtual {v6, v8}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    .line 567
    move-result v11

    .line 570
    iget-object v12, v2, Lcom/android/systemui/animation/TextInterpolator$Run;->targetX:[F

    .line 571
    aput v11, v12, v8

    .line 573
    invoke-virtual {v6, v8}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    .line 575
    move-result v11

    .line 578
    iget-object v12, v2, Lcom/android/systemui/animation/TextInterpolator$Run;->targetY:[F

    .line 579
    aput v11, v12, v8

    .line 581
    add-int/lit8 v8, v8, 0x1

    .line 583
    goto :goto_d

    .line 585
    :cond_18
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 586
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    move-object/from16 v7, p1

    .line 591
    move-object/from16 v8, p2

    .line 593
    move-object/from16 v11, p3

    .line 595
    move-object/from16 v12, v16

    .line 597
    goto/16 :goto_7

    .line 599
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 601
    const-string v1, "The new layout has different glyph count."

    .line 603
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 605
    move-result-object v1

    .line 608
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 609
    throw v0

    .line 612
    :cond_1a
    move-object/from16 p1, v7

    .line 613
    move-object/from16 p2, v8

    .line 615
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    move-object/from16 v7, p1

    .line 620
    move-object/from16 v8, p2

    .line 622
    goto/16 :goto_6

    .line 624
    :cond_1b
    if-eqz p4, :cond_1f

    .line 626
    move-wide/from16 v6, p8

    .line 628
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 630
    const-wide/16 v5, -0x1

    .line 633
    cmp-long v2, p5, v5

    .line 635
    if-nez v2, :cond_1c

    .line 637
    const-wide/16 v5, 0x12c

    .line 639
    goto :goto_e

    .line 641
    :cond_1c
    move-wide/from16 v5, p5

    .line 642
    :goto_e
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 644
    if-eqz v3, :cond_1d

    .line 647
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 649
    :cond_1d
    if-eqz v4, :cond_1e

    .line 652
    new-instance v2, Lcom/android/systemui/animation/TextAnimator$setTextStyle$listener$1;

    .line 654
    invoke-direct {v2, v4, v0}, Lcom/android/systemui/animation/TextAnimator$setTextStyle$listener$1;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/animation/TextAnimator;)V

    .line 656
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 659
    :cond_1e
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 662
    goto :goto_f

    .line 665
    :cond_1f
    const/high16 v1, 0x3f800000    # 1.0f

    .line 666
    iput v1, v5, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    .line 668
    invoke-virtual {v5}, Lcom/android/systemui/animation/TextInterpolator;->rebase()V

    .line 670
    iget-object v0, v0, Lcom/android/systemui/animation/TextAnimator;->invalidateCallback:Lkotlin/jvm/functions/Function0;

    .line 673
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 675
    :goto_f
    return-void

    .line 678
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 679
    const-string v1, "The new layout result has different line count."

    .line 681
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 683
    move-result-object v1

    .line 686
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 687
    throw v0
.end method
