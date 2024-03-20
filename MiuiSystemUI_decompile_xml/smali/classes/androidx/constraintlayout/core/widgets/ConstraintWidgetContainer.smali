.class public final Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
.super Landroidx/constraintlayout/core/widgets/WidgetContainer;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

.field public final mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

.field public mHeightMeasuredTooSmall:Z

.field public mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mHorizontalChainsSize:I

.field public mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

.field public mHorizontalWrapMin:Ljava/lang/ref/WeakReference;

.field public mIsRtl:Z

.field public final mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field public mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

.field public mOptimizationLevel:I

.field public mPaddingLeft:I

.field public mPaddingTop:I

.field public mPass:I

.field public final mSystem:Landroidx/constraintlayout/core/LinearSystem;

.field public mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mVerticalChainsSize:I

.field public mVerticalWrapMax:Ljava/lang/ref/WeakReference;

.field public mVerticalWrapMin:Ljava/lang/ref/WeakReference;

.field public final mWidgetsToAdd:Ljava/util/HashSet;

.field public mWidthMeasuredTooSmall:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>()V

    .line 2
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 5
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 7
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 10
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 12
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 14
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 17
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 20
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 23
    new-instance v2, Landroidx/constraintlayout/core/LinearSystem;

    .line 25
    invoke-direct {v2}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    .line 27
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 30
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 32
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 34
    const/4 v2, 0x4

    .line 36
    new-array v3, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 37
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 39
    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 41
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 43
    const/16 v2, 0x101

    .line 45
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 47
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 49
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 51
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 53
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 55
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 57
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    .line 61
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 63
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidgetsToAdd:Ljava/util/HashSet;

    .line 66
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 68
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 70
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 73
    return-void
    .line 75
.end method

.method public static measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 5
    const/16 v1, 0x8

    .line 7
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_14

    .line 10
    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 12
    if-nez v0, :cond_14

    .line 14
    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    goto/16 :goto_9

    .line 20
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 22
    aget-object v1, v0, v2

    .line 24
    iput-object v1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 26
    const/4 v1, 0x1

    .line 28
    aget-object v0, v0, v1

    .line 29
    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 31
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 33
    move-result v0

    .line 36
    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 37
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 39
    move-result v0

    .line 42
    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 43
    iput-boolean v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 45
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 47
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 49
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 51
    if-ne v0, v3, :cond_2

    .line 53
    move v0, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v0, v2

    .line 57
    :goto_0
    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 58
    if-ne v4, v3, :cond_3

    .line 60
    move v3, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move v3, v2

    .line 64
    :goto_1
    const/4 v4, 0x0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    iget v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 68
    cmpl-float v5, v5, v4

    .line 70
    if-lez v5, :cond_4

    .line 72
    move v5, v1

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move v5, v2

    .line 76
    :goto_2
    if-eqz v3, :cond_5

    .line 77
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 79
    cmpl-float v4, v6, v4

    .line 81
    if-lez v4, :cond_5

    .line 83
    move v4, v1

    .line 85
    goto :goto_3

    .line 86
    :cond_5
    move v4, v2

    .line 87
    :goto_3
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 88
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 90
    if-eqz v0, :cond_7

    .line 92
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    .line 94
    move-result v8

    .line 97
    if-eqz v8, :cond_7

    .line 98
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 100
    if-nez v8, :cond_7

    .line 102
    if-nez v5, :cond_7

    .line 104
    iput-object v6, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 106
    if-eqz v3, :cond_6

    .line 108
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 110
    if-nez v0, :cond_6

    .line 112
    iput-object v7, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 114
    :cond_6
    move v0, v2

    .line 116
    :cond_7
    if-eqz v3, :cond_9

    .line 117
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    .line 119
    move-result v8

    .line 122
    if-eqz v8, :cond_9

    .line 123
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 125
    if-nez v8, :cond_9

    .line 127
    if-nez v4, :cond_9

    .line 129
    iput-object v6, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 131
    if-eqz v0, :cond_8

    .line 133
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 135
    if-nez v3, :cond_8

    .line 137
    iput-object v7, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 139
    :cond_8
    move v3, v2

    .line 141
    :cond_9
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 142
    move-result v8

    .line 145
    if-eqz v8, :cond_a

    .line 146
    iput-object v7, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 148
    move v0, v2

    .line 150
    :cond_a
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 151
    move-result v8

    .line 154
    if-eqz v8, :cond_b

    .line 155
    iput-object v7, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 157
    move v3, v2

    .line 159
    :cond_b
    const/4 v8, 0x4

    .line 160
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 161
    if-eqz v5, :cond_e

    .line 163
    aget v5, v9, v2

    .line 165
    if-ne v5, v8, :cond_c

    .line 167
    iput-object v7, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 169
    goto :goto_5

    .line 171
    :cond_c
    if-nez v3, :cond_e

    .line 172
    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 174
    if-ne v3, v7, :cond_d

    .line 176
    iget v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 178
    goto :goto_4

    .line 180
    :cond_d
    iput-object v6, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 181
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 183
    iget v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 186
    :goto_4
    iput-object v7, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 188
    iget v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 190
    int-to-float v3, v3

    .line 192
    mul-float/2addr v5, v3

    .line 193
    float-to-int v3, v5

    .line 194
    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 195
    :cond_e
    :goto_5
    if-eqz v4, :cond_12

    .line 197
    aget v3, v9, v1

    .line 199
    if-ne v3, v8, :cond_f

    .line 201
    iput-object v7, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 203
    goto :goto_7

    .line 205
    :cond_f
    if-nez v0, :cond_12

    .line 206
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 208
    if-ne v0, v7, :cond_10

    .line 210
    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 212
    goto :goto_6

    .line 214
    :cond_10
    iput-object v6, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 215
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 217
    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 220
    :goto_6
    iput-object v7, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 222
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 224
    const/4 v4, -0x1

    .line 226
    if-ne v3, v4, :cond_11

    .line 227
    int-to-float v0, v0

    .line 229
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 230
    div-float/2addr v0, v3

    .line 232
    float-to-int v0, v0

    .line 233
    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 234
    goto :goto_7

    .line 236
    :cond_11
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 237
    int-to-float v0, v0

    .line 239
    mul-float/2addr v3, v0

    .line 240
    float-to-int v0, v3

    .line 241
    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 242
    :cond_12
    :goto_7
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 244
    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 247
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 249
    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 252
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 254
    iget-boolean p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 257
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHasBaseline:Z

    .line 259
    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 261
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 263
    if-lez p1, :cond_13

    .line 265
    goto :goto_8

    .line 267
    :cond_13
    move v1, v2

    .line 268
    :goto_8
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHasBaseline:Z

    .line 269
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 271
    return-void

    .line 273
    :cond_14
    :goto_9
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 274
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 276
    return-void
    .line 278
.end method


# virtual methods
.method public final addChain(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_1

    .line 3
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 5
    add-int/2addr p1, v0

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 8
    array-length v2, v1

    .line 10
    if-lt p1, v2, :cond_0

    .line 11
    array-length p1, v1

    .line 13
    mul-int/lit8 p1, p1, 0x2

    .line 14
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 19
    check-cast p1, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 20
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 22
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 24
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 26
    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 28
    iget-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 30
    const/4 v4, 0x0

    .line 32
    invoke-direct {v2, p2, v4, v3}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    .line 33
    aput-object v2, p1, v1

    .line 36
    add-int/2addr v1, v0

    .line 38
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    if-ne p1, v0, :cond_3

    .line 42
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 44
    add-int/2addr p1, v0

    .line 46
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 47
    array-length v2, v1

    .line 49
    if-lt p1, v2, :cond_2

    .line 50
    array-length p1, v1

    .line 52
    mul-int/lit8 p1, p1, 0x2

    .line 53
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 58
    check-cast p1, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 59
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 61
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 63
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 65
    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 67
    iget-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 69
    invoke-direct {v2, p2, v0, v3}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    .line 71
    aput-object v2, p1, v1

    .line 74
    add-int/2addr v1, v0

    .line 76
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 77
    :cond_3
    :goto_0
    return-void
    .line 79
.end method

.method public final addChildrenToSolver(Landroidx/constraintlayout/core/LinearSystem;)V
    .locals 12

    .line 1
    const/16 v0, 0x40

    .line 2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    move v4, v3

    .line 19
    :goto_0
    const/4 v5, 0x1

    .line 20
    if-ge v3, v1, :cond_1

    .line 21
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v6

    .line 28
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 29
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 31
    aput-boolean v2, v7, v2

    .line 33
    aput-boolean v2, v7, v5

    .line 35
    instance-of v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 37
    if-eqz v6, :cond_0

    .line 39
    move v4, v5

    .line 41
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    if-eqz v4, :cond_8

    .line 45
    move v3, v2

    .line 47
    :goto_1
    if-ge v3, v1, :cond_8

    .line 48
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 55
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 56
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 58
    if-eqz v6, :cond_7

    .line 60
    check-cast v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 62
    move v6, v2

    .line 64
    :goto_2
    iget v7, v4, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 65
    if-ge v6, v7, :cond_7

    .line 67
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 69
    aget-object v7, v7, v6

    .line 71
    iget-boolean v8, v4, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 73
    if-nez v8, :cond_2

    .line 75
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    .line 77
    move-result v8

    .line 80
    if-nez v8, :cond_2

    .line 81
    goto :goto_4

    .line 83
    :cond_2
    iget v8, v4, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 84
    if-eqz v8, :cond_5

    .line 86
    if-ne v8, v5, :cond_3

    .line 88
    goto :goto_3

    .line 90
    :cond_3
    const/4 v9, 0x2

    .line 91
    if-eq v8, v9, :cond_4

    .line 92
    const/4 v9, 0x3

    .line 94
    if-ne v8, v9, :cond_6

    .line 95
    :cond_4
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 97
    aput-boolean v5, v7, v5

    .line 99
    goto :goto_4

    .line 101
    :cond_5
    :goto_3
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 102
    aput-boolean v5, v7, v2

    .line 104
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 106
    goto :goto_2

    .line 108
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 109
    goto :goto_1

    .line 111
    :cond_8
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidgetsToAdd:Ljava/util/HashSet;

    .line 112
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 114
    move v4, v2

    .line 117
    :goto_5
    if-ge v4, v1, :cond_d

    .line 118
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object v6

    .line 125
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 126
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 131
    if-nez v7, :cond_a

    .line 133
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 135
    if-eqz v7, :cond_9

    .line 137
    goto :goto_6

    .line 139
    :cond_9
    move v7, v2

    .line 140
    goto :goto_7

    .line 141
    :cond_a
    :goto_6
    move v7, v5

    .line 142
    :goto_7
    if-eqz v7, :cond_c

    .line 143
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 145
    if-eqz v7, :cond_b

    .line 147
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    goto :goto_8

    .line 152
    :cond_b
    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 153
    :cond_c
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 156
    goto :goto_5

    .line 158
    :cond_d
    :goto_9
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 159
    move-result v4

    .line 162
    if-lez v4, :cond_13

    .line 163
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 165
    move-result v4

    .line 168
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 169
    move-result-object v6

    .line 172
    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    move-result v7

    .line 176
    if-eqz v7, :cond_11

    .line 177
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    move-result-object v7

    .line 182
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 183
    check-cast v7, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 185
    move v8, v2

    .line 187
    :goto_a
    iget v9, v7, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 188
    if-ge v8, v9, :cond_10

    .line 190
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 192
    aget-object v9, v9, v8

    .line 194
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 196
    move-result v9

    .line 199
    if-eqz v9, :cond_f

    .line 200
    move v8, v5

    .line 202
    goto :goto_b

    .line 203
    :cond_f
    add-int/lit8 v8, v8, 0x1

    .line 204
    goto :goto_a

    .line 206
    :cond_10
    move v8, v2

    .line 207
    :goto_b
    if-eqz v8, :cond_e

    .line 208
    invoke-virtual {v7, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 210
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 213
    :cond_11
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 216
    move-result v6

    .line 219
    if-ne v4, v6, :cond_d

    .line 220
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 222
    move-result-object v4

    .line 225
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    move-result v6

    .line 229
    if-eqz v6, :cond_12

    .line 230
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    move-result-object v6

    .line 235
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 236
    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 238
    goto :goto_c

    .line 241
    :cond_12
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 242
    goto :goto_9

    .line 245
    :cond_13
    sget-boolean v3, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    .line 246
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 248
    if-eqz v3, :cond_19

    .line 250
    new-instance v3, Ljava/util/HashSet;

    .line 252
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 254
    move v6, v2

    .line 257
    :goto_d
    if-ge v6, v1, :cond_17

    .line 258
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 260
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 262
    move-result-object v7

    .line 265
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 266
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    instance-of v8, v7, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 271
    if-nez v8, :cond_15

    .line 273
    instance-of v8, v7, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 275
    if-eqz v8, :cond_14

    .line 277
    goto :goto_e

    .line 279
    :cond_14
    move v8, v2

    .line 280
    goto :goto_f

    .line 281
    :cond_15
    :goto_e
    move v8, v5

    .line 282
    :goto_f
    if-nez v8, :cond_16

    .line 283
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_16
    add-int/lit8 v6, v6, 0x1

    .line 288
    goto :goto_d

    .line 290
    :cond_17
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 291
    aget-object v1, v1, v2

    .line 293
    if-ne v1, v4, :cond_18

    .line 295
    move v10, v2

    .line 297
    goto :goto_10

    .line 298
    :cond_18
    move v10, v5

    .line 299
    :goto_10
    const/4 v11, 0x0

    .line 300
    move-object v6, p0

    .line 301
    move-object v7, p0

    .line 302
    move-object v8, p1

    .line 303
    move-object v9, v3

    .line 304
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 305
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 308
    move-result-object v1

    .line 311
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    move-result v3

    .line 315
    if-eqz v3, :cond_21

    .line 316
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    move-result-object v3

    .line 321
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 322
    invoke-static {p0, p1, v3}, Landroidx/constraintlayout/core/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 324
    invoke-virtual {v3, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 327
    goto :goto_11

    .line 330
    :cond_19
    move v3, v2

    .line 331
    :goto_12
    if-ge v3, v1, :cond_21

    .line 332
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 334
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 336
    move-result-object v6

    .line 339
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 340
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 342
    if-eqz v7, :cond_1d

    .line 344
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 346
    aget-object v8, v7, v2

    .line 348
    aget-object v7, v7, v5

    .line 350
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 352
    if-ne v8, v4, :cond_1a

    .line 354
    invoke-virtual {v6, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 356
    :cond_1a
    if-ne v7, v4, :cond_1b

    .line 359
    invoke-virtual {v6, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 361
    :cond_1b
    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 364
    if-ne v8, v4, :cond_1c

    .line 367
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 369
    :cond_1c
    if-ne v7, v4, :cond_20

    .line 372
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 374
    goto :goto_15

    .line 377
    :cond_1d
    invoke-static {p0, p1, v6}, Landroidx/constraintlayout/core/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 378
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 381
    if-nez v7, :cond_1f

    .line 383
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 385
    if-eqz v7, :cond_1e

    .line 387
    goto :goto_13

    .line 389
    :cond_1e
    move v7, v2

    .line 390
    goto :goto_14

    .line 391
    :cond_1f
    :goto_13
    move v7, v5

    .line 392
    :goto_14
    if-nez v7, :cond_20

    .line 393
    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 395
    :cond_20
    :goto_15
    add-int/lit8 v3, v3, 0x1

    .line 398
    goto :goto_12

    .line 400
    :cond_21
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 401
    const/4 v1, 0x0

    .line 403
    if-lez v0, :cond_22

    .line 404
    invoke-static {p0, p1, v1, v2}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    .line 406
    :cond_22
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 409
    if-lez v0, :cond_23

    .line 411
    invoke-static {p0, p1, v1, v5}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    .line 413
    :cond_23
    return-void
    .line 416
.end method

.method public final directMeasureWithOrientation(IZ)Z
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p2, v0

    .line 3
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mWidgetcontainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 9
    move-result-object v3

    .line 12
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 13
    move-result-object v4

    .line 16
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 17
    move-result v5

    .line 20
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 21
    move-result v6

    .line 24
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    .line 25
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 27
    if-eqz p2, :cond_4

    .line 29
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 31
    if-eq v3, v9, :cond_0

    .line 33
    if-ne v4, v9, :cond_4

    .line 35
    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v10

    .line 40
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v11

    .line 44
    if-eqz v11, :cond_2

    .line 45
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v11

    .line 50
    check-cast v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 51
    iget v12, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 53
    if-ne v12, p1, :cond_1

    .line 55
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    .line 57
    move-result v11

    .line 60
    if-nez v11, :cond_1

    .line 61
    move p2, v2

    .line 63
    :cond_2
    if-nez p1, :cond_3

    .line 64
    if-eqz p2, :cond_4

    .line 66
    if-ne v3, v9, :cond_4

    .line 68
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 70
    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 73
    move-result p2

    .line 76
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 77
    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 80
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 82
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 84
    move-result v9

    .line 87
    invoke-virtual {p2, v9}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 88
    goto :goto_0

    .line 91
    :cond_3
    if-eqz p2, :cond_4

    .line 92
    if-ne v4, v9, :cond_4

    .line 94
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 96
    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 99
    move-result p2

    .line 102
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 103
    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 106
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 108
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 110
    move-result v9

    .line 113
    invoke-virtual {p2, v9}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 114
    :cond_4
    :goto_0
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 117
    if-nez p1, :cond_6

    .line 119
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 121
    aget-object v6, v6, v2

    .line 123
    if-eq v6, v8, :cond_5

    .line 125
    if-ne v6, p2, :cond_7

    .line 127
    :cond_5
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 129
    move-result p2

    .line 132
    add-int/2addr p2, v5

    .line 133
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 134
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 136
    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 138
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 141
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 143
    sub-int/2addr p2, v5

    .line 145
    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 146
    goto :goto_2

    .line 149
    :cond_6
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 150
    aget-object v5, v5, v0

    .line 152
    if-eq v5, v8, :cond_8

    .line 154
    if-ne v5, p2, :cond_7

    .line 156
    goto :goto_1

    .line 158
    :cond_7
    move p2, v2

    .line 159
    goto :goto_3

    .line 160
    :cond_8
    :goto_1
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 161
    move-result p2

    .line 164
    add-int/2addr p2, v6

    .line 165
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 166
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 168
    invoke-virtual {v5, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 170
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 173
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 175
    sub-int/2addr p2, v6

    .line 177
    invoke-virtual {v5, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 178
    :goto_2
    move p2, v0

    .line 181
    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 182
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 185
    move-result-object p0

    .line 188
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    move-result v5

    .line 192
    if-eqz v5, :cond_b

    .line 193
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    move-result-object v5

    .line 198
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 199
    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 201
    if-eq v6, p1, :cond_9

    .line 203
    goto :goto_4

    .line 205
    :cond_9
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 206
    if-ne v6, v1, :cond_a

    .line 208
    iget-boolean v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    .line 210
    if-nez v6, :cond_a

    .line 212
    goto :goto_4

    .line 214
    :cond_a
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->applyToWidget()V

    .line 215
    goto :goto_4

    .line 218
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 219
    move-result-object p0

    .line 222
    :cond_c
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    move-result v5

    .line 226
    if-eqz v5, :cond_11

    .line 227
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    move-result-object v5

    .line 232
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 233
    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 235
    if-eq v6, p1, :cond_d

    .line 237
    goto :goto_5

    .line 239
    :cond_d
    if-nez p2, :cond_e

    .line 240
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 242
    if-ne v6, v1, :cond_e

    .line 244
    goto :goto_5

    .line 246
    :cond_e
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 247
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 249
    if-nez v6, :cond_f

    .line 251
    goto :goto_6

    .line 253
    :cond_f
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 254
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 256
    if-nez v6, :cond_10

    .line 258
    goto :goto_6

    .line 260
    :cond_10
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 261
    if-nez v6, :cond_c

    .line 263
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 265
    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 267
    if-nez v5, :cond_c

    .line 269
    :goto_6
    move v0, v2

    .line 271
    :cond_11
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 272
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 275
    return v0
    .line 278
.end method

.method public final getSceneString(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, ":{\n"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "  actualWidth:"

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v0, "\n"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    const-string v2, "  actualHeight:"

    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object p0

    .line 75
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 85
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 86
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;)V

    .line 88
    const-string v0, ",\n"

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    goto :goto_0

    .line 96
    :cond_0
    const-string/jumbo p0, "}"

    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    return-void
    .line 103
.end method

.method public final layout()V
    .locals 32

    .line 1
    move-object/from16 v1, p0

    .line 2
    const/4 v2, 0x0

    .line 4
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 5
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 7
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 9
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 11
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v3

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 19
    move-result v0

    .line 22
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 23
    move-result v0

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 27
    move-result v4

    .line 30
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 31
    move-result v4

    .line 34
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 35
    const/4 v6, 0x1

    .line 37
    aget-object v7, v5, v6

    .line 38
    aget-object v5, v5, v2

    .line 40
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPass:I

    .line 42
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 44
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 46
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 48
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 50
    if-nez v8, :cond_1d

    .line 52
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 54
    invoke-static {v8, v6}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    .line 56
    move-result v8

    .line 59
    if-eqz v8, :cond_1d

    .line 60
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 62
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 64
    aget-object v15, v14, v2

    .line 66
    aget-object v14, v14, v6

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetFinalResolution()V

    .line 70
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 75
    move-result v6

    .line 78
    :goto_0
    if-ge v2, v6, :cond_0

    .line 79
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v18

    .line 84
    check-cast v18, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 85
    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetFinalResolution()V

    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 90
    goto :goto_0

    .line 92
    :cond_0
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 93
    if-ne v15, v10, :cond_1

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 97
    move-result v15

    .line 100
    move/from16 v18, v4

    .line 101
    const/4 v4, 0x0

    .line 103
    invoke-virtual {v1, v4, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 104
    goto :goto_1

    .line 107
    :cond_1
    move/from16 v18, v4

    .line 108
    const/4 v4, 0x0

    .line 110
    invoke-virtual {v13, v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 111
    iput v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 114
    :goto_1
    const/4 v4, 0x0

    .line 116
    const/4 v15, 0x0

    .line 117
    const/16 v19, 0x0

    .line 118
    :goto_2
    const/high16 v20, 0x3f000000    # 0.5f

    .line 120
    if-ge v15, v6, :cond_7

    .line 122
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    move-result-object v21

    .line 127
    move-object/from16 v22, v13

    .line 128
    move-object/from16 v13, v21

    .line 130
    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 132
    move/from16 v21, v0

    .line 134
    instance-of v0, v13, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 136
    if-eqz v0, :cond_5

    .line 138
    check-cast v13, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 140
    iget v0, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 142
    move-object/from16 v23, v7

    .line 144
    const/4 v7, 0x1

    .line 146
    if-ne v0, v7, :cond_6

    .line 147
    iget v0, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 149
    const/4 v4, -0x1

    .line 151
    if-eq v0, v4, :cond_2

    .line 152
    invoke-virtual {v13, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 154
    goto :goto_3

    .line 157
    :cond_2
    iget v0, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 158
    if-eq v0, v4, :cond_3

    .line 160
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 162
    move-result v0

    .line 165
    if-eqz v0, :cond_3

    .line 166
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 168
    move-result v0

    .line 171
    iget v4, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 172
    sub-int/2addr v0, v4

    .line 174
    invoke-virtual {v13, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 175
    goto :goto_3

    .line 178
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 179
    move-result v0

    .line 182
    if-eqz v0, :cond_4

    .line 183
    iget v0, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 185
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 187
    move-result v4

    .line 190
    int-to-float v4, v4

    .line 191
    mul-float/2addr v0, v4

    .line 192
    add-float v0, v0, v20

    .line 193
    float-to-int v0, v0

    .line 195
    invoke-virtual {v13, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 196
    :cond_4
    :goto_3
    const/4 v4, 0x1

    .line 199
    goto :goto_4

    .line 200
    :cond_5
    move-object/from16 v23, v7

    .line 201
    instance-of v0, v13, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 203
    if-eqz v0, :cond_6

    .line 205
    check-cast v13, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 207
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 209
    move-result v0

    .line 212
    if-nez v0, :cond_6

    .line 213
    const/16 v19, 0x1

    .line 215
    :cond_6
    :goto_4
    add-int/lit8 v15, v15, 0x1

    .line 217
    move/from16 v0, v21

    .line 219
    move-object/from16 v13, v22

    .line 221
    move-object/from16 v7, v23

    .line 223
    goto :goto_2

    .line 225
    :cond_7
    move/from16 v21, v0

    .line 226
    move-object/from16 v23, v7

    .line 228
    move-object/from16 v22, v13

    .line 230
    if-eqz v4, :cond_9

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_5
    if-ge v0, v6, :cond_9

    .line 235
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    move-result-object v4

    .line 240
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 241
    instance-of v7, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 243
    if-eqz v7, :cond_8

    .line 245
    check-cast v4, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 247
    iget v7, v4, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 249
    const/4 v13, 0x1

    .line 251
    if-ne v7, v13, :cond_8

    .line 252
    const/4 v7, 0x0

    .line 254
    invoke-static {v7, v4, v8, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    .line 255
    goto :goto_6

    .line 258
    :cond_8
    const/4 v7, 0x0

    .line 259
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 260
    goto :goto_5

    .line 262
    :cond_9
    const/4 v7, 0x0

    .line 263
    invoke-static {v7, v1, v8, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    .line 264
    if-eqz v19, :cond_b

    .line 267
    const/4 v0, 0x0

    .line 269
    :goto_7
    if-ge v0, v6, :cond_b

    .line 270
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 272
    move-result-object v4

    .line 275
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 276
    instance-of v7, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 278
    if-eqz v7, :cond_a

    .line 280
    check-cast v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 282
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 284
    move-result v7

    .line 287
    if-nez v7, :cond_a

    .line 288
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    .line 290
    move-result v7

    .line 293
    if-eqz v7, :cond_a

    .line 294
    const/4 v7, 0x1

    .line 296
    invoke-static {v7, v4, v8, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    .line 297
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 300
    goto :goto_7

    .line 302
    :cond_b
    if-ne v14, v10, :cond_c

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 305
    move-result v0

    .line 308
    const/4 v4, 0x0

    .line 309
    invoke-virtual {v1, v4, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 310
    goto :goto_8

    .line 313
    :cond_c
    const/4 v4, 0x0

    .line 314
    invoke-virtual {v12, v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 315
    iput v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 318
    :goto_8
    const/4 v0, 0x0

    .line 320
    const/4 v4, 0x0

    .line 321
    const/4 v7, 0x0

    .line 322
    :goto_9
    if-ge v4, v6, :cond_12

    .line 323
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 325
    move-result-object v13

    .line 328
    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 329
    instance-of v14, v13, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 331
    if-eqz v14, :cond_10

    .line 333
    check-cast v13, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 335
    iget v14, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 337
    if-nez v14, :cond_11

    .line 339
    iget v0, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 341
    const/4 v14, -0x1

    .line 343
    if-eq v0, v14, :cond_d

    .line 344
    invoke-virtual {v13, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 346
    goto :goto_a

    .line 349
    :cond_d
    iget v0, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 350
    if-eq v0, v14, :cond_e

    .line 352
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 354
    move-result v0

    .line 357
    if-eqz v0, :cond_e

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 360
    move-result v0

    .line 363
    iget v14, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 364
    sub-int/2addr v0, v14

    .line 366
    invoke-virtual {v13, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 367
    goto :goto_a

    .line 370
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 371
    move-result v0

    .line 374
    if-eqz v0, :cond_f

    .line 375
    iget v0, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 377
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 379
    move-result v14

    .line 382
    int-to-float v14, v14

    .line 383
    mul-float/2addr v0, v14

    .line 384
    add-float v0, v0, v20

    .line 385
    float-to-int v0, v0

    .line 387
    invoke-virtual {v13, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 388
    :cond_f
    :goto_a
    const/4 v0, 0x1

    .line 391
    goto :goto_b

    .line 392
    :cond_10
    instance-of v14, v13, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 393
    if-eqz v14, :cond_11

    .line 395
    check-cast v13, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 397
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 399
    move-result v13

    .line 402
    const/4 v14, 0x1

    .line 403
    if-ne v13, v14, :cond_11

    .line 404
    const/4 v7, 0x1

    .line 406
    :cond_11
    :goto_b
    add-int/lit8 v4, v4, 0x1

    .line 407
    goto :goto_9

    .line 409
    :cond_12
    if-eqz v0, :cond_14

    .line 410
    const/4 v0, 0x0

    .line 412
    :goto_c
    if-ge v0, v6, :cond_14

    .line 413
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 415
    move-result-object v4

    .line 418
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 419
    instance-of v13, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 421
    if-eqz v13, :cond_13

    .line 423
    check-cast v4, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 425
    iget v13, v4, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 427
    if-nez v13, :cond_13

    .line 429
    const/4 v13, 0x1

    .line 431
    invoke-static {v13, v4, v8}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    .line 432
    :cond_13
    add-int/lit8 v0, v0, 0x1

    .line 435
    goto :goto_c

    .line 437
    :cond_14
    const/4 v4, 0x0

    .line 438
    invoke-static {v4, v1, v8}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    .line 439
    if-eqz v7, :cond_16

    .line 442
    const/4 v0, 0x0

    .line 444
    :goto_d
    if-ge v0, v6, :cond_16

    .line 445
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 447
    move-result-object v4

    .line 450
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 451
    instance-of v7, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 453
    if-eqz v7, :cond_15

    .line 455
    check-cast v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 457
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 459
    move-result v7

    .line 462
    const/4 v13, 0x1

    .line 463
    if-ne v7, v13, :cond_15

    .line 464
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    .line 466
    move-result v7

    .line 469
    if-eqz v7, :cond_15

    .line 470
    invoke-static {v13, v4, v8}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    .line 472
    :cond_15
    add-int/lit8 v0, v0, 0x1

    .line 475
    goto :goto_d

    .line 477
    :cond_16
    const/4 v0, 0x0

    .line 478
    :goto_e
    if-ge v0, v6, :cond_1a

    .line 479
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 481
    move-result-object v4

    .line 484
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 485
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 487
    move-result v7

    .line 490
    if-eqz v7, :cond_19

    .line 491
    invoke-static {v4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 493
    move-result v7

    .line 496
    if-eqz v7, :cond_19

    .line 497
    sget-object v7, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->sMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 499
    invoke-static {v4, v8, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 501
    instance-of v7, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 504
    if-eqz v7, :cond_18

    .line 506
    move-object v7, v4

    .line 508
    check-cast v7, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 509
    iget v7, v7, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 511
    if-nez v7, :cond_17

    .line 513
    const/4 v7, 0x0

    .line 515
    invoke-static {v7, v4, v8}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    .line 516
    goto :goto_f

    .line 519
    :cond_17
    const/4 v7, 0x0

    .line 520
    invoke-static {v7, v4, v8, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    .line 521
    goto :goto_f

    .line 524
    :cond_18
    const/4 v7, 0x0

    .line 525
    invoke-static {v7, v4, v8, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    .line 526
    invoke-static {v7, v4, v8}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    .line 529
    :cond_19
    :goto_f
    add-int/lit8 v0, v0, 0x1

    .line 532
    goto :goto_e

    .line 534
    :cond_1a
    const/4 v0, 0x0

    .line 535
    :goto_10
    if-ge v0, v3, :cond_1e

    .line 536
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 538
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 540
    move-result-object v2

    .line 543
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 544
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 546
    move-result v4

    .line 549
    if-eqz v4, :cond_1c

    .line 550
    instance-of v4, v2, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 552
    if-nez v4, :cond_1c

    .line 554
    instance-of v4, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 556
    if-nez v4, :cond_1c

    .line 558
    instance-of v4, v2, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 560
    if-nez v4, :cond_1c

    .line 562
    iget-boolean v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    .line 564
    if-nez v4, :cond_1c

    .line 566
    const/4 v4, 0x0

    .line 568
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 569
    move-result-object v6

    .line 572
    const/4 v4, 0x1

    .line 573
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 574
    move-result-object v7

    .line 577
    if-ne v6, v9, :cond_1b

    .line 578
    iget v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 580
    if-eq v6, v4, :cond_1b

    .line 582
    if-ne v7, v9, :cond_1b

    .line 584
    iget v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 586
    if-eq v6, v4, :cond_1b

    .line 588
    const/4 v4, 0x1

    .line 590
    goto :goto_11

    .line 591
    :cond_1b
    const/4 v4, 0x0

    .line 592
    :goto_11
    if-nez v4, :cond_1c

    .line 593
    new-instance v4, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 595
    invoke-direct {v4}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 597
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 600
    invoke-static {v2, v6, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 602
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    .line 605
    goto :goto_10

    .line 607
    :cond_1d
    move/from16 v21, v0

    .line 608
    move/from16 v18, v4

    .line 610
    move-object/from16 v23, v7

    .line 612
    move-object/from16 v22, v13

    .line 614
    :cond_1e
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 616
    const/4 v4, 0x2

    .line 618
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 619
    if-le v3, v4, :cond_5a

    .line 621
    move-object/from16 v8, v23

    .line 623
    if-eq v5, v2, :cond_1f

    .line 625
    if-ne v8, v2, :cond_59

    .line 627
    :cond_1f
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 629
    const/16 v11, 0x400

    .line 631
    invoke-static {v0, v11}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    .line 633
    move-result v0

    .line 636
    if-eqz v0, :cond_59

    .line 637
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 639
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 641
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 643
    move-result v13

    .line 646
    const/4 v14, 0x0

    .line 647
    :goto_12
    if-ge v14, v13, :cond_22

    .line 648
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 650
    move-result-object v15

    .line 653
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 654
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 656
    const/16 v17, 0x0

    .line 658
    aget-object v7, v4, v17

    .line 660
    const/16 v16, 0x1

    .line 662
    aget-object v4, v4, v16

    .line 664
    move-object/from16 v23, v12

    .line 666
    iget-object v12, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 668
    move/from16 v24, v3

    .line 670
    aget-object v3, v12, v17

    .line 672
    aget-object v12, v12, v16

    .line 674
    invoke-static {v7, v4, v3, v12}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->validInGroup(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    .line 676
    move-result v3

    .line 679
    if-nez v3, :cond_20

    .line 680
    goto :goto_13

    .line 682
    :cond_20
    instance-of v3, v15, Landroidx/constraintlayout/core/widgets/Flow;

    .line 683
    if-eqz v3, :cond_21

    .line 685
    :goto_13
    move-object v4, v2

    .line 687
    move-object/from16 v26, v5

    .line 688
    move-object/from16 v27, v8

    .line 690
    move-object v2, v10

    .line 692
    const/4 v0, 0x0

    .line 693
    move-object v8, v6

    .line 694
    goto/16 :goto_31

    .line 695
    :cond_21
    add-int/lit8 v14, v14, 0x1

    .line 697
    move-object/from16 v12, v23

    .line 699
    move/from16 v3, v24

    .line 701
    const/4 v4, 0x2

    .line 703
    goto :goto_12

    .line 704
    :cond_22
    move/from16 v24, v3

    .line 705
    move-object/from16 v23, v12

    .line 707
    const/4 v3, 0x0

    .line 709
    const/4 v4, 0x0

    .line 710
    const/4 v7, 0x0

    .line 711
    const/4 v12, 0x0

    .line 712
    const/4 v14, 0x0

    .line 713
    const/4 v15, 0x0

    .line 714
    const/16 v25, 0x0

    .line 715
    :goto_14
    if-ge v3, v13, :cond_33

    .line 717
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 719
    move-result-object v26

    .line 722
    move-object/from16 v27, v8

    .line 723
    move-object/from16 v8, v26

    .line 725
    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 727
    move-object/from16 v26, v5

    .line 729
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 731
    move-object/from16 v28, v10

    .line 733
    const/16 v17, 0x0

    .line 735
    aget-object v10, v5, v17

    .line 737
    const/16 v16, 0x1

    .line 739
    aget-object v5, v5, v16

    .line 741
    move-object/from16 v29, v6

    .line 743
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 745
    move-object/from16 v30, v2

    .line 747
    aget-object v2, v6, v17

    .line 749
    aget-object v6, v6, v16

    .line 751
    invoke-static {v10, v5, v2, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->validInGroup(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    .line 753
    move-result v2

    .line 756
    if-nez v2, :cond_23

    .line 757
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 759
    invoke-static {v8, v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 761
    :cond_23
    instance-of v2, v8, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 764
    if-eqz v2, :cond_27

    .line 766
    move-object v5, v8

    .line 768
    check-cast v5, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 769
    iget v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 771
    if-nez v6, :cond_25

    .line 773
    if-nez v12, :cond_24

    .line 775
    new-instance v6, Ljava/util/ArrayList;

    .line 777
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 779
    move-object v12, v6

    .line 782
    :cond_24
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_25
    iget v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 786
    const/4 v10, 0x1

    .line 788
    if-ne v6, v10, :cond_27

    .line 789
    if-nez v4, :cond_26

    .line 791
    new-instance v4, Ljava/util/ArrayList;

    .line 793
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 795
    :cond_26
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    :cond_27
    instance-of v5, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 801
    if-eqz v5, :cond_2e

    .line 803
    instance-of v5, v8, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 805
    if-eqz v5, :cond_2b

    .line 807
    move-object v5, v8

    .line 809
    check-cast v5, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 810
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 812
    move-result v6

    .line 815
    if-nez v6, :cond_29

    .line 816
    if-nez v7, :cond_28

    .line 818
    new-instance v6, Ljava/util/ArrayList;

    .line 820
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 822
    move-object v7, v6

    .line 825
    :cond_28
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_29
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 829
    move-result v6

    .line 832
    const/4 v10, 0x1

    .line 833
    if-ne v6, v10, :cond_2e

    .line 834
    if-nez v14, :cond_2a

    .line 836
    new-instance v14, Ljava/util/ArrayList;

    .line 838
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 840
    :cond_2a
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    goto :goto_15

    .line 846
    :cond_2b
    move-object v5, v8

    .line 847
    check-cast v5, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 848
    if-nez v7, :cond_2c

    .line 850
    new-instance v7, Ljava/util/ArrayList;

    .line 852
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 854
    :cond_2c
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    if-nez v14, :cond_2d

    .line 860
    new-instance v14, Ljava/util/ArrayList;

    .line 862
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 864
    :cond_2d
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    :cond_2e
    :goto_15
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 870
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 872
    if-nez v5, :cond_30

    .line 874
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 876
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 878
    if-nez v5, :cond_30

    .line 880
    if-nez v2, :cond_30

    .line 882
    instance-of v5, v8, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 884
    if-nez v5, :cond_30

    .line 886
    if-nez v15, :cond_2f

    .line 888
    new-instance v15, Ljava/util/ArrayList;

    .line 890
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 892
    :cond_2f
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    :cond_30
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 898
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 900
    if-nez v5, :cond_32

    .line 902
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 904
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 906
    if-nez v5, :cond_32

    .line 908
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 910
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 912
    if-nez v5, :cond_32

    .line 914
    if-nez v2, :cond_32

    .line 916
    instance-of v2, v8, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 918
    if-nez v2, :cond_32

    .line 920
    if-nez v25, :cond_31

    .line 922
    new-instance v25, Ljava/util/ArrayList;

    .line 924
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 926
    :cond_31
    move-object/from16 v2, v25

    .line 929
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    move-object/from16 v25, v2

    .line 934
    :cond_32
    add-int/lit8 v3, v3, 0x1

    .line 936
    move-object/from16 v5, v26

    .line 938
    move-object/from16 v8, v27

    .line 940
    move-object/from16 v10, v28

    .line 942
    move-object/from16 v6, v29

    .line 944
    move-object/from16 v2, v30

    .line 946
    goto/16 :goto_14

    .line 948
    :cond_33
    move-object/from16 v30, v2

    .line 950
    move-object/from16 v26, v5

    .line 952
    move-object/from16 v29, v6

    .line 954
    move-object/from16 v27, v8

    .line 956
    move-object/from16 v28, v10

    .line 958
    new-instance v0, Ljava/util/ArrayList;

    .line 960
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 962
    if-eqz v4, :cond_34

    .line 965
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 967
    move-result-object v2

    .line 970
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 971
    move-result v3

    .line 974
    if-eqz v3, :cond_34

    .line 975
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 977
    move-result-object v3

    .line 980
    check-cast v3, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 981
    const/4 v4, 0x0

    .line 983
    const/4 v5, 0x0

    .line 984
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 985
    goto :goto_16

    .line 988
    :cond_34
    const/4 v4, 0x0

    .line 989
    const/4 v5, 0x0

    .line 990
    if-eqz v7, :cond_35

    .line 991
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 993
    move-result-object v2

    .line 996
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 997
    move-result v3

    .line 1000
    if-eqz v3, :cond_35

    .line 1001
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1003
    move-result-object v3

    .line 1006
    check-cast v3, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 1007
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1009
    move-result-object v6

    .line 1012
    invoke-virtual {v3, v5, v6, v0}, Landroidx/constraintlayout/core/widgets/HelperWidget;->addDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    .line 1013
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    .line 1016
    const/4 v4, 0x0

    .line 1019
    const/4 v5, 0x0

    .line 1020
    goto :goto_17

    .line 1021
    :cond_35
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1022
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1024
    move-result-object v2

    .line 1027
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1028
    if-eqz v2, :cond_36

    .line 1030
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1032
    move-result-object v2

    .line 1035
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1036
    move-result v3

    .line 1039
    if-eqz v3, :cond_36

    .line 1040
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1042
    move-result-object v3

    .line 1045
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1046
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1048
    const/4 v4, 0x0

    .line 1050
    const/4 v5, 0x0

    .line 1051
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1052
    goto :goto_18

    .line 1055
    :cond_36
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1056
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1058
    move-result-object v2

    .line 1061
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1062
    if-eqz v2, :cond_37

    .line 1064
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1066
    move-result-object v2

    .line 1069
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1070
    move-result v3

    .line 1073
    if-eqz v3, :cond_37

    .line 1074
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1076
    move-result-object v3

    .line 1079
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1080
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1082
    const/4 v4, 0x0

    .line 1084
    const/4 v5, 0x0

    .line 1085
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1086
    goto :goto_19

    .line 1089
    :cond_37
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1090
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1092
    move-result-object v3

    .line 1095
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1096
    if-eqz v3, :cond_38

    .line 1098
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1100
    move-result-object v3

    .line 1103
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1104
    move-result v4

    .line 1107
    if-eqz v4, :cond_38

    .line 1108
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1110
    move-result-object v4

    .line 1113
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1114
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1116
    const/4 v5, 0x0

    .line 1118
    const/4 v6, 0x0

    .line 1119
    invoke-static {v4, v6, v0, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1120
    goto :goto_1a

    .line 1123
    :cond_38
    const/4 v5, 0x0

    .line 1124
    const/4 v6, 0x0

    .line 1125
    if-eqz v15, :cond_39

    .line 1126
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1128
    move-result-object v3

    .line 1131
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1132
    move-result v4

    .line 1135
    if-eqz v4, :cond_39

    .line 1136
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1138
    move-result-object v4

    .line 1141
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1142
    invoke-static {v4, v6, v0, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1144
    goto :goto_1b

    .line 1147
    :cond_39
    if-eqz v12, :cond_3a

    .line 1148
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1150
    move-result-object v3

    .line 1153
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1154
    move-result v4

    .line 1157
    if-eqz v4, :cond_3a

    .line 1158
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1160
    move-result-object v4

    .line 1163
    check-cast v4, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 1164
    const/4 v6, 0x1

    .line 1166
    invoke-static {v4, v6, v0, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1167
    goto :goto_1c

    .line 1170
    :cond_3a
    const/4 v6, 0x1

    .line 1171
    if-eqz v14, :cond_3b

    .line 1172
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1174
    move-result-object v3

    .line 1177
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1178
    move-result v4

    .line 1181
    if-eqz v4, :cond_3b

    .line 1182
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1184
    move-result-object v4

    .line 1187
    check-cast v4, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 1188
    invoke-static {v4, v6, v0, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1190
    move-result-object v7

    .line 1193
    invoke-virtual {v4, v6, v7, v0}, Landroidx/constraintlayout/core/widgets/HelperWidget;->addDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    .line 1194
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    .line 1197
    const/4 v5, 0x0

    .line 1200
    const/4 v6, 0x1

    .line 1201
    goto :goto_1d

    .line 1202
    :cond_3b
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1203
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1205
    move-result-object v3

    .line 1208
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1209
    if-eqz v3, :cond_3c

    .line 1211
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1213
    move-result-object v3

    .line 1216
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1217
    move-result v4

    .line 1220
    if-eqz v4, :cond_3c

    .line 1221
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1223
    move-result-object v4

    .line 1226
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1227
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1229
    const/4 v5, 0x0

    .line 1231
    const/4 v6, 0x1

    .line 1232
    invoke-static {v4, v6, v0, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1233
    goto :goto_1e

    .line 1236
    :cond_3c
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1237
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1239
    move-result-object v3

    .line 1242
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1243
    if-eqz v3, :cond_3d

    .line 1245
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1247
    move-result-object v3

    .line 1250
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1251
    move-result v4

    .line 1254
    if-eqz v4, :cond_3d

    .line 1255
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1257
    move-result-object v4

    .line 1260
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1261
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1263
    const/4 v5, 0x0

    .line 1265
    const/4 v6, 0x1

    .line 1266
    invoke-static {v4, v6, v0, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1267
    goto :goto_1f

    .line 1270
    :cond_3d
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1271
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1273
    move-result-object v3

    .line 1276
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1277
    if-eqz v3, :cond_3e

    .line 1279
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1281
    move-result-object v3

    .line 1284
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1285
    move-result v4

    .line 1288
    if-eqz v4, :cond_3e

    .line 1289
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1291
    move-result-object v4

    .line 1294
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1295
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1297
    const/4 v5, 0x0

    .line 1299
    const/4 v6, 0x1

    .line 1300
    invoke-static {v4, v6, v0, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1301
    goto :goto_20

    .line 1304
    :cond_3e
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1305
    move-result-object v2

    .line 1308
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1309
    if-eqz v2, :cond_3f

    .line 1311
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1313
    move-result-object v2

    .line 1316
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1317
    move-result v3

    .line 1320
    if-eqz v3, :cond_3f

    .line 1321
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1323
    move-result-object v3

    .line 1326
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1327
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1329
    const/4 v4, 0x0

    .line 1331
    const/4 v5, 0x1

    .line 1332
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1333
    goto :goto_21

    .line 1336
    :cond_3f
    const/4 v4, 0x0

    .line 1337
    const/4 v5, 0x1

    .line 1338
    if-eqz v25, :cond_40

    .line 1339
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1341
    move-result-object v2

    .line 1344
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1345
    move-result v3

    .line 1348
    if-eqz v3, :cond_40

    .line 1349
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1351
    move-result-object v3

    .line 1354
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1355
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1357
    goto :goto_22

    .line 1360
    :cond_40
    const/4 v2, 0x0

    .line 1361
    :goto_23
    if-ge v2, v13, :cond_47

    .line 1362
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1364
    move-result-object v3

    .line 1367
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1368
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1370
    const/4 v6, 0x0

    .line 1372
    aget-object v7, v4, v6

    .line 1373
    if-ne v7, v9, :cond_41

    .line 1375
    aget-object v4, v4, v5

    .line 1377
    if-ne v4, v9, :cond_41

    .line 1379
    const/4 v4, 0x1

    .line 1381
    goto :goto_24

    .line 1382
    :cond_41
    const/4 v4, 0x0

    .line 1383
    :goto_24
    if-eqz v4, :cond_46

    .line 1384
    iget v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    .line 1386
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1388
    move-result v5

    .line 1391
    const/4 v6, 0x0

    .line 1392
    :goto_25
    if-ge v6, v5, :cond_43

    .line 1393
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1395
    move-result-object v7

    .line 1398
    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1399
    iget v8, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mId:I

    .line 1401
    if-ne v4, v8, :cond_42

    .line 1403
    goto :goto_26

    .line 1405
    :cond_42
    add-int/lit8 v6, v6, 0x1

    .line 1406
    goto :goto_25

    .line 1408
    :cond_43
    const/4 v7, 0x0

    .line 1409
    :goto_26
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    .line 1410
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1412
    move-result v4

    .line 1415
    const/4 v5, 0x0

    .line 1416
    :goto_27
    if-ge v5, v4, :cond_45

    .line 1417
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1419
    move-result-object v6

    .line 1422
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1423
    iget v8, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mId:I

    .line 1425
    if-ne v3, v8, :cond_44

    .line 1427
    goto :goto_28

    .line 1429
    :cond_44
    add-int/lit8 v5, v5, 0x1

    .line 1430
    goto :goto_27

    .line 1432
    :cond_45
    const/4 v6, 0x0

    .line 1433
    :goto_28
    if-eqz v7, :cond_46

    .line 1434
    if-eqz v6, :cond_46

    .line 1436
    const/4 v3, 0x0

    .line 1438
    invoke-virtual {v7, v3, v6}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    .line 1439
    const/4 v3, 0x2

    .line 1442
    iput v3, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mOrientation:I

    .line 1443
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1445
    :cond_46
    add-int/lit8 v2, v2, 0x1

    .line 1448
    const/4 v5, 0x1

    .line 1450
    goto :goto_23

    .line 1451
    :cond_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1452
    move-result v2

    .line 1455
    const/4 v3, 0x1

    .line 1456
    if-gt v2, v3, :cond_48

    .line 1457
    move-object/from16 v2, v28

    .line 1459
    move-object/from16 v8, v29

    .line 1461
    move-object/from16 v4, v30

    .line 1463
    goto/16 :goto_2f

    .line 1465
    :cond_48
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1467
    const/4 v3, 0x0

    .line 1469
    aget-object v2, v2, v3

    .line 1470
    move-object/from16 v4, v30

    .line 1472
    if-ne v2, v4, :cond_4c

    .line 1474
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1476
    move-result-object v2

    .line 1479
    move v5, v3

    .line 1480
    const/4 v6, 0x0

    .line 1481
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1482
    move-result v7

    .line 1485
    if-eqz v7, :cond_4b

    .line 1486
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1488
    move-result-object v7

    .line 1491
    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1492
    iget v8, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mOrientation:I

    .line 1494
    const/4 v9, 0x1

    .line 1496
    if-ne v8, v9, :cond_49

    .line 1497
    move-object/from16 v8, v29

    .line 1499
    goto :goto_2a

    .line 1501
    :cond_49
    move-object/from16 v8, v29

    .line 1502
    invoke-virtual {v7, v8, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/core/LinearSystem;I)I

    .line 1504
    move-result v9

    .line 1507
    if-le v9, v5, :cond_4a

    .line 1508
    move-object v6, v7

    .line 1510
    move v5, v9

    .line 1511
    :cond_4a
    :goto_2a
    move-object/from16 v29, v8

    .line 1512
    const/4 v3, 0x0

    .line 1514
    goto :goto_29

    .line 1515
    :cond_4b
    move-object/from16 v8, v29

    .line 1516
    move-object/from16 v2, v28

    .line 1518
    if-eqz v6, :cond_4d

    .line 1520
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1522
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 1525
    goto :goto_2b

    .line 1528
    :cond_4c
    move-object/from16 v2, v28

    .line 1529
    move-object/from16 v8, v29

    .line 1531
    :cond_4d
    const/4 v6, 0x0

    .line 1533
    :goto_2b
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1534
    const/4 v5, 0x1

    .line 1536
    aget-object v3, v3, v5

    .line 1537
    if-ne v3, v4, :cond_51

    .line 1539
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1541
    move-result-object v0

    .line 1544
    const/4 v3, 0x0

    .line 1545
    const/4 v7, 0x0

    .line 1546
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1547
    move-result v9

    .line 1550
    if-eqz v9, :cond_50

    .line 1551
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1553
    move-result-object v9

    .line 1556
    check-cast v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1557
    iget v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mOrientation:I

    .line 1559
    if-nez v10, :cond_4e

    .line 1561
    goto :goto_2d

    .line 1563
    :cond_4e
    invoke-virtual {v9, v8, v5}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/core/LinearSystem;I)I

    .line 1564
    move-result v10

    .line 1567
    if-le v10, v3, :cond_4f

    .line 1568
    move-object v7, v9

    .line 1570
    move v3, v10

    .line 1571
    :cond_4f
    :goto_2d
    const/4 v5, 0x1

    .line 1572
    goto :goto_2c

    .line 1573
    :cond_50
    if-eqz v7, :cond_51

    .line 1574
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1576
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 1579
    goto :goto_2e

    .line 1582
    :cond_51
    const/4 v7, 0x0

    .line 1583
    :goto_2e
    if-nez v6, :cond_53

    .line 1584
    if-eqz v7, :cond_52

    .line 1586
    goto :goto_30

    .line 1588
    :cond_52
    :goto_2f
    const/4 v0, 0x0

    .line 1589
    goto :goto_31

    .line 1590
    :cond_53
    :goto_30
    const/4 v0, 0x1

    .line 1591
    :goto_31
    if-eqz v0, :cond_58

    .line 1592
    move-object/from16 v3, v26

    .line 1594
    if-ne v3, v4, :cond_55

    .line 1596
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1598
    move-result v0

    .line 1601
    move/from16 v5, v21

    .line 1602
    if-ge v5, v0, :cond_54

    .line 1604
    if-lez v5, :cond_54

    .line 1606
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 1608
    const/4 v6, 0x1

    .line 1611
    iput-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 1612
    goto :goto_32

    .line 1614
    :cond_54
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1615
    move-result v0

    .line 1618
    goto :goto_33

    .line 1619
    :cond_55
    move/from16 v5, v21

    .line 1620
    :goto_32
    move v0, v5

    .line 1622
    :goto_33
    move-object/from16 v6, v27

    .line 1623
    if-ne v6, v4, :cond_57

    .line 1625
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1627
    move-result v5

    .line 1630
    move/from16 v7, v18

    .line 1631
    if-ge v7, v5, :cond_56

    .line 1633
    if-lez v7, :cond_56

    .line 1635
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 1637
    const/4 v5, 0x1

    .line 1640
    iput-boolean v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 1641
    goto :goto_34

    .line 1643
    :cond_56
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1644
    move-result v5

    .line 1647
    goto :goto_35

    .line 1648
    :cond_57
    move/from16 v7, v18

    .line 1649
    :goto_34
    move v5, v7

    .line 1651
    :goto_35
    move v7, v5

    .line 1652
    move v5, v0

    .line 1653
    const/4 v0, 0x1

    .line 1654
    goto :goto_37

    .line 1655
    :cond_58
    move/from16 v7, v18

    .line 1656
    move/from16 v5, v21

    .line 1658
    move-object/from16 v3, v26

    .line 1660
    move-object/from16 v6, v27

    .line 1662
    goto :goto_36

    .line 1664
    :cond_59
    move-object v4, v2

    .line 1665
    move/from16 v24, v3

    .line 1666
    move-object v3, v5

    .line 1668
    move-object v2, v10

    .line 1669
    move-object/from16 v23, v12

    .line 1670
    move/from16 v7, v18

    .line 1672
    move/from16 v5, v21

    .line 1674
    move-object/from16 v31, v8

    .line 1676
    move-object v8, v6

    .line 1678
    move-object/from16 v6, v31

    .line 1679
    goto :goto_36

    .line 1681
    :cond_5a
    move-object v4, v2

    .line 1682
    move/from16 v24, v3

    .line 1683
    move-object v3, v5

    .line 1685
    move-object v8, v6

    .line 1686
    move-object v2, v10

    .line 1687
    move/from16 v7, v18

    .line 1688
    move/from16 v5, v21

    .line 1690
    move-object/from16 v6, v23

    .line 1692
    move-object/from16 v23, v12

    .line 1694
    :goto_36
    const/4 v0, 0x0

    .line 1696
    :goto_37
    const/16 v9, 0x40

    .line 1697
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1699
    move-result v10

    .line 1702
    if-nez v10, :cond_5c

    .line 1703
    const/16 v10, 0x80

    .line 1705
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1707
    move-result v10

    .line 1710
    if-eqz v10, :cond_5b

    .line 1711
    goto :goto_38

    .line 1713
    :cond_5b
    const/4 v10, 0x0

    .line 1714
    goto :goto_39

    .line 1715
    :cond_5c
    :goto_38
    const/4 v10, 0x1

    .line 1716
    :goto_39
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1717
    const/4 v11, 0x0

    .line 1720
    iput-boolean v11, v8, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    .line 1721
    iget v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 1723
    if-eqz v12, :cond_5d

    .line 1725
    if-eqz v10, :cond_5d

    .line 1727
    const/4 v10, 0x1

    .line 1729
    iput-boolean v10, v8, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    .line 1730
    goto :goto_3a

    .line 1732
    :cond_5d
    const/4 v10, 0x1

    .line 1733
    :goto_3a
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1734
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1736
    aget-object v14, v13, v11

    .line 1738
    if-eq v14, v4, :cond_5f

    .line 1740
    aget-object v13, v13, v10

    .line 1742
    if-ne v13, v4, :cond_5e

    .line 1744
    goto :goto_3b

    .line 1746
    :cond_5e
    move v10, v11

    .line 1747
    goto :goto_3c

    .line 1748
    :cond_5f
    :goto_3b
    const/4 v10, 0x1

    .line 1749
    :goto_3c
    iput v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 1750
    iput v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 1752
    move/from16 v13, v24

    .line 1754
    const/4 v11, 0x0

    .line 1756
    :goto_3d
    if-ge v11, v13, :cond_61

    .line 1757
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1759
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1761
    move-result-object v14

    .line 1764
    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1765
    instance-of v15, v14, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    .line 1767
    if-eqz v15, :cond_60

    .line 1769
    check-cast v14, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    .line 1771
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->layout()V

    .line 1773
    :cond_60
    add-int/lit8 v11, v11, 0x1

    .line 1776
    goto :goto_3d

    .line 1778
    :cond_61
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1779
    move-result v11

    .line 1782
    move v14, v0

    .line 1783
    const/4 v0, 0x0

    .line 1784
    const/4 v15, 0x1

    .line 1785
    :goto_3e
    if-eqz v15, :cond_76

    .line 1786
    const/16 v16, 0x1

    .line 1788
    add-int/lit8 v9, v0, 0x1

    .line 1790
    :try_start_0
    invoke-virtual {v8}, Landroidx/constraintlayout/core/LinearSystem;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 1792
    move/from16 v21, v15

    .line 1795
    const/4 v15, 0x0

    .line 1797
    :try_start_1
    iput v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 1798
    iput v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 1800
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    .line 1802
    const/4 v0, 0x0

    .line 1805
    :goto_3f
    if-ge v0, v13, :cond_62

    .line 1806
    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1808
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1810
    move-result-object v15

    .line 1813
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1814
    invoke-virtual {v15, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    .line 1816
    add-int/lit8 v0, v0, 0x1

    .line 1819
    goto :goto_3f

    .line 1821
    :cond_62
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChildrenToSolver(Landroidx/constraintlayout/core/LinearSystem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 1822
    :try_start_2
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMin:Ljava/lang/ref/WeakReference;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 1825
    if-eqz v0, :cond_63

    .line 1827
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1829
    move-result-object v0

    .line 1832
    if-eqz v0, :cond_63

    .line 1833
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1835
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1837
    move-result-object v0

    .line 1840
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1841
    move-object/from16 v15, v23

    .line 1843
    move/from16 v23, v14

    .line 1845
    :try_start_4
    invoke-virtual {v8, v15}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1847
    move-result-object v14

    .line 1850
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1851
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1854
    move-object/from16 v25, v12

    .line 1855
    move-object/from16 v24, v15

    .line 1857
    const/4 v12, 0x0

    .line 1859
    const/4 v15, 0x5

    .line 1860
    :try_start_5
    invoke-virtual {v8, v0, v14, v12, v15}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1861
    const/4 v12, 0x0

    .line 1864
    iput-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMin:Ljava/lang/ref/WeakReference;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1865
    goto :goto_40

    .line 1867
    :catch_0
    move-exception v0

    .line 1868
    goto :goto_41

    .line 1869
    :catch_1
    move-exception v0

    .line 1870
    move-object/from16 v25, v12

    .line 1871
    move-object/from16 v24, v15

    .line 1873
    goto :goto_41

    .line 1875
    :catch_2
    move-exception v0

    .line 1876
    move-object/from16 v25, v12

    .line 1877
    move-object/from16 v24, v23

    .line 1879
    move/from16 v23, v14

    .line 1881
    goto :goto_41

    .line 1883
    :cond_63
    move-object/from16 v25, v12

    .line 1884
    move-object/from16 v24, v23

    .line 1886
    move/from16 v23, v14

    .line 1888
    :goto_40
    :try_start_6
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMax:Ljava/lang/ref/WeakReference;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1890
    if-eqz v0, :cond_64

    .line 1892
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1894
    move-result-object v0

    .line 1897
    if-eqz v0, :cond_64

    .line 1898
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1900
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1902
    move-result-object v0

    .line 1905
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1906
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1908
    invoke-virtual {v8, v12}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1910
    move-result-object v12

    .line 1913
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1914
    move-result-object v0

    .line 1917
    const/4 v14, 0x5

    .line 1918
    const/4 v15, 0x0

    .line 1919
    invoke-virtual {v8, v12, v0, v15, v14}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1920
    const/4 v12, 0x0

    .line 1923
    iput-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMax:Ljava/lang/ref/WeakReference;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1924
    goto :goto_42

    .line 1926
    :goto_41
    const/4 v12, 0x0

    .line 1927
    goto :goto_45

    .line 1928
    :cond_64
    :goto_42
    :try_start_8
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1929
    if-eqz v0, :cond_65

    .line 1931
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1933
    move-result-object v0

    .line 1936
    if-eqz v0, :cond_65

    .line 1937
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1939
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1941
    move-result-object v0

    .line 1944
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 1945
    move-object/from16 v12, v22

    .line 1947
    :try_start_9
    invoke-virtual {v8, v12}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1949
    move-result-object v14

    .line 1952
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1953
    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1956
    move-object/from16 v22, v12

    .line 1957
    const/4 v12, 0x0

    .line 1959
    const/4 v15, 0x5

    .line 1960
    :try_start_a
    invoke-virtual {v8, v0, v14, v12, v15}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1961
    const/4 v12, 0x0

    .line 1964
    :try_start_b
    iput-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMin:Ljava/lang/ref/WeakReference;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1965
    goto :goto_43

    .line 1967
    :catch_3
    move-exception v0

    .line 1968
    move-object/from16 v22, v12

    .line 1969
    goto :goto_41

    .line 1971
    :cond_65
    :goto_43
    :try_start_c
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1972
    if-eqz v0, :cond_66

    .line 1974
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1976
    move-result-object v0

    .line 1979
    if-eqz v0, :cond_66

    .line 1980
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1982
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1984
    move-result-object v0

    .line 1987
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1988
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1990
    invoke-virtual {v8, v12}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1992
    move-result-object v12

    .line 1995
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1996
    move-result-object v0

    .line 1999
    const/4 v14, 0x5

    .line 2000
    const/4 v15, 0x0

    .line 2001
    invoke-virtual {v8, v12, v0, v15, v14}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 2002
    const/4 v12, 0x0

    .line 2005
    :try_start_d
    iput-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 2006
    goto :goto_44

    .line 2008
    :catch_4
    move-exception v0

    .line 2009
    goto :goto_41

    .line 2010
    :cond_66
    const/4 v12, 0x0

    .line 2011
    :goto_44
    invoke-virtual {v8}, Landroidx/constraintlayout/core/LinearSystem;->minimize()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 2012
    const/16 v21, 0x1

    .line 2015
    goto :goto_48

    .line 2017
    :catch_5
    move-exception v0

    .line 2018
    goto :goto_45

    .line 2019
    :catch_6
    move-exception v0

    .line 2020
    move-object/from16 v25, v12

    .line 2021
    move-object/from16 v24, v23

    .line 2023
    const/4 v12, 0x0

    .line 2025
    move/from16 v23, v14

    .line 2026
    :goto_45
    const/16 v21, 0x1

    .line 2028
    goto :goto_47

    .line 2030
    :catch_7
    move-exception v0

    .line 2031
    move-object/from16 v25, v12

    .line 2032
    :goto_46
    move-object/from16 v24, v23

    .line 2034
    const/4 v12, 0x0

    .line 2036
    move/from16 v23, v14

    .line 2037
    goto :goto_47

    .line 2039
    :catch_8
    move-exception v0

    .line 2040
    move-object/from16 v25, v12

    .line 2041
    move/from16 v21, v15

    .line 2043
    goto :goto_46

    .line 2045
    :goto_47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2046
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2049
    new-instance v15, Ljava/lang/StringBuilder;

    .line 2051
    const-string v12, "EXCEPTION : "

    .line 2053
    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2055
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2058
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2061
    move-result-object v0

    .line 2064
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2065
    :goto_48
    sget-object v0, Landroidx/constraintlayout/core/widgets/Optimizer;->sFlags:[Z

    .line 2068
    if-eqz v21, :cond_6b

    .line 2070
    const/4 v12, 0x2

    .line 2072
    const/4 v14, 0x0

    .line 2073
    aput-boolean v14, v0, v12

    .line 2074
    const/16 v12, 0x40

    .line 2076
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 2078
    move-result v14

    .line 2081
    invoke-virtual {v1, v8, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2082
    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2085
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 2087
    move-result v15

    .line 2090
    const/4 v12, 0x0

    .line 2091
    const/16 v18, 0x0

    .line 2092
    :goto_49
    if-ge v12, v15, :cond_6a

    .line 2094
    move/from16 v26, v15

    .line 2096
    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2098
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2100
    move-result-object v15

    .line 2103
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2104
    invoke-virtual {v15, v8, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2106
    move/from16 v27, v14

    .line 2109
    iget v14, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 2111
    move/from16 v28, v7

    .line 2113
    const/4 v7, -0x1

    .line 2115
    if-ne v14, v7, :cond_68

    .line 2116
    iget v14, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    .line 2118
    if-eq v14, v7, :cond_67

    .line 2120
    goto :goto_4a

    .line 2122
    :cond_67
    const/4 v14, 0x0

    .line 2123
    goto :goto_4b

    .line 2124
    :cond_68
    :goto_4a
    const/4 v14, 0x1

    .line 2125
    :goto_4b
    if-eqz v14, :cond_69

    .line 2126
    const/16 v18, 0x1

    .line 2128
    :cond_69
    add-int/lit8 v12, v12, 0x1

    .line 2130
    move/from16 v15, v26

    .line 2132
    move/from16 v14, v27

    .line 2134
    move/from16 v7, v28

    .line 2136
    goto :goto_49

    .line 2138
    :cond_6a
    move/from16 v28, v7

    .line 2139
    const/4 v7, -0x1

    .line 2141
    goto :goto_4d

    .line 2142
    :cond_6b
    move/from16 v28, v7

    .line 2143
    const/4 v7, -0x1

    .line 2145
    invoke-virtual {v1, v8, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2146
    const/4 v12, 0x0

    .line 2149
    :goto_4c
    if-ge v12, v13, :cond_6c

    .line 2150
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2152
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2154
    move-result-object v14

    .line 2157
    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2158
    invoke-virtual {v14, v8, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2160
    add-int/lit8 v12, v12, 0x1

    .line 2163
    goto :goto_4c

    .line 2165
    :cond_6c
    const/16 v18, 0x0

    .line 2166
    :goto_4d
    const/16 v12, 0x8

    .line 2168
    if-eqz v10, :cond_6f

    .line 2170
    if-ge v9, v12, :cond_6f

    .line 2172
    const/4 v14, 0x2

    .line 2174
    aget-boolean v0, v0, v14

    .line 2175
    if-eqz v0, :cond_6f

    .line 2177
    const/4 v0, 0x0

    .line 2179
    const/4 v7, 0x0

    .line 2180
    const/4 v15, 0x0

    .line 2181
    :goto_4e
    if-ge v0, v13, :cond_6d

    .line 2182
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2184
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2186
    move-result-object v14

    .line 2189
    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2190
    iget v12, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 2192
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2194
    move-result v27

    .line 2197
    add-int v12, v27, v12

    .line 2198
    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    .line 2200
    move-result v15

    .line 2203
    iget v12, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 2204
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2206
    move-result v14

    .line 2209
    add-int/2addr v14, v12

    .line 2210
    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    .line 2211
    move-result v7

    .line 2214
    add-int/lit8 v0, v0, 0x1

    .line 2215
    const/16 v12, 0x8

    .line 2217
    const/4 v14, 0x2

    .line 2219
    goto :goto_4e

    .line 2220
    :cond_6d
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 2221
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    .line 2223
    move-result v0

    .line 2226
    iget v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 2227
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    .line 2229
    move-result v7

    .line 2232
    if-ne v3, v4, :cond_6e

    .line 2233
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2235
    move-result v12

    .line 2238
    if-ge v12, v0, :cond_6e

    .line 2239
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 2241
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2244
    const/4 v12, 0x0

    .line 2246
    aput-object v4, v0, v12

    .line 2247
    const/16 v18, 0x1

    .line 2249
    const/16 v23, 0x1

    .line 2251
    :cond_6e
    if-ne v6, v4, :cond_6f

    .line 2253
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2255
    move-result v0

    .line 2258
    if-ge v0, v7, :cond_6f

    .line 2259
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 2261
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2264
    const/4 v7, 0x1

    .line 2266
    aput-object v4, v0, v7

    .line 2267
    const/16 v18, 0x1

    .line 2269
    const/16 v23, 0x1

    .line 2271
    :cond_6f
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 2273
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2275
    move-result v7

    .line 2278
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    .line 2279
    move-result v0

    .line 2282
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2283
    move-result v7

    .line 2286
    if-le v0, v7, :cond_70

    .line 2287
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 2289
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2292
    const/4 v7, 0x0

    .line 2294
    aput-object v2, v0, v7

    .line 2295
    const/16 v18, 0x1

    .line 2297
    const/16 v23, 0x1

    .line 2299
    :cond_70
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 2301
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2303
    move-result v7

    .line 2306
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    .line 2307
    move-result v0

    .line 2310
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2311
    move-result v7

    .line 2314
    if-le v0, v7, :cond_71

    .line 2315
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 2317
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2320
    const/4 v7, 0x1

    .line 2322
    aput-object v2, v0, v7

    .line 2323
    move/from16 v18, v7

    .line 2325
    move/from16 v23, v18

    .line 2327
    goto :goto_4f

    .line 2329
    :cond_71
    const/4 v7, 0x1

    .line 2330
    :goto_4f
    if-nez v23, :cond_73

    .line 2331
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2333
    const/4 v12, 0x0

    .line 2335
    aget-object v0, v0, v12

    .line 2336
    if-ne v0, v4, :cond_72

    .line 2338
    if-lez v5, :cond_72

    .line 2340
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2342
    move-result v0

    .line 2345
    if-le v0, v5, :cond_72

    .line 2346
    iput-boolean v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 2348
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2350
    aput-object v2, v0, v12

    .line 2352
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 2354
    move/from16 v18, v7

    .line 2357
    move/from16 v23, v18

    .line 2359
    :cond_72
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2361
    aget-object v0, v0, v7

    .line 2363
    if-ne v0, v4, :cond_73

    .line 2365
    if-lez v28, :cond_73

    .line 2367
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2369
    move-result v0

    .line 2372
    move/from16 v12, v28

    .line 2373
    if-le v0, v12, :cond_74

    .line 2375
    iput-boolean v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 2377
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2379
    aput-object v2, v0, v7

    .line 2381
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 2383
    const/16 v0, 0x8

    .line 2386
    const/4 v14, 0x1

    .line 2388
    const/16 v18, 0x1

    .line 2389
    goto :goto_50

    .line 2391
    :cond_73
    move/from16 v12, v28

    .line 2392
    :cond_74
    move/from16 v7, v23

    .line 2394
    move v14, v7

    .line 2396
    const/16 v0, 0x8

    .line 2397
    :goto_50
    if-le v9, v0, :cond_75

    .line 2399
    const/4 v15, 0x0

    .line 2401
    goto :goto_51

    .line 2402
    :cond_75
    move/from16 v15, v18

    .line 2403
    :goto_51
    move v0, v9

    .line 2405
    move v7, v12

    .line 2406
    move-object/from16 v23, v24

    .line 2407
    move-object/from16 v12, v25

    .line 2409
    const/16 v9, 0x40

    .line 2411
    goto/16 :goto_3e

    .line 2413
    :cond_76
    move-object v7, v12

    .line 2415
    move/from16 v23, v14

    .line 2416
    iput-object v7, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2418
    if-eqz v23, :cond_77

    .line 2420
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2422
    const/4 v2, 0x0

    .line 2424
    aput-object v3, v0, v2

    .line 2425
    const/4 v2, 0x1

    .line 2427
    aput-object v6, v0, v2

    .line 2428
    :cond_77
    iget-object v0, v8, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 2430
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->resetSolverVariables(Landroidx/constraintlayout/core/Cache;)V

    .line 2432
    return-void
    .line 2435
.end method

.method public final optimizeFor(I)Z
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 2
    and-int/2addr p0, p1

    .line 4
    if-ne p0, p1, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
    .line 10
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    .line 4
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 10
    invoke-super {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->reset()V

    .line 12
    return-void
    .line 15
.end method

.method public final updateFromRuns(ZZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromRuns(ZZ)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromRuns(ZZ)V

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method
