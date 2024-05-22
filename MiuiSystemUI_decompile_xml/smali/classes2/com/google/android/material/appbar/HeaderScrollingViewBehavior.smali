.class abstract Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
.super Lcom/google/android/material/appbar/ViewOffsetBehavior;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public overlayTop:I

.field public final tempRect1:Landroid/graphics/Rect;

.field public final tempRect2:Landroid/graphics/Rect;

.field public verticalLayoutGap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    return-void
.end method


# virtual methods
.method public abstract findFirstDependency$1(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;
.end method

.method public getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 0

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    return p0
    .line 4
.end method

.method public getScrollRange(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    invoke-virtual/range {p1 .. p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    .line 6
    move-result-object v2

    .line 9
    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->findFirstDependency$1(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;

    .line 10
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_3

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    move-result-object v4

    .line 20
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 23
    move-result v5

    .line 26
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 27
    add-int/2addr v5, v6

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 30
    move-result v6

    .line 33
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 34
    add-int/2addr v6, v7

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    .line 37
    move-result v7

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 41
    move-result v8

    .line 44
    sub-int/2addr v7, v8

    .line 45
    iget v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 46
    sub-int/2addr v7, v8

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    .line 49
    move-result v8

    .line 52
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 53
    move-result v9

    .line 56
    add-int/2addr v9, v8

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 58
    move-result v8

    .line 61
    sub-int/2addr v9, v8

    .line 62
    iget v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 63
    sub-int/2addr v9, v8

    .line 65
    iget-object v13, v0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 66
    invoke-virtual {v13, v5, v6, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    .line 71
    move-result-object v5

    .line 74
    if-eqz v5, :cond_0

    .line 75
    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 77
    invoke-static/range {p1 .. p1}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 79
    move-result v6

    .line 82
    if-eqz v6, :cond_0

    .line 83
    invoke-static/range {p2 .. p2}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 85
    move-result v6

    .line 88
    if-nez v6, :cond_0

    .line 89
    iget v6, v13, Landroid/graphics/Rect;->left:I

    .line 91
    invoke-virtual {v5}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 93
    move-result v7

    .line 96
    add-int/2addr v7, v6

    .line 97
    iput v7, v13, Landroid/graphics/Rect;->left:I

    .line 98
    iget v6, v13, Landroid/graphics/Rect;->right:I

    .line 100
    invoke-virtual {v5}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 102
    move-result v5

    .line 105
    sub-int/2addr v6, v5

    .line 106
    iput v6, v13, Landroid/graphics/Rect;->right:I

    .line 107
    :cond_0
    iget-object v5, v0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    .line 109
    iget v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 111
    if-nez v4, :cond_1

    .line 113
    const v4, 0x800033

    .line 115
    :cond_1
    move v10, v4

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 119
    move-result v11

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 123
    move-result v12

    .line 126
    move-object v14, v5

    .line 127
    move/from16 v15, p3

    .line 128
    invoke-static/range {v10 .. v15}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 130
    iget v4, v0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    .line 133
    if-nez v4, :cond_2

    .line 135
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getOverlapRatioForOffset(Landroid/view/View;)F

    .line 138
    move-result v4

    .line 141
    iget v6, v0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    .line 142
    int-to-float v7, v6

    .line 144
    mul-float/2addr v4, v7

    .line 145
    float-to-int v4, v4

    .line 146
    invoke-static {v4, v3, v6}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 147
    move-result v3

    .line 150
    :goto_0
    iget v4, v5, Landroid/graphics/Rect;->left:I

    .line 151
    iget v6, v5, Landroid/graphics/Rect;->top:I

    .line 153
    sub-int/2addr v6, v3

    .line 155
    iget v7, v5, Landroid/graphics/Rect;->right:I

    .line 156
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 158
    sub-int/2addr v8, v3

    .line 160
    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 161
    iget v1, v5, Landroid/graphics/Rect;->top:I

    .line 164
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 166
    move-result v2

    .line 169
    sub-int/2addr v1, v2

    .line 170
    iput v1, v0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 171
    goto :goto_1

    .line 173
    :cond_3
    move-object/from16 v2, p1

    .line 174
    move/from16 v4, p3

    .line 176
    invoke-virtual {v2, v4, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(ILandroid/view/View;)V

    .line 178
    iput v3, v0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 181
    :goto_1
    return-void
    .line 183
.end method

.method public final onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    const/4 v2, -0x2

    .line 11
    if-ne v0, v2, :cond_4

    .line 12
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    .line 14
    move-result-object v2

    .line 17
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->findFirstDependency$1(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;

    .line 18
    move-result-object v2

    .line 21
    if-eqz v2, :cond_4

    .line 22
    invoke-static {p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 24
    move-result p5

    .line 27
    if-lez p5, :cond_1

    .line 28
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 30
    invoke-static {v2}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 32
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    .line 38
    move-result-object v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 44
    move-result v4

    .line 47
    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    .line 48
    move-result v3

    .line 51
    add-int/2addr v3, v4

    .line 52
    add-int/2addr p5, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    .line 55
    move-result p5

    .line 58
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    .line 59
    move-result p0

    .line 62
    add-int/2addr p5, p0

    .line 63
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 64
    move-result p0

    .line 67
    sub-int/2addr p5, p0

    .line 68
    if-ne v0, v1, :cond_3

    .line 69
    const/high16 p0, 0x40000000    # 2.0f

    .line 71
    goto :goto_1

    .line 73
    :cond_3
    const/high16 p0, -0x80000000

    .line 74
    :goto_1
    invoke-static {p5, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 76
    move-result p0

    .line 79
    invoke-virtual {p1, p2, p3, p4, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;III)V

    .line 80
    const/4 p0, 0x1

    .line 83
    return p0

    .line 84
    :cond_4
    const/4 p0, 0x0

    .line 85
    return p0
    .line 86
.end method
