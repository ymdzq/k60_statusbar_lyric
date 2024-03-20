.class public final Landroidx/constraintlayout/core/widgets/Placeholder;
.super Landroidx/constraintlayout/core/widgets/VirtualLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public final addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2
    iget p1, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 5
    if-lez p1, :cond_0

    .line 7
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 9
    const/4 p2, 0x0

    .line 11
    aget-object p1, p1, p2

    .line 12
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetAnchors()V

    .line 14
    const/high16 v0, 0x3f000000    # 0.5f

    .line 17
    iput v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 19
    iput v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 21
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 23
    invoke-virtual {p1, v0, p0, v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 25
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 28
    invoke-virtual {p1, v0, p0, v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 30
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 33
    invoke-virtual {p1, v0, p0, v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 35
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 38
    invoke-virtual {p1, v0, p0, v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 40
    :cond_0
    return-void
    .line 43
.end method

.method public final measure(IIII)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 2
    iget v1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 4
    iget v2, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingTop:I

    .line 6
    iget v3, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 8
    add-int/2addr v0, v1

    .line 10
    const/4 v1, 0x0

    .line 11
    add-int/2addr v0, v1

    .line 12
    add-int/2addr v2, v3

    .line 13
    add-int/2addr v2, v1

    .line 14
    iget v3, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 15
    if-lez v3, :cond_0

    .line 17
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 19
    aget-object v3, v3, v1

    .line 21
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 23
    move-result v3

    .line 26
    add-int/2addr v0, v3

    .line 27
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 28
    aget-object v3, v3, v1

    .line 30
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 32
    move-result v3

    .line 35
    add-int/2addr v2, v3

    .line 36
    :cond_0
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 37
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 39
    move-result v0

    .line 42
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 43
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 45
    move-result v2

    .line 48
    const/high16 v3, -0x80000000

    .line 49
    const/high16 v4, 0x40000000    # 2.0f

    .line 51
    if-ne p1, v4, :cond_1

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    if-ne p1, v3, :cond_2

    .line 56
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 58
    move-result p2

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    if-nez p1, :cond_3

    .line 63
    move p2, v0

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    move p2, v1

    .line 67
    :goto_0
    if-ne p3, v4, :cond_4

    .line 68
    goto :goto_1

    .line 70
    :cond_4
    if-ne p3, v3, :cond_5

    .line 71
    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    .line 73
    move-result p4

    .line 76
    goto :goto_1

    .line 77
    :cond_5
    if-nez p3, :cond_6

    .line 78
    move p4, v2

    .line 80
    goto :goto_1

    .line 81
    :cond_6
    move p4, v1

    .line 82
    :goto_1
    iput p2, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredWidth:I

    .line 83
    iput p4, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredHeight:I

    .line 85
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 87
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 90
    iget p1, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 93
    if-lez p1, :cond_7

    .line 95
    const/4 v1, 0x1

    .line 97
    :cond_7
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    .line 98
    return-void
    .line 100
.end method
