.class public final Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$LogInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
