.class public final Lmiuix/internal/widget/ListPopup$3;
.super Landroid/view/ViewOutlineProvider;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    move-result p0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 8
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p0

    .line 18
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 23
    move-result-object p0

    .line 26
    const/4 v1, 0x1

    .line 27
    const v2, 0x7f0405e5    # @attr/popupWindowShadowAlpha

    .line 28
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 31
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    iget p0, v0, Landroid/util/TypedValue;->type:I

    .line 37
    const/4 v1, 0x4

    .line 39
    if-ne p0, v1, :cond_1

    .line 40
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 42
    int-to-float p0, p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    :goto_0
    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 50
    move-result-object p0

    .line 53
    if-eqz p0, :cond_2

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 56
    move-result-object p0

    .line 59
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 60
    :cond_2
    :goto_1
    return-void
    .line 63
.end method
