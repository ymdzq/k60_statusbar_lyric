.class public final Lcom/android/wm/shell/pip/tv/CenteredImageSpan;
.super Landroid/text/style/ImageSpan;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/wm/shell/pip/tv/CenteredImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p2

    .line 9
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/CenteredImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/CenteredImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 17
    move-result-object p2

    .line 20
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 21
    sub-int/2addr p8, p2

    .line 23
    div-int/lit8 p8, p8, 0x2

    .line 24
    int-to-float p2, p8

    .line 26
    invoke-virtual {p1, p5, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 27
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 33
    return-void
    .line 36
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/wm/shell/pip/tv/CenteredImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p2

    .line 9
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/CenteredImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/CenteredImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object p0

    .line 17
    if-eqz p5, :cond_1

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 20
    move-result-object p1

    .line 23
    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 24
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 26
    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 28
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 30
    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 32
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 34
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 36
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 38
    :cond_1
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 40
    return p0
    .line 42
.end method
