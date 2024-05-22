.class public Lcom/google/android/material/tabs/TabIndicatorInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    new-instance p0, Landroid/graphics/RectF;

    .line 4
    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 6
    return-object p0

    .line 9
    :cond_0
    iget-boolean p0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    .line 10
    if-nez p0, :cond_2

    .line 12
    instance-of p0, p1, Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 14
    if-eqz p0, :cond_2

    .line 16
    check-cast p1, Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContentWidth()I

    .line 20
    move-result p0

    .line 23
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContentHeight()I

    .line 24
    move-result v0

    .line 27
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 31
    const/16 v2, 0x18

    .line 32
    invoke-static {v2, v1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(ILandroid/content/Context;)F

    .line 34
    move-result v1

    .line 37
    float-to-int v1, v1

    .line 38
    if-ge p0, v1, :cond_1

    .line 39
    move p0, v1

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLeft()I

    .line 42
    move-result v1

    .line 45
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRight()I

    .line 46
    move-result v2

    .line 49
    add-int/2addr v2, v1

    .line 50
    div-int/lit8 v2, v2, 0x2

    .line 51
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    .line 53
    move-result v1

    .line 56
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBottom()I

    .line 57
    move-result p1

    .line 60
    add-int/2addr p1, v1

    .line 61
    div-int/lit8 p1, p1, 0x2

    .line 62
    div-int/lit8 p0, p0, 0x2

    .line 64
    sub-int v1, v2, p0

    .line 66
    div-int/lit8 v0, v0, 0x2

    .line 68
    sub-int v0, p1, v0

    .line 70
    add-int/2addr p0, v2

    .line 72
    div-int/lit8 v2, v2, 0x2

    .line 73
    add-int/2addr v2, p1

    .line 75
    new-instance p1, Landroid/graphics/RectF;

    .line 76
    int-to-float v1, v1

    .line 78
    int-to-float v0, v0

    .line 79
    int-to-float p0, p0

    .line 80
    int-to-float v2, v2

    .line 81
    invoke-direct {p1, v1, v0, p0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 82
    return-object p1

    .line 85
    :cond_2
    new-instance p0, Landroid/graphics/RectF;

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 88
    move-result v0

    .line 91
    int-to-float v0, v0

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 93
    move-result v1

    .line 96
    int-to-float v1, v1

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 98
    move-result v2

    .line 101
    int-to-float v2, v2

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 103
    move-result p1

    .line 106
    int-to-float p1, p1

    .line 107
    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 108
    return-object p0
    .line 111
.end method


# virtual methods
.method public updateIndicatorForOffset(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p1, p3}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    .line 6
    move-result-object p1

    .line 9
    iget p2, p0, Landroid/graphics/RectF;->left:F

    .line 10
    float-to-int p2, p2

    .line 12
    iget p3, p1, Landroid/graphics/RectF;->left:F

    .line 13
    float-to-int p3, p3

    .line 15
    invoke-static {p4, p2, p3}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FII)I

    .line 16
    move-result p2

    .line 19
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 20
    move-result-object p3

    .line 23
    iget p3, p3, Landroid/graphics/Rect;->top:I

    .line 24
    iget p0, p0, Landroid/graphics/RectF;->right:F

    .line 26
    float-to-int p0, p0

    .line 28
    iget p1, p1, Landroid/graphics/RectF;->right:F

    .line 29
    float-to-int p1, p1

    .line 31
    invoke-static {p4, p0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FII)I

    .line 32
    move-result p0

    .line 35
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 36
    move-result-object p1

    .line 39
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 40
    invoke-virtual {p5, p2, p3, p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 42
    return-void
    .line 45
.end method
