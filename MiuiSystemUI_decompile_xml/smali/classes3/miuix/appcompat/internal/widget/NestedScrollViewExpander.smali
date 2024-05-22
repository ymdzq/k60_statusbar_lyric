.class public Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;
.super Landroid/view/ViewGroup;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mExpandView:Landroid/view/View;

.field public mParentHeightMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 7
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    return-object v0
    .line 11
.end method

.method public final onLayout(ZIIII)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    move-result p1

    .line 5
    const/4 p5, 0x0

    .line 6
    :goto_0
    if-ge p5, p1, :cond_0

    .line 7
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    move-result v2

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 23
    move-result v3

    .line 26
    sub-int v4, p4, p2

    .line 27
    sub-int/2addr v4, v2

    .line 29
    div-int/lit8 v4, v4, 0x2

    .line 30
    add-int/2addr v4, p2

    .line 32
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 33
    add-int/2addr v4, v5

    .line 35
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 36
    sub-int/2addr v4, v5

    .line 38
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 39
    add-int/2addr v5, p3

    .line 41
    add-int/2addr v2, v4

    .line 42
    add-int v6, v5, v3

    .line 43
    invoke-virtual {v0, v4, v5, v2, v6}, Landroid/view/View;->layout(IIII)V

    .line 45
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 48
    add-int/2addr p3, v0

    .line 50
    add-int/2addr p3, v3

    .line 51
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 52
    add-int/2addr p3, v0

    .line 54
    add-int/lit8 p5, p5, 0x1

    .line 55
    goto :goto_0

    .line 57
    :cond_0
    return-void
    .line 58
.end method

.method public final onMeasure(II)V
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    iget v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mParentHeightMeasureSpec:I

    .line 3
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 5
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    const/high16 v0, -0x80000000

    .line 11
    :cond_0
    move v7, v0

    .line 13
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    move-result v8

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v9

    .line 21
    const/4 v10, 0x0

    .line 22
    move v11, v10

    .line 23
    move v12, v11

    .line 24
    :goto_0
    const/16 v0, 0x8

    .line 25
    if-ge v11, v9, :cond_3

    .line 27
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    move-result-object v13

    .line 32
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 33
    move-result v1

    .line 36
    if-ne v1, v0, :cond_1

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    .line 40
    if-eq v0, v13, :cond_2

    .line 42
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    move-result-object v0

    .line 47
    move-object v14, v0

    .line 48
    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 49
    const/4 v3, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    move-object v0, p0

    .line 53
    move-object v1, v13

    .line 54
    move/from16 v2, p1

    .line 55
    move/from16 v4, p2

    .line 57
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 59
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 62
    move-result v0

    .line 65
    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 66
    add-int/2addr v0, v1

    .line 68
    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 69
    add-int/2addr v0, v1

    .line 71
    add-int/2addr v12, v0

    .line 72
    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 73
    goto :goto_0

    .line 75
    :cond_3
    iget v1, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mParentHeightMeasureSpec:I

    .line 76
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 78
    move-result v1

    .line 81
    sub-int/2addr v1, v12

    .line 82
    iget-object v2, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    .line 83
    if-eqz v2, :cond_5

    .line 85
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 87
    move-result v2

    .line 90
    if-eq v2, v0, :cond_5

    .line 91
    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    .line 95
    move-result v0

    .line 98
    if-ge v1, v0, :cond_4

    .line 99
    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    .line 103
    move-result v1

    .line 106
    :cond_4
    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 109
    move-result-object v0

    .line 112
    move-object v9, v0

    .line 113
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 114
    iget-object v2, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    .line 116
    const/4 v3, 0x0

    .line 118
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 119
    move-result v4

    .line 122
    const/4 v5, 0x0

    .line 123
    move-object v0, p0

    .line 124
    move-object v1, v2

    .line 125
    move/from16 v2, p1

    .line 126
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 128
    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    .line 131
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 133
    move-result v0

    .line 136
    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 137
    add-int/2addr v0, v1

    .line 139
    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 140
    add-int v10, v0, v1

    .line 142
    :cond_5
    add-int/2addr v10, v12

    .line 144
    invoke-virtual {p0, v8, v10}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 145
    return-void
    .line 148
.end method

.method public setExpandView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    .line 2
    return-void
    .line 4
.end method
