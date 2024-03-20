.class public abstract Landroidx/interpolator/view/animation/LookupTableInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static interpolate(FF[F)F
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    cmpl-float v1, p1, v0

    .line 4
    if-ltz v1, :cond_0

    .line 6
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    cmpg-float v1, p1, v0

    .line 10
    if-gtz v1, :cond_1

    .line 12
    return v0

    .line 14
    :cond_1
    array-length v0, p2

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    int-to-float v0, v0

    .line 18
    mul-float/2addr v0, p1

    .line 19
    float-to-int v0, v0

    .line 20
    array-length v1, p2

    .line 21
    add-int/lit8 v1, v1, -0x2

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 24
    move-result v0

    .line 27
    int-to-float v1, v0

    .line 28
    invoke-static {v1, p0, p1, p0}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 29
    move-result p0

    .line 32
    aget p1, p2, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 35
    aget p2, p2, v0

    .line 37
    invoke-static {p2, p1, p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 39
    move-result p0

    .line 42
    return p0
    .line 43
.end method
