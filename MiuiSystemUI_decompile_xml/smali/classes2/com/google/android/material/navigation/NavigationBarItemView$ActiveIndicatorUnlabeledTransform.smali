.class public final Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorUnlabeledTransform;
.super Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final calculateScaleY(FF)F
    .locals 0

    .line 1
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 2
    const p0, 0x3f19999a    # 0.6f

    .line 4
    mul-float/2addr p1, p0

    .line 7
    const p0, 0x3ecccccd    # 0.4f

    .line 8
    add-float/2addr p1, p0

    .line 11
    return p1
    .line 12
.end method
