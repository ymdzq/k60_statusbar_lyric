.class public final Lmiuix/view/animation/ExponentialEaseOutInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/animation/Interpolator;


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    cmpl-float v0, p1, p0

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/high16 p0, -0x3ee00000    # -10.0f

    .line 9
    mul-float/2addr p1, p0

    .line 11
    float-to-double p0, p1

    .line 12
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 13
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    .line 15
    move-result-wide p0

    .line 18
    neg-double p0, p0

    .line 19
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 20
    add-double/2addr p0, v0

    .line 22
    double-to-float p0, p0

    .line 23
    :goto_0
    return p0
    .line 24
.end method
