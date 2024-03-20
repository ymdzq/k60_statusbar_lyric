.class public final Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$LogInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/animation/Interpolator;


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    .line 1
    neg-float p0, p1

    .line 2
    float-to-double p0, p0

    .line 3
    const-wide v0, 0x3ff6666666666666L    # 1.4

    .line 4
    mul-double/2addr p0, v0

    .line 9
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    .line 10
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    .line 12
    move-result-wide p0

    .line 15
    double-to-float p0, p0

    .line 16
    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    sub-float/2addr p1, p0

    .line 19
    return p1
    .line 20
.end method
