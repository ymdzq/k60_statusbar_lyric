.class public abstract Landroidx/constraintlayout/core/widgets/Chain;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v10, p1

    .line 4
    move-object/from16 v11, p2

    .line 6
    if-nez p3, :cond_0

    .line 8
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 10
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 12
    move v14, v1

    .line 14
    move-object v15, v2

    .line 15
    const/16 v16, 0x0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 19
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 21
    move v14, v1

    .line 23
    move-object v15, v2

    .line 24
    const/16 v16, 0x2

    .line 25
    :goto_0
    const/4 v9, 0x0

    .line 27
    :goto_1
    if-ge v9, v14, :cond_6d

    .line 28
    aget-object v1, v15, v9

    .line 30
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mDefined:Z

    .line 32
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 34
    const/16 v8, 0x8

    .line 36
    const/4 v5, 0x1

    .line 38
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 39
    const/16 v17, 0x0

    .line 41
    if-nez v2, :cond_15

    .line 43
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    .line 45
    mul-int/lit8 v6, v2, 0x2

    .line 47
    move-object v13, v7

    .line 49
    move-object/from16 v19, v13

    .line 50
    const/16 v18, 0x0

    .line 52
    :goto_2
    if-nez v18, :cond_10

    .line 54
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 56
    add-int/2addr v4, v5

    .line 58
    iput v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 59
    iget-object v4, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 61
    aput-object v17, v4, v2

    .line 63
    iget-object v4, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 65
    aput-object v17, v4, v2

    .line 67
    iget v4, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 69
    iget-object v5, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 71
    if-eq v4, v8, :cond_b

    .line 73
    invoke-virtual {v13, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 75
    move-result-object v4

    .line 78
    aget-object v4, v5, v6

    .line 79
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 81
    add-int/lit8 v4, v6, 0x1

    .line 84
    aget-object v22, v5, v4

    .line 86
    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 88
    aget-object v22, v5, v6

    .line 91
    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 93
    aget-object v4, v5, v4

    .line 96
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 98
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 101
    if-nez v4, :cond_1

    .line 103
    iput-object v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 105
    :cond_1
    iput-object v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 107
    iget-object v4, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 109
    aget-object v4, v4, v2

    .line 111
    if-ne v4, v3, :cond_b

    .line 113
    iget-object v8, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 115
    aget v8, v8, v2

    .line 117
    const/4 v12, 0x3

    .line 119
    if-eqz v8, :cond_2

    .line 120
    if-eq v8, v12, :cond_2

    .line 122
    const/4 v12, 0x2

    .line 124
    if-ne v8, v12, :cond_b

    .line 125
    :cond_2
    iget v12, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 127
    const/16 v21, 0x1

    .line 129
    add-int/lit8 v12, v12, 0x1

    .line 131
    iput v12, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 133
    iget-object v12, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 135
    aget v12, v12, v2

    .line 137
    const/16 v20, 0x0

    .line 139
    cmpl-float v24, v12, v20

    .line 141
    if-lez v24, :cond_3

    .line 143
    move/from16 v24, v9

    .line 145
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 147
    add-float/2addr v9, v12

    .line 149
    iput v9, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 150
    goto :goto_3

    .line 152
    :cond_3
    move/from16 v24, v9

    .line 153
    :goto_3
    iget v9, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 155
    move/from16 v25, v14

    .line 157
    const/16 v14, 0x8

    .line 159
    if-eq v9, v14, :cond_5

    .line 161
    if-ne v4, v3, :cond_5

    .line 163
    if-eqz v8, :cond_4

    .line 165
    const/4 v4, 0x3

    .line 167
    if-ne v8, v4, :cond_5

    .line 168
    :cond_4
    const/4 v4, 0x1

    .line 170
    goto :goto_4

    .line 171
    :cond_5
    const/4 v4, 0x0

    .line 172
    :goto_4
    if-eqz v4, :cond_8

    .line 173
    const/4 v4, 0x0

    .line 175
    cmpg-float v8, v12, v4

    .line 176
    if-gez v8, :cond_6

    .line 178
    const/4 v4, 0x1

    .line 180
    iput-boolean v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    .line 181
    goto :goto_5

    .line 183
    :cond_6
    const/4 v4, 0x1

    .line 184
    iput-boolean v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasDefinedWeights:Z

    .line 185
    :goto_5
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 187
    if-nez v4, :cond_7

    .line 189
    new-instance v4, Ljava/util/ArrayList;

    .line 191
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 193
    iput-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 196
    :cond_7
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_8
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 203
    if-nez v4, :cond_9

    .line 205
    iput-object v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 207
    :cond_9
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 209
    if-eqz v4, :cond_a

    .line 211
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 213
    aput-object v13, v4, v2

    .line 215
    :cond_a
    iput-object v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 217
    goto :goto_6

    .line 219
    :cond_b
    move/from16 v24, v9

    .line 220
    move/from16 v25, v14

    .line 222
    :goto_6
    move-object/from16 v4, v19

    .line 224
    if-eq v4, v13, :cond_c

    .line 226
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 228
    aput-object v13, v4, v2

    .line 230
    :cond_c
    add-int/lit8 v4, v6, 0x1

    .line 232
    aget-object v4, v5, v4

    .line 234
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 236
    if-eqz v4, :cond_d

    .line 238
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 240
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 242
    aget-object v5, v5, v6

    .line 244
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 246
    if-eqz v5, :cond_d

    .line 248
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 250
    if-eq v5, v13, :cond_e

    .line 252
    :cond_d
    move-object/from16 v4, v17

    .line 254
    :cond_e
    if-eqz v4, :cond_f

    .line 256
    goto :goto_7

    .line 258
    :cond_f
    move-object v4, v13

    .line 259
    const/16 v18, 0x1

    .line 260
    :goto_7
    move-object/from16 v19, v13

    .line 262
    move/from16 v9, v24

    .line 264
    move/from16 v14, v25

    .line 266
    const/4 v5, 0x1

    .line 268
    const/16 v8, 0x8

    .line 269
    move-object v13, v4

    .line 271
    goto/16 :goto_2

    .line 272
    :cond_10
    move/from16 v24, v9

    .line 274
    move/from16 v25, v14

    .line 276
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 278
    if-eqz v4, :cond_11

    .line 280
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 282
    aget-object v4, v4, v6

    .line 284
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 286
    :cond_11
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 289
    if-eqz v4, :cond_12

    .line 291
    add-int/lit8 v6, v6, 0x1

    .line 293
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 295
    aget-object v4, v4, v6

    .line 297
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 299
    :cond_12
    iput-object v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 302
    if-nez v2, :cond_13

    .line 304
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mIsRtl:Z

    .line 306
    if-eqz v2, :cond_13

    .line 308
    iput-object v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 310
    goto :goto_8

    .line 312
    :cond_13
    iput-object v7, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 313
    :goto_8
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasDefinedWeights:Z

    .line 315
    if-eqz v2, :cond_14

    .line 317
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    .line 319
    if-eqz v2, :cond_14

    .line 321
    const/4 v2, 0x1

    .line 323
    goto :goto_9

    .line 324
    :cond_14
    const/4 v2, 0x0

    .line 325
    :goto_9
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 326
    const/4 v2, 0x1

    .line 328
    goto :goto_a

    .line 329
    :cond_15
    move/from16 v24, v9

    .line 330
    move/from16 v25, v14

    .line 332
    move v2, v5

    .line 334
    :goto_a
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mDefined:Z

    .line 335
    if-eqz v11, :cond_17

    .line 337
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 339
    move-result v2

    .line 342
    if-eqz v2, :cond_16

    .line 343
    goto :goto_b

    .line 345
    :cond_16
    move-object/from16 v30, v15

    .line 346
    move/from16 v22, v24

    .line 348
    goto/16 :goto_47

    .line 350
    :cond_17
    :goto_b
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 352
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 354
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 356
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 358
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 360
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 362
    aget-object v5, v5, p3

    .line 364
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 366
    if-ne v5, v6, :cond_18

    .line 368
    const/4 v5, 0x1

    .line 370
    goto :goto_c

    .line 371
    :cond_18
    const/4 v5, 0x0

    .line 372
    :goto_c
    if-nez p3, :cond_1c

    .line 373
    iget v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 375
    const/4 v8, 0x1

    .line 377
    if-nez v6, :cond_19

    .line 378
    const/16 v21, 0x1

    .line 380
    goto :goto_d

    .line 382
    :cond_19
    const/16 v21, 0x0

    .line 383
    :goto_d
    if-ne v6, v8, :cond_1a

    .line 385
    move/from16 v18, v8

    .line 387
    const/4 v9, 0x2

    .line 389
    goto :goto_e

    .line 390
    :cond_1a
    const/4 v9, 0x2

    .line 391
    const/16 v18, 0x0

    .line 392
    :goto_e
    if-ne v6, v9, :cond_1b

    .line 394
    move/from16 v6, v21

    .line 396
    goto :goto_11

    .line 398
    :cond_1b
    move/from16 v6, v21

    .line 399
    goto :goto_12

    .line 401
    :cond_1c
    const/4 v8, 0x1

    .line 402
    const/4 v9, 0x2

    .line 403
    iget v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 404
    if-nez v6, :cond_1d

    .line 406
    move/from16 v18, v8

    .line 408
    goto :goto_f

    .line 410
    :cond_1d
    const/16 v18, 0x0

    .line 411
    :goto_f
    if-ne v6, v8, :cond_1e

    .line 413
    const/4 v8, 0x1

    .line 415
    goto :goto_10

    .line 416
    :cond_1e
    const/4 v8, 0x0

    .line 417
    :goto_10
    if-ne v6, v9, :cond_1f

    .line 418
    move/from16 v6, v18

    .line 420
    move/from16 v18, v8

    .line 422
    :goto_11
    move/from16 v19, v18

    .line 424
    move/from16 v18, v6

    .line 426
    const/4 v6, 0x1

    .line 428
    goto :goto_13

    .line 429
    :cond_1f
    move/from16 v6, v18

    .line 430
    move/from16 v18, v8

    .line 432
    :goto_12
    move/from16 v19, v18

    .line 434
    move/from16 v18, v6

    .line 436
    const/4 v6, 0x0

    .line 438
    :goto_13
    move/from16 v23, v4

    .line 439
    move-object v9, v7

    .line 441
    const/4 v8, 0x0

    .line 442
    :goto_14
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 443
    if-nez v8, :cond_2d

    .line 445
    move/from16 v28, v8

    .line 447
    iget-object v8, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 449
    aget-object v8, v8, v16

    .line 451
    if-eqz v6, :cond_20

    .line 453
    const/16 v27, 0x1

    .line 455
    goto :goto_15

    .line 457
    :cond_20
    const/16 v27, 0x4

    .line 458
    :goto_15
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 460
    move-result v29

    .line 463
    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 464
    aget-object v11, v11, p3

    .line 466
    if-ne v11, v3, :cond_21

    .line 468
    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 470
    aget v11, v11, p3

    .line 472
    if-nez v11, :cond_21

    .line 474
    move-object/from16 v30, v15

    .line 476
    const/4 v11, 0x1

    .line 478
    goto :goto_16

    .line 479
    :cond_21
    move-object/from16 v30, v15

    .line 480
    const/4 v11, 0x0

    .line 482
    :goto_16
    iget-object v15, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 483
    if-eqz v15, :cond_22

    .line 485
    if-eq v9, v7, :cond_22

    .line 487
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 489
    move-result v15

    .line 492
    add-int v29, v15, v29

    .line 493
    :cond_22
    move/from16 v15, v29

    .line 495
    if-eqz v6, :cond_23

    .line 497
    if-eq v9, v7, :cond_23

    .line 499
    if-eq v9, v13, :cond_23

    .line 501
    move-object/from16 v29, v2

    .line 503
    const/16 v27, 0x8

    .line 505
    goto :goto_17

    .line 507
    :cond_23
    move-object/from16 v29, v2

    .line 508
    :goto_17
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 510
    if-eqz v2, :cond_27

    .line 512
    if-ne v9, v13, :cond_24

    .line 514
    move-object/from16 v31, v7

    .line 516
    iget-object v7, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 518
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 520
    move-object/from16 v32, v1

    .line 522
    const/4 v1, 0x6

    .line 524
    invoke-virtual {v10, v7, v2, v15, v1}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 525
    goto :goto_18

    .line 528
    :cond_24
    move-object/from16 v32, v1

    .line 529
    move-object/from16 v31, v7

    .line 531
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 533
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 535
    const/16 v7, 0x8

    .line 537
    invoke-virtual {v10, v1, v2, v15, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 539
    :goto_18
    if-eqz v11, :cond_25

    .line 542
    if-nez v6, :cond_25

    .line 544
    const/16 v27, 0x5

    .line 546
    :cond_25
    if-ne v9, v13, :cond_26

    .line 548
    if-eqz v6, :cond_26

    .line 550
    iget-object v1, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 552
    aget-boolean v1, v1, p3

    .line 554
    if-eqz v1, :cond_26

    .line 556
    const/4 v1, 0x5

    .line 558
    goto :goto_19

    .line 559
    :cond_26
    move/from16 v1, v27

    .line 560
    :goto_19
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 562
    iget-object v7, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 564
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 566
    invoke-virtual {v10, v2, v7, v15, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 568
    goto :goto_1a

    .line 571
    :cond_27
    move-object/from16 v32, v1

    .line 572
    move-object/from16 v31, v7

    .line 574
    :goto_1a
    iget-object v1, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 576
    if-eqz v5, :cond_29

    .line 578
    iget v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 580
    const/16 v7, 0x8

    .line 582
    if-eq v2, v7, :cond_28

    .line 584
    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 586
    aget-object v2, v2, p3

    .line 588
    if-ne v2, v3, :cond_28

    .line 590
    add-int/lit8 v2, v16, 0x1

    .line 592
    aget-object v2, v1, v2

    .line 594
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 596
    aget-object v7, v1, v16

    .line 598
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 600
    const/4 v8, 0x5

    .line 602
    const/4 v11, 0x0

    .line 603
    invoke-virtual {v10, v2, v7, v11, v8}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 604
    goto :goto_1b

    .line 607
    :cond_28
    const/4 v11, 0x0

    .line 608
    :goto_1b
    aget-object v2, v1, v16

    .line 609
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 611
    aget-object v4, v4, v16

    .line 613
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 615
    const/16 v7, 0x8

    .line 617
    invoke-virtual {v10, v2, v4, v11, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 619
    :cond_29
    add-int/lit8 v2, v16, 0x1

    .line 622
    aget-object v1, v1, v2

    .line 624
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 626
    if-eqz v1, :cond_2a

    .line 628
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 630
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 632
    aget-object v2, v2, v16

    .line 634
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 636
    if-eqz v2, :cond_2a

    .line 638
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 640
    if-eq v2, v9, :cond_2b

    .line 642
    :cond_2a
    move-object/from16 v1, v17

    .line 644
    :cond_2b
    if-eqz v1, :cond_2c

    .line 646
    move-object v9, v1

    .line 648
    move/from16 v8, v28

    .line 649
    goto :goto_1c

    .line 651
    :cond_2c
    const/4 v8, 0x1

    .line 652
    :goto_1c
    move-object/from16 v11, p2

    .line 653
    move-object/from16 v2, v29

    .line 655
    move-object/from16 v15, v30

    .line 657
    move-object/from16 v7, v31

    .line 659
    move-object/from16 v1, v32

    .line 661
    goto/16 :goto_14

    .line 663
    :cond_2d
    move-object/from16 v32, v1

    .line 665
    move-object/from16 v29, v2

    .line 667
    move-object/from16 v31, v7

    .line 669
    move-object/from16 v30, v15

    .line 671
    if-eqz v14, :cond_31

    .line 673
    iget-object v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 675
    add-int/lit8 v2, v16, 0x1

    .line 677
    aget-object v1, v1, v2

    .line 679
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 681
    if-eqz v1, :cond_31

    .line 683
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 685
    aget-object v1, v1, v2

    .line 687
    iget-object v7, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 689
    aget-object v7, v7, p3

    .line 691
    if-ne v7, v3, :cond_2e

    .line 693
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 695
    aget v3, v3, p3

    .line 697
    if-nez v3, :cond_2e

    .line 699
    const/4 v3, 0x1

    .line 701
    goto :goto_1d

    .line 702
    :cond_2e
    const/4 v3, 0x0

    .line 703
    :goto_1d
    if-eqz v3, :cond_2f

    .line 704
    if-nez v6, :cond_2f

    .line 706
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 708
    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 710
    if-ne v7, v0, :cond_2f

    .line 712
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 714
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 716
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 718
    move-result v8

    .line 721
    neg-int v8, v8

    .line 722
    const/4 v9, 0x5

    .line 723
    invoke-virtual {v10, v7, v3, v8, v9}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 724
    goto :goto_1e

    .line 727
    :cond_2f
    const/4 v9, 0x5

    .line 728
    if-eqz v6, :cond_30

    .line 729
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 731
    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 733
    if-ne v7, v0, :cond_30

    .line 735
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 737
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 739
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 741
    move-result v8

    .line 744
    neg-int v8, v8

    .line 745
    const/4 v11, 0x4

    .line 746
    invoke-virtual {v10, v7, v3, v8, v11}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 747
    :cond_30
    :goto_1e
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 750
    iget-object v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 752
    aget-object v2, v7, v2

    .line 754
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 756
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 758
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 760
    move-result v1

    .line 763
    neg-int v1, v1

    .line 764
    const/4 v7, 0x6

    .line 765
    invoke-virtual {v10, v3, v2, v1, v7}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 766
    goto :goto_1f

    .line 769
    :cond_31
    const/4 v9, 0x5

    .line 770
    :goto_1f
    if-eqz v5, :cond_32

    .line 771
    add-int/lit8 v1, v16, 0x1

    .line 773
    aget-object v2, v4, v1

    .line 775
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 777
    iget-object v3, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 779
    aget-object v1, v3, v1

    .line 781
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 783
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 785
    move-result v1

    .line 788
    const/16 v4, 0x8

    .line 789
    invoke-virtual {v10, v2, v3, v1, v4}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 791
    :cond_32
    move-object/from16 v1, v32

    .line 794
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 796
    if-eqz v2, :cond_3c

    .line 798
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 800
    move-result v3

    .line 803
    const/4 v4, 0x1

    .line 804
    if-le v3, v4, :cond_3c

    .line 805
    iget-boolean v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    .line 807
    if-eqz v5, :cond_33

    .line 809
    iget-boolean v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 811
    if-nez v5, :cond_33

    .line 813
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 815
    int-to-float v5, v5

    .line 817
    goto :goto_20

    .line 818
    :cond_33
    move/from16 v5, v23

    .line 819
    :goto_20
    move-object/from16 v8, v17

    .line 821
    const/4 v7, 0x0

    .line 823
    const/4 v11, 0x0

    .line 824
    :goto_21
    if-ge v11, v3, :cond_3c

    .line 825
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 827
    move-result-object v15

    .line 830
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 831
    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 833
    aget v4, v4, p3

    .line 835
    const/16 v20, 0x0

    .line 837
    cmpg-float v23, v4, v20

    .line 839
    iget-object v9, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 841
    if-gez v23, :cond_35

    .line 843
    iget-boolean v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 845
    if-eqz v4, :cond_34

    .line 847
    add-int/lit8 v4, v16, 0x1

    .line 849
    aget-object v4, v9, v4

    .line 851
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 853
    aget-object v9, v9, v16

    .line 855
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 857
    const/4 v0, 0x0

    .line 859
    const/4 v15, 0x4

    .line 860
    invoke-virtual {v10, v4, v9, v0, v15}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 861
    goto :goto_23

    .line 864
    :cond_34
    const/4 v0, 0x4

    .line 865
    const/high16 v4, 0x3f800000    # 1.0f

    .line 866
    goto :goto_22

    .line 868
    :cond_35
    const/4 v0, 0x4

    .line 869
    :goto_22
    const/16 v20, 0x0

    .line 870
    cmpl-float v23, v4, v20

    .line 872
    if-nez v23, :cond_36

    .line 874
    add-int/lit8 v4, v16, 0x1

    .line 876
    aget-object v4, v9, v4

    .line 878
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 880
    aget-object v9, v9, v16

    .line 882
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 884
    const/4 v0, 0x0

    .line 886
    const/16 v15, 0x8

    .line 887
    invoke-virtual {v10, v4, v9, v0, v15}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 889
    :goto_23
    move-object/from16 v32, v2

    .line 892
    move/from16 v28, v3

    .line 894
    const/16 v20, 0x0

    .line 896
    goto/16 :goto_28

    .line 898
    :cond_36
    const/4 v0, 0x0

    .line 900
    if-eqz v8, :cond_3b

    .line 901
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 903
    aget-object v0, v8, v16

    .line 905
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 907
    add-int/lit8 v28, v16, 0x1

    .line 909
    aget-object v8, v8, v28

    .line 911
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 913
    move-object/from16 v32, v2

    .line 915
    aget-object v2, v9, v16

    .line 917
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 919
    aget-object v9, v9, v28

    .line 921
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 923
    move/from16 v28, v3

    .line 925
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 927
    move-result-object v3

    .line 930
    move-object/from16 v33, v15

    .line 931
    const/4 v15, 0x0

    .line 933
    iput v15, v3, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 934
    cmpl-float v20, v5, v15

    .line 936
    const/high16 v15, -0x40800000    # -1.0f

    .line 938
    if-eqz v20, :cond_3a

    .line 940
    cmpl-float v20, v7, v4

    .line 942
    if-nez v20, :cond_37

    .line 944
    goto :goto_25

    .line 946
    :cond_37
    const/16 v20, 0x0

    .line 947
    cmpl-float v34, v7, v20

    .line 949
    if-nez v34, :cond_38

    .line 951
    iget-object v2, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 953
    const/high16 v7, 0x3f800000    # 1.0f

    .line 955
    invoke-interface {v2, v0, v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 957
    iget-object v0, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 960
    invoke-interface {v0, v8, v15}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 962
    goto :goto_24

    .line 965
    :cond_38
    const/high16 v15, 0x3f800000    # 1.0f

    .line 966
    if-nez v23, :cond_39

    .line 968
    iget-object v0, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 970
    invoke-interface {v0, v2, v15}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 972
    iget-object v0, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 975
    const/high16 v2, -0x40800000    # -1.0f

    .line 977
    invoke-interface {v0, v9, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 979
    :goto_24
    move/from16 v23, v4

    .line 982
    goto :goto_26

    .line 984
    :cond_39
    div-float/2addr v7, v5

    .line 985
    div-float v23, v4, v5

    .line 986
    div-float v7, v7, v23

    .line 988
    move/from16 v23, v4

    .line 990
    iget-object v4, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 992
    invoke-interface {v4, v0, v15}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 994
    iget-object v0, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 997
    const/high16 v4, -0x40800000    # -1.0f

    .line 999
    invoke-interface {v0, v8, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1001
    iget-object v0, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1004
    invoke-interface {v0, v9, v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1006
    iget-object v0, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1009
    neg-float v4, v7

    .line 1011
    invoke-interface {v0, v2, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1012
    goto :goto_26

    .line 1015
    :cond_3a
    :goto_25
    move/from16 v23, v4

    .line 1016
    move v4, v15

    .line 1018
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1019
    const/16 v20, 0x0

    .line 1021
    iget-object v7, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1023
    invoke-interface {v7, v0, v15}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1025
    iget-object v0, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1028
    invoke-interface {v0, v8, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1030
    iget-object v0, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1033
    invoke-interface {v0, v9, v15}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1035
    iget-object v0, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1038
    invoke-interface {v0, v2, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1040
    :goto_26
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 1043
    goto :goto_27

    .line 1046
    :cond_3b
    move-object/from16 v32, v2

    .line 1047
    move/from16 v28, v3

    .line 1049
    move/from16 v23, v4

    .line 1051
    move-object/from16 v33, v15

    .line 1053
    const/16 v20, 0x0

    .line 1055
    :goto_27
    move/from16 v7, v23

    .line 1057
    move-object/from16 v8, v33

    .line 1059
    :goto_28
    add-int/lit8 v11, v11, 0x1

    .line 1061
    move/from16 v3, v28

    .line 1063
    move-object/from16 v2, v32

    .line 1065
    const/4 v4, 0x1

    .line 1067
    const/4 v9, 0x5

    .line 1068
    move-object/from16 v0, p0

    .line 1069
    goto/16 :goto_21

    .line 1071
    :cond_3c
    if-eqz v13, :cond_43

    .line 1073
    if-eq v13, v14, :cond_3d

    .line 1075
    if-eqz v6, :cond_43

    .line 1077
    :cond_3d
    move-object/from16 v0, v31

    .line 1079
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1081
    aget-object v0, v0, v16

    .line 1083
    iget-object v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1085
    add-int/lit8 v2, v16, 0x1

    .line 1087
    aget-object v1, v1, v2

    .line 1089
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1091
    if-eqz v0, :cond_3e

    .line 1093
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1095
    move-object v3, v0

    .line 1097
    goto :goto_29

    .line 1098
    :cond_3e
    move-object/from16 v3, v17

    .line 1099
    :goto_29
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1101
    if-eqz v0, :cond_3f

    .line 1103
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1105
    move-object v6, v0

    .line 1107
    goto :goto_2a

    .line 1108
    :cond_3f
    move-object/from16 v6, v17

    .line 1109
    :goto_2a
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1111
    aget-object v0, v0, v16

    .line 1113
    if-eqz v14, :cond_40

    .line 1115
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1117
    aget-object v1, v1, v2

    .line 1119
    :cond_40
    if-eqz v3, :cond_42

    .line 1121
    if-eqz v6, :cond_42

    .line 1123
    if-nez p3, :cond_41

    .line 1125
    move-object/from16 v2, v29

    .line 1127
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1129
    goto :goto_2b

    .line 1131
    :cond_41
    move-object/from16 v2, v29

    .line 1132
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1134
    :goto_2b
    move v5, v2

    .line 1136
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1137
    move-result v4

    .line 1140
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1141
    move-result v8

    .line 1144
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1145
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1147
    const/4 v9, 0x7

    .line 1149
    move-object/from16 v1, p1

    .line 1150
    move/from16 v11, v24

    .line 1152
    const/4 v15, 0x2

    .line 1154
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1155
    goto/16 :goto_42

    .line 1158
    :cond_42
    move/from16 v11, v24

    .line 1160
    const/4 v15, 0x2

    .line 1162
    goto/16 :goto_42

    .line 1163
    :cond_43
    move/from16 v11, v24

    .line 1165
    move-object/from16 v0, v31

    .line 1167
    const/4 v15, 0x2

    .line 1169
    if-eqz v18, :cond_54

    .line 1170
    if-eqz v13, :cond_54

    .line 1172
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 1174
    if-lez v2, :cond_44

    .line 1176
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 1178
    if-ne v1, v2, :cond_44

    .line 1180
    const/16 v21, 0x1

    .line 1182
    goto :goto_2c

    .line 1184
    :cond_44
    const/16 v21, 0x0

    .line 1185
    :goto_2c
    move-object v8, v13

    .line 1187
    move-object v9, v8

    .line 1188
    :goto_2d
    if-eqz v9, :cond_63

    .line 1189
    iget-object v1, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1191
    aget-object v1, v1, p3

    .line 1193
    move-object v7, v1

    .line 1195
    :goto_2e
    if-eqz v7, :cond_45

    .line 1196
    iget v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1198
    const/16 v6, 0x8

    .line 1200
    if-ne v1, v6, :cond_46

    .line 1202
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1204
    aget-object v7, v1, p3

    .line 1206
    goto :goto_2e

    .line 1208
    :cond_45
    const/16 v6, 0x8

    .line 1209
    :cond_46
    if-nez v7, :cond_48

    .line 1211
    if-ne v9, v14, :cond_47

    .line 1213
    goto :goto_2f

    .line 1215
    :cond_47
    move-object/from16 v20, v7

    .line 1216
    move-object/from16 v22, v8

    .line 1218
    move-object v15, v9

    .line 1220
    goto/16 :goto_34

    .line 1221
    :cond_48
    :goto_2f
    iget-object v1, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1223
    aget-object v2, v1, v16

    .line 1225
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1227
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1229
    if-eqz v4, :cond_49

    .line 1231
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1233
    goto :goto_30

    .line 1235
    :cond_49
    move-object/from16 v4, v17

    .line 1236
    :goto_30
    if-eq v8, v9, :cond_4a

    .line 1238
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1240
    add-int/lit8 v5, v16, 0x1

    .line 1242
    aget-object v4, v4, v5

    .line 1244
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1246
    goto :goto_31

    .line 1248
    :cond_4a
    if-ne v9, v13, :cond_4c

    .line 1249
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1251
    aget-object v4, v4, v16

    .line 1253
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1255
    if-eqz v4, :cond_4b

    .line 1257
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1259
    goto :goto_31

    .line 1261
    :cond_4b
    move-object/from16 v4, v17

    .line 1262
    :cond_4c
    :goto_31
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1264
    move-result v2

    .line 1267
    add-int/lit8 v5, v16, 0x1

    .line 1268
    aget-object v20, v1, v5

    .line 1270
    invoke-virtual/range {v20 .. v20}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1272
    move-result v20

    .line 1275
    if-eqz v7, :cond_4d

    .line 1276
    iget-object v6, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1278
    aget-object v6, v6, v16

    .line 1280
    iget-object v15, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1282
    goto :goto_32

    .line 1284
    :cond_4d
    iget-object v6, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1285
    aget-object v6, v6, v5

    .line 1287
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1289
    if-eqz v6, :cond_4e

    .line 1291
    iget-object v15, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1293
    goto :goto_32

    .line 1295
    :cond_4e
    move-object/from16 v15, v17

    .line 1296
    :goto_32
    aget-object v1, v1, v5

    .line 1298
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1300
    if-eqz v6, :cond_4f

    .line 1302
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1304
    move-result v6

    .line 1307
    add-int v20, v6, v20

    .line 1308
    :cond_4f
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1310
    aget-object v6, v6, v5

    .line 1312
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1314
    move-result v6

    .line 1317
    add-int/2addr v6, v2

    .line 1318
    if-eqz v3, :cond_47

    .line 1319
    if-eqz v4, :cond_47

    .line 1321
    if-eqz v15, :cond_47

    .line 1323
    if-eqz v1, :cond_47

    .line 1325
    if-ne v9, v13, :cond_50

    .line 1327
    iget-object v2, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1329
    aget-object v2, v2, v16

    .line 1331
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1333
    move-result v2

    .line 1336
    move v6, v2

    .line 1337
    :cond_50
    if-ne v9, v14, :cond_51

    .line 1338
    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1340
    aget-object v2, v2, v5

    .line 1342
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1344
    move-result v2

    .line 1347
    move/from16 v20, v2

    .line 1348
    :cond_51
    if-eqz v21, :cond_52

    .line 1350
    const/16 v23, 0x8

    .line 1352
    goto :goto_33

    .line 1354
    :cond_52
    const/16 v23, 0x5

    .line 1355
    :goto_33
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1357
    move-object/from16 v24, v1

    .line 1359
    move-object/from16 v1, p1

    .line 1361
    move-object v2, v3

    .line 1363
    move-object v3, v4

    .line 1364
    move-object/from16 v31, v0

    .line 1365
    const/4 v0, 0x5

    .line 1367
    move v4, v6

    .line 1368
    const/16 v22, 0x8

    .line 1369
    move-object v6, v15

    .line 1371
    move-object v15, v7

    .line 1372
    move-object/from16 v0, v31

    .line 1373
    move-object/from16 v7, v24

    .line 1375
    move-object/from16 v22, v8

    .line 1377
    move/from16 v8, v20

    .line 1379
    move-object/from16 v20, v15

    .line 1381
    move-object v15, v9

    .line 1383
    move/from16 v9, v23

    .line 1384
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1386
    :goto_34
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1389
    const/16 v9, 0x8

    .line 1391
    if-eq v1, v9, :cond_53

    .line 1393
    move-object v8, v15

    .line 1395
    goto :goto_35

    .line 1396
    :cond_53
    move-object/from16 v8, v22

    .line 1397
    :goto_35
    move-object/from16 v9, v20

    .line 1399
    const/4 v15, 0x2

    .line 1401
    goto/16 :goto_2d

    .line 1402
    :cond_54
    const/16 v9, 0x8

    .line 1404
    if-eqz v19, :cond_63

    .line 1406
    if-eqz v13, :cond_63

    .line 1408
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 1410
    if-lez v2, :cond_55

    .line 1412
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 1414
    if-ne v1, v2, :cond_55

    .line 1416
    const/16 v21, 0x1

    .line 1418
    goto :goto_36

    .line 1420
    :cond_55
    const/16 v21, 0x0

    .line 1421
    :goto_36
    move-object v8, v13

    .line 1423
    move-object v15, v8

    .line 1424
    :goto_37
    if-eqz v15, :cond_60

    .line 1425
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1427
    aget-object v1, v1, p3

    .line 1429
    :goto_38
    if-eqz v1, :cond_56

    .line 1431
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1433
    if-ne v2, v9, :cond_56

    .line 1435
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1437
    aget-object v1, v1, p3

    .line 1439
    goto :goto_38

    .line 1441
    :cond_56
    if-eq v15, v13, :cond_5e

    .line 1442
    if-eq v15, v14, :cond_5e

    .line 1444
    if-eqz v1, :cond_5e

    .line 1446
    if-ne v1, v14, :cond_57

    .line 1448
    move-object/from16 v7, v17

    .line 1450
    goto :goto_39

    .line 1452
    :cond_57
    move-object v7, v1

    .line 1453
    :goto_39
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1454
    aget-object v2, v1, v16

    .line 1456
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1458
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1460
    add-int/lit8 v5, v16, 0x1

    .line 1462
    aget-object v4, v4, v5

    .line 1464
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1466
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1468
    move-result v2

    .line 1471
    aget-object v6, v1, v5

    .line 1472
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1474
    move-result v6

    .line 1477
    if-eqz v7, :cond_59

    .line 1478
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1480
    aget-object v1, v1, v16

    .line 1482
    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1484
    move-object/from16 v20, v7

    .line 1486
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1488
    if-eqz v7, :cond_58

    .line 1490
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1492
    goto :goto_3b

    .line 1494
    :cond_58
    move-object/from16 v7, v17

    .line 1495
    goto :goto_3b

    .line 1497
    :cond_59
    move-object/from16 v20, v7

    .line 1498
    iget-object v7, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1500
    aget-object v7, v7, v16

    .line 1502
    if-eqz v7, :cond_5a

    .line 1504
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1506
    goto :goto_3a

    .line 1508
    :cond_5a
    move-object/from16 v9, v17

    .line 1509
    :goto_3a
    aget-object v1, v1, v5

    .line 1511
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1513
    move-object/from16 v35, v7

    .line 1515
    move-object v7, v1

    .line 1517
    move-object/from16 v1, v35

    .line 1518
    :goto_3b
    if-eqz v1, :cond_5b

    .line 1520
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1522
    move-result v1

    .line 1525
    add-int/2addr v1, v6

    .line 1526
    move/from16 v22, v1

    .line 1527
    goto :goto_3c

    .line 1529
    :cond_5b
    move/from16 v22, v6

    .line 1530
    :goto_3c
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1532
    aget-object v1, v1, v5

    .line 1534
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1536
    move-result v1

    .line 1539
    add-int v5, v1, v2

    .line 1540
    if-eqz v21, :cond_5c

    .line 1542
    const/16 v23, 0x8

    .line 1544
    goto :goto_3d

    .line 1546
    :cond_5c
    const/16 v23, 0x4

    .line 1547
    :goto_3d
    if-eqz v3, :cond_5d

    .line 1549
    if-eqz v4, :cond_5d

    .line 1551
    if-eqz v9, :cond_5d

    .line 1553
    if-eqz v7, :cond_5d

    .line 1555
    const/high16 v6, 0x3f000000    # 0.5f

    .line 1557
    move-object/from16 v1, p1

    .line 1559
    move-object v2, v3

    .line 1561
    move-object v3, v4

    .line 1562
    const/16 v24, 0x4

    .line 1563
    move v4, v5

    .line 1565
    move v5, v6

    .line 1566
    move-object v6, v9

    .line 1567
    move-object/from16 v26, v8

    .line 1568
    move/from16 v8, v22

    .line 1570
    move/from16 v22, v11

    .line 1572
    const/16 v11, 0x8

    .line 1574
    move/from16 v9, v23

    .line 1576
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1578
    goto :goto_3e

    .line 1581
    :cond_5d
    move-object/from16 v26, v8

    .line 1582
    move/from16 v22, v11

    .line 1584
    const/16 v11, 0x8

    .line 1586
    const/16 v24, 0x4

    .line 1588
    :goto_3e
    move-object/from16 v1, v20

    .line 1590
    goto :goto_3f

    .line 1592
    :cond_5e
    move-object/from16 v26, v8

    .line 1593
    move/from16 v22, v11

    .line 1595
    const/16 v24, 0x4

    .line 1597
    move v11, v9

    .line 1599
    :goto_3f
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1600
    if-eq v2, v11, :cond_5f

    .line 1602
    move-object v8, v15

    .line 1604
    goto :goto_40

    .line 1605
    :cond_5f
    move-object/from16 v8, v26

    .line 1606
    :goto_40
    move-object v15, v1

    .line 1608
    move v9, v11

    .line 1609
    move/from16 v11, v22

    .line 1610
    goto/16 :goto_37

    .line 1612
    :cond_60
    move/from16 v22, v11

    .line 1614
    iget-object v1, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1616
    aget-object v1, v1, v16

    .line 1618
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1620
    aget-object v0, v0, v16

    .line 1622
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1624
    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1626
    add-int/lit8 v3, v16, 0x1

    .line 1628
    aget-object v11, v2, v3

    .line 1630
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1632
    aget-object v2, v2, v3

    .line 1634
    iget-object v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1636
    if-eqz v0, :cond_62

    .line 1638
    if-eq v13, v14, :cond_61

    .line 1640
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1642
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1644
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1646
    move-result v1

    .line 1649
    const/4 v3, 0x5

    .line 1650
    invoke-virtual {v10, v2, v0, v1, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1651
    goto :goto_41

    .line 1654
    :cond_61
    if-eqz v15, :cond_62

    .line 1655
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1657
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1659
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1661
    move-result v4

    .line 1664
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1665
    iget-object v6, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1667
    iget-object v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1669
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1671
    move-result v8

    .line 1674
    const/4 v9, 0x5

    .line 1675
    move-object/from16 v1, p1

    .line 1676
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1678
    :cond_62
    :goto_41
    if-eqz v15, :cond_64

    .line 1681
    if-eq v13, v14, :cond_64

    .line 1683
    iget-object v0, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1685
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1687
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1689
    move-result v2

    .line 1692
    neg-int v2, v2

    .line 1693
    const/4 v3, 0x5

    .line 1694
    invoke-virtual {v10, v0, v1, v2, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1695
    goto :goto_43

    .line 1698
    :cond_63
    :goto_42
    move/from16 v22, v11

    .line 1699
    :cond_64
    :goto_43
    if-nez v18, :cond_65

    .line 1701
    if-eqz v19, :cond_6c

    .line 1703
    :cond_65
    if-eqz v13, :cond_6c

    .line 1705
    if-eq v13, v14, :cond_6c

    .line 1707
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1709
    aget-object v1, v0, v16

    .line 1711
    if-nez v14, :cond_66

    .line 1713
    move-object v14, v13

    .line 1715
    :cond_66
    add-int/lit8 v2, v16, 0x1

    .line 1716
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1718
    aget-object v3, v3, v2

    .line 1720
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1722
    if-eqz v4, :cond_67

    .line 1724
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1726
    goto :goto_44

    .line 1728
    :cond_67
    move-object/from16 v4, v17

    .line 1729
    :goto_44
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1731
    if-eqz v5, :cond_68

    .line 1733
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1735
    goto :goto_45

    .line 1737
    :cond_68
    move-object/from16 v5, v17

    .line 1738
    :goto_45
    if-eq v12, v14, :cond_6a

    .line 1740
    iget-object v5, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1742
    aget-object v5, v5, v2

    .line 1744
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1746
    if-eqz v5, :cond_69

    .line 1748
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1750
    move-object/from16 v17, v5

    .line 1752
    :cond_69
    move-object/from16 v6, v17

    .line 1754
    goto :goto_46

    .line 1756
    :cond_6a
    move-object v6, v5

    .line 1757
    :goto_46
    if-ne v13, v14, :cond_6b

    .line 1758
    aget-object v3, v0, v2

    .line 1760
    :cond_6b
    if-eqz v4, :cond_6c

    .line 1762
    if-eqz v6, :cond_6c

    .line 1764
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1766
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1768
    move-result v0

    .line 1771
    iget-object v7, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1772
    aget-object v2, v7, v2

    .line 1774
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1776
    move-result v8

    .line 1779
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1780
    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1782
    const/4 v9, 0x5

    .line 1784
    move-object/from16 v1, p1

    .line 1785
    move-object v3, v4

    .line 1787
    move v4, v0

    .line 1788
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1789
    :cond_6c
    :goto_47
    add-int/lit8 v9, v22, 0x1

    .line 1792
    move-object/from16 v0, p0

    .line 1794
    move-object/from16 v11, p2

    .line 1796
    move/from16 v14, v25

    .line 1798
    move-object/from16 v15, v30

    .line 1800
    goto/16 :goto_1

    .line 1802
    :cond_6d
    return-void
    .line 1804
.end method
