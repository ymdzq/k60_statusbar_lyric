.class public final Landroidx/core/animation/AccelerateDecelerateInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/core/animation/Interpolator;


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    add-float/2addr p1, p0

    .line 4
    float-to-double p0, p1

    .line 5
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 6
    mul-double/2addr p0, v0

    .line 11
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    .line 12
    move-result-wide p0

    .line 15
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 16
    div-double/2addr p0, v0

    .line 18
    double-to-float p0, p0

    .line 19
    const/high16 p1, 0x3f000000    # 0.5f

    .line 20
    add-float/2addr p0, p1

    .line 22
    return p0
    .line 23
.end method
