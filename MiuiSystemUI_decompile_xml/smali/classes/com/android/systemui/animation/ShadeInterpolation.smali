.class public abstract Lcom/android/systemui/animation/ShadeInterpolation;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final getContentAlpha(F)F
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    const v2, 0x3e99999a    # 0.3f

    .line 5
    invoke-static {v0, v1, v2, v1, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    .line 8
    move-result p0

    .line 11
    const v2, 0x3f99999a    # 1.2f

    .line 12
    mul-float/2addr p0, v2

    .line 15
    const v2, 0x3e4ccccd    # 0.2f

    .line 16
    sub-float/2addr p0, v2

    .line 19
    cmpg-float v2, p0, v0

    .line 20
    if-gtz v2, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    sub-float p0, v1, p0

    .line 25
    float-to-double v0, v1

    .line 27
    const/high16 v2, 0x3f000000    # 0.5f

    .line 28
    float-to-double v2, v2

    .line 30
    const v4, 0x40490fd0

    .line 31
    mul-float/2addr v4, p0

    .line 34
    mul-float/2addr v4, p0

    .line 35
    float-to-double v4, v4

    .line 36
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 37
    move-result-wide v4

    .line 40
    sub-double v4, v0, v4

    .line 41
    mul-double/2addr v4, v2

    .line 43
    sub-double/2addr v0, v4

    .line 44
    double-to-float v0, v0

    .line 45
    :goto_0
    return v0
    .line 46
.end method
