.class public final Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mLayoutHeightSpec:I

.field public mLayoutWidthSpec:I

.field public mPaddingBottom:I

.field public mPaddingHeight:I

.field public mPaddingTop:I

.field public mPaddingWidth:I

.field public final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    return-void
    .line 9
.end method

.method public static isSimilarSpec(III)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    move-result p0

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    move-result v1

    .line 13
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    move-result p1

    .line 17
    const/high16 v2, 0x40000000    # 2.0f

    .line 18
    if-ne v1, v2, :cond_2

    .line 20
    const/high16 v1, -0x80000000

    .line 22
    if-eq p0, v1, :cond_1

    .line 24
    if-nez p0, :cond_2

    .line 26
    :cond_1
    if-ne p2, p1, :cond_2

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0
    .line 32
.end method


# virtual methods
.method public final measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    if-nez v1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 11
    const/16 v4, 0x8

    .line 13
    const/4 v5, 0x0

    .line 15
    if-ne v3, v4, :cond_1

    .line 16
    iget-boolean v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInPlaceholder:Z

    .line 18
    if-nez v3, :cond_1

    .line 20
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 22
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 24
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 26
    return-void

    .line 28
    :cond_1
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 29
    if-nez v3, :cond_2

    .line 31
    return-void

    .line 33
    :cond_2
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    .line 34
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 41
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 43
    iget v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 45
    iget v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 47
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingTop:I

    .line 49
    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingBottom:I

    .line 51
    add-int/2addr v9, v10

    .line 53
    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingWidth:I

    .line 54
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 56
    check-cast v11, Landroid/view/View;

    .line 58
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 60
    move-result v12

    .line 63
    const/4 v15, 0x2

    .line 64
    const/4 v14, 0x1

    .line 65
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 66
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 68
    if-eqz v12, :cond_f

    .line 70
    if-eq v12, v14, :cond_e

    .line 72
    if-eq v12, v15, :cond_6

    .line 74
    const/4 v7, 0x3

    .line 76
    if-eq v12, v7, :cond_3

    .line 77
    const/4 v7, 0x0

    .line 79
    goto/16 :goto_6

    .line 80
    :cond_3
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    .line 82
    if-eqz v13, :cond_4

    .line 84
    iget v12, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 86
    const/16 v17, 0x0

    .line 88
    add-int/lit8 v12, v12, 0x0

    .line 90
    goto :goto_0

    .line 92
    :cond_4
    const/4 v12, 0x0

    .line 93
    :goto_0
    if-eqz v5, :cond_5

    .line 94
    iget v15, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 96
    add-int/2addr v12, v15

    .line 98
    :cond_5
    add-int/2addr v10, v12

    .line 99
    const/4 v12, -0x1

    .line 100
    invoke-static {v7, v10, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 101
    move-result v7

    .line 104
    goto :goto_6

    .line 105
    :cond_6
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    .line 106
    const/4 v12, -0x2

    .line 108
    invoke-static {v7, v10, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 109
    move-result v7

    .line 112
    iget v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 113
    if-ne v10, v14, :cond_7

    .line 115
    move v10, v14

    .line 117
    goto :goto_1

    .line 118
    :cond_7
    const/4 v10, 0x0

    .line 119
    :goto_1
    iget v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 120
    const/4 v15, 0x2

    .line 122
    if-eq v12, v14, :cond_9

    .line 123
    if-ne v12, v15, :cond_8

    .line 125
    goto :goto_2

    .line 127
    :cond_8
    const/high16 v12, 0x40000000    # 2.0f

    .line 128
    goto :goto_6

    .line 130
    :cond_9
    :goto_2
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 131
    move-result v12

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 135
    move-result v14

    .line 138
    if-ne v12, v14, :cond_a

    .line 139
    const/4 v12, 0x1

    .line 141
    goto :goto_3

    .line 142
    :cond_a
    const/4 v12, 0x0

    .line 143
    :goto_3
    iget v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 144
    if-eq v14, v15, :cond_d

    .line 146
    if-eqz v10, :cond_d

    .line 148
    if-eqz v10, :cond_b

    .line 150
    if-nez v12, :cond_d

    .line 152
    :cond_b
    instance-of v10, v11, Landroidx/constraintlayout/widget/Placeholder;

    .line 154
    if-nez v10, :cond_d

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 158
    move-result v10

    .line 161
    if-eqz v10, :cond_c

    .line 162
    goto :goto_4

    .line 164
    :cond_c
    const/4 v10, 0x0

    .line 165
    goto :goto_5

    .line 166
    :cond_d
    :goto_4
    const/4 v10, 0x1

    .line 167
    :goto_5
    if-eqz v10, :cond_8

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 170
    move-result v7

    .line 173
    const/high16 v12, 0x40000000    # 2.0f

    .line 174
    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 176
    move-result v7

    .line 179
    goto :goto_6

    .line 180
    :cond_e
    const/high16 v12, 0x40000000    # 2.0f

    .line 181
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    .line 183
    const/4 v14, -0x2

    .line 185
    invoke-static {v7, v10, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 186
    move-result v7

    .line 189
    goto :goto_6

    .line 190
    :cond_f
    const/high16 v12, 0x40000000    # 2.0f

    .line 191
    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 193
    move-result v7

    .line 196
    :goto_6
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 197
    move-result v10

    .line 200
    if-eqz v10, :cond_1c

    .line 201
    const/4 v12, 0x1

    .line 203
    if-eq v10, v12, :cond_1b

    .line 204
    const/4 v8, 0x2

    .line 206
    if-eq v10, v8, :cond_13

    .line 207
    const/4 v8, 0x3

    .line 209
    if-eq v10, v8, :cond_10

    .line 210
    const/4 v0, 0x0

    .line 212
    goto/16 :goto_d

    .line 213
    :cond_10
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    .line 215
    if-eqz v13, :cond_11

    .line 217
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 219
    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 221
    const/4 v10, 0x0

    .line 223
    add-int/2addr v8, v10

    .line 224
    goto :goto_7

    .line 225
    :cond_11
    const/4 v8, 0x0

    .line 226
    :goto_7
    if-eqz v5, :cond_12

    .line 227
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 229
    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 231
    add-int/2addr v8, v5

    .line 233
    :cond_12
    add-int/2addr v9, v8

    .line 234
    const/4 v5, -0x1

    .line 235
    invoke-static {v0, v9, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 236
    move-result v0

    .line 239
    goto :goto_d

    .line 240
    :cond_13
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    .line 241
    const/4 v5, -0x2

    .line 243
    invoke-static {v0, v9, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 244
    move-result v0

    .line 247
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 248
    const/4 v8, 0x1

    .line 250
    if-ne v5, v8, :cond_14

    .line 251
    move v5, v8

    .line 253
    goto :goto_8

    .line 254
    :cond_14
    const/4 v5, 0x0

    .line 255
    :goto_8
    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 256
    if-eq v9, v8, :cond_16

    .line 258
    const/4 v8, 0x2

    .line 260
    if-ne v9, v8, :cond_15

    .line 261
    goto :goto_9

    .line 263
    :cond_15
    const/high16 v5, 0x40000000    # 2.0f

    .line 264
    goto :goto_d

    .line 266
    :cond_16
    const/4 v8, 0x2

    .line 267
    :goto_9
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 268
    move-result v9

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 272
    move-result v10

    .line 275
    if-ne v9, v10, :cond_17

    .line 276
    const/4 v9, 0x1

    .line 278
    goto :goto_a

    .line 279
    :cond_17
    const/4 v9, 0x0

    .line 280
    :goto_a
    iget v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 281
    if-eq v10, v8, :cond_1a

    .line 283
    if-eqz v5, :cond_1a

    .line 285
    if-eqz v5, :cond_18

    .line 287
    if-nez v9, :cond_1a

    .line 289
    :cond_18
    instance-of v5, v11, Landroidx/constraintlayout/widget/Placeholder;

    .line 291
    if-nez v5, :cond_1a

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 295
    move-result v5

    .line 298
    if-eqz v5, :cond_19

    .line 299
    goto :goto_b

    .line 301
    :cond_19
    const/4 v5, 0x0

    .line 302
    goto :goto_c

    .line 303
    :cond_1a
    :goto_b
    const/4 v5, 0x1

    .line 304
    :goto_c
    if-eqz v5, :cond_15

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 307
    move-result v0

    .line 310
    const/high16 v5, 0x40000000    # 2.0f

    .line 311
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 313
    move-result v0

    .line 316
    goto :goto_d

    .line 317
    :cond_1b
    const/high16 v5, 0x40000000    # 2.0f

    .line 318
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    .line 320
    const/4 v8, -0x2

    .line 322
    invoke-static {v0, v9, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 323
    move-result v0

    .line 326
    goto :goto_d

    .line 327
    :cond_1c
    const/high16 v5, 0x40000000    # 2.0f

    .line 328
    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 330
    move-result v0

    .line 333
    :goto_d
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 334
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 336
    if-eqz v5, :cond_1e

    .line 338
    iget v8, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 340
    const/16 v9, 0x100

    .line 342
    invoke-static {v8, v9}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    .line 344
    move-result v8

    .line 347
    if-eqz v8, :cond_1e

    .line 348
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 350
    move-result v8

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 354
    move-result v9

    .line 357
    if-ne v8, v9, :cond_1e

    .line 358
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 360
    move-result v8

    .line 363
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 364
    move-result v9

    .line 367
    if-ge v8, v9, :cond_1e

    .line 368
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 370
    move-result v8

    .line 373
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 374
    move-result v9

    .line 377
    if-ne v8, v9, :cond_1e

    .line 378
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 380
    move-result v8

    .line 383
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 384
    move-result v5

    .line 387
    if-ge v8, v5, :cond_1e

    .line 388
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    .line 390
    move-result v5

    .line 393
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 394
    if-ne v5, v8, :cond_1e

    .line 396
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 398
    move-result v5

    .line 401
    if-nez v5, :cond_1e

    .line 402
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 404
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 406
    move-result v8

    .line 409
    invoke-static {v5, v7, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    .line 410
    move-result v5

    .line 413
    if-eqz v5, :cond_1d

    .line 414
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 418
    move-result v8

    .line 421
    invoke-static {v5, v0, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    .line 422
    move-result v5

    .line 425
    if-eqz v5, :cond_1d

    .line 426
    const/4 v5, 0x1

    .line 428
    goto :goto_e

    .line 429
    :cond_1d
    const/4 v5, 0x0

    .line 430
    :goto_e
    if-eqz v5, :cond_1e

    .line 431
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 433
    move-result v0

    .line 436
    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 439
    move-result v0

    .line 442
    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 443
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 445
    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 447
    return-void

    .line 449
    :cond_1e
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 450
    if-ne v4, v5, :cond_1f

    .line 452
    const/4 v8, 0x1

    .line 454
    goto :goto_f

    .line 455
    :cond_1f
    const/4 v8, 0x0

    .line 456
    :goto_f
    if-ne v6, v5, :cond_20

    .line 457
    const/4 v5, 0x1

    .line 459
    goto :goto_10

    .line 460
    :cond_20
    const/4 v5, 0x0

    .line 461
    :goto_10
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 462
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 464
    if-eq v6, v9, :cond_22

    .line 466
    if-ne v6, v10, :cond_21

    .line 468
    goto :goto_11

    .line 470
    :cond_21
    const/4 v6, 0x0

    .line 471
    goto :goto_12

    .line 472
    :cond_22
    :goto_11
    const/4 v6, 0x1

    .line 473
    :goto_12
    if-eq v4, v9, :cond_24

    .line 474
    if-ne v4, v10, :cond_23

    .line 476
    goto :goto_13

    .line 478
    :cond_23
    const/4 v4, 0x0

    .line 479
    goto :goto_14

    .line 480
    :cond_24
    :goto_13
    const/4 v4, 0x1

    .line 481
    :goto_14
    const/4 v9, 0x0

    .line 482
    if-eqz v8, :cond_25

    .line 483
    iget v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 485
    cmpl-float v10, v10, v9

    .line 487
    if-lez v10, :cond_25

    .line 489
    const/4 v10, 0x1

    .line 491
    goto :goto_15

    .line 492
    :cond_25
    const/4 v10, 0x0

    .line 493
    :goto_15
    if-eqz v5, :cond_26

    .line 494
    iget v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 496
    cmpl-float v9, v12, v9

    .line 498
    if-lez v9, :cond_26

    .line 500
    const/4 v9, 0x1

    .line 502
    goto :goto_16

    .line 503
    :cond_26
    const/4 v9, 0x0

    .line 504
    :goto_16
    if-nez v11, :cond_27

    .line 505
    return-void

    .line 507
    :cond_27
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 508
    move-result-object v12

    .line 511
    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 512
    iget v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 514
    const/4 v14, 0x1

    .line 516
    if-eq v13, v14, :cond_29

    .line 517
    const/4 v14, 0x2

    .line 519
    if-eq v13, v14, :cond_29

    .line 520
    if-eqz v8, :cond_29

    .line 522
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 524
    if-nez v8, :cond_29

    .line 526
    if-eqz v5, :cond_29

    .line 528
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 530
    if-eqz v5, :cond_28

    .line 532
    goto :goto_17

    .line 534
    :cond_28
    const/4 v0, 0x0

    .line 535
    const/4 v13, 0x0

    .line 536
    const/4 v14, 0x0

    .line 537
    const/4 v15, 0x0

    .line 538
    goto/16 :goto_1f

    .line 539
    :cond_29
    :goto_17
    instance-of v5, v11, Landroidx/constraintlayout/widget/VirtualLayout;

    .line 541
    if-eqz v5, :cond_2a

    .line 543
    instance-of v5, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 545
    if-eqz v5, :cond_2a

    .line 547
    move-object v5, v1

    .line 549
    check-cast v5, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 550
    move-object v8, v11

    .line 552
    check-cast v8, Landroidx/constraintlayout/widget/VirtualLayout;

    .line 553
    invoke-virtual {v8, v5, v7, v0}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V

    .line 555
    goto :goto_18

    .line 558
    :cond_2a
    invoke-virtual {v11, v7, v0}, Landroid/view/View;->measure(II)V

    .line 559
    :goto_18
    iput v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 562
    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 564
    const/4 v5, 0x0

    .line 566
    iput-boolean v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 567
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 569
    move-result v5

    .line 572
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 573
    move-result v8

    .line 576
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    .line 577
    move-result v13

    .line 580
    iget v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 581
    if-lez v14, :cond_2b

    .line 583
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    .line 585
    move-result v14

    .line 588
    goto :goto_19

    .line 589
    :cond_2b
    move v14, v5

    .line 590
    :goto_19
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 591
    if-lez v15, :cond_2c

    .line 593
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    .line 595
    move-result v14

    .line 598
    :cond_2c
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 599
    if-lez v15, :cond_2d

    .line 601
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    .line 603
    move-result v15

    .line 606
    move/from16 v16, v0

    .line 607
    goto :goto_1a

    .line 609
    :cond_2d
    move/from16 v16, v0

    .line 610
    move v15, v8

    .line 612
    :goto_1a
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 613
    if-lez v0, :cond_2e

    .line 615
    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    .line 617
    move-result v15

    .line 620
    :cond_2e
    iget v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 621
    const/4 v3, 0x1

    .line 623
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    .line 624
    move-result v0

    .line 627
    if-nez v0, :cond_30

    .line 628
    const/high16 v0, 0x3f000000    # 0.5f

    .line 630
    if-eqz v10, :cond_2f

    .line 632
    if-eqz v6, :cond_2f

    .line 634
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 636
    int-to-float v4, v15

    .line 638
    mul-float/2addr v4, v3

    .line 639
    add-float/2addr v4, v0

    .line 640
    float-to-int v0, v4

    .line 641
    move v14, v0

    .line 642
    goto :goto_1b

    .line 643
    :cond_2f
    if-eqz v9, :cond_30

    .line 644
    if-eqz v4, :cond_30

    .line 646
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 648
    int-to-float v4, v14

    .line 650
    div-float/2addr v4, v3

    .line 651
    add-float/2addr v4, v0

    .line 652
    float-to-int v0, v4

    .line 653
    move v15, v0

    .line 654
    :cond_30
    :goto_1b
    if-ne v5, v14, :cond_32

    .line 655
    if-eq v8, v15, :cond_31

    .line 657
    goto :goto_1c

    .line 659
    :cond_31
    const/4 v0, 0x0

    .line 660
    goto :goto_1f

    .line 661
    :cond_32
    :goto_1c
    if-eq v5, v14, :cond_33

    .line 662
    const/high16 v0, 0x40000000    # 2.0f

    .line 664
    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 666
    move-result v7

    .line 669
    goto :goto_1d

    .line 670
    :cond_33
    const/high16 v0, 0x40000000    # 2.0f

    .line 671
    :goto_1d
    if-eq v8, v15, :cond_34

    .line 673
    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 675
    move-result v0

    .line 678
    goto :goto_1e

    .line 679
    :cond_34
    move/from16 v0, v16

    .line 680
    :goto_1e
    invoke-virtual {v11, v7, v0}, Landroid/view/View;->measure(II)V

    .line 682
    iput v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 685
    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 687
    const/4 v0, 0x0

    .line 689
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 690
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 692
    move-result v17

    .line 695
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 696
    move-result v3

    .line 699
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    .line 700
    move-result v4

    .line 703
    move v15, v3

    .line 704
    move v13, v4

    .line 705
    move/from16 v14, v17

    .line 706
    :goto_1f
    const/4 v3, -0x1

    .line 708
    if-eq v13, v3, :cond_35

    .line 709
    const/16 v17, 0x1

    .line 711
    goto :goto_20

    .line 713
    :cond_35
    move/from16 v17, v0

    .line 714
    :goto_20
    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 716
    if-ne v14, v3, :cond_37

    .line 718
    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 720
    if-eq v15, v3, :cond_36

    .line 722
    goto :goto_21

    .line 724
    :cond_36
    move v5, v0

    .line 725
    goto :goto_22

    .line 726
    :cond_37
    :goto_21
    const/4 v5, 0x1

    .line 727
    :goto_22
    iput-boolean v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 728
    iget-boolean v0, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mNeedsBaseline:Z

    .line 730
    if-eqz v0, :cond_38

    .line 732
    const/4 v12, 0x1

    .line 734
    goto :goto_23

    .line 735
    :cond_38
    move/from16 v12, v17

    .line 736
    :goto_23
    if-eqz v12, :cond_39

    .line 738
    const/4 v0, -0x1

    .line 740
    if-eq v13, v0, :cond_39

    .line 741
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 743
    if-eq v0, v13, :cond_39

    .line 745
    const/4 v0, 0x1

    .line 747
    iput-boolean v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 748
    :cond_39
    iput v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 750
    iput v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 752
    iput-boolean v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 754
    iput v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 756
    return-void
    .line 758
.end method
