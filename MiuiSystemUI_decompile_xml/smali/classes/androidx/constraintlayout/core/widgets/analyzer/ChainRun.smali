.class public final Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mChainStyle:I

.field public final mWidgets:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 10
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 12
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 14
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getPreviousChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 16
    move-result-object p1

    .line 19
    :goto_0
    move-object v3, p2

    .line 20
    move-object p2, p1

    .line 21
    move-object p1, v3

    .line 22
    if-eqz p2, :cond_0

    .line 23
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 25
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getPreviousChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 27
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 32
    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 34
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x1

    .line 37
    if-nez p2, :cond_1

    .line 38
    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 40
    goto :goto_1

    .line 42
    :cond_1
    if-ne p2, v1, :cond_2

    .line 43
    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 45
    goto :goto_1

    .line 47
    :cond_2
    move-object p2, v0

    .line 48
    :goto_1
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 54
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getNextChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 56
    move-result-object p1

    .line 59
    :goto_2
    if-eqz p1, :cond_5

    .line 60
    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 62
    if-nez p2, :cond_3

    .line 64
    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 66
    goto :goto_3

    .line 68
    :cond_3
    if-ne p2, v1, :cond_4

    .line 69
    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 71
    goto :goto_3

    .line 73
    :cond_4
    move-object p2, v0

    .line 74
    :goto_3
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 78
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getNextChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 80
    move-result-object p1

    .line 83
    goto :goto_2

    .line 84
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 85
    move-result-object p1

    .line 88
    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result p2

    .line 92
    if-eqz p2, :cond_8

    .line 93
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object p2

    .line 98
    check-cast p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 99
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 101
    if-nez v0, :cond_7

    .line 103
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 105
    iput-object p0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 107
    goto :goto_4

    .line 109
    :cond_7
    if-ne v0, v1, :cond_6

    .line 110
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 112
    iput-object p0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 114
    goto :goto_4

    .line 116
    :cond_8
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 117
    if-nez p1, :cond_9

    .line 119
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 121
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 123
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 125
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 127
    if-eqz p1, :cond_9

    .line 129
    move p1, v1

    .line 131
    goto :goto_5

    .line 132
    :cond_9
    const/4 p1, 0x0

    .line 133
    :goto_5
    if-eqz p1, :cond_a

    .line 134
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 136
    move-result p1

    .line 139
    if-le p1, v1, :cond_a

    .line 140
    invoke-static {v2, v1}, Landroidx/appcompat/view/menu/CascadingMenuPopup$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 142
    move-result-object p1

    .line 145
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 146
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 148
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 150
    :cond_a
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 152
    if-nez p1, :cond_b

    .line 154
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 156
    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 158
    goto :goto_6

    .line 160
    :cond_b
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 161
    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 163
    :goto_6
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mChainStyle:I

    .line 165
    return-void
    .line 167
.end method


# virtual methods
.method public final apply()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 18
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->apply()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    if-ge v1, v2, :cond_1

    .line 29
    return-void

    .line 31
    :cond_1
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 36
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 37
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 39
    sub-int/2addr v1, v2

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 45
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 46
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 48
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 50
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 52
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 54
    if-nez v1, :cond_5

    .line 56
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 58
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 60
    invoke-static {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 62
    move-result-object v2

    .line 65
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 66
    move-result v1

    .line 69
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 70
    move-result-object v4

    .line 73
    if-eqz v4, :cond_2

    .line 74
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 76
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 78
    move-result v1

    .line 81
    :cond_2
    if-eqz v2, :cond_3

    .line 82
    invoke-static {v6, v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 84
    :cond_3
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 87
    move-result-object v1

    .line 90
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 91
    move-result v0

    .line 94
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 95
    move-result-object v2

    .line 98
    if-eqz v2, :cond_4

    .line 99
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 101
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 103
    move-result v0

    .line 106
    :cond_4
    if-eqz v1, :cond_9

    .line 107
    neg-int v0, v0

    .line 109
    invoke-static {v5, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 110
    goto :goto_1

    .line 113
    :cond_5
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 114
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 116
    invoke-static {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 118
    move-result-object v3

    .line 121
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 122
    move-result v1

    .line 125
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 126
    move-result-object v4

    .line 129
    if-eqz v4, :cond_6

    .line 130
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 132
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 134
    move-result v1

    .line 137
    :cond_6
    if-eqz v3, :cond_7

    .line 138
    invoke-static {v6, v3, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 140
    :cond_7
    invoke-static {v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 143
    move-result-object v1

    .line 146
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 147
    move-result v0

    .line 150
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 151
    move-result-object v2

    .line 154
    if-eqz v2, :cond_8

    .line 155
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 157
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 159
    move-result v0

    .line 162
    :cond_8
    if-eqz v1, :cond_9

    .line 163
    neg-int v0, v0

    .line 165
    invoke-static {v5, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 166
    :cond_9
    :goto_1
    iput-object p0, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 169
    iput-object p0, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 171
    return-void
    .line 173
.end method

.method public final applyToWidget()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v2

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 15
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->applyToWidget()V

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    return-void
    .line 23
.end method

.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mRunGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 3
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 21
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->clear()V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    return-void
    .line 27
.end method

.method public final getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 15
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 17
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 19
    const/16 v3, 0x8

    .line 21
    if-eq v2, v3, :cond_0

    .line 23
    return-object v1

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return-object p0
    .line 30
.end method

.method public final getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 16
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 18
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 20
    const/16 v3, 0x8

    .line 22
    if-eq v2, v3, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return-object p0
    .line 31
.end method

.method public final getWrapDimension()J
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v0, :cond_0

    .line 11
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v4

    .line 16
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 17
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 19
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 21
    int-to-long v5, v5

    .line 23
    add-long/2addr v1, v5

    .line 24
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    .line 25
    move-result-wide v5

    .line 28
    add-long/2addr v5, v1

    .line 29
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 30
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 32
    int-to-long v1, v1

    .line 34
    add-long/2addr v1, v5

    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    return-wide v1
    .line 39
.end method

.method public final supportsWrapComputation()Z
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 15
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 16
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    .line 18
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    return v1

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x1

    .line 28
    return p0
    .line 29
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "ChainRun "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 9
    if-nez v1, :cond_0

    .line 11
    const-string v1, "horizontal : "

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const-string/jumbo v1, "vertical : "

    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 27
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 37
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 38
    const-string v2, "<"

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "> "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 57
    return-object p0
    .line 58
.end method

.method public final update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 4
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 6
    if-eqz v2, :cond_55

    .line 8
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 10
    iget-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 12
    if-nez v3, :cond_0

    .line 14
    goto/16 :goto_30

    .line 16
    :cond_0
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 18
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 22
    if-eqz v4, :cond_1

    .line 24
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 26
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    const/4 v3, 0x0

    .line 31
    :goto_0
    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 32
    iget v5, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 34
    sub-int/2addr v4, v5

    .line 36
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result v6

    .line 42
    const/4 v7, 0x0

    .line 43
    :goto_1
    const/4 v8, -0x1

    .line 44
    const/16 v9, 0x8

    .line 45
    if-ge v7, v6, :cond_2

    .line 47
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v10

    .line 52
    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 53
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 55
    iget v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 57
    if-ne v10, v9, :cond_3

    .line 59
    add-int/lit8 v7, v7, 0x1

    .line 61
    goto :goto_1

    .line 63
    :cond_2
    move v7, v8

    .line 64
    :cond_3
    add-int/lit8 v10, v6, -0x1

    .line 65
    move v11, v10

    .line 67
    :goto_2
    if-ltz v11, :cond_5

    .line 68
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v12

    .line 73
    check-cast v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 74
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 76
    iget v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 78
    if-ne v12, v9, :cond_4

    .line 80
    add-int/lit8 v11, v11, -0x1

    .line 82
    goto :goto_2

    .line 84
    :cond_4
    move v8, v11

    .line 85
    :cond_5
    const/4 v9, 0x0

    .line 86
    :goto_3
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 87
    const/4 v12, 0x2

    .line 89
    if-ge v9, v12, :cond_13

    .line 90
    const/4 v12, 0x0

    .line 92
    const/4 v13, 0x0

    .line 93
    const/4 v14, 0x0

    .line 94
    const/4 v15, 0x0

    .line 95
    const/16 v16, 0x0

    .line 96
    :goto_4
    if-ge v13, v6, :cond_11

    .line 98
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object v17

    .line 103
    move-object/from16 p1, v5

    .line 104
    move-object/from16 v5, v17

    .line 106
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 108
    move/from16 v17, v6

    .line 110
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 112
    move-object/from16 v18, v2

    .line 114
    iget v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 116
    move/from16 v19, v3

    .line 118
    const/16 v3, 0x8

    .line 120
    if-ne v2, v3, :cond_6

    .line 122
    goto/16 :goto_a

    .line 124
    :cond_6
    add-int/lit8 v15, v15, 0x1

    .line 126
    if-lez v13, :cond_7

    .line 128
    if-lt v13, v7, :cond_7

    .line 130
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 132
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 134
    add-int/2addr v12, v2

    .line 136
    :cond_7
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 137
    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 139
    move/from16 v20, v3

    .line 141
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 143
    if-eq v3, v11, :cond_8

    .line 145
    const/4 v3, 0x1

    .line 147
    goto :goto_5

    .line 148
    :cond_8
    const/4 v3, 0x0

    .line 149
    :goto_5
    if-eqz v3, :cond_b

    .line 150
    iget v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 152
    move/from16 v21, v3

    .line 154
    if-nez v2, :cond_9

    .line 156
    iget-object v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 158
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 160
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 162
    if-nez v3, :cond_9

    .line 164
    return-void

    .line 166
    :cond_9
    const/4 v3, 0x1

    .line 167
    if-ne v2, v3, :cond_a

    .line 168
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 170
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 172
    iget-boolean v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 174
    if-nez v2, :cond_a

    .line 176
    return-void

    .line 178
    :cond_a
    move/from16 v22, v15

    .line 179
    goto :goto_7

    .line 181
    :cond_b
    move/from16 v21, v3

    .line 182
    const/4 v3, 0x1

    .line 184
    move/from16 v22, v15

    .line 185
    iget v15, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 187
    if-ne v15, v3, :cond_c

    .line 189
    if-nez v9, :cond_c

    .line 191
    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 193
    add-int/lit8 v14, v14, 0x1

    .line 195
    goto :goto_6

    .line 197
    :cond_c
    iget-boolean v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 198
    if-eqz v2, :cond_d

    .line 200
    move/from16 v3, v20

    .line 202
    :goto_6
    const/4 v2, 0x1

    .line 204
    move/from16 v20, v3

    .line 205
    move v3, v2

    .line 207
    goto :goto_8

    .line 208
    :cond_d
    :goto_7
    move/from16 v3, v21

    .line 209
    :goto_8
    if-nez v3, :cond_e

    .line 211
    add-int/lit8 v14, v14, 0x1

    .line 213
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 215
    iget v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 217
    aget v2, v2, v3

    .line 219
    const/4 v3, 0x0

    .line 221
    cmpl-float v3, v2, v3

    .line 222
    if-ltz v3, :cond_f

    .line 224
    add-float v16, v16, v2

    .line 226
    goto :goto_9

    .line 228
    :cond_e
    add-int v12, v12, v20

    .line 229
    :cond_f
    :goto_9
    if-ge v13, v10, :cond_10

    .line 231
    if-ge v13, v8, :cond_10

    .line 233
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 235
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 237
    neg-int v2, v2

    .line 239
    add-int/2addr v12, v2

    .line 240
    :cond_10
    move/from16 v15, v22

    .line 241
    :goto_a
    add-int/lit8 v13, v13, 0x1

    .line 243
    move-object/from16 v5, p1

    .line 245
    move/from16 v6, v17

    .line 247
    move-object/from16 v2, v18

    .line 249
    move/from16 v3, v19

    .line 251
    goto/16 :goto_4

    .line 253
    :cond_11
    move-object/from16 v18, v2

    .line 255
    move/from16 v19, v3

    .line 257
    move-object/from16 p1, v5

    .line 259
    move/from16 v17, v6

    .line 261
    if-lt v12, v4, :cond_14

    .line 263
    if-nez v14, :cond_12

    .line 265
    goto :goto_b

    .line 267
    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 268
    move-object/from16 v5, p1

    .line 270
    move/from16 v6, v17

    .line 272
    move-object/from16 v2, v18

    .line 274
    move/from16 v3, v19

    .line 276
    goto/16 :goto_3

    .line 278
    :cond_13
    move-object/from16 v18, v2

    .line 280
    move/from16 v19, v3

    .line 282
    move-object/from16 p1, v5

    .line 284
    move/from16 v17, v6

    .line 286
    const/4 v14, 0x0

    .line 288
    const/4 v15, 0x0

    .line 289
    const/4 v12, 0x0

    .line 290
    const/16 v16, 0x0

    .line 291
    :cond_14
    :goto_b
    move/from16 v2, v16

    .line 293
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 295
    if-eqz v19, :cond_15

    .line 297
    move-object/from16 v3, v18

    .line 299
    iget v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 301
    :cond_15
    const/high16 v3, 0x3f000000    # 0.5f

    .line 303
    if-le v12, v4, :cond_17

    .line 305
    const/high16 v5, 0x40000000    # 2.0f

    .line 307
    sub-int v6, v12, v4

    .line 309
    int-to-float v6, v6

    .line 311
    div-float/2addr v6, v5

    .line 312
    add-float/2addr v6, v3

    .line 313
    float-to-int v5, v6

    .line 314
    if-eqz v19, :cond_16

    .line 315
    add-int/2addr v1, v5

    .line 317
    goto :goto_c

    .line 318
    :cond_16
    sub-int/2addr v1, v5

    .line 319
    :cond_17
    :goto_c
    if-lez v14, :cond_25

    .line 320
    sub-int v5, v4, v12

    .line 322
    int-to-float v5, v5

    .line 324
    int-to-float v6, v14

    .line 325
    div-float v6, v5, v6

    .line 326
    add-float/2addr v6, v3

    .line 328
    float-to-int v3, v6

    .line 329
    const/4 v6, 0x0

    .line 330
    const/4 v9, 0x0

    .line 331
    move/from16 v13, v17

    .line 332
    :goto_d
    if-ge v6, v13, :cond_1f

    .line 334
    move/from16 v16, v3

    .line 336
    move-object/from16 v3, p1

    .line 338
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 340
    move-result-object v17

    .line 343
    move/from16 v18, v12

    .line 344
    move-object/from16 v12, v17

    .line 346
    check-cast v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 348
    move/from16 p1, v1

    .line 350
    iget-object v1, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 352
    move/from16 v17, v15

    .line 354
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 356
    move/from16 v20, v4

    .line 358
    const/16 v4, 0x8

    .line 360
    if-ne v15, v4, :cond_18

    .line 362
    goto :goto_11

    .line 364
    :cond_18
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 365
    if-ne v4, v11, :cond_1e

    .line 367
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 369
    iget-boolean v15, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 371
    if-nez v15, :cond_1e

    .line 373
    const/4 v15, 0x0

    .line 375
    cmpl-float v15, v2, v15

    .line 376
    if-lez v15, :cond_19

    .line 378
    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 380
    move-object/from16 v21, v11

    .line 382
    iget v11, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 384
    aget v11, v15, v11

    .line 386
    const/high16 v15, 0x3f000000    # 0.5f

    .line 388
    invoke-static {v11, v5, v2, v15}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 390
    move-result v11

    .line 393
    float-to-int v11, v11

    .line 394
    goto :goto_e

    .line 395
    :cond_19
    move-object/from16 v21, v11

    .line 396
    move/from16 v11, v16

    .line 398
    :goto_e
    iget v15, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 400
    if-nez v15, :cond_1a

    .line 402
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 404
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 406
    goto :goto_f

    .line 408
    :cond_1a
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 409
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 411
    :goto_f
    iget v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 413
    move/from16 v22, v2

    .line 415
    const/4 v2, 0x1

    .line 417
    if-ne v12, v2, :cond_1b

    .line 418
    iget v2, v4, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 420
    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    .line 422
    move-result v2

    .line 425
    goto :goto_10

    .line 426
    :cond_1b
    move v2, v11

    .line 427
    :goto_10
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 428
    move-result v1

    .line 431
    if-lez v15, :cond_1c

    .line 432
    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    .line 434
    move-result v1

    .line 437
    :cond_1c
    if-eq v1, v11, :cond_1d

    .line 438
    add-int/lit8 v9, v9, 0x1

    .line 440
    move v11, v1

    .line 442
    :cond_1d
    invoke-virtual {v4, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 443
    goto :goto_12

    .line 446
    :cond_1e
    :goto_11
    move/from16 v22, v2

    .line 447
    move-object/from16 v21, v11

    .line 449
    :goto_12
    add-int/lit8 v6, v6, 0x1

    .line 451
    move/from16 v1, p1

    .line 453
    move-object/from16 p1, v3

    .line 455
    move/from16 v3, v16

    .line 457
    move/from16 v15, v17

    .line 459
    move/from16 v12, v18

    .line 461
    move/from16 v4, v20

    .line 463
    move-object/from16 v11, v21

    .line 465
    move/from16 v2, v22

    .line 467
    goto/16 :goto_d

    .line 469
    :cond_1f
    move-object/from16 v3, p1

    .line 471
    move/from16 p1, v1

    .line 473
    move/from16 v20, v4

    .line 475
    move-object/from16 v21, v11

    .line 477
    move/from16 v18, v12

    .line 479
    move/from16 v17, v15

    .line 481
    if-lez v9, :cond_24

    .line 483
    sub-int/2addr v14, v9

    .line 485
    const/4 v1, 0x0

    .line 486
    const/4 v2, 0x0

    .line 487
    :goto_13
    if-ge v1, v13, :cond_23

    .line 488
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 490
    move-result-object v4

    .line 493
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 494
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 496
    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 498
    const/16 v6, 0x8

    .line 500
    if-ne v5, v6, :cond_20

    .line 502
    goto :goto_14

    .line 504
    :cond_20
    if-lez v1, :cond_21

    .line 505
    if-lt v1, v7, :cond_21

    .line 507
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 509
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 511
    add-int/2addr v2, v5

    .line 513
    :cond_21
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 514
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 516
    add-int/2addr v2, v5

    .line 518
    if-ge v1, v10, :cond_22

    .line 519
    if-ge v1, v8, :cond_22

    .line 521
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 523
    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 525
    neg-int v4, v4

    .line 527
    add-int/2addr v2, v4

    .line 528
    :cond_22
    :goto_14
    add-int/lit8 v1, v1, 0x1

    .line 529
    goto :goto_13

    .line 531
    :cond_23
    move v12, v2

    .line 532
    goto :goto_15

    .line 533
    :cond_24
    move/from16 v12, v18

    .line 534
    :goto_15
    iget v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mChainStyle:I

    .line 536
    const/4 v2, 0x2

    .line 538
    if-ne v1, v2, :cond_26

    .line 539
    if-nez v9, :cond_26

    .line 541
    const/4 v1, 0x0

    .line 543
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mChainStyle:I

    .line 544
    goto :goto_16

    .line 546
    :cond_25
    move-object/from16 v3, p1

    .line 547
    move/from16 p1, v1

    .line 549
    move/from16 v20, v4

    .line 551
    move-object/from16 v21, v11

    .line 553
    move/from16 v18, v12

    .line 555
    move/from16 v13, v17

    .line 557
    move/from16 v17, v15

    .line 559
    const/4 v2, 0x2

    .line 561
    :cond_26
    const/4 v1, 0x0

    .line 562
    :goto_16
    move/from16 v4, v20

    .line 563
    if-le v12, v4, :cond_27

    .line 565
    iput v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mChainStyle:I

    .line 567
    :cond_27
    if-lez v17, :cond_28

    .line 569
    if-nez v14, :cond_28

    .line 571
    if-ne v7, v8, :cond_28

    .line 573
    iput v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mChainStyle:I

    .line 575
    :cond_28
    iget v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mChainStyle:I

    .line 577
    const/4 v5, 0x1

    .line 579
    if-ne v2, v5, :cond_38

    .line 580
    move/from16 v15, v17

    .line 582
    if-le v15, v5, :cond_29

    .line 584
    sub-int/2addr v4, v12

    .line 586
    sub-int/2addr v15, v5

    .line 587
    div-int/2addr v4, v15

    .line 588
    goto :goto_17

    .line 589
    :cond_29
    if-ne v15, v5, :cond_2a

    .line 590
    sub-int/2addr v4, v12

    .line 592
    div-int/lit8 v4, v4, 0x2

    .line 593
    goto :goto_17

    .line 595
    :cond_2a
    move v4, v1

    .line 596
    :goto_17
    if-lez v14, :cond_2b

    .line 597
    move v4, v1

    .line 599
    :cond_2b
    move/from16 v0, p1

    .line 600
    :goto_18
    if-ge v1, v13, :cond_55

    .line 602
    if-eqz v19, :cond_2c

    .line 604
    add-int/lit8 v2, v1, 0x1

    .line 606
    sub-int v6, v13, v2

    .line 608
    goto :goto_19

    .line 610
    :cond_2c
    move v6, v1

    .line 611
    :goto_19
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 612
    move-result-object v2

    .line 615
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 616
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 618
    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 620
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 622
    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 624
    const/16 v11, 0x8

    .line 626
    if-ne v5, v11, :cond_2d

    .line 628
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 630
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 633
    move-object/from16 v14, v21

    .line 636
    goto :goto_1f

    .line 638
    :cond_2d
    if-lez v1, :cond_2f

    .line 639
    if-eqz v19, :cond_2e

    .line 641
    sub-int/2addr v0, v4

    .line 643
    goto :goto_1a

    .line 644
    :cond_2e
    add-int/2addr v0, v4

    .line 645
    :cond_2f
    :goto_1a
    if-lez v1, :cond_31

    .line 646
    if-lt v1, v7, :cond_31

    .line 648
    if-eqz v19, :cond_30

    .line 650
    iget v5, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 652
    sub-int/2addr v0, v5

    .line 654
    goto :goto_1b

    .line 655
    :cond_30
    iget v5, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 656
    add-int/2addr v0, v5

    .line 658
    :cond_31
    :goto_1b
    if-eqz v19, :cond_32

    .line 659
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 661
    goto :goto_1c

    .line 664
    :cond_32
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 665
    :goto_1c
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 668
    iget v11, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 670
    iget-object v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 672
    move-object/from16 v14, v21

    .line 674
    if-ne v12, v14, :cond_33

    .line 676
    iget v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 678
    const/4 v15, 0x1

    .line 680
    if-ne v12, v15, :cond_33

    .line 681
    iget v11, v5, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 683
    :cond_33
    if-eqz v19, :cond_34

    .line 685
    sub-int/2addr v0, v11

    .line 687
    goto :goto_1d

    .line 688
    :cond_34
    add-int/2addr v0, v11

    .line 689
    :goto_1d
    if-eqz v19, :cond_35

    .line 690
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 692
    goto :goto_1e

    .line 695
    :cond_35
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 696
    :goto_1e
    const/4 v5, 0x1

    .line 699
    iput-boolean v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    .line 700
    if-ge v1, v10, :cond_37

    .line 702
    if-ge v1, v8, :cond_37

    .line 704
    if-eqz v19, :cond_36

    .line 706
    iget v2, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 708
    neg-int v2, v2

    .line 710
    sub-int/2addr v0, v2

    .line 711
    goto :goto_1f

    .line 712
    :cond_36
    iget v2, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 713
    neg-int v2, v2

    .line 715
    add-int/2addr v0, v2

    .line 716
    :cond_37
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    .line 717
    move-object/from16 v21, v14

    .line 719
    goto :goto_18

    .line 721
    :cond_38
    move/from16 v15, v17

    .line 722
    move-object/from16 v5, v21

    .line 724
    if-nez v2, :cond_45

    .line 726
    sub-int/2addr v4, v12

    .line 728
    add-int/lit8 v15, v15, 0x1

    .line 729
    div-int/2addr v4, v15

    .line 731
    if-lez v14, :cond_39

    .line 732
    move v4, v1

    .line 734
    :cond_39
    move/from16 v0, p1

    .line 735
    :goto_20
    if-ge v1, v13, :cond_55

    .line 737
    if-eqz v19, :cond_3a

    .line 739
    add-int/lit8 v2, v1, 0x1

    .line 741
    sub-int v6, v13, v2

    .line 743
    goto :goto_21

    .line 745
    :cond_3a
    move v6, v1

    .line 746
    :goto_21
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 747
    move-result-object v2

    .line 750
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 751
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 753
    iget v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 755
    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 757
    iget-object v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 759
    const/16 v12, 0x8

    .line 761
    if-ne v6, v12, :cond_3b

    .line 763
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 765
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 768
    goto :goto_27

    .line 771
    :cond_3b
    if-eqz v19, :cond_3c

    .line 772
    sub-int/2addr v0, v4

    .line 774
    goto :goto_22

    .line 775
    :cond_3c
    add-int/2addr v0, v4

    .line 776
    :goto_22
    if-lez v1, :cond_3e

    .line 777
    if-lt v1, v7, :cond_3e

    .line 779
    if-eqz v19, :cond_3d

    .line 781
    iget v6, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 783
    sub-int/2addr v0, v6

    .line 785
    goto :goto_23

    .line 786
    :cond_3d
    iget v6, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 787
    add-int/2addr v0, v6

    .line 789
    :cond_3e
    :goto_23
    if-eqz v19, :cond_3f

    .line 790
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 792
    goto :goto_24

    .line 795
    :cond_3f
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 796
    :goto_24
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 799
    iget v12, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 801
    iget-object v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 803
    if-ne v14, v5, :cond_40

    .line 805
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 807
    const/4 v14, 0x1

    .line 809
    if-ne v2, v14, :cond_40

    .line 810
    iget v2, v6, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 812
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    .line 814
    move-result v12

    .line 817
    :cond_40
    if-eqz v19, :cond_41

    .line 818
    sub-int/2addr v0, v12

    .line 820
    goto :goto_25

    .line 821
    :cond_41
    add-int/2addr v0, v12

    .line 822
    :goto_25
    if-eqz v19, :cond_42

    .line 823
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 825
    goto :goto_26

    .line 828
    :cond_42
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 829
    :goto_26
    if-ge v1, v10, :cond_44

    .line 832
    if-ge v1, v8, :cond_44

    .line 834
    if-eqz v19, :cond_43

    .line 836
    iget v2, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 838
    neg-int v2, v2

    .line 840
    sub-int/2addr v0, v2

    .line 841
    goto :goto_27

    .line 842
    :cond_43
    iget v2, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 843
    neg-int v2, v2

    .line 845
    add-int/2addr v0, v2

    .line 846
    :cond_44
    :goto_27
    add-int/lit8 v1, v1, 0x1

    .line 847
    goto :goto_20

    .line 849
    :cond_45
    const/4 v6, 0x2

    .line 850
    if-ne v2, v6, :cond_55

    .line 851
    iget v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 853
    if-nez v2, :cond_46

    .line 855
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 857
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 859
    goto :goto_28

    .line 861
    :cond_46
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 862
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 864
    :goto_28
    if-eqz v19, :cond_47

    .line 866
    const/high16 v2, 0x3f800000    # 1.0f

    .line 868
    sub-float v0, v2, v0

    .line 870
    :cond_47
    sub-int/2addr v4, v12

    .line 872
    int-to-float v2, v4

    .line 873
    mul-float/2addr v2, v0

    .line 874
    const/high16 v0, 0x3f000000    # 0.5f

    .line 875
    add-float/2addr v2, v0

    .line 877
    float-to-int v0, v2

    .line 878
    if-ltz v0, :cond_48

    .line 879
    if-lez v14, :cond_49

    .line 881
    :cond_48
    move v0, v1

    .line 883
    :cond_49
    if-eqz v19, :cond_4a

    .line 884
    sub-int v0, p1, v0

    .line 886
    goto :goto_29

    .line 888
    :cond_4a
    add-int v0, p1, v0

    .line 889
    :goto_29
    if-ge v1, v13, :cond_55

    .line 891
    if-eqz v19, :cond_4b

    .line 893
    add-int/lit8 v2, v1, 0x1

    .line 895
    sub-int v6, v13, v2

    .line 897
    goto :goto_2a

    .line 899
    :cond_4b
    move v6, v1

    .line 900
    :goto_2a
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 901
    move-result-object v2

    .line 904
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 905
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 907
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 909
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 911
    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 913
    const/16 v11, 0x8

    .line 915
    if-ne v4, v11, :cond_4c

    .line 917
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 919
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 922
    goto :goto_2f

    .line 925
    :cond_4c
    if-lez v1, :cond_4e

    .line 926
    if-lt v1, v7, :cond_4e

    .line 928
    if-eqz v19, :cond_4d

    .line 930
    iget v4, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 932
    sub-int/2addr v0, v4

    .line 934
    goto :goto_2b

    .line 935
    :cond_4d
    iget v4, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 936
    add-int/2addr v0, v4

    .line 938
    :cond_4e
    :goto_2b
    if-eqz v19, :cond_4f

    .line 939
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 941
    goto :goto_2c

    .line 944
    :cond_4f
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 945
    :goto_2c
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 948
    iget v11, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 950
    iget-object v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 952
    if-ne v12, v5, :cond_50

    .line 954
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 956
    const/4 v12, 0x1

    .line 958
    if-ne v2, v12, :cond_50

    .line 959
    iget v11, v4, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 961
    :cond_50
    if-eqz v19, :cond_51

    .line 963
    sub-int/2addr v0, v11

    .line 965
    goto :goto_2d

    .line 966
    :cond_51
    add-int/2addr v0, v11

    .line 967
    :goto_2d
    if-eqz v19, :cond_52

    .line 968
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 970
    goto :goto_2e

    .line 973
    :cond_52
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 974
    :goto_2e
    if-ge v1, v10, :cond_54

    .line 977
    if-ge v1, v8, :cond_54

    .line 979
    if-eqz v19, :cond_53

    .line 981
    iget v2, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 983
    neg-int v2, v2

    .line 985
    sub-int/2addr v0, v2

    .line 986
    goto :goto_2f

    .line 987
    :cond_53
    iget v2, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 988
    neg-int v2, v2

    .line 990
    add-int/2addr v0, v2

    .line 991
    :cond_54
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    .line 992
    goto :goto_29

    .line 994
    :cond_55
    :goto_30
    return-void
    .line 995
.end method
