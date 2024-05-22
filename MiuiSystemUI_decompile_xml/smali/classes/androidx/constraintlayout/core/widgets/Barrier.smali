.class public final Landroidx/constraintlayout/core/widgets/Barrier;
.super Landroidx/constraintlayout/core/widgets/HelperWidget;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAllowsGoneWidget:Z

.field public mBarrierType:I

.field public mMargin:I

.field public mResolved:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/HelperWidget;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 6
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 9
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    .line 11
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mResolved:Z

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 6
    const/4 v3, 0x0

    .line 8
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 9
    aput-object v4, v2, v3

    .line 11
    const/4 v5, 0x2

    .line 13
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 14
    aput-object v6, v2, v5

    .line 16
    const/4 v7, 0x1

    .line 18
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 19
    aput-object v8, v2, v7

    .line 21
    const/4 v9, 0x3

    .line 23
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 24
    aput-object v10, v2, v9

    .line 26
    move v11, v3

    .line 28
    :goto_0
    array-length v12, v2

    .line 29
    if-ge v11, v12, :cond_0

    .line 30
    aget-object v12, v2, v11

    .line 32
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 34
    move-result-object v13

    .line 37
    iput-object v13, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 38
    add-int/lit8 v11, v11, 0x1

    .line 40
    goto :goto_0

    .line 42
    :cond_0
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 43
    if-ltz v11, :cond_1f

    .line 45
    const/4 v12, 0x4

    .line 47
    if-ge v11, v12, :cond_1f

    .line 48
    aget-object v2, v2, v11

    .line 50
    iget-boolean v11, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mResolved:Z

    .line 52
    if-nez v11, :cond_1

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    .line 56
    :cond_1
    iget-boolean v11, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mResolved:Z

    .line 59
    if-eqz v11, :cond_6

    .line 61
    iput-boolean v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mResolved:Z

    .line 63
    iget v2, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 65
    if-eqz v2, :cond_4

    .line 67
    if-ne v2, v7, :cond_2

    .line 69
    goto :goto_1

    .line 71
    :cond_2
    if-eq v2, v5, :cond_3

    .line 72
    if-ne v2, v9, :cond_5

    .line 74
    :cond_3
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 76
    iget v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 78
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 80
    iget-object v2, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 83
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 85
    invoke-virtual {v1, v2, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 87
    goto :goto_2

    .line 90
    :cond_4
    :goto_1
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 91
    iget v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 93
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 95
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 98
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 100
    invoke-virtual {v1, v2, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 102
    :cond_5
    :goto_2
    return-void

    .line 105
    :cond_6
    move v11, v3

    .line 106
    :goto_3
    iget v13, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 107
    if-ge v11, v13, :cond_c

    .line 109
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 111
    aget-object v13, v13, v11

    .line 113
    iget-boolean v14, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 115
    if-nez v14, :cond_7

    .line 117
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    .line 119
    move-result v14

    .line 122
    if-nez v14, :cond_7

    .line 123
    goto :goto_5

    .line 125
    :cond_7
    iget v14, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 126
    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 128
    if-eqz v14, :cond_8

    .line 130
    if-ne v14, v7, :cond_9

    .line 132
    :cond_8
    iget-object v12, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 134
    aget-object v12, v12, v3

    .line 136
    if-ne v12, v15, :cond_9

    .line 138
    iget-object v12, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 140
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 142
    if-eqz v12, :cond_9

    .line 144
    iget-object v12, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 146
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 148
    if-eqz v12, :cond_9

    .line 150
    goto :goto_4

    .line 152
    :cond_9
    if-eq v14, v5, :cond_a

    .line 153
    if-ne v14, v9, :cond_b

    .line 155
    :cond_a
    iget-object v12, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 157
    aget-object v12, v12, v7

    .line 159
    if-ne v12, v15, :cond_b

    .line 161
    iget-object v12, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 163
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 165
    if-eqz v12, :cond_b

    .line 167
    iget-object v12, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 169
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 171
    if-eqz v12, :cond_b

    .line 173
    :goto_4
    move v11, v7

    .line 175
    goto :goto_6

    .line 176
    :cond_b
    :goto_5
    add-int/lit8 v11, v11, 0x1

    .line 177
    const/4 v12, 0x4

    .line 179
    goto :goto_3

    .line 180
    :cond_c
    move v11, v3

    .line 181
    :goto_6
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    .line 182
    move-result v12

    .line 185
    if-nez v12, :cond_e

    .line 186
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    .line 188
    move-result v12

    .line 191
    if-eqz v12, :cond_d

    .line 192
    goto :goto_7

    .line 194
    :cond_d
    move v12, v3

    .line 195
    goto :goto_8

    .line 196
    :cond_e
    :goto_7
    move v12, v7

    .line 197
    :goto_8
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    .line 198
    move-result v13

    .line 201
    if-nez v13, :cond_10

    .line 202
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    .line 204
    move-result v13

    .line 207
    if-eqz v13, :cond_f

    .line 208
    goto :goto_9

    .line 210
    :cond_f
    move v13, v3

    .line 211
    goto :goto_a

    .line 212
    :cond_10
    :goto_9
    move v13, v7

    .line 213
    :goto_a
    if-nez v11, :cond_15

    .line 214
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 216
    if-nez v11, :cond_11

    .line 218
    if-nez v12, :cond_14

    .line 220
    :cond_11
    if-ne v11, v5, :cond_12

    .line 222
    if-nez v13, :cond_14

    .line 224
    :cond_12
    if-ne v11, v7, :cond_13

    .line 226
    if-nez v12, :cond_14

    .line 228
    :cond_13
    if-ne v11, v9, :cond_15

    .line 230
    if-eqz v13, :cond_15

    .line 232
    :cond_14
    move v11, v7

    .line 234
    goto :goto_b

    .line 235
    :cond_15
    move v11, v3

    .line 236
    :goto_b
    if-nez v11, :cond_16

    .line 237
    const/4 v11, 0x4

    .line 239
    goto :goto_c

    .line 240
    :cond_16
    const/4 v11, 0x5

    .line 241
    :goto_c
    move v12, v3

    .line 242
    :goto_d
    iget v13, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 243
    if-ge v12, v13, :cond_1b

    .line 245
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 247
    aget-object v13, v13, v12

    .line 249
    iget-boolean v14, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 251
    if-nez v14, :cond_17

    .line 253
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    .line 255
    move-result v14

    .line 258
    if-nez v14, :cond_17

    .line 259
    goto :goto_11

    .line 261
    :cond_17
    iget-object v14, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 262
    iget v15, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 264
    aget-object v14, v14, v15

    .line 266
    invoke-virtual {v1, v14}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 268
    move-result-object v14

    .line 271
    iget v15, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 272
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 274
    aget-object v13, v13, v15

    .line 276
    iput-object v14, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 278
    iget-object v9, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 280
    if-eqz v9, :cond_18

    .line 282
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 284
    if-ne v9, v0, :cond_18

    .line 286
    iget v9, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 288
    add-int/2addr v9, v3

    .line 290
    goto :goto_e

    .line 291
    :cond_18
    move v9, v3

    .line 292
    :goto_e
    if-eqz v15, :cond_1a

    .line 293
    if-ne v15, v5, :cond_19

    .line 295
    goto :goto_f

    .line 297
    :cond_19
    iget-object v13, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 298
    iget v15, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    .line 300
    add-int/2addr v15, v9

    .line 302
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 303
    move-result-object v5

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    .line 307
    move-result-object v7

    .line 310
    iput v3, v7, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 311
    invoke-virtual {v5, v13, v14, v7, v15}, Landroidx/constraintlayout/core/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 313
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 316
    goto :goto_10

    .line 319
    :cond_1a
    :goto_f
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 320
    iget v7, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    .line 322
    sub-int/2addr v7, v9

    .line 324
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 325
    move-result-object v13

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    .line 329
    move-result-object v15

    .line 332
    iput v3, v15, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 333
    invoke-virtual {v13, v5, v14, v15, v7}, Landroidx/constraintlayout/core/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 335
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 338
    :goto_10
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 341
    iget v7, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    .line 343
    add-int/2addr v7, v9

    .line 345
    invoke-virtual {v1, v5, v14, v7, v11}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 346
    :goto_11
    add-int/lit8 v12, v12, 0x1

    .line 349
    const/4 v5, 0x2

    .line 351
    const/4 v7, 0x1

    .line 352
    const/4 v9, 0x3

    .line 353
    goto :goto_d

    .line 354
    :cond_1b
    iget v2, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 355
    const/16 v5, 0x8

    .line 357
    if-nez v2, :cond_1c

    .line 359
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 361
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 363
    invoke-virtual {v1, v2, v6, v3, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 365
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 368
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 370
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 372
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 374
    const/4 v6, 0x4

    .line 376
    invoke-virtual {v1, v2, v5, v3, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 377
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 380
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 382
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 384
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 386
    invoke-virtual {v1, v2, v0, v3, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 388
    goto :goto_12

    .line 391
    :cond_1c
    const/4 v7, 0x1

    .line 392
    if-ne v2, v7, :cond_1d

    .line 393
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 395
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 397
    invoke-virtual {v1, v2, v6, v3, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 399
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 402
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 404
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 406
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 408
    const/4 v6, 0x4

    .line 410
    invoke-virtual {v1, v2, v5, v3, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 411
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 414
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 416
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 418
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 420
    invoke-virtual {v1, v2, v0, v3, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 422
    goto :goto_12

    .line 425
    :cond_1d
    const/4 v4, 0x2

    .line 426
    if-ne v2, v4, :cond_1e

    .line 427
    iget-object v2, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 429
    iget-object v4, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 431
    invoke-virtual {v1, v2, v4, v3, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 433
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 436
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 438
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 440
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 442
    const/4 v5, 0x4

    .line 444
    invoke-virtual {v1, v2, v4, v3, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 445
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 448
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 450
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 452
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 454
    invoke-virtual {v1, v2, v0, v3, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 456
    goto :goto_12

    .line 459
    :cond_1e
    const/4 v4, 0x3

    .line 460
    if-ne v2, v4, :cond_1f

    .line 461
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 463
    iget-object v4, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 465
    invoke-virtual {v1, v2, v4, v3, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 467
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 470
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 472
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 474
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 476
    const/4 v5, 0x4

    .line 478
    invoke-virtual {v1, v2, v4, v3, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 479
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 482
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 484
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 486
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 488
    invoke-virtual {v1, v2, v0, v3, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 490
    :cond_1f
    :goto_12
    return-void
    .line 493
.end method

.method public final allSolved()Z
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v3, v0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    iget v4, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 6
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x2

    .line 9
    if-ge v2, v4, :cond_5

    .line 10
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 12
    aget-object v4, v4, v2

    .line 14
    iget-boolean v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 16
    if-nez v7, :cond_0

    .line 18
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    .line 20
    move-result v7

    .line 23
    if-nez v7, :cond_0

    .line 24
    goto :goto_2

    .line 26
    :cond_0
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 27
    if-eqz v7, :cond_1

    .line 29
    if-ne v7, v0, :cond_2

    .line 31
    :cond_1
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 33
    move-result v7

    .line 36
    if-nez v7, :cond_2

    .line 37
    :goto_1
    move v3, v1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 41
    if-eq v7, v6, :cond_3

    .line 43
    if-ne v7, v5, :cond_4

    .line 45
    :cond_3
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 47
    move-result v4

    .line 50
    if-nez v4, :cond_4

    .line 51
    goto :goto_1

    .line 53
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 54
    goto :goto_0

    .line 56
    :cond_5
    if-eqz v3, :cond_13

    .line 57
    if-lez v4, :cond_13

    .line 59
    move v2, v1

    .line 61
    move v3, v2

    .line 62
    :goto_3
    iget v4, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 63
    if-ge v1, v4, :cond_10

    .line 65
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 67
    aget-object v4, v4, v1

    .line 69
    iget-boolean v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 71
    if-nez v7, :cond_6

    .line 73
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    .line 75
    move-result v7

    .line 78
    if-nez v7, :cond_6

    .line 79
    goto/16 :goto_5

    .line 81
    :cond_6
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 83
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 85
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 87
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 89
    if-nez v3, :cond_b

    .line 91
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 93
    if-nez v3, :cond_7

    .line 95
    invoke-virtual {v4, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 97
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 101
    move-result v2

    .line 104
    goto :goto_4

    .line 105
    :cond_7
    if-ne v3, v0, :cond_8

    .line 106
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 108
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 112
    move-result v2

    .line 115
    goto :goto_4

    .line 116
    :cond_8
    if-ne v3, v6, :cond_9

    .line 117
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 119
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 123
    move-result v2

    .line 126
    goto :goto_4

    .line 127
    :cond_9
    if-ne v3, v5, :cond_a

    .line 128
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 130
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 134
    move-result v2

    .line 137
    :cond_a
    :goto_4
    move v3, v0

    .line 138
    :cond_b
    iget v11, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 139
    if-nez v11, :cond_c

    .line 141
    invoke-virtual {v4, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 143
    move-result-object v4

    .line 146
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 147
    move-result v4

    .line 150
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 151
    move-result v2

    .line 154
    goto :goto_5

    .line 155
    :cond_c
    if-ne v11, v0, :cond_d

    .line 156
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 158
    move-result-object v4

    .line 161
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 162
    move-result v4

    .line 165
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 166
    move-result v2

    .line 169
    goto :goto_5

    .line 170
    :cond_d
    if-ne v11, v6, :cond_e

    .line 171
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 173
    move-result-object v4

    .line 176
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 177
    move-result v4

    .line 180
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 181
    move-result v2

    .line 184
    goto :goto_5

    .line 185
    :cond_e
    if-ne v11, v5, :cond_f

    .line 186
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 188
    move-result-object v4

    .line 191
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    .line 192
    move-result v4

    .line 195
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 196
    move-result v2

    .line 199
    :cond_f
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 200
    goto/16 :goto_3

    .line 202
    :cond_10
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    .line 204
    add-int/2addr v2, v1

    .line 206
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 207
    if-eqz v1, :cond_12

    .line 209
    if-ne v1, v0, :cond_11

    .line 211
    goto :goto_6

    .line 213
    :cond_11
    invoke-virtual {p0, v2, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 214
    goto :goto_7

    .line 217
    :cond_12
    :goto_6
    invoke-virtual {p0, v2, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 218
    :goto_7
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mResolved:Z

    .line 221
    return v0

    .line 223
    :cond_13
    return v1
    .line 224
.end method

.method public final allowedInBarrier()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 2
    check-cast p1, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 5
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 7
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 9
    iget-boolean p2, p1, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 11
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 13
    iget p1, p1, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    .line 15
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    .line 17
    return-void
    .line 19
.end method

.method public final getOrientation()I
    .locals 2

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 2
    if-eqz p0, :cond_1

    .line 4
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    const/4 v1, 0x2

    .line 9
    if-eq p0, v1, :cond_0

    .line 10
    const/4 v1, 0x3

    .line 12
    if-eq p0, v1, :cond_0

    .line 13
    const/4 p0, -0x1

    .line 15
    return p0

    .line 16
    :cond_0
    return v0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    return p0
    .line 19
.end method

.method public final isResolvedHorizontally()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mResolved:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isResolvedVertically()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mResolved:Z

    .line 2
    return p0
    .line 4
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "[Barrier] "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 9
    const-string v2, " {"

    .line 11
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 18
    if-ge v1, v2, :cond_1

    .line 20
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 22
    aget-object v2, v2, v1

    .line 24
    if-lez v1, :cond_0

    .line 26
    const-string v3, ", "

    .line 28
    invoke-static {v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    :cond_0
    invoke-static {v0}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object v0

    .line 37
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_1
    const-string/jumbo p0, "}"

    .line 50
    invoke-static {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    return-object p0
    .line 57
.end method
