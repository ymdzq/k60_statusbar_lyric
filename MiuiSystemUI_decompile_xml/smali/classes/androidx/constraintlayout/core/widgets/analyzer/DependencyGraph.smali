.class public final Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field public final mGroups:Ljava/util/ArrayList;

.field public final mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field public mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

.field public mNeedBuildGraph:Z

.field public mNeedRedoMeasures:Z

.field public final mRuns:Ljava/util/ArrayList;

.field public final mWidgetcontainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 6
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 23
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 25
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 27
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mWidgetcontainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 39
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 41
    return-void
    .line 43
.end method


# virtual methods
.method public final applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V
    .locals 9

    .line 1
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 2
    iget-object p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mRunGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 4
    if-nez p3, :cond_a

    .line 6
    iget-object p3, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mWidgetcontainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 8
    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 10
    if-eq p1, v0, :cond_a

    .line 12
    iget-object p3, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 14
    if-ne p1, p3, :cond_0

    .line 16
    goto/16 :goto_6

    .line 18
    :cond_0
    if-nez p5, :cond_1

    .line 20
    new-instance p5, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 22
    invoke-direct {p5, p1}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V

    .line 24
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_1
    iput-object p5, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mRunGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 30
    iget-object p3, p5, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->mRuns:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 37
    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 39
    check-cast v0, Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v6

    .line 46
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 57
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 59
    if-eqz v1, :cond_2

    .line 61
    move-object v1, v0

    .line 63
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 64
    const/4 v3, 0x0

    .line 66
    move-object v0, p0

    .line 67
    move v2, p2

    .line 68
    move-object v4, p4

    .line 69
    move-object v5, p5

    .line 70
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 71
    goto :goto_0

    .line 74
    :cond_3
    iget-object v6, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 75
    iget-object v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 77
    check-cast v0, Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    move-result-object v7

    .line 84
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    move-result v0

    .line 88
    if-eqz v0, :cond_5

    .line 89
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    move-result-object v0

    .line 94
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 95
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 97
    if-eqz v1, :cond_4

    .line 99
    move-object v1, v0

    .line 101
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 102
    const/4 v3, 0x1

    .line 104
    move-object v0, p0

    .line 105
    move v2, p2

    .line 106
    move-object v4, p4

    .line 107
    move-object v5, p5

    .line 108
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 109
    goto :goto_1

    .line 112
    :cond_5
    const/4 v7, 0x1

    .line 113
    if-ne p2, v7, :cond_7

    .line 114
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 116
    if-eqz v0, :cond_7

    .line 118
    move-object v0, p1

    .line 120
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 121
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 123
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 125
    check-cast v0, Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    move-result-object v8

    .line 132
    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    move-result v0

    .line 136
    if-eqz v0, :cond_7

    .line 137
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    move-result-object v0

    .line 142
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 143
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 145
    if-eqz v1, :cond_6

    .line 147
    move-object v1, v0

    .line 149
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 150
    const/4 v3, 0x2

    .line 152
    move-object v0, p0

    .line 153
    move v2, p2

    .line 154
    move-object v4, p4

    .line 155
    move-object v5, p5

    .line 156
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 157
    goto :goto_2

    .line 160
    :cond_7
    iget-object p3, p3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 161
    check-cast p3, Ljava/util/ArrayList;

    .line 163
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 165
    move-result-object p3

    .line 168
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    move-result v0

    .line 172
    if-eqz v0, :cond_8

    .line 173
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    move-result-object v0

    .line 178
    move-object v1, v0

    .line 179
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 180
    const/4 v3, 0x0

    .line 182
    move-object v0, p0

    .line 183
    move v2, p2

    .line 184
    move-object v4, p4

    .line 185
    move-object v5, p5

    .line 186
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 187
    goto :goto_3

    .line 190
    :cond_8
    iget-object p3, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 191
    check-cast p3, Ljava/util/ArrayList;

    .line 193
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 195
    move-result-object p3

    .line 198
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    move-result v0

    .line 202
    if-eqz v0, :cond_9

    .line 203
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    move-result-object v0

    .line 208
    move-object v1, v0

    .line 209
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 210
    const/4 v3, 0x1

    .line 212
    move-object v0, p0

    .line 213
    move v2, p2

    .line 214
    move-object v4, p4

    .line 215
    move-object v5, p5

    .line 216
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 217
    goto :goto_4

    .line 220
    :cond_9
    if-ne p2, v7, :cond_a

    .line 221
    instance-of p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 223
    if-eqz p3, :cond_a

    .line 225
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 227
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 229
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 231
    check-cast p1, Ljava/util/ArrayList;

    .line 233
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 235
    move-result-object p1

    .line 238
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    move-result p3

    .line 242
    if-eqz p3, :cond_a

    .line 243
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    move-result-object p3

    .line 248
    move-object v1, p3

    .line 249
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 250
    const/4 v3, 0x2

    .line 252
    move-object v0, p0

    .line 253
    move v2, p2

    .line 254
    move-object v4, p4

    .line 255
    move-object v5, p5

    .line 256
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 257
    goto :goto_5

    .line 260
    :cond_a
    :goto_6
    return-void
    .line 261
.end method

.method public final basicMeasureWidgets(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v1

    .line 9
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v2

    .line 13
    if-eqz v2, :cond_26

    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 22
    const/4 v4, 0x0

    .line 24
    aget-object v5, v3, v4

    .line 25
    const/4 v9, 0x1

    .line 27
    aget-object v3, v3, v9

    .line 28
    iget v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 30
    const/16 v7, 0x8

    .line 32
    if-ne v6, v7, :cond_0

    .line 34
    iput-boolean v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    iget v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 39
    const/high16 v10, 0x3f800000    # 1.0f

    .line 41
    cmpg-float v7, v6, v10

    .line 43
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 45
    const/4 v11, 0x2

    .line 47
    if-gez v7, :cond_1

    .line 48
    if-ne v5, v8, :cond_1

    .line 50
    iput v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 52
    :cond_1
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 54
    cmpg-float v12, v7, v10

    .line 56
    if-gez v12, :cond_2

    .line 58
    if-ne v3, v8, :cond_2

    .line 60
    iput v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 62
    :cond_2
    iget v12, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 64
    const/4 v13, 0x0

    .line 66
    cmpl-float v12, v12, v13

    .line 67
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 69
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 71
    const/4 v15, 0x3

    .line 73
    if-lez v12, :cond_8

    .line 74
    if-ne v5, v8, :cond_4

    .line 76
    if-eq v3, v13, :cond_3

    .line 78
    if-ne v3, v14, :cond_4

    .line 80
    :cond_3
    iput v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 82
    goto :goto_1

    .line 84
    :cond_4
    if-ne v3, v8, :cond_6

    .line 85
    if-eq v5, v13, :cond_5

    .line 87
    if-ne v5, v14, :cond_6

    .line 89
    :cond_5
    iput v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 91
    goto :goto_1

    .line 93
    :cond_6
    if-ne v5, v8, :cond_8

    .line 94
    if-ne v3, v8, :cond_8

    .line 96
    iget v12, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 98
    if-nez v12, :cond_7

    .line 100
    iput v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 102
    :cond_7
    iget v12, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 104
    if-nez v12, :cond_8

    .line 106
    iput v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 108
    :cond_8
    :goto_1
    iget-object v12, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 110
    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 112
    if-ne v5, v8, :cond_a

    .line 114
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 116
    if-ne v4, v9, :cond_a

    .line 118
    iget-object v4, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 120
    if-eqz v4, :cond_9

    .line 122
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 124
    if-nez v4, :cond_a

    .line 126
    :cond_9
    move-object v5, v13

    .line 128
    :cond_a
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 129
    iget-object v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 131
    if-ne v3, v8, :cond_c

    .line 133
    iget v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 135
    if-ne v15, v9, :cond_c

    .line 137
    iget-object v15, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 139
    if-eqz v15, :cond_b

    .line 141
    iget-object v15, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 143
    if-nez v15, :cond_c

    .line 145
    :cond_b
    move-object v15, v13

    .line 147
    goto :goto_2

    .line 148
    :cond_c
    move-object v15, v3

    .line 149
    :goto_2
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 150
    iput-object v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 152
    iget v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 154
    iput v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 156
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 158
    iput-object v15, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 160
    move-object/from16 v16, v1

    .line 162
    iget v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 164
    iput v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 166
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 168
    if-eq v5, v3, :cond_d

    .line 170
    if-eq v5, v14, :cond_d

    .line 172
    if-ne v5, v13, :cond_e

    .line 174
    :cond_d
    if-eq v15, v3, :cond_22

    .line 176
    if-eq v15, v14, :cond_22

    .line 178
    if-ne v15, v13, :cond_e

    .line 180
    goto/16 :goto_4

    .line 182
    :cond_e
    const/high16 v10, 0x3f000000    # 0.5f

    .line 184
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 186
    if-ne v5, v8, :cond_16

    .line 188
    if-eq v15, v13, :cond_f

    .line 190
    if-ne v15, v14, :cond_16

    .line 192
    :cond_f
    const/4 v11, 0x3

    .line 194
    if-ne v9, v11, :cond_11

    .line 195
    if-ne v15, v13, :cond_10

    .line 197
    const/4 v6, 0x0

    .line 199
    const/4 v8, 0x0

    .line 200
    move-object/from16 v3, p0

    .line 201
    move-object v4, v2

    .line 203
    move-object v5, v13

    .line 204
    move-object v7, v13

    .line 205
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 206
    :cond_10
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 209
    move-result v8

    .line 212
    int-to-float v1, v8

    .line 213
    iget v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 214
    mul-float/2addr v1, v3

    .line 216
    add-float/2addr v1, v10

    .line 217
    float-to-int v6, v1

    .line 218
    move-object/from16 v3, p0

    .line 219
    move-object v4, v2

    .line 221
    move-object v5, v14

    .line 222
    move-object v7, v14

    .line 223
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 224
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 227
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 229
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 231
    move-result v3

    .line 234
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 235
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 238
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 240
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 242
    move-result v3

    .line 245
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 246
    const/4 v11, 0x1

    .line 249
    iput-boolean v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 250
    goto/16 :goto_7

    .line 252
    :cond_11
    const/4 v11, 0x1

    .line 254
    if-ne v9, v11, :cond_12

    .line 255
    const/4 v6, 0x0

    .line 257
    const/4 v8, 0x0

    .line 258
    move-object/from16 v3, p0

    .line 259
    move-object v4, v2

    .line 261
    move-object v5, v13

    .line 262
    move-object v7, v15

    .line 263
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 264
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 267
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 269
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 271
    move-result v2

    .line 274
    iput v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 275
    goto/16 :goto_7

    .line 277
    :cond_12
    const/4 v11, 0x2

    .line 279
    if-ne v9, v11, :cond_14

    .line 280
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 282
    const/4 v12, 0x0

    .line 284
    aget-object v11, v11, v12

    .line 285
    if-eq v11, v14, :cond_13

    .line 287
    if-ne v11, v3, :cond_16

    .line 289
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 291
    move-result v1

    .line 294
    int-to-float v1, v1

    .line 295
    mul-float/2addr v6, v1

    .line 296
    add-float/2addr v6, v10

    .line 297
    float-to-int v6, v6

    .line 298
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 299
    move-result v8

    .line 302
    move-object/from16 v3, p0

    .line 303
    move-object v4, v2

    .line 305
    move-object v5, v14

    .line 306
    move-object v7, v15

    .line 307
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 308
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 311
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 313
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 315
    move-result v3

    .line 318
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 319
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 322
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 324
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 326
    move-result v3

    .line 329
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 330
    const/4 v11, 0x1

    .line 333
    iput-boolean v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 334
    goto/16 :goto_7

    .line 336
    :cond_14
    const/4 v11, 0x1

    .line 338
    const/4 v12, 0x0

    .line 339
    aget-object v10, v4, v12

    .line 340
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 342
    if-eqz v10, :cond_15

    .line 344
    aget-object v10, v4, v11

    .line 346
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 348
    if-nez v10, :cond_16

    .line 350
    :cond_15
    const/4 v6, 0x0

    .line 352
    const/4 v8, 0x0

    .line 353
    move-object/from16 v3, p0

    .line 354
    move-object v4, v2

    .line 356
    move-object v5, v13

    .line 357
    move-object v7, v15

    .line 358
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 359
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 362
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 364
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 366
    move-result v3

    .line 369
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 370
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 373
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 375
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 377
    move-result v3

    .line 380
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 381
    const/4 v1, 0x1

    .line 384
    iput-boolean v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 385
    goto/16 :goto_7

    .line 387
    :cond_16
    if-ne v15, v8, :cond_1f

    .line 389
    if-eq v5, v13, :cond_17

    .line 391
    if-ne v5, v14, :cond_1f

    .line 393
    :cond_17
    const/4 v10, 0x3

    .line 395
    if-ne v1, v10, :cond_1a

    .line 396
    if-ne v5, v13, :cond_18

    .line 398
    const/4 v6, 0x0

    .line 400
    const/4 v8, 0x0

    .line 401
    move-object/from16 v3, p0

    .line 402
    move-object v4, v2

    .line 404
    move-object v5, v13

    .line 405
    move-object v7, v13

    .line 406
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 407
    :cond_18
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 410
    move-result v6

    .line 413
    iget v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 414
    iget v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 416
    const/4 v4, -0x1

    .line 418
    if-ne v3, v4, :cond_19

    .line 419
    const/high16 v3, 0x3f800000    # 1.0f

    .line 421
    div-float v1, v3, v1

    .line 423
    :cond_19
    int-to-float v3, v6

    .line 425
    mul-float/2addr v3, v1

    .line 426
    const/high16 v1, 0x3f000000    # 0.5f

    .line 427
    add-float/2addr v3, v1

    .line 429
    float-to-int v8, v3

    .line 430
    move-object/from16 v3, p0

    .line 431
    move-object v4, v2

    .line 433
    move-object v5, v14

    .line 434
    move-object v7, v14

    .line 435
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 436
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 439
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 441
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 443
    move-result v3

    .line 446
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 447
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 450
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 452
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 454
    move-result v3

    .line 457
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 458
    const/4 v10, 0x1

    .line 461
    iput-boolean v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 462
    goto/16 :goto_7

    .line 464
    :cond_1a
    const/4 v10, 0x1

    .line 466
    if-ne v1, v10, :cond_1b

    .line 467
    const/4 v6, 0x0

    .line 469
    const/4 v8, 0x0

    .line 470
    move-object/from16 v3, p0

    .line 471
    move-object v4, v2

    .line 473
    move-object v7, v13

    .line 474
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 475
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 478
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 480
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 482
    move-result v2

    .line 485
    iput v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 486
    goto/16 :goto_7

    .line 488
    :cond_1b
    const/4 v10, 0x2

    .line 490
    if-ne v1, v10, :cond_1d

    .line 491
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 493
    const/4 v10, 0x1

    .line 495
    aget-object v4, v4, v10

    .line 496
    if-eq v4, v14, :cond_1c

    .line 498
    if-ne v4, v3, :cond_1f

    .line 500
    :cond_1c
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 502
    move-result v6

    .line 505
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 506
    move-result v1

    .line 509
    int-to-float v1, v1

    .line 510
    mul-float/2addr v7, v1

    .line 511
    const/high16 v1, 0x3f000000    # 0.5f

    .line 512
    add-float/2addr v7, v1

    .line 514
    float-to-int v8, v7

    .line 515
    move-object/from16 v3, p0

    .line 516
    move-object v4, v2

    .line 518
    move-object v7, v14

    .line 519
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 520
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 523
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 525
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 527
    move-result v3

    .line 530
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 531
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 534
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 536
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 538
    move-result v3

    .line 541
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 542
    const/4 v1, 0x1

    .line 545
    iput-boolean v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 546
    goto/16 :goto_7

    .line 548
    :cond_1d
    move v3, v10

    .line 550
    aget-object v10, v4, v3

    .line 551
    iget-object v3, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 553
    if-eqz v3, :cond_1e

    .line 555
    const/4 v3, 0x3

    .line 557
    aget-object v3, v4, v3

    .line 558
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 560
    if-nez v3, :cond_1f

    .line 562
    :cond_1e
    const/4 v6, 0x0

    .line 564
    const/4 v8, 0x0

    .line 565
    move-object/from16 v3, p0

    .line 566
    move-object v4, v2

    .line 568
    move-object v5, v13

    .line 569
    move-object v7, v15

    .line 570
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 571
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 574
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 576
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 578
    move-result v3

    .line 581
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 582
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 585
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 587
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 589
    move-result v3

    .line 592
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 593
    const/4 v3, 0x1

    .line 596
    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 597
    goto/16 :goto_7

    .line 599
    :cond_1f
    const/4 v3, 0x1

    .line 601
    if-ne v5, v8, :cond_25

    .line 602
    if-ne v15, v8, :cond_25

    .line 604
    if-eq v9, v3, :cond_21

    .line 606
    if-ne v1, v3, :cond_20

    .line 608
    goto :goto_3

    .line 610
    :cond_20
    const/4 v4, 0x2

    .line 611
    if-ne v1, v4, :cond_25

    .line 612
    if-ne v9, v4, :cond_25

    .line 614
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 616
    const/4 v4, 0x0

    .line 618
    aget-object v4, v1, v4

    .line 619
    if-ne v4, v14, :cond_25

    .line 621
    aget-object v1, v1, v3

    .line 623
    if-ne v1, v14, :cond_25

    .line 625
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 627
    move-result v1

    .line 630
    int-to-float v1, v1

    .line 631
    mul-float/2addr v6, v1

    .line 632
    const/high16 v1, 0x3f000000    # 0.5f

    .line 633
    add-float/2addr v6, v1

    .line 635
    float-to-int v6, v6

    .line 636
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 637
    move-result v3

    .line 640
    int-to-float v3, v3

    .line 641
    mul-float/2addr v7, v3

    .line 642
    add-float/2addr v7, v1

    .line 643
    float-to-int v8, v7

    .line 644
    move-object/from16 v3, p0

    .line 645
    move-object v4, v2

    .line 647
    move-object v5, v14

    .line 648
    move-object v7, v14

    .line 649
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 650
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 653
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 655
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 657
    move-result v3

    .line 660
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 661
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 664
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 666
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 668
    move-result v3

    .line 671
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 672
    const/4 v1, 0x1

    .line 675
    iput-boolean v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 676
    goto/16 :goto_7

    .line 678
    :cond_21
    :goto_3
    const/4 v6, 0x0

    .line 680
    const/4 v8, 0x0

    .line 681
    move-object/from16 v3, p0

    .line 682
    move-object v4, v2

    .line 684
    move-object v5, v13

    .line 685
    move-object v7, v13

    .line 686
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 687
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 690
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 692
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 694
    move-result v3

    .line 697
    iput v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 698
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 700
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 702
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 704
    move-result v2

    .line 707
    iput v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 708
    goto :goto_7

    .line 710
    :cond_22
    :goto_4
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 711
    move-result v1

    .line 714
    if-ne v5, v3, :cond_23

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 717
    move-result v1

    .line 720
    iget v5, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 721
    sub-int/2addr v1, v5

    .line 723
    iget v5, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 724
    sub-int/2addr v1, v5

    .line 726
    move v6, v1

    .line 727
    move-object v5, v14

    .line 728
    goto :goto_5

    .line 729
    :cond_23
    move v6, v1

    .line 730
    :goto_5
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 731
    move-result v1

    .line 734
    if-ne v15, v3, :cond_24

    .line 735
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 737
    move-result v1

    .line 740
    iget v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 741
    sub-int/2addr v1, v3

    .line 743
    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 744
    sub-int/2addr v1, v3

    .line 746
    move v8, v1

    .line 747
    move-object v7, v14

    .line 748
    goto :goto_6

    .line 749
    :cond_24
    move v8, v1

    .line 750
    move-object v7, v15

    .line 751
    :goto_6
    move-object/from16 v3, p0

    .line 752
    move-object v4, v2

    .line 754
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 755
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 758
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 760
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 762
    move-result v3

    .line 765
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 766
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 769
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 771
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 773
    move-result v3

    .line 776
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 777
    const/4 v1, 0x1

    .line 780
    iput-boolean v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 781
    :cond_25
    :goto_7
    move-object/from16 v1, v16

    .line 783
    goto/16 :goto_0

    .line 785
    :cond_26
    return-void
    .line 787
.end method

.method public final buildGraph()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 7
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 9
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->clear()V

    .line 11
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 14
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->clear()V

    .line 16
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v4

    .line 39
    const/4 v5, 0x1

    .line 40
    const/4 v6, 0x0

    .line 41
    if-eqz v4, :cond_8

    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 47
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 48
    instance-of v7, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 50
    if-eqz v7, :cond_1

    .line 52
    new-instance v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;

    .line 54
    invoke-direct {v5, v4}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 56
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 63
    move-result v7

    .line 66
    if-eqz v7, :cond_4

    .line 67
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 69
    if-nez v7, :cond_2

    .line 71
    new-instance v7, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 73
    invoke-direct {v7, v6, v4}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;-><init>(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 75
    iput-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 78
    :cond_2
    if-nez v3, :cond_3

    .line 80
    new-instance v3, Ljava/util/HashSet;

    .line 82
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 84
    :cond_3
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 87
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    goto :goto_1

    .line 92
    :cond_4
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 93
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :goto_1
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    .line 98
    move-result v6

    .line 101
    if-eqz v6, :cond_7

    .line 102
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 104
    if-nez v6, :cond_5

    .line 106
    new-instance v6, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 108
    invoke-direct {v6, v5, v4}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;-><init>(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 110
    iput-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 113
    :cond_5
    if-nez v3, :cond_6

    .line 115
    new-instance v3, Ljava/util/HashSet;

    .line 117
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 119
    :cond_6
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 122
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    goto :goto_2

    .line 127
    :cond_7
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 128
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_2
    instance-of v5, v4, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 133
    if-eqz v5, :cond_0

    .line 135
    new-instance v5, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    .line 137
    invoke-direct {v5, v4}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 139
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    goto :goto_0

    .line 145
    :cond_8
    if-eqz v3, :cond_9

    .line 146
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 148
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 151
    move-result-object v2

    .line 154
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    move-result v3

    .line 158
    if-eqz v3, :cond_a

    .line 159
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    move-result-object v3

    .line 164
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 165
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->clear()V

    .line 167
    goto :goto_3

    .line 170
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 171
    move-result-object v0

    .line 174
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    move-result v2

    .line 178
    if-eqz v2, :cond_c

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    move-result-object v2

    .line 184
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 185
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 187
    if-ne v3, v1, :cond_b

    .line 189
    goto :goto_4

    .line 191
    :cond_b
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->apply()V

    .line 192
    goto :goto_4

    .line 195
    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 198
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mWidgetcontainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 201
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 203
    invoke-virtual {p0, v2, v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->findGroup(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 205
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 208
    invoke-virtual {p0, v1, v5, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->findGroup(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 210
    iput-boolean v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 213
    return-void
    .line 215
.end method

.method public final computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    move-object/from16 v1, p0

    .line 4
    move/from16 v2, p2

    .line 6
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    const-wide/16 v5, 0x0

    .line 15
    move-wide v7, v5

    .line 17
    :goto_0
    if-ge v4, v3, :cond_d

    .line 18
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v9

    .line 23
    check-cast v9, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 24
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->mFirstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 26
    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 28
    if-eqz v10, :cond_0

    .line 30
    move-object v10, v9

    .line 32
    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 33
    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 35
    if-eq v10, v2, :cond_2

    .line 37
    goto :goto_1

    .line 39
    :cond_0
    if-nez v2, :cond_1

    .line 40
    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 42
    if-nez v10, :cond_2

    .line 44
    goto :goto_1

    .line 46
    :cond_1
    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 47
    if-nez v10, :cond_2

    .line 49
    :goto_1
    move-object/from16 p0, v1

    .line 51
    move/from16 v16, v3

    .line 53
    move/from16 v17, v4

    .line 55
    goto/16 :goto_6

    .line 57
    :cond_2
    if-nez v2, :cond_3

    .line 59
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 61
    goto :goto_2

    .line 63
    :cond_3
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 64
    :goto_2
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 66
    if-nez v2, :cond_4

    .line 68
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 70
    goto :goto_3

    .line 72
    :cond_4
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 73
    :goto_3
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 75
    iget-object v12, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 77
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 79
    check-cast v12, Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 83
    move-result v10

    .line 86
    iget-object v12, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 87
    iget-object v13, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 89
    check-cast v13, Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 93
    move-result v11

    .line 96
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    .line 97
    move-result-wide v13

    .line 100
    iget-object v15, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 101
    if-eqz v10, :cond_a

    .line 103
    if-eqz v11, :cond_a

    .line 105
    invoke-static {v15, v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 107
    move-result-wide v10

    .line 110
    invoke-static {v12, v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 111
    move-result-wide v7

    .line 114
    sub-long/2addr v10, v13

    .line 115
    iget v0, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 116
    move-object/from16 p0, v1

    .line 118
    neg-int v1, v0

    .line 120
    move/from16 v16, v3

    .line 121
    move/from16 v17, v4

    .line 123
    int-to-long v3, v1

    .line 125
    cmp-long v1, v10, v3

    .line 126
    if-ltz v1, :cond_5

    .line 128
    int-to-long v0, v0

    .line 130
    add-long/2addr v10, v0

    .line 131
    :cond_5
    neg-long v0, v7

    .line 132
    sub-long/2addr v0, v13

    .line 133
    iget v3, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 134
    int-to-long v3, v3

    .line 136
    sub-long/2addr v0, v3

    .line 137
    cmp-long v7, v0, v3

    .line 138
    if-ltz v7, :cond_6

    .line 140
    sub-long/2addr v0, v3

    .line 142
    :cond_6
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 143
    if-nez v2, :cond_7

    .line 145
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 147
    goto :goto_4

    .line 149
    :cond_7
    const/4 v4, 0x1

    .line 150
    if-ne v2, v4, :cond_8

    .line 151
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 153
    goto :goto_4

    .line 155
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    const/high16 v3, -0x40800000    # -1.0f

    .line 159
    :goto_4
    const/4 v4, 0x0

    .line 161
    cmpl-float v4, v3, v4

    .line 162
    const/high16 v7, 0x3f800000    # 1.0f

    .line 164
    if-lez v4, :cond_9

    .line 166
    long-to-float v0, v0

    .line 168
    div-float/2addr v0, v3

    .line 169
    long-to-float v1, v10

    .line 170
    sub-float v4, v7, v3

    .line 171
    div-float/2addr v1, v4

    .line 173
    add-float/2addr v1, v0

    .line 174
    float-to-long v0, v1

    .line 175
    goto :goto_5

    .line 176
    :cond_9
    const-wide/16 v0, 0x0

    .line 177
    :goto_5
    long-to-float v0, v0

    .line 179
    mul-float v1, v0, v3

    .line 180
    const/high16 v4, 0x3f000000    # 0.5f

    .line 182
    add-float/2addr v1, v4

    .line 184
    float-to-long v8, v1

    .line 185
    invoke-static {v7, v3, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 186
    move-result v0

    .line 189
    float-to-long v0, v0

    .line 190
    add-long/2addr v8, v13

    .line 191
    add-long/2addr v8, v0

    .line 192
    iget v0, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 193
    int-to-long v0, v0

    .line 195
    add-long/2addr v0, v8

    .line 196
    iget v3, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 197
    int-to-long v3, v3

    .line 199
    sub-long v7, v0, v3

    .line 200
    goto :goto_6

    .line 202
    :cond_a
    move-object/from16 p0, v1

    .line 203
    move/from16 v16, v3

    .line 205
    move/from16 v17, v4

    .line 207
    if-eqz v10, :cond_b

    .line 209
    iget v0, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 211
    int-to-long v0, v0

    .line 213
    invoke-static {v15, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 214
    move-result-wide v0

    .line 217
    iget v3, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 218
    int-to-long v3, v3

    .line 220
    add-long/2addr v3, v13

    .line 221
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 222
    move-result-wide v7

    .line 225
    goto :goto_6

    .line 226
    :cond_b
    if-eqz v11, :cond_c

    .line 227
    iget v0, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 229
    int-to-long v0, v0

    .line 231
    invoke-static {v12, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 232
    move-result-wide v0

    .line 235
    iget v3, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 236
    neg-int v3, v3

    .line 238
    int-to-long v3, v3

    .line 239
    add-long/2addr v3, v13

    .line 240
    neg-long v0, v0

    .line 241
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 242
    move-result-wide v7

    .line 245
    goto :goto_6

    .line 246
    :cond_c
    iget v0, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 247
    int-to-long v0, v0

    .line 249
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    .line 250
    move-result-wide v3

    .line 253
    add-long/2addr v3, v0

    .line 254
    iget v0, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 255
    int-to-long v0, v0

    .line 257
    sub-long v7, v3, v0

    .line 258
    :goto_6
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 260
    move-result-wide v5

    .line 263
    add-int/lit8 v4, v17, 0x1

    .line 264
    const-wide/16 v7, 0x0

    .line 266
    move-object/from16 v1, p0

    .line 268
    move-object/from16 v0, p1

    .line 270
    move/from16 v3, v16

    .line 272
    goto/16 :goto_0

    .line 274
    :cond_d
    long-to-int v0, v5

    .line 276
    return v0
    .line 277
.end method

.method public final findGroup(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V
    .locals 9

    .line 1
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 2
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 16
    if-eqz v1, :cond_2

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 24
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 26
    if-eqz v2, :cond_1

    .line 28
    move-object v4, v1

    .line 30
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 31
    const/4 v6, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    move-object v3, p0

    .line 35
    move v5, p2

    .line 36
    move-object v7, p3

    .line 37
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 42
    if-eqz v2, :cond_0

    .line 44
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 46
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 48
    const/4 v5, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    move-object v2, p0

    .line 52
    move v4, p2

    .line 53
    move-object v6, p3

    .line 54
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 55
    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 59
    check-cast v0, Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v0

    .line 66
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v1

    .line 70
    if-eqz v1, :cond_5

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 76
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 77
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 79
    if-eqz v2, :cond_4

    .line 81
    move-object v4, v1

    .line 83
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 84
    const/4 v6, 0x1

    .line 86
    const/4 v8, 0x0

    .line 87
    move-object v3, p0

    .line 88
    move v5, p2

    .line 89
    move-object v7, p3

    .line 90
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 91
    goto :goto_1

    .line 94
    :cond_4
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 95
    if-eqz v2, :cond_3

    .line 97
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 99
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 101
    const/4 v5, 0x1

    .line 103
    const/4 v7, 0x0

    .line 104
    move-object v2, p0

    .line 105
    move v4, p2

    .line 106
    move-object v6, p3

    .line 107
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 108
    goto :goto_1

    .line 111
    :cond_5
    const/4 v0, 0x1

    .line 112
    if-ne p2, v0, :cond_7

    .line 113
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 115
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 117
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 119
    check-cast p1, Ljava/util/ArrayList;

    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 123
    move-result-object p1

    .line 126
    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    move-result v0

    .line 130
    if-eqz v0, :cond_7

    .line 131
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    move-result-object v0

    .line 136
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 137
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 139
    if-eqz v1, :cond_6

    .line 141
    move-object v3, v0

    .line 143
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 144
    const/4 v5, 0x2

    .line 146
    const/4 v7, 0x0

    .line 147
    move-object v2, p0

    .line 148
    move v4, p2

    .line 149
    move-object v6, p3

    .line 150
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 151
    goto :goto_2

    .line 154
    :cond_7
    return-void
    .line 155
.end method

.method public final measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 2
    iput-object p2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 4
    iput-object p4, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    iput p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 8
    iput p5, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 10
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 14
    iget p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 17
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 19
    iget p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 22
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 24
    iget-boolean p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 27
    iput-boolean p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHasBaseline:Z

    .line 29
    iget p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 31
    iput p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 33
    if-lez p0, :cond_0

    .line 35
    const/4 p0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    :goto_0
    iput-boolean p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHasBaseline:Z

    .line 40
    return-void
    .line 42
.end method

.method public final measureWidgets()V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mWidgetcontainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 2
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_b

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 22
    if-eqz v2, :cond_1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 27
    const/4 v3, 0x0

    .line 29
    aget-object v8, v2, v3

    .line 30
    const/4 v9, 0x1

    .line 32
    aget-object v10, v2, v9

    .line 33
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 35
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 37
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 39
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 41
    if-eq v8, v6, :cond_3

    .line 43
    if-ne v8, v11, :cond_2

    .line 45
    if-ne v2, v9, :cond_2

    .line 47
    goto :goto_1

    .line 49
    :cond_2
    move v2, v3

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    :goto_1
    move v2, v9

    .line 52
    :goto_2
    if-eq v10, v6, :cond_4

    .line 53
    if-ne v10, v11, :cond_5

    .line 55
    if-ne v4, v9, :cond_5

    .line 57
    :cond_4
    move v3, v9

    .line 59
    :cond_5
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 60
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 62
    iget-boolean v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 64
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 66
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 68
    iget-boolean v12, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 70
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 72
    if-eqz v5, :cond_6

    .line 74
    if-eqz v12, :cond_6

    .line 76
    iget v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 78
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 80
    move-object v2, p0

    .line 82
    move-object v3, v1

    .line 83
    move-object v4, v13

    .line 84
    move-object v6, v13

    .line 85
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 86
    iput-boolean v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 89
    goto :goto_3

    .line 91
    :cond_6
    if-eqz v5, :cond_8

    .line 92
    if-eqz v3, :cond_8

    .line 94
    iget v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 96
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 98
    move-object v2, p0

    .line 100
    move-object v3, v1

    .line 101
    move-object v4, v13

    .line 102
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 103
    if-ne v10, v11, :cond_7

    .line 106
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 108
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 110
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 112
    move-result v3

    .line 115
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 116
    goto :goto_3

    .line 118
    :cond_7
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 119
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 121
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 123
    move-result v3

    .line 126
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 127
    iput-boolean v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 130
    goto :goto_3

    .line 132
    :cond_8
    if-eqz v12, :cond_a

    .line 133
    if-eqz v2, :cond_a

    .line 135
    iget v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 137
    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 139
    move-object v2, p0

    .line 141
    move-object v3, v1

    .line 142
    move-object v4, v6

    .line 143
    move-object v6, v13

    .line 144
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 145
    if-ne v8, v11, :cond_9

    .line 148
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 150
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 152
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 154
    move-result v3

    .line 157
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 158
    goto :goto_3

    .line 160
    :cond_9
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 161
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 163
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 165
    move-result v3

    .line 168
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 169
    iput-boolean v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 172
    :cond_a
    :goto_3
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 174
    if-eqz v2, :cond_0

    .line 176
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 178
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->mBaselineDimension:Landroidx/constraintlayout/core/widgets/analyzer/BaselineDimensionDependency;

    .line 180
    if-eqz v2, :cond_0

    .line 182
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 184
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 186
    goto/16 :goto_0

    .line 189
    :cond_b
    return-void
    .line 191
.end method
