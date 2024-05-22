.class public abstract Lcom/miui/clock/utils/ColorUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static blendColor(I)I
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 2
    move-result v0

    .line 5
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 6
    move-result v1

    .line 9
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 10
    move-result v2

    .line 13
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 14
    move-result p0

    .line 17
    int-to-float p0, p0

    .line 18
    const v3, 0x3f19999a    # 0.6f

    .line 19
    mul-float/2addr p0, v3

    .line 22
    float-to-int p0, p0

    .line 23
    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 24
    move-result p0

    .line 27
    return p0
    .line 28
.end method
