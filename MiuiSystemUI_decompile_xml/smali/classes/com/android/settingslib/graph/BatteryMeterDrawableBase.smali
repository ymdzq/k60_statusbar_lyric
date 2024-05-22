.class public abstract Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    .line 2
    return-void
    .line 4
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    const/4 p0, 0x0

    .line 5
    int-to-float p1, p0

    .line 6
    const/4 v0, 0x0

    .line 7
    mul-float/2addr v0, p1

    .line 8
    float-to-int p1, v0

    .line 9
    sub-int/2addr p0, p1

    .line 10
    div-int/lit8 p0, p0, 0x2

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 13
    const/4 p0, 0x0

    .line 16
    throw p0
    .line 17
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
    .line 3
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setBounds(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 5
    move-result-object p0

    .line 8
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 9
    const/4 p0, 0x0

    .line 11
    throw p0
    .line 12
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
    .line 3
.end method
