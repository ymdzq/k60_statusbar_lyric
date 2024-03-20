.class public Lmiuix/slidingwidget/widget/SlidingLinearLayout;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final preAddViewPairs:Ljava/util/HashMap;

.field public final preLayout:[I

.field public final preRemoveViewPairs:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 6
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 3
    if-eqz p1, :cond_d

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 8
    move-result v1

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 12
    move-result v2

    .line 15
    const/4 v3, 0x3

    .line 16
    const/4 v4, 0x2

    .line 17
    const/4 v5, 0x1

    .line 18
    const/4 v6, 0x0

    .line 19
    if-ne v2, v5, :cond_0

    .line 20
    iget-object v2, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 22
    aget v2, v2, v5

    .line 24
    sub-int v2, v2, p3

    .line 26
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 28
    move-result v2

    .line 31
    iget-object v4, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 32
    aget v3, v4, v3

    .line 34
    sub-int v3, v3, p5

    .line 36
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 38
    move-result v3

    .line 41
    if-le v2, v3, :cond_1

    .line 42
    goto :goto_0

    .line 44
    :cond_0
    iget-object v2, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 45
    aget v2, v2, v6

    .line 47
    sub-int/2addr v2, p2

    .line 49
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 50
    move-result v2

    .line 53
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 54
    aget v3, v3, v4

    .line 56
    sub-int v3, v3, p4

    .line 58
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 60
    move-result v3

    .line 63
    if-le v2, v3, :cond_1

    .line 64
    :goto_0
    move v2, v5

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move v2, v6

    .line 68
    :goto_1
    move v3, v6

    .line 69
    :goto_2
    if-ge v6, v1, :cond_c

    .line 70
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 72
    move-result-object v4

    .line 75
    iget-object v7, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 76
    const-string v8, "end"

    .line 78
    const-string v9, "start"

    .line 80
    const/16 v10, 0x8

    .line 82
    if-eqz v7, :cond_6

    .line 84
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    .line 86
    move-result v7

    .line 89
    if-lez v7, :cond_6

    .line 90
    iget-object v7, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 92
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object v7

    .line 97
    check-cast v7, Landroid/util/Pair;

    .line 98
    if-eqz v7, :cond_5

    .line 100
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 102
    move-result v11

    .line 105
    if-eq v11, v10, :cond_5

    .line 106
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    .line 108
    move-result v10

    .line 111
    iget-object v11, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 112
    check-cast v11, Ljava/lang/Float;

    .line 114
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 116
    move-result v11

    .line 119
    cmpl-float v10, v10, v11

    .line 120
    if-nez v10, :cond_2

    .line 122
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    .line 124
    move-result v10

    .line 127
    iget-object v11, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 128
    check-cast v11, Ljava/lang/Float;

    .line 130
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 132
    move-result v11

    .line 135
    cmpl-float v10, v10, v11

    .line 136
    if-eqz v10, :cond_3

    .line 138
    :cond_2
    if-nez v2, :cond_3

    .line 140
    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 142
    check-cast v3, Ljava/lang/Float;

    .line 144
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 146
    move-result v3

    .line 149
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    .line 150
    move-result v5

    .line 153
    sub-float/2addr v3, v5

    .line 154
    iget-object v5, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 155
    check-cast v5, Ljava/lang/Float;

    .line 157
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 159
    move-result v5

    .line 162
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    .line 163
    move-result v7

    .line 166
    sub-float/2addr v5, v7

    .line 167
    goto :goto_3

    .line 168
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    .line 169
    move-result v10

    .line 172
    iget-object v11, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 173
    check-cast v11, Ljava/lang/Float;

    .line 175
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 177
    move-result v11

    .line 180
    cmpl-float v10, v10, v11

    .line 181
    if-nez v10, :cond_4

    .line 183
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    .line 185
    move-result v10

    .line 188
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 189
    check-cast v7, Ljava/lang/Float;

    .line 191
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 193
    move-result v7

    .line 196
    cmpl-float v7, v10, v7

    .line 197
    if-nez v7, :cond_4

    .line 199
    if-eqz v2, :cond_4

    .line 201
    iget-object v7, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 203
    aget v3, v7, v3

    .line 205
    sub-int/2addr v3, p2

    .line 207
    int-to-float v3, v3

    .line 208
    aget v5, v7, v5

    .line 209
    sub-int v5, v5, p3

    .line 211
    int-to-float v5, v5

    .line 213
    goto :goto_3

    .line 214
    :cond_4
    const/4 v3, 0x0

    .line 215
    const/4 v5, 0x0

    .line 216
    :goto_3
    new-instance v7, Lmiuix/animation/controller/AnimState;

    .line 217
    invoke-direct {v7, v9}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 219
    sget-object v10, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 222
    float-to-double v11, v3

    .line 224
    invoke-virtual {v7, v10, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 225
    move-result-object v3

    .line 228
    sget-object v7, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 229
    float-to-double v11, v5

    .line 231
    invoke-virtual {v3, v7, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 232
    move-result-object v3

    .line 235
    const-wide/16 v11, 0x0

    .line 236
    invoke-static {v8, v10, v11, v12}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 238
    move-result-object v5

    .line 241
    invoke-virtual {v5, v7, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 242
    move-result-object v5

    .line 245
    filled-new-array {v4}, [Landroid/view/View;

    .line 246
    move-result-object v7

    .line 249
    invoke-static {v7}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 250
    move-result-object v7

    .line 253
    invoke-interface {v7}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 254
    move-result-object v7

    .line 257
    invoke-interface {v7, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 258
    move-result-object v7

    .line 261
    const/4 v10, 0x0

    .line 262
    new-array v10, v10, [Lmiuix/animation/base/AnimConfig;

    .line 263
    invoke-interface {v7, v3, v5, v10}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 265
    :cond_5
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 268
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_6
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    .line 273
    if-eqz v3, :cond_b

    .line 275
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 277
    move-result v3

    .line 280
    if-lez v3, :cond_b

    .line 281
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    .line 283
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    move-result-object v3

    .line 288
    check-cast v3, Landroid/util/Pair;

    .line 289
    if-eqz v3, :cond_a

    .line 291
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 293
    move-result v5

    .line 296
    const/16 v7, 0x8

    .line 297
    if-eq v5, v7, :cond_a

    .line 299
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    .line 301
    move-result v5

    .line 304
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 305
    check-cast v7, Ljava/lang/Float;

    .line 307
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 309
    move-result v7

    .line 312
    cmpl-float v5, v5, v7

    .line 313
    if-nez v5, :cond_7

    .line 315
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    .line 317
    move-result v5

    .line 320
    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 321
    check-cast v7, Ljava/lang/Float;

    .line 323
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 325
    move-result v7

    .line 328
    cmpl-float v5, v5, v7

    .line 329
    if-eqz v5, :cond_8

    .line 331
    :cond_7
    if-nez v2, :cond_8

    .line 333
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 335
    check-cast v5, Ljava/lang/Float;

    .line 337
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 339
    move-result v5

    .line 342
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    .line 343
    move-result v7

    .line 346
    sub-float/2addr v5, v7

    .line 347
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 348
    check-cast v3, Ljava/lang/Float;

    .line 350
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 352
    move-result v3

    .line 355
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    .line 356
    move-result v7

    .line 359
    sub-float/2addr v3, v7

    .line 360
    goto :goto_4

    .line 361
    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    .line 362
    move-result v5

    .line 365
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 366
    check-cast v7, Ljava/lang/Float;

    .line 368
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 370
    move-result v7

    .line 373
    cmpl-float v5, v5, v7

    .line 374
    if-nez v5, :cond_9

    .line 376
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    .line 378
    move-result v5

    .line 381
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 382
    check-cast v3, Ljava/lang/Float;

    .line 384
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 386
    move-result v3

    .line 389
    cmpl-float v3, v5, v3

    .line 390
    if-nez v3, :cond_9

    .line 392
    if-eqz v2, :cond_9

    .line 394
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 396
    const/4 v5, 0x0

    .line 398
    aget v5, v3, v5

    .line 399
    sub-int/2addr v5, p2

    .line 401
    int-to-float v5, v5

    .line 402
    const/4 v7, 0x1

    .line 403
    aget v3, v3, v7

    .line 404
    sub-int v3, v3, p3

    .line 406
    int-to-float v3, v3

    .line 408
    goto :goto_4

    .line 409
    :cond_9
    const/4 v3, 0x0

    .line 410
    const/4 v5, 0x0

    .line 411
    :goto_4
    new-instance v7, Lmiuix/animation/controller/AnimState;

    .line 412
    invoke-direct {v7, v9}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 414
    sget-object v9, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 417
    float-to-double v10, v5

    .line 419
    invoke-virtual {v7, v9, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 420
    move-result-object v5

    .line 423
    sget-object v7, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 424
    float-to-double v10, v3

    .line 426
    invoke-virtual {v5, v7, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 427
    move-result-object v3

    .line 430
    const-wide/16 v10, 0x0

    .line 431
    invoke-static {v8, v9, v10, v11}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 433
    move-result-object v5

    .line 436
    invoke-virtual {v5, v7, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 437
    move-result-object v5

    .line 440
    filled-new-array {v4}, [Landroid/view/View;

    .line 441
    move-result-object v7

    .line 444
    invoke-static {v7}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 445
    move-result-object v7

    .line 448
    invoke-interface {v7}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 449
    move-result-object v7

    .line 452
    invoke-interface {v7, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 453
    move-result-object v7

    .line 456
    const/4 v8, 0x0

    .line 457
    new-array v8, v8, [Lmiuix/animation/base/AnimConfig;

    .line 458
    invoke-interface {v7, v3, v5, v8}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 460
    :cond_a
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    .line 463
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 468
    const/4 v5, 0x1

    .line 470
    const/4 v3, 0x0

    .line 471
    goto/16 :goto_2

    .line 472
    :cond_c
    iget-object v1, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 474
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 476
    iget-object v1, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    .line 479
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 481
    iget-object v0, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 484
    const/4 v1, 0x0

    .line 486
    aput p2, v0, v1

    .line 487
    const/4 v1, 0x1

    .line 489
    aput p3, v0, v1

    .line 490
    const/4 v1, 0x2

    .line 492
    aput p4, v0, v1

    .line 493
    const/4 v1, 0x3

    .line 495
    aput p5, v0, v1

    .line 496
    :cond_d
    return-void
    .line 498
.end method
