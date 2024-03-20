.class public final Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;
.super Landroid/view/ViewGroup;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLineHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mContext:Landroid/content/Context;

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
    const/high16 v1, 0x40800000    # 4.0f

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
    instance-of p0, p1, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    .line 2
    return p0
    .line 4
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getHorizontalVerticalSpacing()I

    .line 2
    move-result p0

    .line 5
    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    .line 6
    invoke-direct {v0, p0, p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;-><init>(II)V

    .line 8
    return-object v0
    .line 11
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getHorizontalVerticalSpacing()I

    .line 2
    move-result p0

    .line 5
    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    .line 6
    invoke-direct {v0, p0, p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;-><init>(IILandroid/view/ViewGroup$LayoutParams;)V

    .line 8
    return-object v0
    .line 11
.end method

.method public final isRTL()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mContext:Landroid/content/Context;

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
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

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
    check-cast v2, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

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
    iget v3, v2, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

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
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

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
    iget v1, v2, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 84
    add-int/2addr v0, v1

    .line 86
    sub-int/2addr p4, v0

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    iget v0, v2, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

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
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

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
    check-cast p5, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

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
    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->layoutChildrenOnRow(IIIIII)V

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

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
    iget v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mLineHeight:I

    .line 108
    add-int/2addr p3, v1

    .line 110
    move v4, p2

    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    .line 112
    move-result v1

    .line 115
    if-eqz v1, :cond_5

    .line 116
    sub-int/2addr v7, v0

    .line 118
    iget v0, p5, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 119
    sub-int/2addr v7, v0

    .line 121
    goto :goto_4

    .line 122
    :cond_5
    add-int/2addr v7, v0

    .line 123
    iget v0, p5, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 124
    add-int/2addr v7, v0

    .line 126
    :goto_4
    iget v9, p5, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

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
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->layoutChildrenOnRow(IIIIII)V

    .line 140
    :cond_8
    return-void
    .line 143
.end method

.method public final onMeasure(II)V
    .locals 12

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 6
    move-result v0

    .line 9
    sub-int/2addr p1, v0

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 11
    move-result v0

    .line 14
    sub-int/2addr p1, v0

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    move-result v0

    .line 19
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 20
    move-result v1

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 24
    move-result v2

    .line 27
    sub-int/2addr v1, v2

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 29
    move-result v2

    .line 32
    sub-int/2addr v1, v2

    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 34
    move-result v2

    .line 37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 38
    move-result v3

    .line 41
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 42
    move-result v4

    .line 45
    const/4 v5, 0x0

    .line 46
    const/high16 v6, -0x80000000

    .line 47
    if-ne v4, v6, :cond_0

    .line 49
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 51
    move-result v4

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 56
    move-result v4

    .line 59
    :goto_0
    move v7, v5

    .line 60
    :goto_1
    if-ge v5, v0, :cond_3

    .line 61
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    move-result-object v8

    .line 66
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 67
    move-result v9

    .line 70
    const/16 v10, 0x8

    .line 71
    if-eq v9, v10, :cond_2

    .line 73
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    move-result-object v9

    .line 78
    check-cast v9, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    .line 79
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 81
    move-result v10

    .line 84
    invoke-virtual {v8, v10, v4}, Landroid/view/View;->measure(II)V

    .line 85
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 88
    move-result v10

    .line 91
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 92
    move-result v8

    .line 95
    iget v11, v9, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mVerticalSpacing:I

    .line 96
    add-int/2addr v8, v11

    .line 98
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 99
    move-result v7

    .line 102
    add-int v8, v2, v10

    .line 103
    if-le v8, p1, :cond_1

    .line 105
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 107
    move-result v2

    .line 110
    add-int/2addr v3, v7

    .line 111
    :cond_1
    iget v8, v9, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 112
    add-int/2addr v10, v8

    .line 114
    add-int/2addr v10, v2

    .line 115
    move v2, v10

    .line 116
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 117
    goto :goto_1

    .line 119
    :cond_3
    iput v7, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mLineHeight:I

    .line 120
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 122
    move-result v0

    .line 125
    if-nez v0, :cond_4

    .line 126
    add-int v1, v3, v7

    .line 128
    goto :goto_2

    .line 130
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 131
    move-result p2

    .line 134
    if-ne p2, v6, :cond_5

    .line 135
    add-int/2addr v3, v7

    .line 137
    if-ge v3, v1, :cond_5

    .line 138
    move v1, v3

    .line 140
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 141
    return-void
    .line 144
.end method