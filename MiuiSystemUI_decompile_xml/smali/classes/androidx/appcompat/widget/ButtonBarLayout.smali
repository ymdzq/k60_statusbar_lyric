.class public Landroidx/appcompat/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAllowStacking:Z

.field public mLastWidthSize:I

.field public mStacked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 6
    sget-object v3, Landroidx/appcompat/R$styleable;->ButtonBarLayout:[I

    .line 8
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    move-result-object v0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 16
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    move-object v4, p2

    .line 20
    move-object v5, v0

    .line 21
    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 22
    const/4 p1, 0x0

    .line 25
    const/4 p2, 0x1

    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 27
    move-result p1

    .line 30
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 36
    move-result p1

    .line 39
    if-ne p1, p2, :cond_0

    .line 40
    iget-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 42
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 44
    :cond_0
    return-void
    .line 47
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    move-result v0

    .line 5
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 6
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    iget v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 11
    if-le v0, v1, :cond_0

    .line 13
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 19
    :cond_0
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 22
    :cond_1
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    .line 24
    const/4 v3, 0x1

    .line 26
    if-nez v1, :cond_2

    .line 27
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 29
    move-result v1

    .line 32
    const/high16 v4, 0x40000000    # 2.0f

    .line 33
    if-ne v1, v4, :cond_2

    .line 35
    const/high16 v1, -0x80000000

    .line 37
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 39
    move-result v0

    .line 42
    move v1, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v0, p1

    .line 45
    move v1, v2

    .line 46
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 47
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 50
    if-eqz v0, :cond_4

    .line 52
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    .line 54
    if-nez v0, :cond_4

    .line 56
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidthAndState()I

    .line 58
    move-result v0

    .line 61
    const/high16 v4, -0x1000000

    .line 62
    and-int/2addr v0, v4

    .line 64
    const/high16 v4, 0x1000000

    .line 65
    if-ne v0, v4, :cond_3

    .line 67
    move v0, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move v0, v2

    .line 71
    :goto_1
    if-eqz v0, :cond_4

    .line 72
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 74
    move v1, v3

    .line 77
    :cond_4
    if-eqz v1, :cond_5

    .line 78
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 80
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 83
    move-result v0

    .line 86
    move v1, v2

    .line 87
    :goto_2
    const/4 v4, -0x1

    .line 88
    if-ge v1, v0, :cond_7

    .line 89
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 91
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 95
    move-result v5

    .line 98
    if-nez v5, :cond_6

    .line 99
    goto :goto_3

    .line 101
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 102
    goto :goto_2

    .line 104
    :cond_7
    move v1, v4

    .line 105
    :goto_3
    if-ltz v1, :cond_b

    .line 106
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 108
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 112
    move-result-object v5

    .line 115
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 118
    move-result v6

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 122
    move-result v0

    .line 125
    add-int/2addr v0, v6

    .line 126
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 127
    add-int/2addr v0, v6

    .line 129
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 130
    add-int/2addr v0, v5

    .line 132
    add-int/2addr v2, v0

    .line 133
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    .line 134
    if-eqz v0, :cond_a

    .line 136
    add-int/2addr v1, v3

    .line 138
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 139
    move-result v0

    .line 142
    :goto_4
    if-ge v1, v0, :cond_9

    .line 143
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 145
    move-result-object v3

    .line 148
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 149
    move-result v3

    .line 152
    if-nez v3, :cond_8

    .line 153
    move v4, v1

    .line 155
    goto :goto_5

    .line 156
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 157
    goto :goto_4

    .line 159
    :cond_9
    :goto_5
    if-ltz v4, :cond_b

    .line 160
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 162
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 166
    move-result v0

    .line 169
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 170
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 174
    move-result-object v1

    .line 177
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 178
    const/high16 v3, 0x41800000    # 16.0f

    .line 180
    mul-float/2addr v1, v3

    .line 182
    float-to-int v1, v1

    .line 183
    add-int/2addr v0, v1

    .line 184
    goto :goto_6

    .line 185
    :cond_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 186
    move-result v0

    .line 189
    :goto_6
    add-int/2addr v2, v0

    .line 190
    :cond_b
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 191
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 193
    move-result v0

    .line 196
    if-eq v0, v2, :cond_c

    .line 197
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 199
    if-nez p2, :cond_c

    .line 202
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 204
    :cond_c
    return-void
    .line 207
.end method

.method public setAllowStacking(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 6
    if-nez p1, :cond_0

    .line 8
    iget-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 18
    :cond_1
    return-void
    .line 21
.end method

.method public final setStacked(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    .line 2
    if-eq v0, p1, :cond_4

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 8
    if-eqz v0, :cond_4

    .line 10
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 14
    if-eqz p1, :cond_1

    .line 17
    const v0, 0x800005

    .line 19
    goto :goto_0

    .line 22
    :cond_1
    const/16 v0, 0x50

    .line 23
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 25
    const v0, 0x7f0a08ae    # @id/spacer

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    if-eqz p1, :cond_2

    .line 37
    const/16 p1, 0x8

    .line 39
    goto :goto_1

    .line 41
    :cond_2
    const/4 p1, 0x4

    .line 42
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 46
    move-result p1

    .line 49
    add-int/lit8 p1, p1, -0x2

    .line 50
    :goto_2
    if-ltz p1, :cond_4

    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    .line 58
    add-int/lit8 p1, p1, -0x1

    .line 61
    goto :goto_2

    .line 63
    :cond_4
    return-void
    .line 64
.end method
