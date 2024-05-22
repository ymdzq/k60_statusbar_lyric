.class public final Lmiuix/view/animation/SineEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/animation/Interpolator;


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    .line 1
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 2
    float-to-double p0, p1

    .line 7
    mul-double/2addr p0, v0

    .line 8
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    .line 9
    move-result-wide p0

    .line 12
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 13
    sub-double/2addr p0, v0

    .line 15
    double-to-float p0, p0

    .line 16
    const/high16 p1, -0x41000000    # -0.5f

    .line 17
    mul-float/2addr p0, p1

    .line 19
    return p0
    .line 20
.end method
