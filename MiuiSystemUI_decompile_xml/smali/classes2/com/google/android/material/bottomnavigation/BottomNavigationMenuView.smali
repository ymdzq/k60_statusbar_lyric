.class public Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
.super Lcom/google/android/material/navigation/NavigationBarMenuView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final activeItemMaxWidth:I

.field public final activeItemMinWidth:I

.field public final inactiveItemMaxWidth:I

.field public final inactiveItemMinWidth:I

.field public itemHorizontalTranslationEnabled:Z

.field public final tempChildWidths:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 5
    const/4 v0, -0x2

    .line 7
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 8
    const/16 v0, 0x11

    .line 11
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p1

    .line 21
    const v0, 0x7f07028c    # @dimen/design_bottom_navigation_item_max_width '96.0dp'

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    move-result v0

    .line 28
    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    .line 29
    const v0, 0x7f07028d    # @dimen/design_bottom_navigation_item_min_width '56.0dp'

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    move-result v0

    .line 37
    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    .line 38
    const v0, 0x7f070286    # @dimen/design_bottom_navigation_active_item_max_width '168.0dp'

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    move-result v0

    .line 46
    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 47
    const v0, 0x7f070287    # @dimen/design_bottom_navigation_active_item_min_width '96.0dp'

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 52
    move-result p1

    .line 55
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 56
    const/4 p1, 0x5

    .line 58
    new-array p1, p1, [I

    .line 59
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 61
    return-void
    .line 63
.end method


# virtual methods
.method public final createNavigationBarItemView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;
    .locals 0

    .line 1
    new-instance p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    move-result p1

    .line 5
    sub-int/2addr p4, p2

    .line 6
    sub-int/2addr p5, p3

    .line 7
    const/4 p2, 0x0

    .line 8
    move p3, p2

    .line 9
    move v0, p3

    .line 10
    :goto_0
    if-ge p3, p1, :cond_2

    .line 11
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 17
    move-result v2

    .line 20
    const/16 v3, 0x8

    .line 21
    if-ne v2, v3, :cond_0

    .line 23
    goto :goto_2

    .line 25
    :cond_0
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 26
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 28
    move-result v2

    .line 31
    const/4 v3, 0x1

    .line 32
    if-ne v2, v3, :cond_1

    .line 33
    sub-int v2, p4, v0

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 37
    move-result v3

    .line 40
    sub-int v3, v2, v3

    .line 41
    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 43
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    move-result v2

    .line 50
    add-int/2addr v2, v0

    .line 51
    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 52
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 55
    move-result v1

    .line 58
    add-int/2addr v0, v1

    .line 59
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    return-void
    .line 63
.end method

.method public final onMeasure(II)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    move-result p1

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v1

    .line 21
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 22
    move-result v2

    .line 25
    const/high16 v3, 0x40000000    # 2.0f

    .line 26
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 28
    move-result v4

    .line 31
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getLabelVisibilityMode()I

    .line 32
    move-result v5

    .line 35
    invoke-static {v5, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isShifting(II)Z

    .line 36
    move-result v5

    .line 39
    const/16 v6, 0x8

    .line 40
    const/4 v7, 0x1

    .line 42
    const/4 v8, 0x0

    .line 43
    if-eqz v5, :cond_6

    .line 44
    iget-boolean v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    .line 46
    if-eqz v5, :cond_6

    .line 48
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getSelectedItemPosition()I

    .line 50
    move-result v5

    .line 53
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v5

    .line 57
    iget v9, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 58
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 60
    move-result v10

    .line 63
    if-eq v10, v6, :cond_0

    .line 64
    iget v10, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 66
    const/high16 v11, -0x80000000

    .line 68
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 70
    move-result v10

    .line 73
    invoke-virtual {v5, v10, v4}, Landroid/view/View;->measure(II)V

    .line 74
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 77
    move-result v10

    .line 80
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 81
    move-result v9

    .line 84
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 85
    move-result v5

    .line 88
    if-eq v5, v6, :cond_1

    .line 89
    move v5, v7

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move v5, v8

    .line 93
    :goto_0
    sub-int/2addr v0, v5

    .line 94
    iget v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    .line 95
    mul-int/2addr v5, v0

    .line 97
    sub-int v5, p1, v5

    .line 98
    iget v10, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 100
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 102
    move-result v9

    .line 105
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    .line 106
    move-result v5

    .line 109
    sub-int/2addr p1, v5

    .line 110
    if-nez v0, :cond_2

    .line 111
    move v9, v7

    .line 113
    goto :goto_1

    .line 114
    :cond_2
    move v9, v0

    .line 115
    :goto_1
    div-int v9, p1, v9

    .line 116
    iget v10, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    .line 118
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 120
    move-result v9

    .line 123
    mul-int/2addr v0, v9

    .line 124
    sub-int/2addr p1, v0

    .line 125
    move v0, v8

    .line 126
    :goto_2
    if-ge v0, v1, :cond_a

    .line 127
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 129
    move-result-object v10

    .line 132
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 133
    move-result v10

    .line 136
    if-eq v10, v6, :cond_4

    .line 137
    iget-object v10, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 139
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getSelectedItemPosition()I

    .line 141
    move-result v11

    .line 144
    if-ne v0, v11, :cond_3

    .line 145
    move v11, v5

    .line 147
    goto :goto_3

    .line 148
    :cond_3
    move v11, v9

    .line 149
    :goto_3
    aput v11, v10, v0

    .line 150
    if-lez p1, :cond_5

    .line 152
    iget-object v10, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 154
    aget v11, v10, v0

    .line 156
    add-int/2addr v11, v7

    .line 158
    aput v11, v10, v0

    .line 159
    add-int/lit8 p1, p1, -0x1

    .line 161
    goto :goto_4

    .line 163
    :cond_4
    iget-object v10, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 164
    aput v8, v10, v0

    .line 166
    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 168
    goto :goto_2

    .line 170
    :cond_6
    if-nez v0, :cond_7

    .line 171
    goto :goto_5

    .line 173
    :cond_7
    move v7, v0

    .line 174
    :goto_5
    div-int v5, p1, v7

    .line 175
    iget v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 177
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 179
    move-result v5

    .line 182
    mul-int/2addr v0, v5

    .line 183
    sub-int/2addr p1, v0

    .line 184
    move v0, v8

    .line 185
    :goto_6
    if-ge v0, v1, :cond_a

    .line 186
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 188
    move-result-object v7

    .line 191
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 192
    move-result v7

    .line 195
    if-eq v7, v6, :cond_8

    .line 196
    iget-object v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 198
    aput v5, v7, v0

    .line 200
    if-lez p1, :cond_9

    .line 202
    add-int/lit8 v9, v5, 0x1

    .line 204
    aput v9, v7, v0

    .line 206
    add-int/lit8 p1, p1, -0x1

    .line 208
    goto :goto_7

    .line 210
    :cond_8
    iget-object v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 211
    aput v8, v7, v0

    .line 213
    :cond_9
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 215
    goto :goto_6

    .line 217
    :cond_a
    move p1, v8

    .line 218
    move v0, p1

    .line 219
    :goto_8
    if-ge p1, v1, :cond_c

    .line 220
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 222
    move-result-object v5

    .line 225
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 226
    move-result v7

    .line 229
    if-ne v7, v6, :cond_b

    .line 230
    goto :goto_9

    .line 232
    :cond_b
    iget-object v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 233
    aget v7, v7, p1

    .line 235
    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 237
    move-result v7

    .line 240
    invoke-virtual {v5, v7, v4}, Landroid/view/View;->measure(II)V

    .line 241
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 244
    move-result-object v7

    .line 247
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 248
    move-result v9

    .line 251
    iput v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 252
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 254
    move-result v5

    .line 257
    add-int/2addr v0, v5

    .line 258
    :goto_9
    add-int/lit8 p1, p1, 0x1

    .line 259
    goto :goto_8

    .line 261
    :cond_c
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 262
    move-result p1

    .line 265
    invoke-static {v0, p1, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 266
    move-result p1

    .line 269
    invoke-static {v2, p2, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 270
    move-result p2

    .line 273
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 274
    return-void
    .line 277
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    .line 2
    return-void
    .line 4
.end method
