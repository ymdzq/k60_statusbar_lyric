.class public final Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final access$getBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getOverrideTag()I

    .line 4
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    instance-of p1, p0, Ljava/lang/Integer;

    .line 12
    if-eqz p1, :cond_0

    .line 14
    check-cast p0, Ljava/lang/Integer;

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return-object p0
    .line 20
.end method

.method public static addListener(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;Z)V
    .locals 3

    .line 1
    const v0, 0x7f0a094f    # @id/tag_layout_listener

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    instance-of v2, v1, Landroid/view/View$OnLayoutChangeListener;

    .line 11
    if-eqz v2, :cond_0

    .line 13
    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    .line 15
    invoke-virtual {p0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 20
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 23
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 26
    if-eqz v0, :cond_1

    .line 28
    if-eqz p2, :cond_1

    .line 30
    check-cast p0, Landroid/view/ViewGroup;

    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 34
    move-result p2

    .line 37
    const/4 v0, 0x0

    .line 38
    :goto_0
    if-ge v0, p2, :cond_1

    .line 39
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 41
    move-result-object v1

    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-static {v1, p1, v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->addListener(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;Z)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 49
    goto :goto_0

    .line 51
    :cond_1
    return-void
    .line 52
.end method

.method public static animateRemoval(Landroid/view/View;Landroid/view/animation/Interpolator;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;)Z
    .locals 25

    .line 1
    move-object/from16 v9, p0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    .line 8
    move-result v1

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    .line 12
    move-result v2

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    .line 16
    move-result v3

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    .line 20
    move-result v4

    .line 23
    const/16 v5, 0x8

    .line 24
    const/4 v10, 0x0

    .line 26
    const/4 v11, 0x1

    .line 27
    if-eq v0, v5, :cond_0

    .line 28
    if-eq v1, v3, :cond_0

    .line 30
    if-eq v2, v4, :cond_0

    .line 32
    move v0, v11

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v0, v10

    .line 36
    :goto_0
    if-nez v0, :cond_1

    .line 37
    return v10

    .line 39
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 40
    move-result-object v0

    .line 43
    check-cast v0, Landroid/view/ViewGroup;

    .line 44
    const/4 v5, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    new-instance v8, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;

    .line 49
    const-wide/16 v2, 0xfa

    .line 51
    move-object v1, v8

    .line 53
    move-object/from16 v4, p1

    .line 54
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;-><init>(JLandroid/view/animation/Interpolator;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Ljava/lang/Runnable;Z)V

    .line 56
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 59
    move-result v1

    .line 62
    move v2, v10

    .line 63
    :goto_1
    if-ge v2, v1, :cond_3

    .line 64
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 66
    move-result-object v3

    .line 69
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    move-result v4

    .line 73
    if-nez v4, :cond_2

    .line 74
    invoke-static {v3, v8, v10}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->addListener(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;Z)V

    .line 76
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 79
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 82
    move-result v1

    .line 85
    if-le v1, v11, :cond_4

    .line 86
    move v1, v11

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    move v1, v10

    .line 90
    :goto_2
    if-eqz v1, :cond_5

    .line 91
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 96
    move-result-object v2

    .line 99
    invoke-virtual {v2, v9}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 100
    :cond_5
    new-instance v8, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$endRunnable$1;

    .line 103
    move-object/from16 v2, p2

    .line 105
    invoke-direct {v8, v1, v0, v9, v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$endRunnable$1;-><init>(ZLandroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;)V

    .line 107
    sget-object v12, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    .line 112
    move-result v0

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v0

    .line 119
    new-instance v1, Lkotlin/Pair;

    .line 120
    invoke-direct {v1, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    sget-object v13, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    .line 127
    move-result v0

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v0

    .line 134
    new-instance v2, Lkotlin/Pair;

    .line 135
    invoke-direct {v2, v13, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    sget-object v14, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    .line 142
    move-result v0

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v0

    .line 149
    new-instance v3, Lkotlin/Pair;

    .line 150
    invoke-direct {v3, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    sget-object v15, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

    .line 155
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    .line 157
    move-result v0

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    move-result-object v0

    .line 164
    new-instance v4, Lkotlin/Pair;

    .line 165
    invoke-direct {v4, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    filled-new-array {v1, v2, v3, v4}, [Lkotlin/Pair;

    .line 170
    move-result-object v0

    .line 173
    invoke-static {v0}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 174
    move-result-object v2

    .line 177
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    .line 178
    move-result v0

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    .line 182
    move-result v1

    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    .line 186
    move-result v3

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 193
    move-result-object v4

    .line 196
    instance-of v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 197
    if-eqz v4, :cond_6

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 201
    move-result-object v4

    .line 204
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 205
    new-instance v5, Lcom/android/systemui/animation/ViewHierarchyAnimator$DimenHolder;

    .line 207
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 209
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 211
    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 213
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 215
    invoke-direct {v5, v6, v7, v11, v4}, Lcom/android/systemui/animation/ViewHierarchyAnimator$DimenHolder;-><init>(IIII)V

    .line 217
    goto :goto_3

    .line 220
    :cond_6
    new-instance v5, Lcom/android/systemui/animation/ViewHierarchyAnimator$DimenHolder;

    .line 221
    invoke-direct {v5, v10, v10, v10, v10}, Lcom/android/systemui/animation/ViewHierarchyAnimator$DimenHolder;-><init>(IIII)V

    .line 223
    :goto_3
    iget v4, v5, Lcom/android/systemui/animation/ViewHierarchyAnimator$DimenHolder;->top:I

    .line 226
    sub-int/2addr v1, v4

    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    move-result-object v4

    .line 232
    new-instance v5, Lkotlin/Pair;

    .line 233
    invoke-direct {v5, v13, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    move-result-object v1

    .line 241
    new-instance v4, Lkotlin/Pair;

    .line 242
    invoke-direct {v4, v15, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    move-result-object v0

    .line 250
    new-instance v1, Lkotlin/Pair;

    .line 251
    invoke-direct {v1, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    move-result-object v0

    .line 259
    new-instance v3, Lkotlin/Pair;

    .line 260
    invoke-direct {v3, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    filled-new-array {v5, v4, v1, v3}, [Lkotlin/Pair;

    .line 265
    move-result-object v0

    .line 268
    invoke-static {v0}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 269
    move-result-object v11

    .line 272
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 273
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 275
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    .line 278
    move-result v0

    .line 281
    invoke-static {v11, v12}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    move-result-object v3

    .line 285
    check-cast v3, Ljava/lang/Number;

    .line 286
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 288
    move-result v3

    .line 291
    if-eq v0, v3, :cond_7

    .line 292
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    .line 297
    move-result v0

    .line 300
    invoke-static {v11, v13}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    move-result-object v3

    .line 304
    check-cast v3, Ljava/lang/Number;

    .line 305
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 307
    move-result v3

    .line 310
    if-eq v0, v3, :cond_8

    .line 311
    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    .line 316
    move-result v0

    .line 319
    invoke-static {v11, v14}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    move-result-object v3

    .line 323
    check-cast v3, Ljava/lang/Number;

    .line 324
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 326
    move-result v3

    .line 329
    if-eq v0, v3, :cond_9

    .line 330
    invoke-interface {v1, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    .line 335
    move-result v0

    .line 338
    invoke-static {v11, v15}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    move-result-object v3

    .line 342
    check-cast v3, Ljava/lang/Number;

    .line 343
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 345
    move-result v3

    .line 348
    if-eq v0, v3, :cond_a

    .line 349
    invoke-interface {v1, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_a
    const/4 v7, 0x1

    .line 354
    const-wide/16 v5, 0xfa

    .line 355
    move-object/from16 v0, p0

    .line 357
    move-object v3, v11

    .line 359
    move-object/from16 v4, p1

    .line 360
    invoke-static/range {v0 .. v8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->startAnimation(Landroid/view/View;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Landroid/view/animation/Interpolator;JZLjava/lang/Runnable;)V

    .line 362
    move-object v0, v9

    .line 365
    check-cast v0, Landroid/view/ViewGroup;

    .line 366
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 368
    move-result v1

    .line 371
    move v2, v10

    .line 372
    :goto_4
    const/4 v3, 0x2

    .line 373
    if-ge v2, v1, :cond_f

    .line 374
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 376
    move-result-object v16

    .line 379
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    .line 380
    move-result v4

    .line 383
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    move-result-object v4

    .line 387
    new-instance v5, Lkotlin/Pair;

    .line 388
    invoke-direct {v5, v12, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 390
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    .line 393
    move-result v4

    .line 396
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    move-result-object v4

    .line 400
    new-instance v6, Lkotlin/Pair;

    .line 401
    invoke-direct {v6, v13, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 403
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    .line 406
    move-result v4

    .line 409
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    move-result-object v4

    .line 413
    new-instance v7, Lkotlin/Pair;

    .line 414
    invoke-direct {v7, v14, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 416
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    .line 419
    move-result v4

    .line 422
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 423
    move-result-object v4

    .line 426
    new-instance v8, Lkotlin/Pair;

    .line 427
    invoke-direct {v8, v15, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 429
    filled-new-array {v5, v6, v7, v8}, [Lkotlin/Pair;

    .line 432
    move-result-object v4

    .line 435
    invoke-static {v4}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 436
    move-result-object v18

    .line 439
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    .line 440
    move-result v4

    .line 443
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    .line 444
    move-result v5

    .line 447
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    .line 448
    move-result v6

    .line 451
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    .line 452
    move-result v7

    .line 455
    invoke-static {v11, v14}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    move-result-object v8

    .line 459
    check-cast v8, Ljava/lang/Number;

    .line 460
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 462
    invoke-static {v11, v12}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    move-result-object v8

    .line 468
    check-cast v8, Ljava/lang/Number;

    .line 469
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 471
    invoke-static {v11, v15}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    move-result-object v8

    .line 477
    check-cast v8, Ljava/lang/Number;

    .line 478
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 480
    invoke-static {v11, v13}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    move-result-object v8

    .line 486
    check-cast v8, Ljava/lang/Number;

    .line 487
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 489
    sub-int v8, v6, v4

    .line 492
    div-int/2addr v8, v3

    .line 494
    sub-int/2addr v7, v5

    .line 495
    div-int/2addr v7, v3

    .line 496
    neg-int v3, v7

    .line 497
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 498
    move-result-object v4

    .line 501
    new-instance v5, Lkotlin/Pair;

    .line 502
    invoke-direct {v5, v12, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 504
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    move-result-object v3

    .line 510
    new-instance v4, Lkotlin/Pair;

    .line 511
    invoke-direct {v4, v13, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 513
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 516
    move-result-object v3

    .line 519
    new-instance v6, Lkotlin/Pair;

    .line 520
    invoke-direct {v6, v14, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 522
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 525
    move-result-object v3

    .line 528
    new-instance v7, Lkotlin/Pair;

    .line 529
    invoke-direct {v7, v15, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 531
    filled-new-array {v5, v4, v6, v7}, [Lkotlin/Pair;

    .line 534
    move-result-object v3

    .line 537
    invoke-static {v3}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 538
    move-result-object v19

    .line 541
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 542
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 544
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    .line 547
    move-result v4

    .line 550
    invoke-static {v11, v12}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    move-result-object v5

    .line 554
    check-cast v5, Ljava/lang/Number;

    .line 555
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 557
    move-result v5

    .line 560
    if-eq v4, v5, :cond_b

    .line 561
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_b
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    .line 566
    move-result v4

    .line 569
    invoke-static {v11, v13}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    move-result-object v5

    .line 573
    check-cast v5, Ljava/lang/Number;

    .line 574
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 576
    move-result v5

    .line 579
    if-eq v4, v5, :cond_c

    .line 580
    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 582
    :cond_c
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    .line 585
    move-result v4

    .line 588
    invoke-static {v11, v14}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    move-result-object v5

    .line 592
    check-cast v5, Ljava/lang/Number;

    .line 593
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 595
    move-result v5

    .line 598
    if-eq v4, v5, :cond_d

    .line 599
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_d
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    .line 604
    move-result v4

    .line 607
    invoke-static {v11, v15}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    move-result-object v5

    .line 611
    check-cast v5, Ljava/lang/Number;

    .line 612
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 614
    move-result v5

    .line 617
    if-eq v4, v5, :cond_e

    .line 618
    invoke-interface {v3, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_e
    const/16 v23, 0x1

    .line 623
    const/16 v24, 0x0

    .line 625
    const-wide/16 v21, 0xfa

    .line 627
    move-object/from16 v17, v3

    .line 629
    move-object/from16 v20, p1

    .line 631
    invoke-static/range {v16 .. v24}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->startAnimation(Landroid/view/View;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Landroid/view/animation/Interpolator;JZLjava/lang/Runnable;)V

    .line 633
    add-int/lit8 v2, v2, 0x1

    .line 636
    goto/16 :goto_4

    .line 638
    :cond_f
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 640
    move-result v1

    .line 643
    new-array v1, v1, [F

    .line 644
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 646
    move-result v2

    .line 649
    :goto_5
    if-ge v10, v2, :cond_10

    .line 650
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 652
    move-result-object v4

    .line 655
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    .line 656
    move-result v4

    .line 659
    aput v4, v1, v10

    .line 660
    add-int/lit8 v10, v10, 0x1

    .line 662
    goto :goto_5

    .line 664
    :cond_10
    new-array v0, v3, [F

    .line 665
    fill-array-data v0, :array_0

    .line 667
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 670
    move-result-object v0

    .line 673
    sget-object v2, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 674
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 676
    int-to-long v2, v3

    .line 679
    const-wide/16 v4, 0xfa

    .line 680
    div-long/2addr v4, v2

    .line 682
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 683
    new-instance v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$1;

    .line 686
    invoke-direct {v2, v9, v1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$1;-><init>(Landroid/view/View;[F)V

    .line 688
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 691
    new-instance v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;

    .line 694
    invoke-direct {v1, v9}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;-><init>(Landroid/view/View;)V

    .line 696
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 699
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 702
    const/4 v0, 0x1

    .line 705
    return v0

    .line 706
    nop

    .line 707
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 708
.end method

.method public static createAndStartFadeInAnimator(Landroid/view/View;JJLandroid/view/animation/Interpolator;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [F

    .line 3
    const/4 v1, 0x0

    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    aput v2, v0, v1

    .line 8
    const-string v1, "alpha"

    .line 10
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0, p3, p4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 16
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 19
    invoke-virtual {v0, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 22
    new-instance p1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createAndStartFadeInAnimator$1;

    .line 25
    invoke-direct {p1, p0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createAndStartFadeInAnimator$1;-><init>(Landroid/view/View;)V

    .line 27
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    const p1, 0x7f0a0947    # @id/tag_alpha_animator

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 36
    move-result-object p2

    .line 39
    instance-of p3, p2, Landroid/animation/ObjectAnimator;

    .line 40
    if-eqz p3, :cond_0

    .line 42
    check-cast p2, Landroid/animation/ObjectAnimator;

    .line 44
    goto :goto_0

    .line 46
    :cond_0
    const/4 p2, 0x0

    .line 47
    :goto_0
    if-eqz p2, :cond_1

    .line 48
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 50
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 53
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 56
    return-void
    .line 59
.end method

.method public static recursivelyRemoveListener(Landroid/view/View;)V
    .locals 3

    .line 1
    const v0, 0x7f0a094f    # @id/tag_layout_listener

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    instance-of v2, v1, Landroid/view/View$OnLayoutChangeListener;

    .line 11
    if-eqz v2, :cond_0

    .line 13
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 16
    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 21
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    check-cast p0, Landroid/view/ViewGroup;

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 30
    move-result v0

    .line 33
    const/4 v1, 0x0

    .line 34
    :goto_0
    if-ge v1, v0, :cond_1

    .line 35
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    move-result-object v2

    .line 40
    invoke-static {v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->recursivelyRemoveListener(Landroid/view/View;)V

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    return-void
    .line 47
.end method

.method public static setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getOverrideTag()I

    .line 2
    move-result v0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10
    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->setValue(ILandroid/view/View;)V

    .line 13
    return-void
    .line 16
.end method

.method public static startAnimation(Landroid/view/View;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Landroid/view/animation/Interpolator;JZLjava/lang/Runnable;)V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/collections/builders/ListBuilder;

    .line 2
    invoke-direct {v0}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .line 21
    sget-object v3, Lcom/android/systemui/animation/ViewHierarchyAnimator;->PROPERTIES:Ljava/util/Map;

    .line 23
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 28
    check-cast v3, Landroid/util/Property;

    .line 29
    invoke-static {p2, v2}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/Number;

    .line 35
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 37
    move-result v4

    .line 40
    invoke-static {p3, v2}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/Number;

    .line 45
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 47
    move-result v2

    .line 50
    filled-new-array {v4, v2}, [I

    .line 51
    move-result-object v2

    .line 54
    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    .line 55
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder;->build()V

    .line 63
    const/4 p3, 0x0

    .line 66
    new-array p3, p3, [Landroid/animation/PropertyValuesHolder;

    .line 67
    invoke-virtual {v0, p3}, Lkotlin/collections/builders/ListBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    move-result-object p3

    .line 72
    check-cast p3, [Landroid/animation/PropertyValuesHolder;

    .line 73
    const v0, 0x7f0a0949    # @id/tag_animator

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 78
    move-result-object v1

    .line 81
    instance-of v2, v1, Landroid/animation/ObjectAnimator;

    .line 82
    if-eqz v2, :cond_1

    .line 84
    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 86
    goto :goto_1

    .line 88
    :cond_1
    const/4 v1, 0x0

    .line 89
    :goto_1
    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 92
    :cond_2
    array-length v1, p3

    .line 95
    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 96
    move-result-object p3

    .line 99
    check-cast p3, [Landroid/animation/PropertyValuesHolder;

    .line 100
    invoke-static {p0, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 102
    move-result-object p3

    .line 105
    invoke-virtual {p3, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 106
    invoke-virtual {p3, p5, p6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 109
    new-instance p4, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;

    .line 112
    invoke-direct {p4, p0, p1, p7, p8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;-><init>(Landroid/view/View;Ljava/util/Set;ZLjava/lang/Runnable;)V

    .line 114
    invoke-virtual {p3, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 117
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    move-result-object p1

    .line 123
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    move-result p4

    .line 127
    if-eqz p4, :cond_3

    .line 128
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    move-result-object p4

    .line 133
    check-cast p4, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .line 134
    sget-object p5, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    .line 136
    invoke-static {p2, p4}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    move-result-object p5

    .line 141
    check-cast p5, Ljava/lang/Number;

    .line 142
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    .line 144
    move-result p5

    .line 147
    invoke-static {p0, p4, p5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    .line 148
    goto :goto_2

    .line 151
    :cond_3
    invoke-virtual {p0, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 152
    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->start()V

    .line 155
    return-void
    .line 158
.end method
