.class public final Lmiuix/view/animation/BounceEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/animation/Interpolator;


# virtual methods
.method public final getInterpolation(F)F
    .locals 3

    .line 1
    const/high16 p0, 0x3f000000    # 0.5f

    .line 2
    cmpg-float v0, p1, p0

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    const/high16 v2, 0x40000000    # 2.0f

    .line 8
    if-gez v0, :cond_0

    .line 10
    mul-float/2addr p1, v2

    .line 12
    new-instance v0, Lmiuix/view/animation/BounceEaseOutInterpolator;

    .line 13
    invoke-direct {v0}, Lmiuix/view/animation/BounceEaseOutInterpolator;-><init>()V

    .line 15
    sub-float p1, v1, p1

    .line 18
    invoke-virtual {v0, p1}, Lmiuix/view/animation/BounceEaseOutInterpolator;->getInterpolation(F)F

    .line 20
    move-result p1

    .line 23
    sub-float/2addr v1, p1

    .line 24
    mul-float/2addr v1, p0

    .line 25
    return v1

    .line 26
    :cond_0
    new-instance v0, Lmiuix/view/animation/BounceEaseOutInterpolator;

    .line 27
    invoke-direct {v0}, Lmiuix/view/animation/BounceEaseOutInterpolator;-><init>()V

    .line 29
    mul-float/2addr p1, v2

    .line 32
    sub-float/2addr p1, v1

    .line 33
    invoke-virtual {v0, p1}, Lmiuix/view/animation/BounceEaseOutInterpolator;->getInterpolation(F)F

    .line 34
    move-result p1

    .line 37
    mul-float/2addr p1, p0

    .line 38
    add-float/2addr p1, p0

    .line 39
    return p1
    .line 40
.end method
