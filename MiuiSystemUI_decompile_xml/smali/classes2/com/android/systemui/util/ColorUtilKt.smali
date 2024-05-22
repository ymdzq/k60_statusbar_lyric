.class public abstract Lcom/android/systemui/util/ColorUtilKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final getColorWithAlpha(FI)I
    .locals 2

    .line 1
    const/16 v0, 0xff

    .line 2
    int-to-float v0, v0

    .line 4
    mul-float/2addr p0, v0

    .line 5
    float-to-int p0, p0

    .line 6
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 7
    move-result v0

    .line 10
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 11
    move-result v1

    .line 14
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 15
    move-result p1

    .line 18
    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 19
    move-result p0

    .line 22
    return p0
    .line 23
.end method

.method public static final hexColorString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 4
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p0

    .line 11
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 20
    const-string v0, "#%08x"

    .line 21
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p0, "null"

    .line 28
    :goto_0
    return-object p0
    .line 30
.end method
