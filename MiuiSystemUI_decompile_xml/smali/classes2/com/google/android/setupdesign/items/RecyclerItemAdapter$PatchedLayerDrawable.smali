.class Lcom/google/android/setupdesign/items/RecyclerItemAdapter$PatchedLayerDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2
    move-result p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 8
    if-nez p0, :cond_0

    .line 10
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 12
    if-nez p0, :cond_0

    .line 14
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 16
    if-nez p0, :cond_0

    .line 18
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 20
    if-eqz p0, :cond_1

    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
    .line 27
.end method
