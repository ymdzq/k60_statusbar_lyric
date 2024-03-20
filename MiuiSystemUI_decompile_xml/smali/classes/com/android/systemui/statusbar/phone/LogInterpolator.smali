.class public final Lcom/android/systemui/statusbar/phone/LogInterpolator;
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
    int-to-float p0, p0

    .line 3
    neg-float p1, p1

    .line 4
    float-to-double v0, p1

    .line 5
    const-wide v2, 0x3ff6666666666666L    # 1.4

    .line 6
    mul-double/2addr v0, v2

    .line 11
    const-wide/high16 v2, 0x4079000000000000L    # 400.0

    .line 12
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 14
    move-result-wide v0

    .line 17
    double-to-float p1, v0

    .line 18
    sub-float/2addr p0, p1

    .line 19
    return p0
    .line 20
.end method
