.class public final Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static sCount:I


# instance fields
.field public final mId:I

.field public mMoveTo:I

.field public mOrientation:I

.field public mResults:Ljava/util/ArrayList;

.field public final mWidgets:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mWidgets:Ljava/util/ArrayList;

    .line 10
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mId:I

    .line 13
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mResults:Ljava/util/ArrayList;

    .line 16
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mMoveTo:I

    .line 18
    sget v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->sCount:I

    .line 20
    add-int/lit8 v1, v0, 0x1

    .line 22
    sput v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->sCount:I

    .line 24
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mId:I

    .line 26
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mOrientation:I

    .line 28
    return-void
    .line 30
.end method


# virtual methods
.method public final cleanup(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mWidgets:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mMoveTo:I

    .line 8
    const/4 v2, -0x1

    .line 10
    if-eq v1, v2, :cond_1

    .line 11
    if-lez v0, :cond_1

    .line 13
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v2

    .line 19
    if-ge v1, v2, :cond_1

    .line 20
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 25
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 26
    iget v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mMoveTo:I

    .line 28
    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mId:I

    .line 30
    if-ne v3, v4, :cond_0

    .line 32
    iget v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mOrientation:I

    .line 34
    invoke-virtual {p0, v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    if-nez v0, :cond_2

    .line 42
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    :cond_2
    return-void
    .line 47
.end method

.method public final measureWrap(Landroidx/constraintlayout/core/LinearSystem;I)I
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mWidgets:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    return v2

    .line 11
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 16
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 18
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 20
    invoke-virtual {p1}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    .line 22
    invoke-virtual {v1, p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 25
    move v3, v2

    .line 28
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    move-result v4

    .line 32
    if-ge v3, v4, :cond_1

    .line 33
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 38
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 39
    invoke-virtual {v4, p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    if-nez p2, :cond_2

    .line 47
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 49
    if-lez v3, :cond_2

    .line 51
    invoke-static {v1, p1, v0, v2}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    .line 53
    :cond_2
    const/4 v3, 0x1

    .line 56
    if-ne p2, v3, :cond_3

    .line 57
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 59
    if-lez v4, :cond_3

    .line 61
    invoke-static {v1, p1, v0, v3}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    .line 63
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/LinearSystem;->minimize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_1

    .line 69
    :catch_0
    move-exception v3

    .line 70
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 78
    move-result-object v6

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v6, "\n"

    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 90
    move-result-object v3

    .line 93
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 97
    const-string v6, "["

    .line 98
    const-string v7, "   at "

    .line 100
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 102
    move-result-object v3

    .line 105
    const-string v6, ","

    .line 106
    const-string v7, "\n   at"

    .line 108
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 110
    move-result-object v3

    .line 113
    const-string v6, "]"

    .line 114
    const-string v7, ""

    .line 116
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 118
    move-result-object v3

    .line 121
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v3

    .line 128
    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    .line 132
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 134
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mResults:Ljava/util/ArrayList;

    .line 137
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 139
    move-result v3

    .line 142
    if-ge v2, v3, :cond_4

    .line 143
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    move-result-object v3

    .line 148
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 149
    new-instance v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;

    .line 151
    invoke-direct {v4, v3, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/LinearSystem;)V

    .line 153
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mResults:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v2, v2, 0x1

    .line 161
    goto :goto_2

    .line 163
    :cond_4
    if-nez p2, :cond_5

    .line 164
    iget-object p0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 166
    invoke-static {p0}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 168
    move-result p0

    .line 171
    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 172
    invoke-static {p2}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 174
    move-result p2

    .line 177
    invoke-virtual {p1}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    .line 178
    goto :goto_3

    .line 181
    :cond_5
    iget-object p0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 182
    invoke-static {p0}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 184
    move-result p0

    .line 187
    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 188
    invoke-static {p2}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 190
    move-result p2

    .line 193
    invoke-virtual {p1}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    .line 194
    :goto_3
    sub-int/2addr p2, p0

    .line 197
    return p2
    .line 198
.end method

.method public final moveTo(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mWidgets:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    iget v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mId:I

    .line 12
    if-eqz v1, :cond_2

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mWidgets:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :goto_1
    if-nez p1, :cond_1

    .line 34
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    .line 39
    goto :goto_0

    .line 41
    :cond_2
    iput v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mMoveTo:I

    .line 42
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mOrientation:I

    .line 7
    if-nez v1, :cond_0

    .line 9
    const-string v1, "Horizontal"

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_1

    .line 15
    const-string v1, "Vertical"

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    const/4 v2, 0x2

    .line 20
    if-ne v1, v2, :cond_2

    .line 21
    const-string v1, "Both"

    .line 23
    goto :goto_0

    .line 25
    :cond_2
    const-string v1, "Unknown"

    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, " ["

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mId:I

    .line 36
    const-string v2, "] <"

    .line 38
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 43
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mWidgets:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object p0

    .line 49
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 59
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 60
    const-string v2, " "

    .line 62
    invoke-static {v0, v2}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    move-result-object v0

    .line 67
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const-string p0, " >"

    .line 78
    invoke-static {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 83
    return-object p0
    .line 84
.end method
