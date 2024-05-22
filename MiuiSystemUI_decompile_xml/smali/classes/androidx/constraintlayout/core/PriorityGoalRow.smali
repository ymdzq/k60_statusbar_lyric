.class public final Landroidx/constraintlayout/core/PriorityGoalRow;
.super Landroidx/constraintlayout/core/ArrayRow;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAccessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

.field public mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

.field public mNumGoals:I

.field public mSortArray:[Landroidx/constraintlayout/core/SolverVariable;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/Cache;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    .line 2
    const/16 p1, 0x80

    .line 5
    new-array v0, p1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 7
    iput-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    .line 9
    new-array p1, p1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 11
    iput-object p1, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mSortArray:[Landroidx/constraintlayout/core/SolverVariable;

    .line 13
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    .line 16
    new-instance p1, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    .line 18
    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;-><init>(Landroidx/constraintlayout/core/PriorityGoalRow;)V

    .line 20
    iput-object p1, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mAccessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    .line 23
    return-void
    .line 25
.end method


# virtual methods
.method public final addToGoal(Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    .line 2
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    array-length v3, v2

    .line 8
    if-le v0, v3, :cond_0

    .line 9
    array-length v0, v2

    .line 11
    mul-int/lit8 v0, v0, 0x2

    .line 12
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable;

    .line 18
    iput-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    .line 20
    array-length v2, v0

    .line 22
    mul-int/lit8 v2, v2, 0x2

    .line 23
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable;

    .line 29
    iput-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mSortArray:[Landroidx/constraintlayout/core/SolverVariable;

    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    .line 33
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    .line 35
    aput-object p1, v0, v2

    .line 37
    add-int/2addr v2, v1

    .line 39
    iput v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    .line 40
    if-le v2, v1, :cond_2

    .line 42
    sub-int/2addr v2, v1

    .line 44
    aget-object v0, v0, v2

    .line 45
    iget v0, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 47
    iget v2, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 49
    if-le v0, v2, :cond_2

    .line 51
    const/4 v0, 0x0

    .line 53
    move v2, v0

    .line 54
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    .line 55
    if-ge v2, v3, :cond_1

    .line 57
    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mSortArray:[Landroidx/constraintlayout/core/SolverVariable;

    .line 59
    iget-object v4, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    .line 61
    aget-object v4, v4, v2

    .line 63
    aput-object v4, v3, v2

    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_0

    .line 69
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mSortArray:[Landroidx/constraintlayout/core/SolverVariable;

    .line 70
    new-instance v4, Landroidx/constraintlayout/core/PriorityGoalRow$1;

    .line 72
    invoke-direct {v4}, Landroidx/constraintlayout/core/PriorityGoalRow$1;-><init>()V

    .line 74
    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 77
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    .line 80
    if-ge v0, v2, :cond_2

    .line 82
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    .line 84
    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mSortArray:[Landroidx/constraintlayout/core/SolverVariable;

    .line 86
    aget-object v3, v3, v0

    .line 88
    aput-object v3, v2, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 92
    goto :goto_1

    .line 94
    :cond_2
    iput-boolean v1, p1, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    .line 95
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 97
    return-void
    .line 100
.end method

.method public final getPivotCandidate([Z)Landroidx/constraintlayout/core/SolverVariable;
    .locals 11

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v3, v0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    iget v4, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    .line 6
    if-ge v2, v4, :cond_8

    .line 8
    iget-object v4, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    .line 10
    aget-object v5, v4, v2

    .line 12
    iget v6, v5, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 14
    aget-boolean v6, p1, v6

    .line 16
    if-eqz v6, :cond_0

    .line 18
    goto :goto_7

    .line 20
    :cond_0
    iget-object v6, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mAccessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    .line 21
    iput-object v5, v6, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 23
    const/4 v5, 0x1

    .line 25
    const/16 v7, 0x8

    .line 26
    if-ne v3, v0, :cond_4

    .line 28
    :goto_1
    if-ltz v7, :cond_3

    .line 30
    iget-object v4, v6, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 32
    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    .line 34
    aget v4, v4, v7

    .line 36
    const/4 v8, 0x0

    .line 38
    cmpl-float v9, v4, v8

    .line 39
    if-lez v9, :cond_1

    .line 41
    goto :goto_2

    .line 43
    :cond_1
    cmpg-float v4, v4, v8

    .line 44
    if-gez v4, :cond_2

    .line 46
    goto :goto_3

    .line 48
    :cond_2
    add-int/lit8 v7, v7, -0x1

    .line 49
    goto :goto_1

    .line 51
    :cond_3
    :goto_2
    move v5, v1

    .line 52
    :goto_3
    if-eqz v5, :cond_7

    .line 53
    goto :goto_6

    .line 55
    :cond_4
    aget-object v4, v4, v3

    .line 56
    :goto_4
    if-ltz v7, :cond_6

    .line 58
    iget-object v8, v4, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    .line 60
    aget v8, v8, v7

    .line 62
    iget-object v9, v6, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 64
    iget-object v9, v9, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    .line 66
    aget v9, v9, v7

    .line 68
    cmpl-float v10, v9, v8

    .line 70
    if-nez v10, :cond_5

    .line 72
    add-int/lit8 v7, v7, -0x1

    .line 74
    goto :goto_4

    .line 76
    :cond_5
    cmpg-float v4, v9, v8

    .line 77
    if-gez v4, :cond_6

    .line 79
    goto :goto_5

    .line 81
    :cond_6
    move v5, v1

    .line 82
    :goto_5
    if-eqz v5, :cond_7

    .line 83
    :goto_6
    move v3, v2

    .line 85
    :cond_7
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 86
    goto :goto_0

    .line 88
    :cond_8
    if-ne v3, v0, :cond_9

    .line 89
    const/4 p0, 0x0

    .line 91
    return-object p0

    .line 92
    :cond_9
    iget-object p0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    .line 93
    aget-object p0, p0, v3

    .line 95
    return-object p0
    .line 97
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public final removeGoal(Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    .line 4
    if-ge v1, v2, :cond_2

    .line 6
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    .line 8
    aget-object v2, v2, v1

    .line 10
    if-ne v2, p1, :cond_1

    .line 12
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    .line 14
    add-int/lit8 v3, v2, -0x1

    .line 16
    if-ge v1, v3, :cond_0

    .line 18
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    .line 20
    add-int/lit8 v3, v1, 0x1

    .line 22
    aget-object v4, v2, v3

    .line 24
    aput-object v4, v2, v1

    .line 26
    move v1, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 30
    iput v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    .line 32
    iput-boolean v0, p1, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    .line 34
    return-void

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    return-void
    .line 40
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, " goal -> ("

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ") : "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    .line 24
    if-ge v1, v2, :cond_0

    .line 26
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    .line 28
    aget-object v2, v2, v1

    .line 30
    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mAccessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    .line 32
    iput-object v2, v3, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string v0, " "

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_0

    .line 58
    :cond_0
    return-object v0
    .line 59
.end method

.method public final updateFromRow(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    if-nez v2, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v3, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 11
    invoke-interface {v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    .line 13
    move-result v4

    .line 16
    const/4 v6, 0x0

    .line 17
    :goto_0
    if-ge v6, v4, :cond_9

    .line 18
    invoke-interface {v3, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 20
    move-result-object v7

    .line 23
    invoke-interface {v3, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    .line 24
    move-result v8

    .line 27
    iget-object v9, v0, Landroidx/constraintlayout/core/PriorityGoalRow;->mAccessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    .line 28
    iput-object v7, v9, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 30
    iget-boolean v10, v7, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    .line 32
    const/4 v11, 0x1

    .line 34
    const v12, 0x38d1b717    # 1.0E-4f

    .line 35
    const/16 v13, 0x9

    .line 38
    const/4 v14, 0x0

    .line 40
    if-eqz v10, :cond_4

    .line 41
    const/4 v10, 0x0

    .line 43
    :goto_1
    if-ge v10, v13, :cond_2

    .line 44
    iget-object v15, v9, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 46
    iget-object v15, v15, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    .line 48
    aget v16, v15, v10

    .line 50
    iget-object v5, v2, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    .line 52
    aget v5, v5, v10

    .line 54
    mul-float/2addr v5, v8

    .line 56
    add-float v5, v5, v16

    .line 57
    aput v5, v15, v10

    .line 59
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 61
    move-result v5

    .line 64
    cmpg-float v5, v5, v12

    .line 65
    if-gez v5, :cond_1

    .line 67
    iget-object v5, v9, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 69
    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    .line 71
    aput v14, v5, v10

    .line 73
    goto :goto_2

    .line 75
    :cond_1
    const/4 v11, 0x0

    .line 76
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 77
    goto :goto_1

    .line 79
    :cond_2
    if-eqz v11, :cond_3

    .line 80
    iget-object v5, v9, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 82
    iget-object v9, v9, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/core/PriorityGoalRow;

    .line 84
    invoke-virtual {v9, v5}, Landroidx/constraintlayout/core/PriorityGoalRow;->removeGoal(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 86
    :cond_3
    const/4 v11, 0x0

    .line 89
    goto :goto_5

    .line 90
    :cond_4
    const/4 v5, 0x0

    .line 91
    :goto_3
    if-ge v5, v13, :cond_7

    .line 92
    iget-object v10, v2, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    .line 94
    aget v10, v10, v5

    .line 96
    cmpl-float v15, v10, v14

    .line 98
    if-eqz v15, :cond_6

    .line 100
    mul-float/2addr v10, v8

    .line 102
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 103
    move-result v15

    .line 106
    cmpg-float v15, v15, v12

    .line 107
    if-gez v15, :cond_5

    .line 109
    move v10, v14

    .line 111
    :cond_5
    iget-object v15, v9, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 112
    iget-object v15, v15, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    .line 114
    aput v10, v15, v5

    .line 116
    goto :goto_4

    .line 118
    :cond_6
    iget-object v10, v9, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 119
    iget-object v10, v10, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    .line 121
    aput v14, v10, v5

    .line 123
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 125
    goto :goto_3

    .line 127
    :cond_7
    :goto_5
    if-eqz v11, :cond_8

    .line 128
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/PriorityGoalRow;->addToGoal(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 130
    :cond_8
    iget v5, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 133
    iget v7, v1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 135
    mul-float/2addr v7, v8

    .line 137
    add-float/2addr v7, v5

    .line 138
    iput v7, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 139
    add-int/lit8 v6, v6, 0x1

    .line 141
    goto :goto_0

    .line 143
    :cond_9
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/PriorityGoalRow;->removeGoal(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 144
    return-void
    .line 147
.end method
