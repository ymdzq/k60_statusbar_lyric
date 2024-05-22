.class public interface abstract Lcom/android/systemui/classifier/FalsingModule;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static providesDoubleTapTouchSlop(Landroid/content/res/Resources;)F
    .locals 1

    .line 1
    const v0, 0x7f0702e0    # @dimen/double_tap_slop '32.0dp'

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public static providesIsFoldableDevice(Landroid/content/res/Resources;)Z
    .locals 2

    .line 1
    const v0, 0x107006d    # @android:array/config_forceQueryablePackages

    .line 2
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 6
    move-result-object p0

    .line 9
    array-length p0, p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    const/4 v1, 0x1

    .line 13
    :catch_0
    :cond_0
    return v1
    .line 14
.end method

.method public static providesLongTapTouchSlop(Landroid/view/ViewConfiguration;)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 2
    move-result p0

    .line 5
    int-to-float p0, p0

    .line 6
    const/high16 v0, 0x3fa00000    # 1.25f

    .line 7
    mul-float/2addr p0, v0

    .line 9
    return p0
    .line 10
.end method
