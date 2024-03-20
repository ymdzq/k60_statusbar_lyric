.class public Lcom/android/settings/haptic/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method public static getTransitionColor(FII)I
    .locals 6

    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 21
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 22
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    .line 25
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 26
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 27
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 28
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    sub-int/2addr v3, v0

    sub-int/2addr v4, v1

    sub-int/2addr v5, v2

    sub-int/2addr p2, p1

    int-to-float v0, v0

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v1, v1

    int-to-float v3, v4

    mul-float/2addr v3, p0

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v2, v2

    int-to-float v3, v5

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float p1, p1

    int-to-float p2, p2

    mul-float/2addr p0, p2

    add-float/2addr p1, p0

    float-to-int p0, p1

    .line 40
    invoke-static {p0, v0, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static scaleVideoAndFillView(Landroid/view/TextureView;FF)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 71
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    div-float v3, p1, p2

    cmpl-float v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    div-float p1, v0, p1

    mul-float/2addr p2, p1

    div-float/2addr p2, v1

    goto :goto_0

    :cond_1
    div-float p2, v1, p2

    mul-float/2addr p1, p2

    div-float/2addr p1, v0

    move p2, v3

    move v3, p1

    .line 87
    :goto_0
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    div-float/2addr v1, v2

    .line 88
    invoke-virtual {p1, v3, p2, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 90
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method
