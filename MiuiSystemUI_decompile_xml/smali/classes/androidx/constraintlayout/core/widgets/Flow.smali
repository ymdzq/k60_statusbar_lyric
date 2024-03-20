.class public final Landroidx/constraintlayout/core/widgets/Flow;
.super Landroidx/constraintlayout/core/widgets/VirtualLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mAlignedDimensions:[I

.field public final mChainList:Ljava/util/ArrayList;

.field public mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mDisplayedWidgetsCount:I

.field public mFirstHorizontalBias:F

.field public mFirstHorizontalStyle:I

.field public mFirstVerticalBias:F

.field public mFirstVerticalStyle:I

.field public mHorizontalAlign:I

.field public mHorizontalBias:F

.field public mHorizontalGap:I

.field public mHorizontalStyle:I

.field public mLastHorizontalBias:F

.field public mLastHorizontalStyle:I

.field public mLastVerticalBias:F

.field public mLastVerticalStyle:I

.field public mMaxElementsWrap:I

.field public mOrientation:I

.field public mVerticalAlign:I

.field public mVerticalBias:F

.field public mVerticalGap:I

.field public mVerticalStyle:I

.field public mWrapMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 6
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 10
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 12
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 14
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 16
    const/high16 v1, 0x3f000000    # 0.5f

    .line 18
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 20
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 22
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 24
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 26
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 28
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 30
    const/4 v1, 0x0

    .line 32
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 33
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 35
    const/4 v2, 0x2

    .line 37
    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 38
    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 40
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 42
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 44
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 56
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 58
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 60
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 62
    return-void
    .line 64
.end method


# virtual methods
.method public final addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 5
    const/4 p2, 0x0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 11
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 13
    if-eqz p1, :cond_0

    .line 15
    move p1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, p2

    .line 19
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 20
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 22
    if-eqz v1, :cond_1b

    .line 24
    if-eq v1, v0, :cond_19

    .line 26
    const/4 v3, 0x2

    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    const/4 v3, 0x3

    .line 31
    if-eq v1, v3, :cond_1

    .line 32
    goto/16 :goto_e

    .line 34
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v1

    .line 39
    move v3, p2

    .line 40
    :goto_1
    if-ge v3, v1, :cond_1c

    .line 41
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 46
    check-cast v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 47
    add-int/lit8 v5, v1, -0x1

    .line 49
    if-ne v3, v5, :cond_2

    .line 51
    move v5, v0

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move v5, p2

    .line 55
    :goto_2
    invoke-virtual {v4, v3, p1, v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(IZZ)V

    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 59
    goto :goto_1

    .line 61
    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 62
    if-eqz v1, :cond_1c

    .line 64
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 66
    if-eqz v1, :cond_1c

    .line 68
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 70
    if-nez v1, :cond_4

    .line 72
    goto/16 :goto_e

    .line 74
    :cond_4
    move v1, p2

    .line 76
    :goto_3
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 77
    if-ge v1, v2, :cond_5

    .line 79
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 81
    aget-object v2, v2, v1

    .line 83
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetAnchors()V

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 88
    goto :goto_3

    .line 90
    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 91
    aget v2, v1, p2

    .line 93
    aget v1, v1, v0

    .line 95
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 97
    const/4 v4, 0x0

    .line 99
    move v5, p2

    .line 100
    :goto_4
    const/16 v6, 0x8

    .line 101
    if-ge v5, v2, :cond_c

    .line 103
    if-eqz p1, :cond_6

    .line 105
    sub-int v3, v2, v5

    .line 107
    sub-int/2addr v3, v0

    .line 109
    const/high16 v7, 0x3f800000    # 1.0f

    .line 110
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 112
    sub-float/2addr v7, v8

    .line 114
    goto :goto_5

    .line 115
    :cond_6
    move v7, v3

    .line 116
    move v3, v5

    .line 117
    :goto_5
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 118
    aget-object v3, v8, v3

    .line 120
    if-eqz v3, :cond_b

    .line 122
    iget v8, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 124
    if-ne v8, v6, :cond_7

    .line 126
    goto :goto_6

    .line 128
    :cond_7
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 129
    if-nez v5, :cond_8

    .line 131
    iget v8, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 133
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 135
    invoke-virtual {v3, v6, v9, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 137
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 140
    iput v8, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 142
    iput v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 144
    :cond_8
    add-int/lit8 v8, v2, -0x1

    .line 146
    if-ne v5, v8, :cond_9

    .line 148
    iget v8, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 150
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 152
    iget-object v10, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 154
    invoke-virtual {v3, v9, v10, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 156
    :cond_9
    if-lez v5, :cond_a

    .line 159
    if-eqz v4, :cond_a

    .line 161
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 163
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 165
    invoke-virtual {v3, v6, v9, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 167
    invoke-virtual {v4, v9, v6, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 170
    :cond_a
    move-object v4, v3

    .line 173
    :cond_b
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 174
    move v3, v7

    .line 176
    goto :goto_4

    .line 177
    :cond_c
    move p1, p2

    .line 178
    :goto_7
    if-ge p1, v1, :cond_12

    .line 179
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 181
    aget-object v3, v3, p1

    .line 183
    if-eqz v3, :cond_11

    .line 185
    iget v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 187
    if-ne v5, v6, :cond_d

    .line 189
    goto :goto_8

    .line 191
    :cond_d
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 192
    if-nez p1, :cond_e

    .line 194
    iget v7, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingTop:I

    .line 196
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 198
    invoke-virtual {v3, v5, v8, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 200
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 203
    iput v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 205
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 207
    iput v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 209
    :cond_e
    add-int/lit8 v7, v1, -0x1

    .line 211
    if-ne p1, v7, :cond_f

    .line 213
    iget v7, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 215
    iget-object v8, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 217
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 219
    invoke-virtual {v3, v8, v9, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 221
    :cond_f
    if-lez p1, :cond_10

    .line 224
    if-eqz v4, :cond_10

    .line 226
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 228
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 230
    invoke-virtual {v3, v5, v8, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 232
    invoke-virtual {v4, v8, v5, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 235
    :cond_10
    move-object v4, v3

    .line 238
    :cond_11
    :goto_8
    add-int/lit8 p1, p1, 0x1

    .line 239
    goto :goto_7

    .line 241
    :cond_12
    move p1, p2

    .line 242
    :goto_9
    if-ge p1, v2, :cond_1c

    .line 243
    move v3, p2

    .line 245
    :goto_a
    if-ge v3, v1, :cond_18

    .line 246
    mul-int v4, v3, v2

    .line 248
    add-int/2addr v4, p1

    .line 250
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 251
    if-ne v5, v0, :cond_13

    .line 253
    mul-int v4, p1, v1

    .line 255
    add-int/2addr v4, v3

    .line 257
    :cond_13
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 258
    array-length v7, v5

    .line 260
    if-lt v4, v7, :cond_14

    .line 261
    goto :goto_b

    .line 263
    :cond_14
    aget-object v4, v5, v4

    .line 264
    if-eqz v4, :cond_17

    .line 266
    iget v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 268
    if-ne v5, v6, :cond_15

    .line 270
    goto :goto_b

    .line 272
    :cond_15
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 273
    aget-object v5, v5, p1

    .line 275
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 277
    aget-object v7, v7, v3

    .line 279
    if-eq v4, v5, :cond_16

    .line 281
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 283
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 285
    invoke-virtual {v4, v9, v8, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 287
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 290
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 292
    invoke-virtual {v4, v8, v5, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 294
    :cond_16
    if-eq v4, v7, :cond_17

    .line 297
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 299
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 301
    invoke-virtual {v4, v8, v5, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 303
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 306
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 308
    invoke-virtual {v4, v5, v7, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 310
    :cond_17
    :goto_b
    add-int/lit8 v3, v3, 0x1

    .line 313
    goto :goto_a

    .line 315
    :cond_18
    add-int/lit8 p1, p1, 0x1

    .line 316
    goto :goto_9

    .line 318
    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 319
    move-result v1

    .line 322
    move v3, p2

    .line 323
    :goto_c
    if-ge v3, v1, :cond_1c

    .line 324
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 326
    move-result-object v4

    .line 329
    check-cast v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 330
    add-int/lit8 v5, v1, -0x1

    .line 332
    if-ne v3, v5, :cond_1a

    .line 334
    move v5, v0

    .line 336
    goto :goto_d

    .line 337
    :cond_1a
    move v5, p2

    .line 338
    :goto_d
    invoke-virtual {v4, v3, p1, v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(IZZ)V

    .line 339
    add-int/lit8 v3, v3, 0x1

    .line 342
    goto :goto_c

    .line 344
    :cond_1b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 345
    move-result v1

    .line 348
    if-lez v1, :cond_1c

    .line 349
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 351
    move-result-object v1

    .line 354
    check-cast v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 355
    invoke-virtual {v1, p2, p1, v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(IZZ)V

    .line 357
    :cond_1c
    :goto_e
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    .line 360
    return-void
    .line 362
.end method

.method public final copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 2
    check-cast p1, Landroidx/constraintlayout/core/widgets/Flow;

    .line 5
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 7
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 9
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 11
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 13
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 15
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 17
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 19
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 21
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 23
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 25
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 27
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 29
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 31
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 33
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 35
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 37
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 39
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 41
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 43
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 45
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 47
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 49
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 51
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 53
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 55
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 57
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 59
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 61
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 63
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 65
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 67
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 69
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 71
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 73
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 75
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 77
    iget p1, p1, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 79
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 81
    return-void
    .line 83
.end method

.method public final getWidgetHeight(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    const/4 v2, 0x1

    .line 8
    aget-object v1, v1, v2

    .line 9
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 11
    if-ne v1, v3, :cond_5

    .line 13
    iget v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 15
    if-nez v1, :cond_1

    .line 17
    return v0

    .line 19
    :cond_1
    const/4 v3, 0x2

    .line 20
    if-ne v1, v3, :cond_3

    .line 21
    iget v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 23
    int-to-float p1, p1

    .line 25
    mul-float/2addr v1, p1

    .line 26
    float-to-int p1, v1

    .line 27
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 28
    move-result v1

    .line 31
    if-eq p1, v1, :cond_2

    .line 32
    iput-boolean v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 34
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 36
    aget-object v5, v1, v0

    .line 38
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 40
    move-result v6

    .line 43
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 44
    move-object v3, p0

    .line 46
    move-object v4, p2

    .line 47
    move v8, p1

    .line 48
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 49
    :cond_2
    return p1

    .line 52
    :cond_3
    if-ne v1, v2, :cond_4

    .line 53
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 55
    move-result p0

    .line 58
    return p0

    .line 59
    :cond_4
    const/4 p0, 0x3

    .line 60
    if-ne v1, p0, :cond_5

    .line 61
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 63
    move-result p0

    .line 66
    int-to-float p0, p0

    .line 67
    iget p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 68
    mul-float/2addr p0, p1

    .line 70
    const/high16 p1, 0x3f000000    # 0.5f

    .line 71
    add-float/2addr p0, p1

    .line 73
    float-to-int p0, p0

    .line 74
    return p0

    .line 75
    :cond_5
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 76
    move-result p0

    .line 79
    return p0
    .line 80
.end method

.method public final getWidgetWidth(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    aget-object v1, v1, v0

    .line 8
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 10
    if-ne v1, v2, :cond_5

    .line 12
    iget v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 14
    if-nez v1, :cond_1

    .line 16
    return v0

    .line 18
    :cond_1
    const/4 v0, 0x2

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v1, v0, :cond_3

    .line 21
    iget v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 23
    int-to-float p1, p1

    .line 25
    mul-float/2addr v0, p1

    .line 26
    float-to-int p1, v0

    .line 27
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 28
    move-result v0

    .line 31
    if-eq p1, v0, :cond_2

    .line 32
    iput-boolean v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 34
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 36
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 38
    aget-object v7, v0, v2

    .line 40
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 42
    move-result v8

    .line 45
    move-object v3, p0

    .line 46
    move-object v4, p2

    .line 47
    move v6, p1

    .line 48
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 49
    :cond_2
    return p1

    .line 52
    :cond_3
    if-ne v1, v2, :cond_4

    .line 53
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 55
    move-result p0

    .line 58
    return p0

    .line 59
    :cond_4
    const/4 p0, 0x3

    .line 60
    if-ne v1, p0, :cond_5

    .line 61
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 63
    move-result p0

    .line 66
    int-to-float p0, p0

    .line 67
    iget p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 68
    mul-float/2addr p0, p1

    .line 70
    const/high16 p1, 0x3f000000    # 0.5f

    .line 71
    add-float/2addr p0, p1

    .line 73
    float-to-int p0, p0

    .line 74
    return p0

    .line 75
    :cond_5
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 76
    move-result p0

    .line 79
    return p0
    .line 80
.end method

.method public final measure(IIII)V
    .locals 38

    .line 1
    move-object/from16 v8, p0

    .line 2
    iget v0, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 4
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 8
    const/4 v11, 0x0

    .line 10
    const/4 v12, 0x1

    .line 11
    if-lez v0, :cond_a

    .line 12
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 18
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    move v0, v11

    .line 26
    goto/16 :goto_5

    .line 27
    :cond_1
    move v2, v11

    .line 29
    :goto_1
    iget v3, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 30
    if-ge v2, v3, :cond_9

    .line 32
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 34
    aget-object v3, v3, v2

    .line 36
    if-nez v3, :cond_2

    .line 38
    goto :goto_4

    .line 40
    :cond_2
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 41
    if-eqz v4, :cond_3

    .line 43
    goto :goto_4

    .line 45
    :cond_3
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 46
    move-result-object v4

    .line 49
    invoke-virtual {v3, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 50
    move-result-object v5

    .line 53
    if-ne v4, v10, :cond_4

    .line 54
    iget v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 56
    if-eq v6, v12, :cond_4

    .line 58
    if-ne v5, v10, :cond_4

    .line 60
    iget v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 62
    if-eq v6, v12, :cond_4

    .line 64
    move v6, v12

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    move v6, v11

    .line 68
    :goto_2
    if-eqz v6, :cond_5

    .line 69
    goto :goto_4

    .line 71
    :cond_5
    if-ne v4, v10, :cond_6

    .line 72
    move-object v4, v9

    .line 74
    :cond_6
    if-ne v5, v10, :cond_7

    .line 75
    move-object v5, v9

    .line 77
    :cond_7
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 78
    iput-object v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 80
    iput-object v5, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 82
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 84
    move-result v4

    .line 87
    iput v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 88
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 90
    move-result v4

    .line 93
    iput v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 94
    invoke-virtual {v0, v3, v6}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 96
    iget v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 99
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 101
    iget v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 104
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 106
    iget v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 109
    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 111
    if-lez v4, :cond_8

    .line 113
    move v4, v12

    .line 115
    goto :goto_3

    .line 116
    :cond_8
    move v4, v11

    .line 117
    :goto_3
    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHasBaseline:Z

    .line 118
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 120
    goto :goto_1

    .line 122
    :cond_9
    move v0, v12

    .line 123
    :goto_5
    if-nez v0, :cond_a

    .line 124
    iput v11, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredWidth:I

    .line 126
    iput v11, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredHeight:I

    .line 128
    iput-boolean v11, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    .line 130
    return-void

    .line 132
    :cond_a
    iget v13, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 133
    iget v14, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 135
    iget v15, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingTop:I

    .line 137
    iget v7, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 139
    const/4 v0, 0x2

    .line 141
    new-array v6, v0, [I

    .line 142
    sub-int v2, p2, v13

    .line 144
    sub-int/2addr v2, v14

    .line 146
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 147
    if-ne v3, v12, :cond_b

    .line 149
    sub-int v2, p4, v15

    .line 151
    sub-int/2addr v2, v7

    .line 153
    :cond_b
    move v5, v2

    .line 154
    const/4 v2, -0x1

    .line 155
    if-nez v3, :cond_d

    .line 156
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 158
    if-ne v3, v2, :cond_c

    .line 160
    iput v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 162
    :cond_c
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 164
    if-ne v3, v2, :cond_f

    .line 166
    iput v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 168
    goto :goto_6

    .line 170
    :cond_d
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 171
    if-ne v3, v2, :cond_e

    .line 173
    iput v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 175
    :cond_e
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 177
    if-ne v3, v2, :cond_f

    .line 179
    iput v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 181
    :cond_f
    :goto_6
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 183
    move v3, v11

    .line 185
    move v4, v3

    .line 186
    :goto_7
    iget v1, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 187
    const/16 v11, 0x8

    .line 189
    if-ge v3, v1, :cond_11

    .line 191
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 193
    aget-object v1, v1, v3

    .line 195
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 197
    if-ne v1, v11, :cond_10

    .line 199
    add-int/lit8 v4, v4, 0x1

    .line 201
    :cond_10
    add-int/lit8 v3, v3, 0x1

    .line 203
    const/4 v11, 0x0

    .line 205
    goto :goto_7

    .line 206
    :cond_11
    if-lez v4, :cond_13

    .line 207
    sub-int/2addr v1, v4

    .line 209
    new-array v2, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 210
    const/4 v1, 0x0

    .line 212
    const/4 v3, 0x0

    .line 213
    :goto_8
    iget v4, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 214
    if-ge v3, v4, :cond_13

    .line 216
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 218
    aget-object v4, v4, v3

    .line 220
    iget v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 222
    if-eq v0, v11, :cond_12

    .line 224
    aput-object v4, v2, v1

    .line 226
    add-int/lit8 v1, v1, 0x1

    .line 228
    :cond_12
    add-int/lit8 v3, v3, 0x1

    .line 230
    const/4 v0, 0x2

    .line 232
    goto :goto_8

    .line 233
    :cond_13
    move v11, v1

    .line 234
    move-object v4, v2

    .line 235
    iput-object v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 236
    iput v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 238
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 240
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 242
    if-eqz v0, :cond_71

    .line 244
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 246
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 248
    move/from16 v27, v13

    .line 250
    iget-object v13, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 252
    move-object/from16 v28, v13

    .line 254
    iget-object v13, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 256
    if-eq v0, v12, :cond_56

    .line 258
    const/4 v12, 0x2

    .line 260
    if-eq v0, v12, :cond_2f

    .line 261
    const/4 v12, 0x3

    .line 263
    if-eq v0, v12, :cond_14

    .line 264
    goto :goto_9

    .line 266
    :cond_14
    iget v12, v8, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 267
    if-nez v11, :cond_15

    .line 269
    :goto_9
    move-object/from16 v32, v6

    .line 271
    move/from16 v33, v7

    .line 273
    move/from16 v31, v14

    .line 275
    move/from16 v35, v15

    .line 277
    goto/16 :goto_3f

    .line 279
    :cond_15
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 281
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 284
    move-object/from16 v18, v3

    .line 286
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 288
    move-object/from16 v19, v4

    .line 290
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 292
    move/from16 v20, v5

    .line 294
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 296
    move-object/from16 v21, v6

    .line 298
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 300
    move-object/from16 v16, v0

    .line 302
    move-object/from16 v17, v1

    .line 304
    move-object/from16 v1, p0

    .line 306
    move-object/from16 v22, v2

    .line 308
    move v2, v12

    .line 310
    move-object/from16 v29, v13

    .line 311
    move-object/from16 v13, v18

    .line 313
    move-object/from16 v30, v19

    .line 315
    move/from16 v31, v20

    .line 317
    move-object/from16 v32, v21

    .line 319
    move/from16 v33, v7

    .line 321
    move/from16 v7, v31

    .line 323
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 325
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    if-nez v12, :cond_1d

    .line 331
    const/4 v1, 0x0

    .line 333
    const/4 v2, 0x0

    .line 334
    const/4 v3, 0x0

    .line 335
    const/4 v7, 0x0

    .line 336
    :goto_a
    if-ge v7, v11, :cond_1c

    .line 337
    const/4 v4, 0x1

    .line 339
    add-int/2addr v1, v4

    .line 340
    aget-object v6, v30, v7

    .line 341
    move/from16 v5, v31

    .line 343
    invoke-virtual {v8, v5, v6}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    .line 345
    move-result v16

    .line 348
    iget-object v4, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 349
    const/16 v18, 0x0

    .line 351
    aget-object v4, v4, v18

    .line 353
    if-ne v4, v10, :cond_16

    .line 355
    add-int/lit8 v2, v2, 0x1

    .line 357
    :cond_16
    move/from16 v18, v2

    .line 359
    if-eq v3, v5, :cond_17

    .line 361
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 363
    add-int/2addr v2, v3

    .line 365
    add-int v2, v2, v16

    .line 366
    if-le v2, v5, :cond_18

    .line 368
    :cond_17
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 370
    if-eqz v2, :cond_18

    .line 372
    const/4 v2, 0x1

    .line 374
    goto :goto_b

    .line 375
    :cond_18
    const/4 v2, 0x0

    .line 376
    :goto_b
    if-nez v2, :cond_19

    .line 377
    if-lez v7, :cond_19

    .line 379
    iget v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 381
    if-lez v4, :cond_19

    .line 383
    if-le v1, v4, :cond_19

    .line 385
    const/4 v2, 0x1

    .line 387
    :cond_19
    if-eqz v2, :cond_1a

    .line 388
    new-instance v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 390
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 392
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 394
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 396
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 398
    move-object/from16 v19, v0

    .line 400
    move-object v0, v4

    .line 402
    move-object/from16 v20, v1

    .line 403
    move-object/from16 v1, p0

    .line 405
    move-object/from16 v21, v2

    .line 407
    move v2, v12

    .line 409
    move/from16 v31, v14

    .line 410
    move-object v14, v4

    .line 412
    move-object/from16 v4, v21

    .line 413
    move/from16 v34, v5

    .line 415
    move-object/from16 v5, v20

    .line 417
    move/from16 v35, v15

    .line 419
    move-object v15, v6

    .line 421
    move-object/from16 v6, v19

    .line 422
    move-object/from16 v19, v9

    .line 424
    move v9, v7

    .line 426
    move/from16 v7, v34

    .line 427
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 429
    iput v9, v14, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 432
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    move-object v0, v14

    .line 437
    move/from16 v3, v16

    .line 438
    const/4 v1, 0x1

    .line 440
    goto :goto_c

    .line 441
    :cond_1a
    move/from16 v34, v5

    .line 442
    move-object/from16 v19, v9

    .line 444
    move/from16 v31, v14

    .line 446
    move/from16 v35, v15

    .line 448
    move-object v15, v6

    .line 450
    move v9, v7

    .line 451
    if-lez v9, :cond_1b

    .line 452
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 454
    add-int v2, v2, v16

    .line 456
    add-int/2addr v2, v3

    .line 458
    move v3, v2

    .line 459
    goto :goto_c

    .line 460
    :cond_1b
    move/from16 v3, v16

    .line 461
    :goto_c
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 463
    add-int/lit8 v7, v9, 0x1

    .line 466
    move/from16 v2, v18

    .line 468
    move-object/from16 v9, v19

    .line 470
    move/from16 v14, v31

    .line 472
    move/from16 v31, v34

    .line 474
    move/from16 v15, v35

    .line 476
    goto/16 :goto_a

    .line 478
    :cond_1c
    move-object/from16 v19, v9

    .line 480
    move/from16 v35, v15

    .line 482
    move/from16 v34, v31

    .line 484
    move/from16 v31, v14

    .line 486
    goto/16 :goto_10

    .line 488
    :cond_1d
    move-object/from16 v19, v9

    .line 490
    move/from16 v35, v15

    .line 492
    move/from16 v34, v31

    .line 494
    move/from16 v31, v14

    .line 496
    const/4 v1, 0x0

    .line 498
    const/4 v2, 0x0

    .line 499
    const/4 v3, 0x0

    .line 500
    const/4 v9, 0x0

    .line 501
    :goto_d
    if-ge v9, v11, :cond_24

    .line 502
    const/4 v4, 0x1

    .line 504
    add-int/2addr v1, v4

    .line 505
    aget-object v14, v30, v9

    .line 506
    move/from16 v15, v34

    .line 508
    invoke-virtual {v8, v15, v14}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    .line 510
    move-result v16

    .line 513
    iget-object v5, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 514
    aget-object v5, v5, v4

    .line 516
    if-ne v5, v10, :cond_1e

    .line 518
    add-int/lit8 v2, v2, 0x1

    .line 520
    :cond_1e
    move/from16 v18, v2

    .line 522
    if-eq v3, v15, :cond_1f

    .line 524
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 526
    add-int/2addr v2, v3

    .line 528
    add-int v2, v2, v16

    .line 529
    if-le v2, v15, :cond_20

    .line 531
    :cond_1f
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 533
    if-eqz v2, :cond_20

    .line 535
    const/4 v2, 0x1

    .line 537
    goto :goto_e

    .line 538
    :cond_20
    const/4 v2, 0x0

    .line 539
    :goto_e
    if-nez v2, :cond_21

    .line 540
    if-lez v9, :cond_21

    .line 542
    iget v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 544
    if-lez v4, :cond_21

    .line 546
    if-le v1, v4, :cond_21

    .line 548
    const/4 v2, 0x1

    .line 550
    :cond_21
    if-eqz v2, :cond_22

    .line 551
    new-instance v7, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 553
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 555
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 557
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 559
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 561
    move-object v0, v7

    .line 563
    move-object/from16 v1, p0

    .line 564
    move v2, v12

    .line 566
    move-object/from16 v20, v10

    .line 567
    move-object v10, v7

    .line 569
    move v7, v15

    .line 570
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 571
    iput v9, v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 574
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    move-object v0, v10

    .line 579
    move/from16 v3, v16

    .line 580
    const/4 v1, 0x1

    .line 582
    goto :goto_f

    .line 583
    :cond_22
    move-object/from16 v20, v10

    .line 584
    if-lez v9, :cond_23

    .line 586
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 588
    add-int v2, v2, v16

    .line 590
    add-int/2addr v2, v3

    .line 592
    move v3, v2

    .line 593
    goto :goto_f

    .line 594
    :cond_23
    move/from16 v3, v16

    .line 595
    :goto_f
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 597
    add-int/lit8 v9, v9, 0x1

    .line 600
    move/from16 v34, v15

    .line 602
    move/from16 v2, v18

    .line 604
    move-object/from16 v10, v20

    .line 606
    goto :goto_d

    .line 608
    :cond_24
    :goto_10
    move/from16 v15, v34

    .line 609
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 611
    move-result v0

    .line 614
    iget v1, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 615
    iget v3, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingTop:I

    .line 617
    iget v4, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 619
    iget v5, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 621
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 623
    const/4 v7, 0x0

    .line 625
    aget-object v9, v6, v7

    .line 626
    move-object/from16 v10, v19

    .line 628
    if-eq v9, v10, :cond_26

    .line 630
    const/4 v7, 0x1

    .line 632
    aget-object v6, v6, v7

    .line 633
    if-ne v6, v10, :cond_25

    .line 635
    goto :goto_11

    .line 637
    :cond_25
    const/4 v6, 0x0

    .line 638
    goto :goto_12

    .line 639
    :cond_26
    :goto_11
    const/4 v6, 0x1

    .line 640
    :goto_12
    if-lez v2, :cond_28

    .line 641
    if-eqz v6, :cond_28

    .line 643
    const/4 v2, 0x0

    .line 645
    :goto_13
    if-ge v2, v0, :cond_28

    .line 646
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 648
    move-result-object v6

    .line 651
    check-cast v6, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 652
    if-nez v12, :cond_27

    .line 654
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 656
    move-result v7

    .line 659
    sub-int v7, v15, v7

    .line 660
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 662
    goto :goto_14

    .line 665
    :cond_27
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 666
    move-result v7

    .line 669
    sub-int v7, v15, v7

    .line 670
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 672
    :goto_14
    add-int/lit8 v2, v2, 0x1

    .line 675
    goto :goto_13

    .line 677
    :cond_28
    move v6, v3

    .line 678
    move-object/from16 v2, v22

    .line 679
    move-object/from16 v14, v28

    .line 681
    move-object/from16 v11, v29

    .line 683
    const/4 v7, 0x0

    .line 685
    const/4 v9, 0x0

    .line 686
    const/4 v10, 0x0

    .line 687
    move v3, v1

    .line 688
    move-object/from16 v1, v17

    .line 689
    :goto_15
    if-ge v7, v0, :cond_2e

    .line 691
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 693
    move-result-object v16

    .line 696
    move/from16 v30, v5

    .line 697
    move-object/from16 v5, v16

    .line 699
    check-cast v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 701
    if-nez v12, :cond_2b

    .line 703
    add-int/lit8 v11, v0, -0x1

    .line 705
    if-ge v7, v11, :cond_29

    .line 707
    add-int/lit8 v11, v7, 0x1

    .line 709
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 711
    move-result-object v11

    .line 714
    check-cast v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 715
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 717
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 719
    move-object/from16 v34, v13

    .line 721
    const/16 v30, 0x0

    .line 723
    goto :goto_16

    .line 725
    :cond_29
    iget v11, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 726
    move/from16 v30, v11

    .line 728
    move-object/from16 v34, v13

    .line 730
    move-object/from16 v11, v29

    .line 732
    :goto_16
    iget-object v13, v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 734
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 736
    move-object/from16 v16, v5

    .line 738
    move/from16 v17, v12

    .line 740
    move-object/from16 v18, v1

    .line 742
    move-object/from16 v19, v2

    .line 744
    move-object/from16 v20, v14

    .line 746
    move-object/from16 v21, v11

    .line 748
    move/from16 v22, v3

    .line 750
    move/from16 v23, v6

    .line 752
    move/from16 v24, v4

    .line 754
    move/from16 v25, v30

    .line 756
    move/from16 v26, v15

    .line 758
    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 760
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 763
    move-result v2

    .line 766
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    .line 767
    move-result v2

    .line 770
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 771
    move-result v5

    .line 774
    add-int/2addr v5, v10

    .line 775
    if-lez v7, :cond_2a

    .line 776
    iget v6, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 778
    add-int/2addr v5, v6

    .line 780
    :cond_2a
    move v9, v2

    .line 781
    move v10, v5

    .line 782
    move-object v2, v13

    .line 783
    move/from16 v5, v30

    .line 784
    move-object/from16 v13, v34

    .line 786
    const/4 v6, 0x0

    .line 788
    move/from16 v34, v0

    .line 789
    goto :goto_18

    .line 791
    :cond_2b
    move-object/from16 v34, v13

    .line 792
    add-int/lit8 v4, v0, -0x1

    .line 794
    if-ge v7, v4, :cond_2c

    .line 796
    add-int/lit8 v4, v7, 0x1

    .line 798
    move-object/from16 v13, v34

    .line 800
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 802
    move-result-object v4

    .line 805
    check-cast v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 806
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 808
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 810
    move/from16 v34, v0

    .line 812
    move-object v14, v4

    .line 814
    const/4 v4, 0x0

    .line 815
    goto :goto_17

    .line 816
    :cond_2c
    move-object/from16 v13, v34

    .line 817
    iget v4, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 819
    move/from16 v34, v0

    .line 821
    move-object/from16 v14, v28

    .line 823
    :goto_17
    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 825
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 827
    move-object/from16 v16, v5

    .line 829
    move/from16 v17, v12

    .line 831
    move-object/from16 v18, v1

    .line 833
    move-object/from16 v19, v2

    .line 835
    move-object/from16 v20, v14

    .line 837
    move-object/from16 v21, v11

    .line 839
    move/from16 v22, v3

    .line 841
    move/from16 v23, v6

    .line 843
    move/from16 v24, v4

    .line 845
    move/from16 v25, v30

    .line 847
    move/from16 v26, v15

    .line 849
    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 851
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 854
    move-result v1

    .line 857
    add-int/2addr v1, v9

    .line 858
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 859
    move-result v3

    .line 862
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    .line 863
    move-result v3

    .line 866
    if-lez v7, :cond_2d

    .line 867
    iget v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 869
    add-int/2addr v1, v5

    .line 871
    :cond_2d
    move v9, v1

    .line 872
    move v10, v3

    .line 873
    move/from16 v5, v30

    .line 874
    const/4 v3, 0x0

    .line 876
    move-object v1, v0

    .line 877
    :goto_18
    add-int/lit8 v7, v7, 0x1

    .line 878
    move/from16 v0, v34

    .line 880
    goto/16 :goto_15

    .line 882
    :cond_2e
    const/4 v0, 0x0

    .line 884
    aput v9, v32, v0

    .line 885
    const/4 v0, 0x1

    .line 887
    aput v10, v32, v0

    .line 888
    goto/16 :goto_3f

    .line 890
    :cond_2f
    move-object/from16 v30, v4

    .line 892
    move-object/from16 v32, v6

    .line 894
    move/from16 v33, v7

    .line 896
    move/from16 v31, v14

    .line 898
    move/from16 v35, v15

    .line 900
    move v15, v5

    .line 902
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 903
    if-nez v0, :cond_35

    .line 905
    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 907
    if-gtz v1, :cond_34

    .line 909
    const/4 v1, 0x0

    .line 911
    const/4 v2, 0x0

    .line 912
    const/4 v3, 0x0

    .line 913
    :goto_19
    if-ge v1, v11, :cond_33

    .line 914
    if-lez v1, :cond_30

    .line 916
    iget v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 918
    add-int/2addr v2, v4

    .line 920
    :cond_30
    aget-object v4, v30, v1

    .line 921
    if-nez v4, :cond_31

    .line 923
    goto :goto_1a

    .line 925
    :cond_31
    invoke-virtual {v8, v15, v4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    .line 926
    move-result v4

    .line 929
    add-int/2addr v4, v2

    .line 930
    if-le v4, v15, :cond_32

    .line 931
    goto :goto_1b

    .line 933
    :cond_32
    add-int/lit8 v3, v3, 0x1

    .line 934
    move v2, v4

    .line 936
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    .line 937
    goto :goto_19

    .line 939
    :cond_33
    :goto_1b
    move v1, v3

    .line 940
    :cond_34
    move v2, v1

    .line 941
    const/4 v1, 0x0

    .line 942
    goto :goto_1f

    .line 943
    :cond_35
    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 944
    if-gtz v1, :cond_3a

    .line 946
    const/4 v1, 0x0

    .line 948
    const/4 v2, 0x0

    .line 949
    const/4 v3, 0x0

    .line 950
    :goto_1c
    if-ge v1, v11, :cond_39

    .line 951
    if-lez v1, :cond_36

    .line 953
    iget v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 955
    add-int/2addr v2, v4

    .line 957
    :cond_36
    aget-object v4, v30, v1

    .line 958
    if-nez v4, :cond_37

    .line 960
    goto :goto_1d

    .line 962
    :cond_37
    invoke-virtual {v8, v15, v4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    .line 963
    move-result v4

    .line 966
    add-int/2addr v4, v2

    .line 967
    if-le v4, v15, :cond_38

    .line 968
    goto :goto_1e

    .line 970
    :cond_38
    add-int/lit8 v3, v3, 0x1

    .line 971
    move v2, v4

    .line 973
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    .line 974
    goto :goto_1c

    .line 976
    :cond_39
    :goto_1e
    move v1, v3

    .line 977
    :cond_3a
    const/4 v2, 0x0

    .line 978
    :goto_1f
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 979
    if-nez v3, :cond_3b

    .line 981
    const/4 v3, 0x2

    .line 983
    new-array v3, v3, [I

    .line 984
    iput-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 986
    :cond_3b
    if-nez v1, :cond_3c

    .line 988
    const/4 v3, 0x1

    .line 990
    if-eq v0, v3, :cond_3d

    .line 991
    :cond_3c
    if-nez v2, :cond_3e

    .line 993
    if-nez v0, :cond_3e

    .line 995
    :cond_3d
    move/from16 v3, p3

    .line 997
    move/from16 v4, p4

    .line 999
    move v5, v0

    .line 1001
    move v6, v1

    .line 1002
    move v7, v2

    .line 1003
    move-object v9, v8

    .line 1004
    move/from16 v13, v27

    .line 1005
    move/from16 v14, v31

    .line 1007
    move-object/from16 v10, v32

    .line 1009
    const/4 v0, 0x1

    .line 1011
    move/from16 v1, p1

    .line 1012
    move/from16 v2, p2

    .line 1014
    goto/16 :goto_2d

    .line 1016
    :cond_3e
    move/from16 v3, p3

    .line 1018
    move/from16 v4, p4

    .line 1020
    move v5, v0

    .line 1022
    move v6, v1

    .line 1023
    move v7, v2

    .line 1024
    move-object v0, v8

    .line 1025
    move/from16 v13, v27

    .line 1026
    move-object/from16 v9, v30

    .line 1028
    move/from16 v14, v31

    .line 1030
    move-object/from16 v10, v32

    .line 1032
    const/4 v12, 0x0

    .line 1034
    move/from16 v1, p1

    .line 1035
    move/from16 v2, p2

    .line 1037
    :goto_20
    if-nez v12, :cond_55

    .line 1039
    if-nez v5, :cond_3f

    .line 1041
    int-to-float v6, v11

    .line 1043
    move-object/from16 p0, v0

    .line 1044
    int-to-float v0, v7

    .line 1046
    div-float/2addr v6, v0

    .line 1047
    move/from16 p1, v1

    .line 1048
    float-to-double v0, v6

    .line 1050
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 1051
    move-result-wide v0

    .line 1054
    double-to-int v0, v0

    .line 1055
    move v6, v0

    .line 1056
    goto :goto_21

    .line 1057
    :cond_3f
    move-object/from16 p0, v0

    .line 1058
    move/from16 p1, v1

    .line 1060
    int-to-float v0, v11

    .line 1062
    int-to-float v1, v6

    .line 1063
    div-float/2addr v0, v1

    .line 1064
    float-to-double v0, v0

    .line 1065
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 1066
    move-result-wide v0

    .line 1069
    double-to-int v0, v0

    .line 1070
    move v7, v0

    .line 1071
    :goto_21
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1072
    if-eqz v0, :cond_41

    .line 1074
    array-length v1, v0

    .line 1076
    if-ge v1, v7, :cond_40

    .line 1077
    goto :goto_22

    .line 1079
    :cond_40
    const/4 v1, 0x0

    .line 1080
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1081
    goto :goto_23

    .line 1084
    :cond_41
    :goto_22
    const/4 v1, 0x0

    .line 1085
    new-array v0, v7, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1086
    iput-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1088
    :goto_23
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1090
    if-eqz v0, :cond_43

    .line 1092
    array-length v1, v0

    .line 1094
    if-ge v1, v6, :cond_42

    .line 1095
    goto :goto_24

    .line 1097
    :cond_42
    const/4 v1, 0x0

    .line 1098
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1099
    goto :goto_25

    .line 1102
    :cond_43
    :goto_24
    new-array v0, v6, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1103
    iput-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1105
    :goto_25
    const/4 v0, 0x0

    .line 1107
    :goto_26
    if-ge v0, v7, :cond_4c

    .line 1108
    const/4 v1, 0x0

    .line 1110
    :goto_27
    if-ge v1, v6, :cond_4b

    .line 1111
    mul-int v17, v1, v7

    .line 1113
    add-int v17, v17, v0

    .line 1115
    move/from16 p2, v2

    .line 1117
    const/4 v2, 0x1

    .line 1119
    if-ne v5, v2, :cond_44

    .line 1120
    mul-int v2, v0, v6

    .line 1122
    add-int v17, v2, v1

    .line 1124
    :cond_44
    move/from16 p3, v3

    .line 1126
    move/from16 v2, v17

    .line 1128
    array-length v3, v9

    .line 1130
    if-lt v2, v3, :cond_45

    .line 1131
    :goto_28
    move/from16 p4, v4

    .line 1133
    goto :goto_29

    .line 1135
    :cond_45
    aget-object v2, v9, v2

    .line 1136
    if-nez v2, :cond_46

    .line 1138
    goto :goto_28

    .line 1140
    :cond_46
    invoke-virtual {v8, v15, v2}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    .line 1141
    move-result v3

    .line 1144
    move/from16 p4, v4

    .line 1145
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1147
    aget-object v4, v4, v0

    .line 1149
    if-eqz v4, :cond_47

    .line 1151
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1153
    move-result v4

    .line 1156
    if-ge v4, v3, :cond_48

    .line 1157
    :cond_47
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1159
    aput-object v2, v3, v0

    .line 1161
    :cond_48
    invoke-virtual {v8, v15, v2}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    .line 1163
    move-result v3

    .line 1166
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1167
    aget-object v4, v4, v1

    .line 1169
    if-eqz v4, :cond_49

    .line 1171
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1173
    move-result v4

    .line 1176
    if-ge v4, v3, :cond_4a

    .line 1177
    :cond_49
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1179
    aput-object v2, v3, v1

    .line 1181
    :cond_4a
    :goto_29
    add-int/lit8 v1, v1, 0x1

    .line 1183
    move/from16 v2, p2

    .line 1185
    move/from16 v3, p3

    .line 1187
    move/from16 v4, p4

    .line 1189
    goto :goto_27

    .line 1191
    :cond_4b
    move/from16 p2, v2

    .line 1192
    move/from16 p3, v3

    .line 1194
    move/from16 p4, v4

    .line 1196
    add-int/lit8 v0, v0, 0x1

    .line 1198
    goto :goto_26

    .line 1200
    :cond_4c
    move/from16 p2, v2

    .line 1201
    move/from16 p3, v3

    .line 1203
    move/from16 p4, v4

    .line 1205
    const/4 v0, 0x0

    .line 1207
    const/4 v1, 0x0

    .line 1208
    :goto_2a
    if-ge v0, v7, :cond_4f

    .line 1209
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1211
    aget-object v2, v2, v0

    .line 1213
    if-eqz v2, :cond_4e

    .line 1215
    if-lez v0, :cond_4d

    .line 1217
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 1219
    add-int/2addr v1, v3

    .line 1221
    :cond_4d
    invoke-virtual {v8, v15, v2}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    .line 1222
    move-result v2

    .line 1225
    add-int/2addr v2, v1

    .line 1226
    move v1, v2

    .line 1227
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    .line 1228
    goto :goto_2a

    .line 1230
    :cond_4f
    const/4 v0, 0x0

    .line 1231
    const/4 v2, 0x0

    .line 1232
    :goto_2b
    if-ge v0, v6, :cond_52

    .line 1233
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1235
    aget-object v3, v3, v0

    .line 1237
    if-eqz v3, :cond_51

    .line 1239
    if-lez v0, :cond_50

    .line 1241
    iget v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 1243
    add-int/2addr v2, v4

    .line 1245
    :cond_50
    invoke-virtual {v8, v15, v3}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    .line 1246
    move-result v3

    .line 1249
    add-int/2addr v3, v2

    .line 1250
    move v2, v3

    .line 1251
    :cond_51
    add-int/lit8 v0, v0, 0x1

    .line 1252
    goto :goto_2b

    .line 1254
    :cond_52
    const/4 v0, 0x0

    .line 1255
    aput v1, v10, v0

    .line 1256
    const/4 v0, 0x1

    .line 1258
    aput v2, v10, v0

    .line 1259
    if-nez v5, :cond_53

    .line 1261
    if-le v1, v15, :cond_54

    .line 1263
    if-le v7, v0, :cond_54

    .line 1265
    add-int/lit8 v7, v7, -0x1

    .line 1267
    goto :goto_2c

    .line 1269
    :cond_53
    if-le v2, v15, :cond_54

    .line 1270
    if-le v6, v0, :cond_54

    .line 1272
    add-int/lit8 v6, v6, -0x1

    .line 1274
    :goto_2c
    move-object/from16 v0, p0

    .line 1276
    move/from16 v1, p1

    .line 1278
    move/from16 v2, p2

    .line 1280
    move/from16 v3, p3

    .line 1282
    move/from16 v4, p4

    .line 1284
    goto/16 :goto_20

    .line 1286
    :cond_54
    move/from16 v1, p1

    .line 1288
    move/from16 v2, p2

    .line 1290
    move/from16 v3, p3

    .line 1292
    move/from16 v4, p4

    .line 1294
    move-object/from16 v30, v9

    .line 1296
    move-object v9, v8

    .line 1298
    move-object/from16 v8, p0

    .line 1299
    :goto_2d
    move v12, v0

    .line 1301
    move-object v0, v8

    .line 1302
    move-object v8, v9

    .line 1303
    move-object/from16 v9, v30

    .line 1304
    goto/16 :goto_20

    .line 1306
    :cond_55
    move-object/from16 p0, v0

    .line 1308
    move/from16 p1, v1

    .line 1310
    move/from16 p2, v2

    .line 1312
    move/from16 p3, v3

    .line 1314
    move/from16 p4, v4

    .line 1316
    const/4 v0, 0x1

    .line 1318
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 1319
    const/4 v2, 0x0

    .line 1321
    aput v7, v1, v2

    .line 1322
    aput v6, v1, v0

    .line 1324
    move-object/from16 v8, p0

    .line 1326
    move/from16 v0, p1

    .line 1328
    move/from16 v1, p2

    .line 1330
    move/from16 v2, p3

    .line 1332
    move/from16 v3, p4

    .line 1334
    goto/16 :goto_40

    .line 1336
    :cond_56
    move-object/from16 v17, v1

    .line 1338
    move-object/from16 v22, v2

    .line 1340
    move-object/from16 v30, v4

    .line 1342
    move-object/from16 v32, v6

    .line 1344
    move/from16 v33, v7

    .line 1346
    move-object/from16 v20, v10

    .line 1348
    move-object/from16 v29, v13

    .line 1350
    move/from16 v31, v14

    .line 1352
    move/from16 v35, v15

    .line 1354
    move-object v13, v3

    .line 1356
    move v15, v5

    .line 1357
    move-object v10, v9

    .line 1358
    iget v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 1359
    if-nez v11, :cond_57

    .line 1361
    goto/16 :goto_3f

    .line 1363
    :cond_57
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1365
    new-instance v12, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1368
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1370
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1372
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1374
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1376
    move-object v0, v12

    .line 1378
    move-object/from16 v1, p0

    .line 1379
    move v2, v9

    .line 1381
    move v7, v15

    .line 1382
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1383
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1386
    if-nez v9, :cond_5f

    .line 1389
    const/4 v0, 0x0

    .line 1391
    const/4 v1, 0x0

    .line 1392
    const/4 v14, 0x0

    .line 1393
    :goto_2e
    if-ge v14, v11, :cond_5e

    .line 1394
    aget-object v7, v30, v14

    .line 1396
    invoke-virtual {v8, v15, v7}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    .line 1398
    move-result v16

    .line 1401
    iget-object v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1402
    const/4 v3, 0x0

    .line 1404
    aget-object v2, v2, v3

    .line 1405
    move-object/from16 v6, v20

    .line 1407
    if-ne v2, v6, :cond_58

    .line 1409
    add-int/lit8 v0, v0, 0x1

    .line 1411
    :cond_58
    move/from16 v18, v0

    .line 1413
    if-eq v1, v15, :cond_59

    .line 1415
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 1417
    add-int/2addr v0, v1

    .line 1419
    add-int v0, v0, v16

    .line 1420
    if-le v0, v15, :cond_5a

    .line 1422
    :cond_59
    iget-object v0, v12, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1424
    if-eqz v0, :cond_5a

    .line 1426
    const/4 v0, 0x1

    .line 1428
    goto :goto_2f

    .line 1429
    :cond_5a
    const/4 v0, 0x0

    .line 1430
    :goto_2f
    if-nez v0, :cond_5b

    .line 1431
    if-lez v14, :cond_5b

    .line 1433
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 1435
    if-lez v2, :cond_5b

    .line 1437
    rem-int v2, v14, v2

    .line 1439
    if-nez v2, :cond_5b

    .line 1441
    const/4 v0, 0x1

    .line 1443
    :cond_5b
    if-eqz v0, :cond_5c

    .line 1444
    new-instance v12, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1446
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1448
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1450
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1452
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1454
    move-object v0, v12

    .line 1456
    move-object/from16 v1, p0

    .line 1457
    move-object/from16 v19, v2

    .line 1459
    move v2, v9

    .line 1461
    move-object/from16 v20, v10

    .line 1462
    move-object v10, v6

    .line 1464
    move-object/from16 v6, v19

    .line 1465
    move/from16 v34, v9

    .line 1467
    move-object v9, v7

    .line 1469
    move v7, v15

    .line 1470
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1471
    iput v14, v12, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 1474
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    goto :goto_30

    .line 1479
    :cond_5c
    move/from16 v34, v9

    .line 1480
    move-object/from16 v20, v10

    .line 1482
    move-object v10, v6

    .line 1484
    move-object v9, v7

    .line 1485
    if-lez v14, :cond_5d

    .line 1486
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 1488
    add-int v0, v0, v16

    .line 1490
    add-int/2addr v0, v1

    .line 1492
    move v1, v0

    .line 1493
    goto :goto_31

    .line 1494
    :cond_5d
    :goto_30
    move/from16 v1, v16

    .line 1495
    :goto_31
    invoke-virtual {v12, v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1497
    add-int/lit8 v14, v14, 0x1

    .line 1500
    move/from16 v0, v18

    .line 1502
    move/from16 v9, v34

    .line 1504
    move-object/from16 v37, v20

    .line 1506
    move-object/from16 v20, v10

    .line 1508
    move-object/from16 v10, v37

    .line 1510
    goto :goto_2e

    .line 1512
    :cond_5e
    move/from16 v34, v9

    .line 1513
    move-object/from16 v20, v10

    .line 1515
    goto/16 :goto_36

    .line 1517
    :cond_5f
    move/from16 v34, v9

    .line 1519
    move-object/from16 v37, v20

    .line 1521
    move-object/from16 v20, v10

    .line 1523
    move-object/from16 v10, v37

    .line 1525
    const/4 v0, 0x0

    .line 1527
    const/4 v1, 0x0

    .line 1528
    const/4 v9, 0x0

    .line 1529
    :goto_32
    if-ge v9, v11, :cond_66

    .line 1530
    aget-object v14, v30, v9

    .line 1532
    invoke-virtual {v8, v15, v14}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    .line 1534
    move-result v16

    .line 1537
    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1538
    const/4 v3, 0x1

    .line 1540
    aget-object v2, v2, v3

    .line 1541
    if-ne v2, v10, :cond_60

    .line 1543
    add-int/lit8 v0, v0, 0x1

    .line 1545
    :cond_60
    move/from16 v18, v0

    .line 1547
    if-eq v1, v15, :cond_61

    .line 1549
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 1551
    add-int/2addr v0, v1

    .line 1553
    add-int v0, v0, v16

    .line 1554
    if-le v0, v15, :cond_62

    .line 1556
    :cond_61
    iget-object v0, v12, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1558
    if-eqz v0, :cond_62

    .line 1560
    const/4 v0, 0x1

    .line 1562
    goto :goto_33

    .line 1563
    :cond_62
    const/4 v0, 0x0

    .line 1564
    :goto_33
    if-nez v0, :cond_63

    .line 1565
    if-lez v9, :cond_63

    .line 1567
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 1569
    if-lez v2, :cond_63

    .line 1571
    rem-int v2, v9, v2

    .line 1573
    if-nez v2, :cond_63

    .line 1575
    const/4 v0, 0x1

    .line 1577
    :cond_63
    if-eqz v0, :cond_64

    .line 1578
    new-instance v12, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1580
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1582
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1584
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1586
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1588
    move-object v0, v12

    .line 1590
    move-object/from16 v1, p0

    .line 1591
    move/from16 v2, v34

    .line 1593
    move v7, v15

    .line 1595
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1596
    iput v9, v12, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 1599
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1601
    goto :goto_34

    .line 1604
    :cond_64
    if-lez v9, :cond_65

    .line 1605
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 1607
    add-int v0, v0, v16

    .line 1609
    add-int/2addr v0, v1

    .line 1611
    move v1, v0

    .line 1612
    goto :goto_35

    .line 1613
    :cond_65
    :goto_34
    move/from16 v1, v16

    .line 1614
    :goto_35
    invoke-virtual {v12, v14}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1616
    add-int/lit8 v9, v9, 0x1

    .line 1619
    move/from16 v0, v18

    .line 1621
    goto :goto_32

    .line 1623
    :cond_66
    :goto_36
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 1624
    move-result v1

    .line 1627
    iget v2, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 1628
    iget v3, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingTop:I

    .line 1630
    iget v4, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 1632
    iget v5, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 1634
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1636
    const/4 v7, 0x0

    .line 1638
    aget-object v9, v6, v7

    .line 1639
    move-object/from16 v7, v20

    .line 1641
    if-eq v9, v7, :cond_68

    .line 1643
    const/4 v9, 0x1

    .line 1645
    aget-object v6, v6, v9

    .line 1646
    if-ne v6, v7, :cond_67

    .line 1648
    goto :goto_37

    .line 1650
    :cond_67
    const/4 v6, 0x0

    .line 1651
    goto :goto_38

    .line 1652
    :cond_68
    :goto_37
    const/4 v6, 0x1

    .line 1653
    :goto_38
    if-lez v0, :cond_6a

    .line 1654
    if-eqz v6, :cond_6a

    .line 1656
    const/4 v0, 0x0

    .line 1658
    :goto_39
    if-ge v0, v1, :cond_6a

    .line 1659
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1661
    move-result-object v6

    .line 1664
    check-cast v6, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1665
    if-nez v34, :cond_69

    .line 1667
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 1669
    move-result v7

    .line 1672
    sub-int v7, v15, v7

    .line 1673
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 1675
    goto :goto_3a

    .line 1678
    :cond_69
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 1679
    move-result v7

    .line 1682
    sub-int v7, v15, v7

    .line 1683
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 1685
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    .line 1688
    goto :goto_39

    .line 1690
    :cond_6a
    move v6, v3

    .line 1691
    move-object/from16 v0, v17

    .line 1692
    move-object/from16 v12, v28

    .line 1694
    move-object/from16 v11, v29

    .line 1696
    const/4 v7, 0x0

    .line 1698
    const/4 v9, 0x0

    .line 1699
    const/4 v10, 0x0

    .line 1700
    move v3, v2

    .line 1701
    move-object/from16 v2, v22

    .line 1702
    :goto_3b
    if-ge v7, v1, :cond_70

    .line 1704
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1706
    move-result-object v14

    .line 1709
    check-cast v14, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1710
    if-nez v34, :cond_6d

    .line 1712
    add-int/lit8 v5, v1, -0x1

    .line 1714
    if-ge v7, v5, :cond_6b

    .line 1716
    add-int/lit8 v5, v7, 0x1

    .line 1718
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1720
    move-result-object v5

    .line 1723
    check-cast v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1724
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1726
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1728
    move-object v11, v5

    .line 1730
    move-object/from16 v36, v13

    .line 1731
    const/4 v5, 0x0

    .line 1733
    goto :goto_3c

    .line 1734
    :cond_6b
    iget v5, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 1735
    move-object/from16 v36, v13

    .line 1737
    move-object/from16 v11, v29

    .line 1739
    :goto_3c
    iget-object v13, v14, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1741
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1743
    move-object/from16 v16, v14

    .line 1745
    move/from16 v17, v34

    .line 1747
    move-object/from16 v18, v0

    .line 1749
    move-object/from16 v19, v2

    .line 1751
    move-object/from16 v20, v12

    .line 1753
    move-object/from16 v21, v11

    .line 1755
    move/from16 v22, v3

    .line 1757
    move/from16 v23, v6

    .line 1759
    move/from16 v24, v4

    .line 1761
    move/from16 v25, v5

    .line 1763
    move/from16 v26, v15

    .line 1765
    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 1767
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 1770
    move-result v2

    .line 1773
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    .line 1774
    move-result v2

    .line 1777
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 1778
    move-result v6

    .line 1781
    add-int/2addr v6, v10

    .line 1782
    if-lez v7, :cond_6c

    .line 1783
    iget v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 1785
    add-int/2addr v6, v9

    .line 1787
    :cond_6c
    move/from16 v30, v1

    .line 1788
    move v9, v2

    .line 1790
    move v10, v6

    .line 1791
    move-object v1, v12

    .line 1792
    move-object v2, v13

    .line 1793
    move-object/from16 v12, v36

    .line 1794
    const/4 v6, 0x0

    .line 1796
    goto :goto_3e

    .line 1797
    :cond_6d
    move-object/from16 v36, v13

    .line 1798
    add-int/lit8 v4, v1, -0x1

    .line 1800
    if-ge v7, v4, :cond_6e

    .line 1802
    add-int/lit8 v4, v7, 0x1

    .line 1804
    move-object/from16 v12, v36

    .line 1806
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1808
    move-result-object v4

    .line 1811
    check-cast v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1812
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1814
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1816
    move/from16 v30, v1

    .line 1818
    const/4 v13, 0x0

    .line 1820
    goto :goto_3d

    .line 1821
    :cond_6e
    move-object/from16 v12, v36

    .line 1822
    iget v4, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 1824
    move/from16 v30, v1

    .line 1826
    move v13, v4

    .line 1828
    move-object/from16 v4, v28

    .line 1829
    :goto_3d
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1831
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1833
    move-object/from16 v16, v14

    .line 1835
    move/from16 v17, v34

    .line 1837
    move-object/from16 v18, v0

    .line 1839
    move-object/from16 v19, v2

    .line 1841
    move-object/from16 v20, v4

    .line 1843
    move-object/from16 v21, v11

    .line 1845
    move/from16 v22, v3

    .line 1847
    move/from16 v23, v6

    .line 1849
    move/from16 v24, v13

    .line 1851
    move/from16 v25, v5

    .line 1853
    move/from16 v26, v15

    .line 1855
    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 1857
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 1860
    move-result v0

    .line 1863
    add-int/2addr v0, v9

    .line 1864
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 1865
    move-result v3

    .line 1868
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    .line 1869
    move-result v3

    .line 1872
    if-lez v7, :cond_6f

    .line 1873
    iget v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 1875
    add-int/2addr v0, v9

    .line 1877
    :cond_6f
    move v9, v0

    .line 1878
    move-object v0, v1

    .line 1879
    move v10, v3

    .line 1880
    move-object v1, v4

    .line 1881
    move v4, v13

    .line 1882
    const/4 v3, 0x0

    .line 1883
    :goto_3e
    add-int/lit8 v7, v7, 0x1

    .line 1884
    move-object v13, v12

    .line 1886
    move-object v12, v1

    .line 1887
    move/from16 v1, v30

    .line 1888
    goto/16 :goto_3b

    .line 1890
    :cond_70
    const/4 v0, 0x0

    .line 1892
    aput v9, v32, v0

    .line 1893
    const/4 v0, 0x1

    .line 1895
    aput v10, v32, v0

    .line 1896
    goto :goto_3f

    .line 1898
    :cond_71
    move-object v12, v3

    .line 1899
    move-object/from16 v30, v4

    .line 1900
    move-object/from16 v32, v6

    .line 1902
    move/from16 v33, v7

    .line 1904
    move/from16 v27, v13

    .line 1906
    move/from16 v31, v14

    .line 1908
    move/from16 v35, v15

    .line 1910
    move v15, v5

    .line 1912
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 1913
    if-nez v11, :cond_72

    .line 1915
    :goto_3f
    move/from16 v0, p1

    .line 1917
    move/from16 v1, p2

    .line 1919
    move/from16 v2, p3

    .line 1921
    move/from16 v3, p4

    .line 1923
    move/from16 v13, v27

    .line 1925
    move/from16 v14, v31

    .line 1927
    :goto_40
    move-object/from16 v6, v32

    .line 1929
    move/from16 v7, v33

    .line 1931
    move/from16 v15, v35

    .line 1933
    move v4, v3

    .line 1935
    const/16 v18, 0x0

    .line 1936
    move v3, v2

    .line 1938
    move v2, v1

    .line 1939
    const/4 v1, 0x1

    .line 1940
    goto/16 :goto_43

    .line 1941
    :cond_72
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 1943
    move-result v0

    .line 1946
    if-nez v0, :cond_73

    .line 1947
    new-instance v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1949
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1951
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1953
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1955
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1957
    move-object v0, v9

    .line 1959
    move-object/from16 v1, p0

    .line 1960
    move v7, v15

    .line 1962
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1963
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1966
    goto :goto_41

    .line 1969
    :cond_73
    const/4 v0, 0x0

    .line 1970
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1971
    move-result-object v1

    .line 1974
    move-object v9, v1

    .line 1975
    check-cast v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1976
    iput v0, v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggestDimension:I

    .line 1978
    const/4 v1, 0x0

    .line 1980
    iput-object v1, v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1981
    iput v0, v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 1983
    iput v0, v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 1985
    iput v0, v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 1987
    iput v0, v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    .line 1989
    iput v0, v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 1991
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1993
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1995
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1997
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1999
    iget v5, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 2001
    iget v6, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingTop:I

    .line 2003
    iget v7, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 2005
    iget v10, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 2007
    move-object/from16 v16, v9

    .line 2009
    move/from16 v17, v2

    .line 2011
    move-object/from16 v18, v0

    .line 2013
    move-object/from16 v19, v1

    .line 2015
    move-object/from16 v20, v3

    .line 2017
    move-object/from16 v21, v4

    .line 2019
    move/from16 v22, v5

    .line 2021
    move/from16 v23, v6

    .line 2023
    move/from16 v24, v7

    .line 2025
    move/from16 v25, v10

    .line 2027
    move/from16 v26, v15

    .line 2029
    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 2031
    :goto_41
    const/4 v0, 0x0

    .line 2034
    :goto_42
    if-ge v0, v11, :cond_74

    .line 2035
    aget-object v1, v30, v0

    .line 2037
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 2039
    add-int/lit8 v0, v0, 0x1

    .line 2042
    goto :goto_42

    .line 2044
    :cond_74
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 2045
    move-result v0

    .line 2048
    const/16 v18, 0x0

    .line 2049
    aput v0, v32, v18

    .line 2051
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 2053
    move-result v0

    .line 2056
    const/4 v1, 0x1

    .line 2057
    aput v0, v32, v1

    .line 2058
    move/from16 v0, p1

    .line 2060
    move/from16 v2, p2

    .line 2062
    move/from16 v3, p3

    .line 2064
    move/from16 v4, p4

    .line 2066
    move/from16 v13, v27

    .line 2068
    move/from16 v14, v31

    .line 2070
    move-object/from16 v6, v32

    .line 2072
    move/from16 v7, v33

    .line 2074
    move/from16 v15, v35

    .line 2076
    :goto_43
    aget v5, v6, v18

    .line 2078
    add-int/2addr v5, v13

    .line 2080
    add-int/2addr v5, v14

    .line 2081
    aget v6, v6, v1

    .line 2082
    add-int/2addr v6, v15

    .line 2084
    add-int/2addr v6, v7

    .line 2085
    const/high16 v7, -0x80000000

    .line 2086
    const/high16 v9, 0x40000000    # 2.0f

    .line 2088
    if-ne v0, v9, :cond_75

    .line 2090
    move v0, v2

    .line 2092
    goto :goto_44

    .line 2093
    :cond_75
    if-ne v0, v7, :cond_76

    .line 2094
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    .line 2096
    move-result v0

    .line 2099
    goto :goto_44

    .line 2100
    :cond_76
    if-nez v0, :cond_77

    .line 2101
    move v0, v5

    .line 2103
    goto :goto_44

    .line 2104
    :cond_77
    move/from16 v0, v18

    .line 2105
    :goto_44
    if-ne v3, v9, :cond_78

    .line 2107
    move v2, v4

    .line 2109
    goto :goto_45

    .line 2110
    :cond_78
    if-ne v3, v7, :cond_79

    .line 2111
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    .line 2113
    move-result v2

    .line 2116
    goto :goto_45

    .line 2117
    :cond_79
    if-nez v3, :cond_7a

    .line 2118
    move v2, v6

    .line 2120
    goto :goto_45

    .line 2121
    :cond_7a
    move/from16 v2, v18

    .line 2122
    :goto_45
    iput v0, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredWidth:I

    .line 2124
    iput v2, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredHeight:I

    .line 2126
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 2128
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 2131
    iget v0, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 2134
    if-lez v0, :cond_7b

    .line 2136
    move v11, v1

    .line 2138
    goto :goto_46

    .line 2139
    :cond_7b
    move/from16 v11, v18

    .line 2140
    :goto_46
    iput-boolean v11, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    .line 2142
    return-void
.end method
