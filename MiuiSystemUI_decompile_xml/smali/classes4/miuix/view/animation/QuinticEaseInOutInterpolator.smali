.class public final Lmiuix/view/animation/QuinticEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/animation/Interpolator;


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    .line 1
    const/high16 p0, 0x40000000    # 2.0f

    .line 2
    mul-float/2addr p1, p0

    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    cmpg-float v0, p1, v0

    .line 7
    const/high16 v1, 0x3f000000    # 0.5f

    .line 9
    if-gez v0, :cond_0

    .line 11
    mul-float/2addr v1, p1

    .line 13
    mul-float/2addr v1, p1

    .line 14
    mul-float/2addr v1, p1

    .line 15
    mul-float/2addr v1, p1

    .line 16
    mul-float/2addr v1, p1

    .line 17
    return v1

    .line 18
    :cond_0
    sub-float/2addr p1, p0

    .line 19
    mul-float v0, p1, p1

    .line 20
    mul-float/2addr v0, p1

    .line 22
    mul-float/2addr v0, p1

    .line 23
    mul-float/2addr v0, p1

    .line 24
    add-float/2addr v0, p0

    .line 25
    mul-float/2addr v0, v1

    .line 26
    return v0
    .line 27
.end method
