.class public final Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;
.super Landroid/view/ViewGroup;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLineHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    iput-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getHorizontalVerticalSpacing()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    move-result-object p0

    .line 9
    const/4 v0, 0x1

    .line 10
    const/high16 v1, 0x40e00000    # 7.0f

    .line 11
    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 13
    move-result p0

    .line 16
    float-to-int p0, p0

    .line 17
    return p0
    .line 18
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;

    .line 2
    return p0
    .line 4
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;->getHorizontalVerticalSpacing()I

    .line 2
    move-result p0

    .line 5
    new-instance v0, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;

    .line 6
    invoke-direct {v0, p0, p0}, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;-><init>(II)V

    .line 8
    return-object v0
    .line 11
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;->getHorizontalVerticalSpacing()I

    .line 2
    move-result p0

    .line 5
    new-instance v0, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;

    .line 6
    invoke-direct {v0, p0, p0, p1}, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;-><init>(IILandroid/view/ViewGroup$LayoutParams;)V

    .line 8
    return-object v0
    .line 11
.end method

.method public final isRTL()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 12
    move-result p0

    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
    .line 21
.end method

.method public final layoutChildrenOnRow(IIIIII)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;->isRTL()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 8
    move-result v0

    .line 11
    add-int/2addr v0, p3

    .line 12
    sub-int/2addr v0, p4

    .line 13
    add-int p4, v0, p6

    .line 14
    :cond_0
    move p6, p1

    .line 16
    :goto_0
    if-ge p6, p2, :cond_4

    .line 17
    invoke-virtual {p0, p6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 23
    move-result v1

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    move-result-object v2

    .line 30
    check-cast v2, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;

    .line 31
    invoke-virtual {p0}, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;->isRTL()Z

    .line 33
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    if-ne p6, p1, :cond_1

    .line 39
    sub-int p4, p3, p4

    .line 41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 43
    move-result v3

    .line 46
    sub-int/2addr p4, v3

    .line 47
    sub-int/2addr p4, v1

    .line 48
    iget v3, v2, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 49
    sub-int/2addr p4, v3

    .line 51
    :cond_1
    add-int v3, p4, v1

    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 54
    move-result v4

    .line 57
    add-int/2addr v4, p5

    .line 58
    invoke-virtual {v0, p4, p5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 59
    invoke-virtual {p0}, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;->isRTL()Z

    .line 62
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    add-int/lit8 v0, p2, -0x1

    .line 68
    if-ge p6, v0, :cond_2

    .line 70
    add-int/lit8 v0, p6, 0x1

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 78
    move-result v0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const/4 v0, 0x0

    .line 83
    :goto_1
    iget v1, v2, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 84
    add-int/2addr v0, v1

    .line 86
    sub-int/2addr p4, v0

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    iget v0, v2, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 89
    add-int/2addr v1, v0

    .line 91
    add-int/2addr v1, p4

    .line 92
    move p4, v1

    .line 93
    :goto_2
    add-int/lit8 p6, p6, 0x1

    .line 94
    goto :goto_0

    .line 96
    :cond_4
    return-void
    .line 97
.end method

.method public final onLayout(ZIIII)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    move-result v2

    .line 5
    sub-int p1, p4, p2

    .line 6
    invoke-virtual {p0}, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;->isRTL()Z

    .line 8
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 14
    move-result p2

    .line 17
    sub-int p2, p1, p2

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 21
    move-result p2

    .line 24
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 25
    move-result p3

    .line 28
    const/4 p4, 0x0

    .line 29
    move v7, p2

    .line 30
    move p2, p4

    .line 31
    move v4, p2

    .line 32
    move v9, v4

    .line 33
    :goto_1
    if-ge p2, v2, :cond_7

    .line 34
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    move-result-object p5

    .line 39
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 40
    move-result v0

    .line 43
    const/16 v1, 0x8

    .line 44
    if-eq v0, v1, :cond_6

    .line 46
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    .line 48
    move-result v0

    .line 51
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    move-result-object p5

    .line 55
    check-cast p5, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;

    .line 56
    invoke-virtual {p0}, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;->isRTL()Z

    .line 58
    move-result v1

    .line 61
    const/4 v3, 0x1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 65
    move-result v1

    .line 68
    sub-int v1, v7, v1

    .line 69
    sub-int/2addr v1, v0

    .line 71
    if-gez v1, :cond_2

    .line 72
    goto :goto_2

    .line 74
    :cond_1
    add-int v1, v7, v0

    .line 75
    if-le v1, p1, :cond_2

    .line 77
    goto :goto_2

    .line 79
    :cond_2
    move v3, p4

    .line 80
    :goto_2
    if-eqz v3, :cond_4

    .line 81
    move-object v3, p0

    .line 83
    move v5, p2

    .line 84
    move v6, p1

    .line 85
    move v8, p3

    .line 86
    invoke-virtual/range {v3 .. v9}, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;->layoutChildrenOnRow(IIIIII)V

    .line 87
    invoke-virtual {p0}, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;->isRTL()Z

    .line 90
    move-result v1

    .line 93
    if-eqz v1, :cond_3

    .line 94
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 96
    move-result v1

    .line 99
    sub-int v1, p1, v1

    .line 100
    goto :goto_3

    .line 102
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 103
    move-result v1

    .line 106
    :goto_3
    move v7, v1

    .line 107
    iget v1, p0, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;->mLineHeight:I

    .line 108
    add-int/2addr p3, v1

    .line 110
    move v4, p2

    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;->isRTL()Z

    .line 112
    move-result v1

    .line 115
    if-eqz v1, :cond_5

    .line 116
    sub-int/2addr v7, v0

    .line 118
    iget v0, p5, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 119
    sub-int/2addr v7, v0

    .line 121
    goto :goto_4

    .line 122
    :cond_5
    add-int/2addr v7, v0

    .line 123
    iget v0, p5, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 124
    add-int/2addr v7, v0

    .line 126
    :goto_4
    iget v9, p5, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 127
    :cond_6
    add-int/lit8 p2, p2, 0x1

    .line 129
    goto :goto_1

    .line 131
    :cond_7
    if-ge v4, v2, :cond_8

    .line 132
    move-object v0, p0

    .line 134
    move v1, v4

    .line 135
    move v3, p1

    .line 136
    move v4, v7

    .line 137
    move v5, p3

    .line 138
    move v6, v9

    .line 139
    invoke-virtual/range {v0 .. v6}, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;->layoutChildrenOnRow(IIIIII)V

    .line 140
    :cond_8
    return-void
    .line 143
.end method

.method public final onMeasure(II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 8
    move-result v2

    .line 11
    sub-int/2addr v1, v2

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 13
    move-result v2

    .line 16
    sub-int/2addr v1, v2

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v2

    .line 21
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 22
    move-result v3

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 26
    move-result v4

    .line 29
    sub-int/2addr v3, v4

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 31
    move-result v4

    .line 34
    sub-int/2addr v3, v4

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 36
    move-result v4

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 40
    move-result v5

    .line 43
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 44
    move-result v6

    .line 47
    const/4 v7, 0x0

    .line 48
    const/high16 v8, -0x80000000

    .line 49
    if-ne v6, v8, :cond_0

    .line 51
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 53
    move-result v6

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 58
    move-result v6

    .line 61
    :goto_0
    iget-object v9, v0, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object v9

    .line 67
    const v10, 0x7f070431    # @dimen/keyboard_shortcuts_item_max_width '144.0dp'

    .line 68
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 71
    move-result v9

    .line 74
    move v10, v7

    .line 75
    move v11, v10

    .line 76
    :goto_1
    if-ge v7, v2, :cond_4

    .line 77
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 79
    move-result-object v12

    .line 82
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 83
    move-result v13

    .line 86
    const/16 v14, 0x8

    .line 87
    if-eq v13, v14, :cond_3

    .line 89
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 91
    move-result-object v13

    .line 94
    check-cast v13, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;

    .line 95
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 97
    move-result v14

    .line 100
    invoke-virtual {v12, v14, v6}, Landroid/view/View;->measure(II)V

    .line 101
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 104
    move-result v14

    .line 107
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 108
    move-result v12

    .line 111
    iget v15, v13, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;->mVerticalSpacing:I

    .line 112
    add-int/2addr v12, v15

    .line 114
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    .line 115
    move-result v10

    .line 118
    add-int v12, v4, v14

    .line 119
    if-gt v12, v9, :cond_2

    .line 121
    if-le v12, v1, :cond_1

    .line 123
    goto :goto_2

    .line 125
    :cond_1
    iget v12, v13, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 126
    add-int/2addr v12, v14

    .line 128
    add-int/2addr v11, v12

    .line 129
    goto :goto_3

    .line 130
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 131
    move-result v4

    .line 134
    add-int/2addr v5, v10

    .line 135
    :goto_3
    iget v12, v13, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 136
    add-int/2addr v14, v12

    .line 138
    add-int/2addr v14, v4

    .line 139
    move v4, v14

    .line 140
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 141
    goto :goto_1

    .line 143
    :cond_4
    iput v10, v0, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout;->mLineHeight:I

    .line 144
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 146
    move-result v1

    .line 149
    if-nez v1, :cond_5

    .line 150
    add-int v3, v5, v10

    .line 152
    goto :goto_4

    .line 154
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 155
    move-result v1

    .line 158
    if-ne v1, v8, :cond_6

    .line 159
    add-int/2addr v5, v10

    .line 161
    if-ge v5, v3, :cond_6

    .line 162
    move v3, v5

    .line 164
    :cond_6
    :goto_4
    invoke-virtual {v0, v11, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 165
    return-void
    .line 168
.end method
