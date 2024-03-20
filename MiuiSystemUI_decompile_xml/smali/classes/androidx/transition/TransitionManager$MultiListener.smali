.class public final Landroidx/transition/TransitionManager$MultiListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final mSceneRoot:Landroid/view/ViewGroup;

.field public final mTransition:Landroidx/transition/Transition;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    .line 5
    iput-object p1, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10
    iget-object v1, v0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 15
    sget-object v1, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    .line 18
    iget-object v2, v0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-nez v1, :cond_0

    .line 27
    return v2

    .line 29
    :cond_0
    invoke-static {}, Landroidx/transition/TransitionManager;->getRunningTransitions()Landroidx/collection/ArrayMap;

    .line 30
    move-result-object v1

    .line 33
    iget-object v3, v0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 34
    invoke-virtual {v1, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 39
    check-cast v3, Ljava/util/ArrayList;

    .line 40
    if-nez v3, :cond_1

    .line 42
    new-instance v3, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v5, v0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 49
    invoke-virtual {v1, v5, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result v5

    .line 58
    if-lez v5, :cond_2

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    .line 61
    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    goto :goto_1

    .line 66
    :cond_2
    :goto_0
    const/4 v5, 0x0

    .line 67
    :goto_1
    iget-object v6, v0, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    .line 68
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v3, v0, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    .line 73
    new-instance v6, Landroidx/transition/TransitionManager$MultiListener$1;

    .line 75
    invoke-direct {v6, v0, v1}, Landroidx/transition/TransitionManager$MultiListener$1;-><init>(Landroidx/transition/TransitionManager$MultiListener;Landroidx/collection/ArrayMap;)V

    .line 77
    invoke-virtual {v3, v6}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 80
    iget-object v1, v0, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    .line 83
    iget-object v3, v0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 85
    const/4 v6, 0x0

    .line 87
    invoke-virtual {v1, v3, v6}, Landroidx/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 88
    if-eqz v5, :cond_3

    .line 91
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object v1

    .line 96
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    move-result v3

    .line 100
    if-eqz v3, :cond_3

    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object v3

    .line 106
    check-cast v3, Landroidx/transition/Transition;

    .line 107
    iget-object v5, v0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 109
    invoke-virtual {v3, v5}, Landroidx/transition/Transition;->resume(Landroid/view/View;)V

    .line 111
    goto :goto_2

    .line 114
    :cond_3
    iget-object v1, v0, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    .line 115
    iget-object v8, v0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 117
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    .line 122
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iput-object v0, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    .line 129
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iput-object v0, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 134
    iget-object v0, v1, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 136
    iget-object v3, v1, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 138
    new-instance v5, Landroidx/collection/ArrayMap;

    .line 140
    iget-object v7, v0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    .line 142
    invoke-direct {v5, v7}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/ArrayMap;)V

    .line 144
    new-instance v7, Landroidx/collection/ArrayMap;

    .line 147
    iget-object v9, v3, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    .line 149
    invoke-direct {v7, v9}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/ArrayMap;)V

    .line 151
    move v9, v6

    .line 154
    :goto_3
    iget-object v10, v1, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 155
    array-length v11, v10

    .line 157
    if-ge v9, v11, :cond_d

    .line 158
    aget v10, v10, v9

    .line 160
    if-eq v10, v2, :cond_a

    .line 162
    const/4 v11, 0x2

    .line 164
    if-eq v10, v11, :cond_8

    .line 165
    const/4 v11, 0x3

    .line 167
    if-eq v10, v11, :cond_6

    .line 168
    const/4 v11, 0x4

    .line 170
    if-eq v10, v11, :cond_4

    .line 171
    goto/16 :goto_8

    .line 173
    :cond_4
    iget-object v10, v0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 175
    invoke-virtual {v10}, Landroidx/collection/LongSparseArray;->size()I

    .line 177
    move-result v11

    .line 180
    move v12, v6

    .line 181
    :goto_4
    if-ge v12, v11, :cond_c

    .line 182
    invoke-virtual {v10, v12}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 184
    move-result-object v13

    .line 187
    check-cast v13, Landroid/view/View;

    .line 188
    if-eqz v13, :cond_5

    .line 190
    invoke-virtual {v1, v13}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 192
    move-result v14

    .line 195
    if-eqz v14, :cond_5

    .line 196
    invoke-virtual {v10, v12}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    .line 198
    move-result-wide v14

    .line 201
    iget-object v6, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 202
    invoke-virtual {v6, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 204
    move-result-object v6

    .line 207
    check-cast v6, Landroid/view/View;

    .line 208
    if-eqz v6, :cond_5

    .line 210
    invoke-virtual {v1, v6}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 212
    move-result v14

    .line 215
    if-eqz v14, :cond_5

    .line 216
    invoke-virtual {v5, v13}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    move-result-object v14

    .line 221
    check-cast v14, Landroidx/transition/TransitionValues;

    .line 222
    invoke-virtual {v7, v6}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    move-result-object v15

    .line 227
    check-cast v15, Landroidx/transition/TransitionValues;

    .line 228
    if-eqz v14, :cond_5

    .line 230
    if-eqz v15, :cond_5

    .line 232
    iget-object v2, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 234
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v2, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 239
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v5, v13}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {v7, v6}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 250
    const/4 v2, 0x1

    .line 252
    const/4 v6, 0x0

    .line 253
    goto :goto_4

    .line 254
    :cond_6
    iget-object v2, v0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    .line 255
    iget-object v6, v3, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    .line 257
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 259
    move-result v10

    .line 262
    const/4 v11, 0x0

    .line 263
    :goto_5
    if-ge v11, v10, :cond_c

    .line 264
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 266
    move-result-object v12

    .line 269
    check-cast v12, Landroid/view/View;

    .line 270
    if-eqz v12, :cond_7

    .line 272
    invoke-virtual {v1, v12}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 274
    move-result v13

    .line 277
    if-eqz v13, :cond_7

    .line 278
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    .line 280
    move-result v13

    .line 283
    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 284
    move-result-object v13

    .line 287
    check-cast v13, Landroid/view/View;

    .line 288
    if-eqz v13, :cond_7

    .line 290
    invoke-virtual {v1, v13}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 292
    move-result v14

    .line 295
    if-eqz v14, :cond_7

    .line 296
    invoke-virtual {v5, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    move-result-object v14

    .line 301
    check-cast v14, Landroidx/transition/TransitionValues;

    .line 302
    invoke-virtual {v7, v13}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    move-result-object v15

    .line 307
    check-cast v15, Landroidx/transition/TransitionValues;

    .line 308
    if-eqz v14, :cond_7

    .line 310
    if-eqz v15, :cond_7

    .line 312
    iget-object v4, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 314
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v4, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 319
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {v5, v12}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-virtual {v7, v13}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 330
    goto :goto_5

    .line 332
    :cond_8
    iget-object v2, v0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    .line 333
    iget v4, v2, Landroidx/collection/SimpleArrayMap;->size:I

    .line 335
    const/4 v6, 0x0

    .line 337
    :goto_6
    if-ge v6, v4, :cond_c

    .line 338
    invoke-virtual {v2, v6}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 340
    move-result-object v10

    .line 343
    check-cast v10, Landroid/view/View;

    .line 344
    if-eqz v10, :cond_9

    .line 346
    invoke-virtual {v1, v10}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 348
    move-result v11

    .line 351
    if-eqz v11, :cond_9

    .line 352
    invoke-virtual {v2, v6}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 354
    move-result-object v11

    .line 357
    iget-object v12, v3, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    .line 358
    invoke-virtual {v12, v11}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    move-result-object v11

    .line 363
    check-cast v11, Landroid/view/View;

    .line 364
    if-eqz v11, :cond_9

    .line 366
    invoke-virtual {v1, v11}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 368
    move-result v12

    .line 371
    if-eqz v12, :cond_9

    .line 372
    invoke-virtual {v5, v10}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    move-result-object v12

    .line 377
    check-cast v12, Landroidx/transition/TransitionValues;

    .line 378
    invoke-virtual {v7, v11}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    move-result-object v13

    .line 383
    check-cast v13, Landroidx/transition/TransitionValues;

    .line 384
    if-eqz v12, :cond_9

    .line 386
    if-eqz v13, :cond_9

    .line 388
    iget-object v14, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 390
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v12, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 395
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {v5, v10}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-virtual {v7, v11}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 406
    goto :goto_6

    .line 408
    :cond_a
    iget v2, v5, Landroidx/collection/SimpleArrayMap;->size:I

    .line 409
    :cond_b
    :goto_7
    add-int/lit8 v2, v2, -0x1

    .line 411
    if-ltz v2, :cond_c

    .line 413
    invoke-virtual {v5, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 415
    move-result-object v4

    .line 418
    check-cast v4, Landroid/view/View;

    .line 419
    if-eqz v4, :cond_b

    .line 421
    invoke-virtual {v1, v4}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 423
    move-result v6

    .line 426
    if-eqz v6, :cond_b

    .line 427
    invoke-virtual {v7, v4}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    move-result-object v4

    .line 432
    check-cast v4, Landroidx/transition/TransitionValues;

    .line 433
    if-eqz v4, :cond_b

    .line 435
    iget-object v6, v4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 437
    invoke-virtual {v1, v6}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 439
    move-result v6

    .line 442
    if-eqz v6, :cond_b

    .line 443
    invoke-virtual {v5, v2}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 445
    move-result-object v6

    .line 448
    check-cast v6, Landroidx/transition/TransitionValues;

    .line 449
    iget-object v10, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 451
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v6, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 456
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    goto :goto_7

    .line 461
    :cond_c
    :goto_8
    add-int/lit8 v9, v9, 0x1

    .line 462
    const/4 v2, 0x1

    .line 464
    const/4 v6, 0x0

    .line 465
    goto/16 :goto_3

    .line 466
    :cond_d
    const/4 v0, 0x0

    .line 468
    :goto_9
    iget v2, v5, Landroidx/collection/SimpleArrayMap;->size:I

    .line 469
    if-ge v0, v2, :cond_f

    .line 471
    invoke-virtual {v5, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 473
    move-result-object v2

    .line 476
    check-cast v2, Landroidx/transition/TransitionValues;

    .line 477
    iget-object v3, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 479
    invoke-virtual {v1, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 481
    move-result v3

    .line 484
    if-eqz v3, :cond_e

    .line 485
    iget-object v3, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 487
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v2, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 492
    const/4 v3, 0x0

    .line 494
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 498
    goto :goto_9

    .line 500
    :cond_f
    const/4 v0, 0x0

    .line 501
    :goto_a
    iget v2, v7, Landroidx/collection/SimpleArrayMap;->size:I

    .line 502
    if-ge v0, v2, :cond_11

    .line 504
    invoke-virtual {v7, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 506
    move-result-object v2

    .line 509
    check-cast v2, Landroidx/transition/TransitionValues;

    .line 510
    iget-object v3, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 512
    invoke-virtual {v1, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 514
    move-result v3

    .line 517
    if-eqz v3, :cond_10

    .line 518
    iget-object v3, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 520
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v2, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 525
    const/4 v3, 0x0

    .line 527
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    goto :goto_b

    .line 531
    :cond_10
    const/4 v3, 0x0

    .line 532
    :goto_b
    add-int/lit8 v0, v0, 0x1

    .line 533
    goto :goto_a

    .line 535
    :cond_11
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    .line 536
    move-result-object v0

    .line 539
    iget v2, v0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 540
    sget-object v3, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 542
    invoke-virtual {v8}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 544
    move-result-object v3

    .line 547
    const/4 v4, 0x1

    .line 548
    sub-int/2addr v2, v4

    .line 549
    :goto_c
    if-ltz v2, :cond_19

    .line 550
    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 552
    move-result-object v4

    .line 555
    check-cast v4, Landroid/animation/Animator;

    .line 556
    if-eqz v4, :cond_18

    .line 558
    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    move-result-object v5

    .line 563
    check-cast v5, Landroidx/transition/Transition$AnimationInfo;

    .line 564
    if-eqz v5, :cond_18

    .line 566
    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    .line 568
    if-eqz v6, :cond_18

    .line 570
    iget-object v7, v5, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    .line 572
    instance-of v9, v7, Landroidx/transition/WindowIdApi18;

    .line 574
    if-eqz v9, :cond_12

    .line 576
    check-cast v7, Landroidx/transition/WindowIdApi18;

    .line 578
    iget-object v7, v7, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    .line 580
    invoke-virtual {v7, v3}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 582
    move-result v7

    .line 585
    if-eqz v7, :cond_12

    .line 586
    const/4 v7, 0x1

    .line 588
    goto :goto_d

    .line 589
    :cond_12
    const/4 v7, 0x0

    .line 590
    :goto_d
    if-eqz v7, :cond_18

    .line 591
    const/4 v7, 0x1

    .line 593
    invoke-virtual {v1, v6, v7}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 594
    move-result-object v9

    .line 597
    invoke-virtual {v1, v6, v7}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 598
    move-result-object v10

    .line 601
    if-nez v9, :cond_13

    .line 602
    if-nez v10, :cond_13

    .line 604
    iget-object v7, v1, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 606
    iget-object v7, v7, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    .line 608
    invoke-virtual {v7, v6}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    move-result-object v6

    .line 613
    move-object v10, v6

    .line 614
    check-cast v10, Landroidx/transition/TransitionValues;

    .line 615
    :cond_13
    if-nez v9, :cond_14

    .line 617
    if-eqz v10, :cond_15

    .line 619
    :cond_14
    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mTransition:Landroidx/transition/Transition;

    .line 621
    iget-object v5, v5, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    .line 623
    invoke-virtual {v6, v5, v10}, Landroidx/transition/Transition;->isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    .line 625
    move-result v5

    .line 628
    if-eqz v5, :cond_15

    .line 629
    const/4 v5, 0x1

    .line 631
    goto :goto_e

    .line 632
    :cond_15
    const/4 v5, 0x0

    .line 633
    :goto_e
    if-eqz v5, :cond_18

    .line 634
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    .line 636
    move-result v5

    .line 639
    if-nez v5, :cond_17

    .line 640
    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    .line 642
    move-result v5

    .line 645
    if-eqz v5, :cond_16

    .line 646
    goto :goto_f

    .line 648
    :cond_16
    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    goto :goto_10

    .line 652
    :cond_17
    :goto_f
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 653
    :cond_18
    :goto_10
    add-int/lit8 v2, v2, -0x1

    .line 656
    goto :goto_c

    .line 658
    :cond_19
    iget-object v9, v1, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 659
    iget-object v10, v1, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 661
    iget-object v11, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 663
    iget-object v12, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 665
    move-object v7, v1

    .line 667
    invoke-virtual/range {v7 .. v12}, Landroidx/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 668
    invoke-virtual {v1}, Landroidx/transition/Transition;->runAnimators()V

    .line 671
    const/4 v0, 0x1

    .line 674
    return v0
    .line 675
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 8
    iget-object p1, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 13
    sget-object p1, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    .line 16
    iget-object v0, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    invoke-static {}, Landroidx/transition/TransitionManager;->getRunningTransitions()Landroidx/collection/ArrayMap;

    .line 23
    move-result-object p1

    .line 26
    iget-object v0, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 27
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 32
    check-cast p1, Ljava/util/ArrayList;

    .line 33
    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v0

    .line 40
    if-lez v0, :cond_0

    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p1

    .line 46
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Landroidx/transition/Transition;

    .line 57
    iget-object v1, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 59
    invoke-virtual {v0, v1}, Landroidx/transition/Transition;->resume(Landroid/view/View;)V

    .line 61
    goto :goto_0

    .line 64
    :cond_0
    iget-object p0, p0, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    .line 65
    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->clearValues(Z)V

    .line 68
    return-void
    .line 71
.end method
