.class public final Lmiuix/view/animation/QuadraticEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
    cmpg-float v1, p1, v0

    .line 7
    if-gez v1, :cond_0

    .line 9
    const/high16 p0, 0x3f000000    # 0.5f

    .line 11
    mul-float/2addr p0, p1

    .line 13
    :goto_0
    mul-float/2addr p0, p1

    .line 14
    return p0

    .line 15
    :cond_0
    sub-float/2addr p1, v0

    .line 16
    sub-float p0, p1, p0

    .line 17
    mul-float/2addr p0, p1

    .line 19
    sub-float/2addr p0, v0

    .line 20
    const/high16 p1, -0x41000000    # -0.5f

    .line 21
    goto :goto_0
    .line 23
.end method
