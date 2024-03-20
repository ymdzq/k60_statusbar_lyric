.class public final Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;
.super Lcom/google/android/material/tabs/TabIndicatorInterpolator;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public final updateIndicatorForOffset(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .locals 6

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
    iget p3, p1, Landroid/graphics/RectF;->left:F

    .line 12
    cmpg-float p2, p2, p3

    .line 14
    if-gez p2, :cond_0

    .line 16
    const/4 p2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p2, 0x0

    .line 20
    :goto_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 21
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 23
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 25
    if-eqz p2, :cond_1

    .line 30
    float-to-double p2, p4

    .line 32
    mul-double/2addr p2, v4

    .line 33
    div-double/2addr p2, v2

    .line 34
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    .line 35
    move-result-wide v2

    .line 38
    sub-double/2addr v0, v2

    .line 39
    double-to-float p4, v0

    .line 40
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    .line 41
    move-result-wide p2

    .line 44
    double-to-float p2, p2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    float-to-double p2, p4

    .line 47
    mul-double/2addr p2, v4

    .line 48
    div-double/2addr p2, v2

    .line 49
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    .line 50
    move-result-wide v2

    .line 53
    double-to-float p4, v2

    .line 54
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    .line 55
    move-result-wide p2

    .line 58
    sub-double/2addr v0, p2

    .line 59
    double-to-float p2, v0

    .line 60
    :goto_1
    iget p3, p0, Landroid/graphics/RectF;->left:F

    .line 61
    float-to-int p3, p3

    .line 63
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 64
    float-to-int v0, v0

    .line 66
    invoke-static {p4, p3, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FII)I

    .line 67
    move-result p3

    .line 70
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 71
    move-result-object p4

    .line 74
    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 75
    iget p0, p0, Landroid/graphics/RectF;->right:F

    .line 77
    float-to-int p0, p0

    .line 79
    iget p1, p1, Landroid/graphics/RectF;->right:F

    .line 80
    float-to-int p1, p1

    .line 82
    invoke-static {p2, p0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FII)I

    .line 83
    move-result p0

    .line 86
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 87
    move-result-object p1

    .line 90
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 91
    invoke-virtual {p5, p3, p4, p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    return-void
    .line 96
.end method
