.class public final Landroidx/constraintlayout/core/LinearSystem;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static USE_DEPENDENCY_ORDERING:Z = false

.field public static sPoolSize:I = 0x3e8


# instance fields
.field public hasSimpleDefinition:Z

.field public mAlreadyTestedCandidates:[Z

.field public final mCache:Landroidx/constraintlayout/core/Cache;

.field public final mGoal:Landroidx/constraintlayout/core/PriorityGoalRow;

.field public mMaxColumns:I

.field public mMaxRows:I

.field public mNumColumns:I

.field public mNumRows:I

.field public mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

.field public mPoolVariablesCount:I

.field public mRows:[Landroidx/constraintlayout/core/ArrayRow;

.field public mTableSize:I

.field public mTempGoal:Landroidx/constraintlayout/core/ArrayRow;

.field public mVariablesID:I

.field public newgraphOptimizer:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 6
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 8
    const/16 v1, 0x20

    .line 10
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mTableSize:I

    .line 12
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 14
    const/4 v2, 0x0

    .line 16
    iput-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 17
    iput-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    .line 19
    new-array v3, v1, [Z

    .line 21
    iput-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 23
    const/4 v3, 0x1

    .line 25
    iput v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 26
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 28
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    .line 30
    sget v3, Landroidx/constraintlayout/core/LinearSystem;->sPoolSize:I

    .line 32
    new-array v3, v3, [Landroidx/constraintlayout/core/SolverVariable;

    .line 34
    iput-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 36
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 38
    new-array v1, v1, [Landroidx/constraintlayout/core/ArrayRow;

    .line 40
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 42
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 44
    if-ge v0, v1, :cond_1

    .line 46
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 48
    aget-object v3, v1, v0

    .line 50
    if-eqz v3, :cond_0

    .line 52
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 54
    iget-object v4, v4, Landroidx/constraintlayout/core/Cache;->mArrayRowPool:Landroidx/constraintlayout/core/Pools$SimplePool;

    .line 56
    iget v5, v4, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    .line 58
    iget-object v6, v4, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    .line 60
    array-length v7, v6

    .line 62
    if-ge v5, v7, :cond_0

    .line 63
    aput-object v3, v6, v5

    .line 65
    add-int/lit8 v5, v5, 0x1

    .line 67
    iput v5, v4, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    .line 69
    :cond_0
    aput-object v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Landroidx/constraintlayout/core/Cache;

    .line 76
    invoke-direct {v0}, Landroidx/constraintlayout/core/Cache;-><init>()V

    .line 78
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 81
    new-instance v1, Landroidx/constraintlayout/core/PriorityGoalRow;

    .line 83
    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/PriorityGoalRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    .line 85
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/PriorityGoalRow;

    .line 88
    new-instance v1, Landroidx/constraintlayout/core/ArrayRow;

    .line 90
    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    .line 92
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/ArrayRow;

    .line 95
    return-void
    .line 97
.end method

.method public static getObjectVariableValue(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget p0, p0, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    .line 6
    const/high16 v0, 0x3f000000    # 0.5f

    .line 8
    add-float/2addr p0, v0

    .line 10
    float-to-int p0, p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
    .line 14
.end method


# virtual methods
.method public final acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 2
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->mSolverVariablePool:Landroidx/constraintlayout/core/Pools$SimplePool;

    .line 4
    iget v1, v0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    .line 6
    const/4 v2, 0x0

    .line 8
    if-lez v1, :cond_0

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 11
    iget-object v3, v0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    .line 13
    aget-object v4, v3, v1

    .line 15
    aput-object v2, v3, v1

    .line 17
    iput v1, v0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    .line 19
    move-object v2, v4

    .line 21
    :cond_0
    check-cast v2, Landroidx/constraintlayout/core/SolverVariable;

    .line 22
    if-nez v2, :cond_1

    .line 24
    new-instance v2, Landroidx/constraintlayout/core/SolverVariable;

    .line 26
    invoke-direct {v2, p1}, Landroidx/constraintlayout/core/SolverVariable;-><init>(Landroidx/constraintlayout/core/SolverVariable$Type;)V

    .line 28
    iput-object p1, v2, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v2}, Landroidx/constraintlayout/core/SolverVariable;->reset()V

    .line 34
    iput-object p1, v2, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 37
    :goto_0
    iget p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 39
    sget v0, Landroidx/constraintlayout/core/LinearSystem;->sPoolSize:I

    .line 41
    if-lt p1, v0, :cond_2

    .line 43
    mul-int/lit8 v0, v0, 0x2

    .line 45
    sput v0, Landroidx/constraintlayout/core/LinearSystem;->sPoolSize:I

    .line 47
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 49
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 54
    check-cast p1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 55
    iput-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 57
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 59
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 61
    add-int/lit8 v1, v0, 0x1

    .line 63
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 65
    aput-object v2, p1, v0

    .line 67
    return-object v2
    .line 69
.end method

.method public final addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 2
    move-result-object v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    if-ne p2, p5, :cond_0

    .line 8
    iget-object p3, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 10
    invoke-interface {p3, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 12
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 15
    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 17
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 20
    const/high16 p3, -0x40000000    # -2.0f

    .line 22
    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 24
    goto/16 :goto_0

    .line 27
    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 29
    cmpl-float v2, p4, v2

    .line 31
    const/high16 v3, -0x40800000    # -1.0f

    .line 33
    if-nez v2, :cond_2

    .line 35
    iget-object p4, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 37
    invoke-interface {p4, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 39
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 42
    invoke-interface {p1, p2, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 44
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 47
    invoke-interface {p1, p5, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 49
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 52
    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 54
    if-gtz p3, :cond_1

    .line 57
    if-lez p7, :cond_6

    .line 59
    :cond_1
    neg-int p1, p3

    .line 61
    add-int/2addr p1, p7

    .line 62
    int-to-float p1, p1

    .line 63
    iput p1, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    const/4 v2, 0x0

    .line 67
    cmpg-float v2, p4, v2

    .line 68
    if-gtz v2, :cond_3

    .line 70
    iget-object p4, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 72
    invoke-interface {p4, p1, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 74
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 77
    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 79
    int-to-float p1, p3

    .line 82
    iput p1, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 83
    goto :goto_0

    .line 85
    :cond_3
    cmpl-float v2, p4, v1

    .line 86
    if-ltz v2, :cond_4

    .line 88
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 90
    invoke-interface {p1, p6, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 92
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 95
    invoke-interface {p1, p5, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 97
    neg-int p1, p7

    .line 100
    int-to-float p1, p1

    .line 101
    iput p1, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 102
    goto :goto_0

    .line 104
    :cond_4
    iget-object v2, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 105
    sub-float v4, v1, p4

    .line 107
    mul-float v5, v4, v1

    .line 109
    invoke-interface {v2, p1, v5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 111
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 114
    mul-float v2, v4, v3

    .line 116
    invoke-interface {p1, p2, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 118
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 121
    mul-float/2addr v3, p4

    .line 123
    invoke-interface {p1, p5, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 124
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 127
    mul-float/2addr v1, p4

    .line 129
    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 130
    if-gtz p3, :cond_5

    .line 133
    if-lez p7, :cond_6

    .line 135
    :cond_5
    neg-int p1, p3

    .line 137
    int-to-float p1, p1

    .line 138
    mul-float/2addr p1, v4

    .line 139
    int-to-float p2, p7

    .line 140
    mul-float/2addr p2, p4

    .line 141
    add-float/2addr p2, p1

    .line 142
    iput p2, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 143
    :cond_6
    :goto_0
    const/16 p1, 0x8

    .line 145
    if-eq p8, p1, :cond_7

    .line 147
    invoke-virtual {v0, p0, p8}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/LinearSystem;I)V

    .line 149
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 152
    return-void
    .line 155
.end method

.method public final addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget v2, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 6
    const/4 v3, 0x1

    .line 8
    add-int/2addr v2, v3

    .line 9
    iget v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    .line 10
    if-ge v2, v4, :cond_0

    .line 12
    iget v2, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 14
    add-int/2addr v2, v3

    .line 16
    iget v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 17
    if-lt v2, v4, :cond_1

    .line 19
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    .line 21
    :cond_1
    iget-boolean v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    .line 24
    if-nez v2, :cond_24

    .line 26
    iget-object v2, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 28
    array-length v2, v2

    .line 30
    const/4 v5, -0x1

    .line 31
    if-nez v2, :cond_2

    .line 32
    goto :goto_5

    .line 34
    :cond_2
    const/4 v2, 0x0

    .line 35
    :goto_0
    if-nez v2, :cond_8

    .line 36
    iget-object v6, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 38
    invoke-interface {v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    .line 40
    move-result v6

    .line 43
    const/4 v7, 0x0

    .line 44
    :goto_1
    iget-object v8, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariablesToUpdate:Ljava/util/ArrayList;

    .line 45
    if-ge v7, v6, :cond_4

    .line 47
    iget-object v9, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 49
    invoke-interface {v9, v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 51
    move-result-object v9

    .line 54
    iget v10, v9, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    .line 55
    if-ne v10, v5, :cond_3

    .line 57
    iget-boolean v10, v9, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    .line 59
    if-nez v10, :cond_3

    .line 61
    goto :goto_2

    .line 63
    :cond_3
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 67
    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 70
    move-result v6

    .line 73
    if-lez v6, :cond_7

    .line 74
    const/4 v7, 0x0

    .line 76
    :goto_3
    if-ge v7, v6, :cond_6

    .line 77
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v9

    .line 82
    check-cast v9, Landroidx/constraintlayout/core/SolverVariable;

    .line 83
    iget-boolean v10, v9, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    .line 85
    if-eqz v10, :cond_5

    .line 87
    invoke-virtual {v1, v0, v9, v3}, Landroidx/constraintlayout/core/ArrayRow;->updateFromFinalVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V

    .line 89
    goto :goto_4

    .line 92
    :cond_5
    iget-object v10, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 93
    iget v9, v9, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    .line 95
    aget-object v9, v10, v9

    .line 97
    invoke-virtual {v1, v0, v9, v3}, Landroidx/constraintlayout/core/ArrayRow;->updateFromRow(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;Z)V

    .line 99
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 102
    goto :goto_3

    .line 104
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 105
    goto :goto_0

    .line 108
    :cond_7
    move v2, v3

    .line 109
    goto :goto_0

    .line 110
    :cond_8
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 111
    if-eqz v2, :cond_9

    .line 113
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 115
    invoke-interface {v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    .line 117
    move-result v2

    .line 120
    if-nez v2, :cond_9

    .line 121
    iput-boolean v3, v1, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    .line 123
    iput-boolean v3, v0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 125
    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/ArrayRow;->isEmpty()Z

    .line 127
    move-result v2

    .line 130
    if-eqz v2, :cond_a

    .line 131
    return-void

    .line 133
    :cond_a
    iget v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 134
    const/4 v6, 0x0

    .line 136
    cmpg-float v7, v2, v6

    .line 137
    if-gez v7, :cond_b

    .line 139
    const/high16 v7, -0x40800000    # -1.0f

    .line 141
    mul-float/2addr v2, v7

    .line 143
    iput v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 144
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 146
    invoke-interface {v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->invert()V

    .line 148
    :cond_b
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 151
    invoke-interface {v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    .line 153
    move-result v2

    .line 156
    move v11, v6

    .line 157
    move v13, v11

    .line 158
    const/4 v8, 0x0

    .line 159
    const/4 v9, 0x0

    .line 160
    const/4 v10, 0x0

    .line 161
    const/4 v12, 0x0

    .line 162
    const/4 v14, 0x0

    .line 163
    :goto_6
    sget-object v15, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 164
    if-ge v8, v2, :cond_16

    .line 166
    iget-object v4, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 168
    invoke-interface {v4, v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    .line 170
    move-result v4

    .line 173
    iget-object v5, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 174
    invoke-interface {v5, v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 176
    move-result-object v5

    .line 179
    iget-object v7, v5, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 180
    if-ne v7, v15, :cond_10

    .line 182
    if-nez v9, :cond_c

    .line 184
    iget v7, v5, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 186
    if-gt v7, v3, :cond_d

    .line 188
    goto :goto_8

    .line 190
    :cond_c
    cmpl-float v7, v11, v4

    .line 191
    if-lez v7, :cond_e

    .line 193
    iget v7, v5, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 195
    if-gt v7, v3, :cond_d

    .line 197
    goto :goto_8

    .line 199
    :cond_d
    const/4 v12, 0x0

    .line 200
    goto :goto_9

    .line 201
    :cond_e
    if-nez v12, :cond_15

    .line 202
    iget v7, v5, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 204
    if-gt v7, v3, :cond_f

    .line 206
    move v7, v3

    .line 208
    goto :goto_7

    .line 209
    :cond_f
    const/4 v7, 0x0

    .line 210
    :goto_7
    if-eqz v7, :cond_15

    .line 211
    :goto_8
    move v12, v3

    .line 213
    :goto_9
    move v11, v4

    .line 214
    move-object v9, v5

    .line 215
    goto :goto_d

    .line 216
    :cond_10
    if-nez v9, :cond_15

    .line 217
    cmpg-float v7, v4, v6

    .line 219
    if-gez v7, :cond_15

    .line 221
    if-nez v10, :cond_11

    .line 223
    iget v7, v5, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 225
    if-gt v7, v3, :cond_12

    .line 227
    goto :goto_b

    .line 229
    :cond_11
    cmpl-float v7, v13, v4

    .line 230
    if-lez v7, :cond_13

    .line 232
    iget v7, v5, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 234
    if-gt v7, v3, :cond_12

    .line 236
    goto :goto_b

    .line 238
    :cond_12
    const/4 v14, 0x0

    .line 239
    goto :goto_c

    .line 240
    :cond_13
    if-nez v14, :cond_15

    .line 241
    iget v7, v5, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 243
    if-gt v7, v3, :cond_14

    .line 245
    move v7, v3

    .line 247
    goto :goto_a

    .line 248
    :cond_14
    const/4 v7, 0x0

    .line 249
    :goto_a
    if-eqz v7, :cond_15

    .line 250
    :goto_b
    move v14, v3

    .line 252
    :goto_c
    move v13, v4

    .line 253
    move-object v10, v5

    .line 254
    :cond_15
    :goto_d
    add-int/lit8 v8, v8, 0x1

    .line 255
    const/4 v5, -0x1

    .line 257
    goto :goto_6

    .line 258
    :cond_16
    if-eqz v9, :cond_17

    .line 259
    goto :goto_e

    .line 261
    :cond_17
    move-object v9, v10

    .line 262
    :goto_e
    if-nez v9, :cond_18

    .line 263
    move v2, v3

    .line 265
    goto :goto_f

    .line 266
    :cond_18
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 267
    const/4 v2, 0x0

    .line 270
    :goto_f
    iget-object v4, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 271
    invoke-interface {v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    .line 273
    move-result v4

    .line 276
    if-nez v4, :cond_19

    .line 277
    iput-boolean v3, v1, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    .line 279
    :cond_19
    if-eqz v2, :cond_20

    .line 281
    iget v2, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 283
    add-int/2addr v2, v3

    .line 285
    iget v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 286
    if-lt v2, v4, :cond_1a

    .line 288
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    .line 290
    :cond_1a
    sget-object v2, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 293
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    .line 295
    move-result-object v2

    .line 298
    iget v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 299
    add-int/2addr v4, v3

    .line 301
    iput v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 302
    iget v5, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 304
    add-int/2addr v5, v3

    .line 306
    iput v5, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 307
    iput v4, v2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 309
    iget-object v5, v0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 311
    iget-object v7, v5, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 313
    aput-object v2, v7, v4

    .line 315
    iput-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 317
    iget v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 319
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->addRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 321
    iget v7, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 324
    add-int/2addr v4, v3

    .line 326
    if-ne v7, v4, :cond_20

    .line 327
    iget-object v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/ArrayRow;

    .line 329
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    const/4 v7, 0x0

    .line 334
    iput-object v7, v4, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 335
    iget-object v7, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 337
    invoke-interface {v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->clear()V

    .line 339
    const/4 v7, 0x0

    .line 342
    :goto_10
    iget-object v8, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 343
    invoke-interface {v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    .line 345
    move-result v8

    .line 348
    if-ge v7, v8, :cond_1b

    .line 349
    iget-object v8, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 351
    invoke-interface {v8, v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 353
    move-result-object v8

    .line 356
    iget-object v9, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 357
    invoke-interface {v9, v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    .line 359
    move-result v9

    .line 362
    iget-object v10, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 363
    invoke-interface {v10, v8, v9, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->add(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    .line 365
    add-int/lit8 v7, v7, 0x1

    .line 368
    goto :goto_10

    .line 370
    :cond_1b
    iget-object v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/ArrayRow;

    .line 371
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/LinearSystem;->optimize(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 373
    iget v4, v2, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    .line 376
    const/4 v7, -0x1

    .line 378
    if-ne v4, v7, :cond_1f

    .line 379
    iget-object v4, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 381
    if-ne v4, v2, :cond_1c

    .line 383
    const/4 v4, 0x0

    .line 385
    invoke-virtual {v1, v4, v2}, Landroidx/constraintlayout/core/ArrayRow;->pickPivotInVariables([ZLandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;

    .line 386
    move-result-object v2

    .line 389
    if-eqz v2, :cond_1c

    .line 390
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 392
    :cond_1c
    iget-boolean v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    .line 395
    if-nez v2, :cond_1d

    .line 397
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 399
    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    .line 401
    :cond_1d
    iget-object v2, v5, Landroidx/constraintlayout/core/Cache;->mArrayRowPool:Landroidx/constraintlayout/core/Pools$SimplePool;

    .line 404
    iget v4, v2, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    .line 406
    iget-object v5, v2, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    .line 408
    array-length v7, v5

    .line 410
    if-ge v4, v7, :cond_1e

    .line 411
    aput-object v1, v5, v4

    .line 413
    add-int/2addr v4, v3

    .line 415
    iput v4, v2, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    .line 416
    :cond_1e
    iget v2, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 418
    sub-int/2addr v2, v3

    .line 420
    iput v2, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 421
    :cond_1f
    move v2, v3

    .line 423
    goto :goto_11

    .line 424
    :cond_20
    const/4 v2, 0x0

    .line 425
    :goto_11
    iget-object v4, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 426
    if-eqz v4, :cond_21

    .line 428
    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 430
    if-eq v4, v15, :cond_22

    .line 432
    iget v4, v1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 434
    cmpg-float v4, v4, v6

    .line 436
    if-ltz v4, :cond_21

    .line 438
    goto :goto_12

    .line 440
    :cond_21
    const/4 v3, 0x0

    .line 441
    :cond_22
    :goto_12
    if-nez v3, :cond_23

    .line 442
    return-void

    .line 444
    :cond_23
    move v4, v2

    .line 445
    goto :goto_13

    .line 446
    :cond_24
    const/4 v4, 0x0

    .line 447
    :goto_13
    if-nez v4, :cond_25

    .line 448
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->addRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 450
    :cond_25
    return-void
    .line 453
.end method

.method public final addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V
    .locals 4

    .line 11
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    int-to-float p2, p2

    .line 12
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    const/4 p1, 0x0

    .line 13
    :goto_0
    iget p2, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    add-int/2addr p2, v2

    if-ge p1, p2, :cond_0

    .line 14
    iget-object p2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object p2, p2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    if-eq v0, v1, :cond_5

    .line 15
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v0, v3, v0

    .line 16
    iget-boolean v3, v0, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    if-eqz v3, :cond_2

    int-to-float p0, p2

    .line 17
    iput p0, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    goto :goto_2

    .line 18
    :cond_2
    iget-object v3, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v3

    if-nez v3, :cond_3

    .line 19
    iput-boolean v2, v0, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    int-to-float p0, p2

    .line 20
    iput p0, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    goto :goto_2

    .line 21
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    if-gez p2, :cond_4

    mul-int/2addr p2, v1

    int-to-float p2, p2

    .line 22
    iput p2, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 23
    iget-object p2, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p2, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_1

    :cond_4
    int-to-float p2, p2

    .line 24
    iput p2, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 25
    iget-object p2, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {p2, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 26
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    goto :goto_2

    .line 27
    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    .line 28
    iput-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    int-to-float p2, p2

    .line 29
    iput p2, p1, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    .line 30
    iput p2, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 31
    iput-boolean v2, v0, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    .line 32
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    :goto_2
    return-void
.end method

.method public final addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 4

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    .line 1
    iget-boolean v1, p2, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v1, :cond_0

    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2
    iget p2, p2, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    if-gez p3, :cond_1

    mul-int/lit8 p3, p3, -0x1

    const/4 v2, 0x1

    :cond_1
    int-to-float p3, p3

    .line 4
    iput p3, v1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    :cond_2
    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_3

    .line 5
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, p1, p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 6
    iget-object p1, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p2, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, p1, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 8
    iget-object p1, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    :goto_0
    if-eq p4, v0, :cond_4

    .line 9
    invoke-virtual {v1, p0, p4}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/LinearSystem;I)V

    .line 10
    :cond_4
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    return-void
.end method

.method public final addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 11
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 13
    const/16 p1, 0x8

    .line 16
    if-eq p4, p1, :cond_0

    .line 18
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 20
    invoke-interface {p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 22
    move-result p1

    .line 25
    const/high16 p2, -0x40800000    # -1.0f

    .line 26
    mul-float/2addr p1, p2

    .line 28
    float-to-int p1, p1

    .line 29
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/LinearSystem;->createErrorVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 30
    move-result-object p2

    .line 33
    iget-object p3, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 34
    int-to-float p1, p1

    .line 36
    invoke-interface {p3, p2, p1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 37
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 40
    return-void
    .line 43
.end method

.method public final addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 11
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 13
    const/16 p1, 0x8

    .line 16
    if-eq p4, p1, :cond_0

    .line 18
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 20
    invoke-interface {p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 22
    move-result p1

    .line 25
    const/high16 p2, -0x40800000    # -1.0f

    .line 26
    mul-float/2addr p1, p2

    .line 28
    float-to-int p1, p1

    .line 29
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/LinearSystem;->createErrorVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 30
    move-result-object p2

    .line 33
    iget-object p3, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 34
    int-to-float p1, p1

    .line 36
    invoke-interface {p3, p2, p1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 37
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 40
    return-void
    .line 43
.end method

.method public final addRow(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 7

    .line 1
    iget-boolean v0, p1, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    iget p1, p1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 8
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 14
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 16
    aput-object p1, v0, v1

    .line 18
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 20
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 24
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 26
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    .line 28
    :goto_0
    iget-boolean p1, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 31
    if-eqz p1, :cond_8

    .line 33
    const/4 p1, 0x0

    .line 35
    move v0, p1

    .line 36
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 37
    if-ge v0, v1, :cond_7

    .line 39
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 41
    aget-object v1, v1, v0

    .line 43
    if-nez v1, :cond_1

    .line 45
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 47
    const-string v2, "WTF"

    .line 49
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 54
    aget-object v1, v1, v0

    .line 56
    if-eqz v1, :cond_6

    .line 58
    iget-boolean v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    .line 60
    if-eqz v2, :cond_6

    .line 62
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 64
    iget v3, v1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 66
    invoke-virtual {v2, p0, v3}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    .line 68
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 71
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->mArrayRowPool:Landroidx/constraintlayout/core/Pools$SimplePool;

    .line 73
    iget v3, v2, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    .line 75
    iget-object v4, v2, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    .line 77
    array-length v5, v4

    .line 79
    if-ge v3, v5, :cond_2

    .line 80
    aput-object v1, v4, v3

    .line 82
    add-int/lit8 v3, v3, 0x1

    .line 84
    iput v3, v2, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    .line 86
    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 88
    const/4 v2, 0x0

    .line 90
    aput-object v2, v1, v0

    .line 91
    add-int/lit8 v1, v0, 0x1

    .line 93
    move v3, v1

    .line 95
    :goto_2
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 96
    if-ge v1, v4, :cond_4

    .line 98
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 100
    add-int/lit8 v4, v1, -0x1

    .line 102
    aget-object v5, v3, v1

    .line 104
    aput-object v5, v3, v4

    .line 106
    iget-object v3, v5, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 108
    iget v5, v3, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    .line 110
    if-ne v5, v1, :cond_3

    .line 112
    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    .line 114
    :cond_3
    add-int/lit8 v3, v1, 0x1

    .line 116
    move v6, v3

    .line 118
    move v3, v1

    .line 119
    move v1, v6

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    if-ge v3, v4, :cond_5

    .line 122
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 124
    aput-object v2, v1, v3

    .line 126
    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 128
    iput v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 130
    add-int/lit8 v0, v0, -0x1

    .line 132
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 134
    goto :goto_1

    .line 136
    :cond_7
    iput-boolean p1, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 137
    :cond_8
    return-void
    .line 139
.end method

.method public final computeValues()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 3
    if-ge v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 7
    aget-object v1, v1, v0

    .line 9
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 11
    iget v1, v1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 13
    iput v1, v2, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    return-void
    .line 20
.end method

.method public final createErrorVariable(I)Landroidx/constraintlayout/core/SolverVariable;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 2
    add-int/lit8 v0, v0, 0x1

    .line 4
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 6
    if-lt v0, v1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    .line 10
    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 13
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    .line 15
    move-result-object v0

    .line 18
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 21
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 23
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 27
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 29
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 31
    iput p1, v0, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 33
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 35
    iget-object p1, p1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 37
    aput-object v0, p1, v1

    .line 39
    iget-object p0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/PriorityGoalRow;

    .line 41
    iget-object p1, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mAccessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    .line 43
    iput-object v0, p1, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 45
    iget-object p1, v0, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    .line 47
    const/4 v1, 0x0

    .line 49
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 50
    iget-object p1, v0, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    .line 53
    iget v1, v0, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 55
    const/high16 v2, 0x3f800000    # 1.0f

    .line 57
    aput v2, p1, v1

    .line 59
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/PriorityGoalRow;->addToGoal(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 61
    return-object v0
    .line 64
.end method

.method public final createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 8
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 10
    if-lt v1, v2, :cond_1

    .line 12
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    .line 14
    :cond_1
    instance-of v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 17
    if-eqz v1, :cond_5

    .line 19
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 21
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 23
    if-nez v0, :cond_2

    .line 25
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable()V

    .line 27
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 30
    move-object v0, p1

    .line 32
    :cond_2
    iget p1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 33
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 35
    const/4 v2, -0x1

    .line 37
    if-eq p1, v2, :cond_3

    .line 38
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 40
    if-gt p1, v3, :cond_3

    .line 42
    iget-object v3, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 44
    aget-object v3, v3, p1

    .line 46
    if-nez v3, :cond_5

    .line 48
    :cond_3
    if-eq p1, v2, :cond_4

    .line 50
    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->reset()V

    .line 52
    :cond_4
    iget p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 55
    add-int/lit8 p1, p1, 0x1

    .line 57
    iput p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 59
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 63
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 65
    iput p1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 67
    sget-object p0, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 69
    iput-object p0, v0, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 71
    iget-object p0, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 73
    aput-object v0, p0, p1

    .line 75
    :cond_5
    return-object v0
    .line 77
.end method

.method public final createRow()Landroidx/constraintlayout/core/ArrayRow;
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/Cache;->mArrayRowPool:Landroidx/constraintlayout/core/Pools$SimplePool;

    .line 4
    iget v1, v0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    .line 6
    const/4 v2, 0x0

    .line 8
    if-lez v1, :cond_0

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 11
    iget-object v3, v0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    .line 13
    aget-object v4, v3, v1

    .line 15
    aput-object v2, v3, v1

    .line 17
    iput v1, v0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    move-object v4, v2

    .line 22
    :goto_0
    check-cast v4, Landroidx/constraintlayout/core/ArrayRow;

    .line 23
    if-nez v4, :cond_1

    .line 25
    new-instance v4, Landroidx/constraintlayout/core/ArrayRow;

    .line 27
    invoke-direct {v4, p0}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    .line 29
    goto :goto_1

    .line 32
    :cond_1
    iput-object v2, v4, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 33
    iget-object p0, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 35
    invoke-interface {p0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->clear()V

    .line 37
    const/4 p0, 0x0

    .line 40
    iput p0, v4, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 41
    const/4 p0, 0x0

    .line 43
    iput-boolean p0, v4, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    .line 44
    :goto_1
    return-object v4
    .line 46
.end method

.method public final createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 2
    add-int/lit8 v0, v0, 0x1

    .line 4
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 6
    if-lt v0, v1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    .line 10
    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 13
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    .line 15
    move-result-object v0

    .line 18
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 21
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 23
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 27
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 29
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 31
    iget-object p0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 33
    iget-object p0, p0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 35
    aput-object v0, p0, v1

    .line 37
    return-object v0
    .line 39
.end method

.method public final increaseTableSize()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mTableSize:I

    .line 2
    mul-int/lit8 v0, v0, 0x2

    .line 4
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mTableSize:I

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 8
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, [Landroidx/constraintlayout/core/ArrayRow;

    .line 14
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 16
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 18
    iget-object v1, v0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 20
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mTableSize:I

    .line 22
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 28
    iput-object v1, v0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 30
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mTableSize:I

    .line 32
    new-array v1, v0, [Z

    .line 34
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 36
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 38
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    .line 40
    return-void
    .line 42
.end method

.method public final minimize()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/PriorityGoalRow;

    .line 2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/PriorityGoalRow;->isEmpty()Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->computeValues()V

    .line 10
    return-void

    .line 13
    :cond_0
    iget-boolean v1, p0, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    .line 14
    if-eqz v1, :cond_4

    .line 16
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 20
    if-ge v2, v3, :cond_2

    .line 22
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 24
    aget-object v3, v3, v2

    .line 26
    iget-boolean v3, v3, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    .line 28
    if-nez v3, :cond_1

    .line 30
    goto :goto_1

    .line 32
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_2
    const/4 v1, 0x1

    .line 36
    :goto_1
    if-nez v1, :cond_3

    .line 37
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/core/PriorityGoalRow;)V

    .line 39
    goto :goto_2

    .line 42
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->computeValues()V

    .line 43
    goto :goto_2

    .line 46
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/core/PriorityGoalRow;)V

    .line 47
    :goto_2
    return-void
    .line 50
.end method

.method public final minimizeGoal(Landroidx/constraintlayout/core/PriorityGoalRow;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 5
    sget-object v4, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 7
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x1

    .line 10
    if-ge v2, v3, :cond_2

    .line 11
    iget-object v3, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 13
    aget-object v3, v3, v2

    .line 15
    iget-object v7, v3, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 17
    iget-object v7, v7, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 19
    if-ne v7, v4, :cond_0

    .line 21
    goto :goto_1

    .line 23
    :cond_0
    iget v3, v3, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 24
    cmpg-float v3, v3, v5

    .line 26
    if-gez v3, :cond_1

    .line 28
    move v2, v6

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_2
    const/4 v2, 0x0

    .line 35
    :goto_2
    if-eqz v2, :cond_e

    .line 36
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    :goto_3
    if-nez v2, :cond_e

    .line 40
    add-int/2addr v3, v6

    .line 42
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 43
    const/4 v9, 0x0

    .line 46
    const/4 v10, -0x1

    .line 47
    const/4 v11, -0x1

    .line 48
    const/4 v12, 0x0

    .line 49
    :goto_4
    iget v13, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 50
    if-ge v9, v13, :cond_b

    .line 52
    iget-object v13, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 54
    aget-object v13, v13, v9

    .line 56
    iget-object v14, v13, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 58
    iget-object v14, v14, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 60
    if-ne v14, v4, :cond_3

    .line 62
    goto :goto_8

    .line 64
    :cond_3
    iget-boolean v14, v13, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    .line 65
    if-eqz v14, :cond_4

    .line 67
    goto :goto_8

    .line 69
    :cond_4
    iget v14, v13, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 70
    cmpg-float v14, v14, v5

    .line 72
    if-gez v14, :cond_a

    .line 74
    iget-object v14, v13, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 76
    invoke-interface {v14}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    .line 78
    move-result v14

    .line 81
    const/4 v15, 0x0

    .line 82
    :goto_5
    if-ge v15, v14, :cond_a

    .line 83
    iget-object v1, v13, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 85
    invoke-interface {v1, v15}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 87
    move-result-object v1

    .line 90
    iget-object v6, v13, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 91
    invoke-interface {v6, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 93
    move-result v6

    .line 96
    cmpg-float v16, v6, v5

    .line 97
    if-gtz v16, :cond_5

    .line 99
    goto :goto_7

    .line 101
    :cond_5
    const/4 v5, 0x0

    .line 102
    :goto_6
    const/16 v7, 0x9

    .line 103
    if-ge v5, v7, :cond_9

    .line 105
    iget-object v7, v1, Landroidx/constraintlayout/core/SolverVariable;->mStrengthVector:[F

    .line 107
    aget v7, v7, v5

    .line 109
    div-float/2addr v7, v6

    .line 111
    cmpg-float v17, v7, v8

    .line 112
    if-gez v17, :cond_6

    .line 114
    if-eq v5, v12, :cond_7

    .line 116
    :cond_6
    if-le v5, v12, :cond_8

    .line 118
    :cond_7
    iget v11, v1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 120
    move v12, v5

    .line 122
    move v8, v7

    .line 123
    move v10, v9

    .line 124
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 125
    goto :goto_6

    .line 127
    :cond_9
    :goto_7
    add-int/lit8 v15, v15, 0x1

    .line 128
    const/4 v5, 0x0

    .line 130
    const/4 v6, 0x1

    .line 131
    goto :goto_5

    .line 132
    :cond_a
    :goto_8
    add-int/lit8 v9, v9, 0x1

    .line 133
    const/4 v5, 0x0

    .line 135
    const/4 v6, 0x1

    .line 136
    goto :goto_4

    .line 137
    :cond_b
    const/4 v1, -0x1

    .line 138
    if-eq v10, v1, :cond_c

    .line 139
    iget-object v5, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 141
    aget-object v5, v5, v10

    .line 143
    iget-object v6, v5, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 145
    iput v1, v6, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    .line 147
    iget-object v1, v0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 149
    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 151
    aget-object v1, v1, v11

    .line 153
    invoke-virtual {v5, v1}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 155
    iget-object v1, v5, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 158
    iput v10, v1, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    .line 160
    invoke-virtual {v1, v0, v5}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    .line 162
    goto :goto_9

    .line 165
    :cond_c
    const/4 v2, 0x1

    .line 166
    :goto_9
    iget v1, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 167
    div-int/lit8 v1, v1, 0x2

    .line 169
    if-le v3, v1, :cond_d

    .line 171
    const/4 v2, 0x1

    .line 173
    :cond_d
    const/4 v5, 0x0

    .line 174
    const/4 v6, 0x1

    .line 175
    goto/16 :goto_3

    .line 176
    :cond_e
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->optimize(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/LinearSystem;->computeValues()V

    .line 181
    return-void
    .line 184
.end method

.method public final optimize(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 4
    if-ge v1, v2, :cond_0

    .line 6
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 8
    aput-boolean v0, v2, v1

    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    move v1, v0

    .line 15
    move v2, v1

    .line 16
    :cond_1
    :goto_1
    if-nez v1, :cond_b

    .line 17
    const/4 v3, 0x1

    .line 19
    add-int/2addr v2, v3

    .line 20
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 21
    mul-int/lit8 v4, v4, 0x2

    .line 23
    if-lt v2, v4, :cond_2

    .line 25
    return-void

    .line 27
    :cond_2
    iget-object v4, p1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 28
    if-eqz v4, :cond_3

    .line 30
    iget-object v5, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 32
    iget v4, v4, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 34
    aput-boolean v3, v5, v4

    .line 36
    :cond_3
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 38
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/ArrayRow;->getPivotCandidate([Z)Landroidx/constraintlayout/core/SolverVariable;

    .line 40
    move-result-object v4

    .line 43
    if-eqz v4, :cond_5

    .line 44
    iget-object v5, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 46
    iget v6, v4, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 48
    aget-boolean v7, v5, v6

    .line 50
    if-eqz v7, :cond_4

    .line 52
    return-void

    .line 54
    :cond_4
    aput-boolean v3, v5, v6

    .line 55
    :cond_5
    if-eqz v4, :cond_a

    .line 57
    const/4 v3, -0x1

    .line 59
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 60
    move v6, v0

    .line 63
    move v7, v3

    .line 64
    :goto_2
    iget v8, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 65
    if-ge v6, v8, :cond_9

    .line 67
    iget-object v8, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 69
    aget-object v8, v8, v6

    .line 71
    iget-object v9, v8, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 73
    iget-object v9, v9, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 75
    sget-object v10, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 77
    if-ne v9, v10, :cond_6

    .line 79
    goto :goto_3

    .line 81
    :cond_6
    iget-boolean v9, v8, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    .line 82
    if-eqz v9, :cond_7

    .line 84
    goto :goto_3

    .line 86
    :cond_7
    iget-object v9, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 87
    invoke-interface {v9, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->contains(Landroidx/constraintlayout/core/SolverVariable;)Z

    .line 89
    move-result v9

    .line 92
    if-eqz v9, :cond_8

    .line 93
    iget-object v9, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 95
    invoke-interface {v9, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 97
    move-result v9

    .line 100
    const/4 v10, 0x0

    .line 101
    cmpg-float v10, v9, v10

    .line 102
    if-gez v10, :cond_8

    .line 104
    iget v8, v8, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 106
    neg-float v8, v8

    .line 108
    div-float/2addr v8, v9

    .line 109
    cmpg-float v9, v8, v5

    .line 110
    if-gez v9, :cond_8

    .line 112
    move v7, v6

    .line 114
    move v5, v8

    .line 115
    :cond_8
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 116
    goto :goto_2

    .line 118
    :cond_9
    if-le v7, v3, :cond_1

    .line 119
    iget-object v5, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 121
    aget-object v5, v5, v7

    .line 123
    iget-object v6, v5, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 125
    iput v3, v6, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    .line 127
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 129
    iget-object v3, v5, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 132
    iput v7, v3, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    .line 134
    invoke-virtual {v3, p0, v5}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    .line 136
    goto :goto_1

    .line 139
    :cond_a
    move v1, v3

    .line 140
    goto :goto_1

    .line 141
    :cond_b
    return-void
    .line 142
.end method

.method public final reset()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 4
    iget-object v3, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    array-length v4, v3

    .line 8
    if-ge v1, v4, :cond_1

    .line 9
    aget-object v2, v3, v1

    .line 11
    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v2}, Landroidx/constraintlayout/core/SolverVariable;->reset()V

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 21
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 23
    iget-object v4, v2, Landroidx/constraintlayout/core/Cache;->mSolverVariablePool:Landroidx/constraintlayout/core/Pools$SimplePool;

    .line 25
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    array-length v5, v1

    .line 30
    if-le v3, v5, :cond_2

    .line 31
    array-length v3, v1

    .line 33
    :cond_2
    move v5, v0

    .line 34
    :goto_1
    if-ge v5, v3, :cond_4

    .line 35
    aget-object v6, v1, v5

    .line 37
    iget v7, v4, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    .line 39
    iget-object v8, v4, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    .line 41
    array-length v9, v8

    .line 43
    if-ge v7, v9, :cond_3

    .line 44
    aput-object v6, v8, v7

    .line 46
    add-int/lit8 v7, v7, 0x1

    .line 48
    iput v7, v4, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    .line 50
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 52
    goto :goto_1

    .line 54
    :cond_4
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 55
    iget-object v1, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 57
    const/4 v3, 0x0

    .line 59
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 63
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/PriorityGoalRow;

    .line 65
    iput v0, v1, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    .line 67
    const/4 v4, 0x0

    .line 69
    iput v4, v1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 70
    const/4 v1, 0x1

    .line 72
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 73
    move v1, v0

    .line 75
    :goto_2
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 76
    if-ge v1, v4, :cond_5

    .line 78
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 80
    aget-object v4, v4, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 84
    goto :goto_2

    .line 86
    :cond_5
    move v1, v0

    .line 87
    :goto_3
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 88
    if-ge v1, v4, :cond_7

    .line 90
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 92
    aget-object v5, v4, v1

    .line 94
    if-eqz v5, :cond_6

    .line 96
    iget-object v6, v2, Landroidx/constraintlayout/core/Cache;->mArrayRowPool:Landroidx/constraintlayout/core/Pools$SimplePool;

    .line 98
    iget v7, v6, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    .line 100
    iget-object v8, v6, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    .line 102
    array-length v9, v8

    .line 104
    if-ge v7, v9, :cond_6

    .line 105
    aput-object v5, v8, v7

    .line 107
    add-int/lit8 v7, v7, 0x1

    .line 109
    iput v7, v6, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    .line 111
    :cond_6
    aput-object v3, v4, v1

    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 115
    goto :goto_3

    .line 117
    :cond_7
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 118
    new-instance v0, Landroidx/constraintlayout/core/ArrayRow;

    .line 120
    invoke-direct {v0, v2}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    .line 122
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/ArrayRow;

    .line 125
    return-void
    .line 127
.end method
