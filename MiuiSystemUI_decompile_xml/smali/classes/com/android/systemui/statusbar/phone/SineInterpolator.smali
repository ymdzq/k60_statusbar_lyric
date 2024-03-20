.class public final Lcom/android/systemui/statusbar/phone/SineInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/animation/Interpolator;


# virtual methods
.method public final getInterpolation(F)F
    .locals 4

    .line 1
    const/4 p0, 0x1

    .line 2
    int-to-double v0, p0

    .line 3
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 4
    float-to-double p0, p1

    .line 9
    mul-double/2addr p0, v2

    .line 10
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    .line 11
    move-result-wide p0

    .line 14
    sub-double/2addr v0, p0

    .line 15
    double-to-float p0, v0

    .line 16
    const/4 p1, 0x2

    .line 17
    int-to-float p1, p1

    .line 18
    div-float/2addr p0, p1

    .line 19
    return p0
    .line 20
.end method
