.class public final Landroidx/cardview/widget/CardViewApi21Impl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public final setMaxElevation(Landroidx/cardview/widget/CardView$1;F)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    check-cast v0, Landroidx/cardview/widget/RoundRectDrawable;

    .line 4
    iget-object v1, p1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    .line 6
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 8
    move-result v2

    .line 11
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 12
    move-result v1

    .line 15
    iget v3, v0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    .line 16
    cmpl-float v3, p2, v3

    .line 18
    if-nez v3, :cond_0

    .line 20
    iget-boolean v3, v0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    .line 22
    if-ne v3, v2, :cond_0

    .line 24
    iget-boolean v3, v0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    .line 26
    if-ne v3, v1, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    iput p2, v0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    .line 31
    iput-boolean v2, v0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    .line 33
    iput-boolean v1, v0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    .line 35
    const/4 p2, 0x0

    .line 37
    invoke-virtual {v0, p2}, Landroidx/cardview/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 38
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 41
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->updatePadding(Landroidx/cardview/widget/CardView$1;)V

    .line 44
    return-void
    .line 47
.end method

.method public final updatePadding(Landroidx/cardview/widget/CardView$1;)V
    .locals 8

    .line 1
    iget-object p0, p1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    .line 2
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 4
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    invoke-virtual {p1, p0, p0, p0, p0}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    .line 11
    return-void

    .line 14
    :cond_0
    iget-object p0, p1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    .line 15
    check-cast p0, Landroidx/cardview/widget/RoundRectDrawable;

    .line 17
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    .line 19
    iget p0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    .line 21
    iget-object v1, p1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    .line 23
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 25
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    float-to-double v2, v0

    .line 31
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 32
    sget-wide v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    .line 34
    sub-double/2addr v4, v6

    .line 36
    float-to-double v6, p0

    .line 37
    mul-double/2addr v4, v6

    .line 38
    add-double/2addr v4, v2

    .line 39
    double-to-float v2, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget v2, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->$r8$clinit:I

    .line 42
    move v2, v0

    .line 44
    :goto_0
    float-to-double v2, v2

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 46
    move-result-wide v2

    .line 49
    double-to-int v2, v2

    .line 50
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 51
    move-result v1

    .line 54
    invoke-static {v0, p0, v1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    .line 55
    move-result p0

    .line 58
    float-to-double v0, p0

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 60
    move-result-wide v0

    .line 63
    double-to-int p0, v0

    .line 64
    invoke-virtual {p1, v2, p0, v2, p0}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    .line 65
    return-void
    .line 68
.end method
