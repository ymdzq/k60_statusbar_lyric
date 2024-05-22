.class public final Lmiuix/view/animation/ExponentialEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/animation/Interpolator;


# virtual methods
.method public final getInterpolation(F)F
    .locals 4

    .line 1
    const/4 p0, 0x0

    .line 2
    cmpl-float v0, p1, p0

    .line 3
    if-nez v0, :cond_0

    .line 5
    return p0

    .line 7
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 8
    cmpl-float v0, p1, p0

    .line 10
    if-nez v0, :cond_1

    .line 12
    return p0

    .line 14
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 15
    mul-float/2addr p1, v0

    .line 17
    cmpg-float v0, p1, p0

    .line 18
    const/high16 v1, 0x3f000000    # 0.5f

    .line 20
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 22
    if-gez v0, :cond_2

    .line 24
    const/high16 v0, 0x41200000    # 10.0f

    .line 26
    sub-float/2addr p1, p0

    .line 28
    mul-float/2addr p1, v0

    .line 29
    float-to-double p0, p1

    .line 30
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    .line 31
    move-result-wide p0

    .line 34
    :goto_0
    double-to-float p0, p0

    .line 35
    mul-float/2addr p0, v1

    .line 36
    return p0

    .line 37
    :cond_2
    sub-float/2addr p1, p0

    .line 38
    const/high16 p0, -0x3ee00000    # -10.0f

    .line 39
    mul-float/2addr p1, p0

    .line 41
    float-to-double p0, p1

    .line 42
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    .line 43
    move-result-wide p0

    .line 46
    neg-double p0, p0

    .line 47
    add-double/2addr p0, v2

    .line 48
    goto :goto_0
    .line 49
.end method
