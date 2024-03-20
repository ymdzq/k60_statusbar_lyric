.class public abstract Lcom/miui/utils/DrawableUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/miui/maml/FancyDrawable;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/miui/maml/FancyDrawable;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/FancyDrawable;->getQuietDrawable()Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    move-object p1, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 17
    move-result-object v0

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v1

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/ScreenElementRoot;->tick(J)V

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 28
    return-void
    .line 31
.end method

.method public static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    if-eqz v1, :cond_1

    .line 8
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 12
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 17
    move-result v1

    .line 20
    if-lez v1, :cond_6

    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 23
    move-result v1

    .line 26
    if-lez v1, :cond_6

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 29
    move-result v0

    .line 32
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 33
    move-result v1

    .line 36
    instance-of v2, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;

    .line 37
    instance-of v3, p0, Lcom/miui/maml/FancyDrawable;

    .line 39
    if-nez v3, :cond_3

    .line 41
    if-nez v2, :cond_3

    .line 43
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 45
    move-result v3

    .line 48
    const/4 v4, -0x1

    .line 49
    if-eq v3, v4, :cond_2

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 53
    goto :goto_1

    .line 55
    :cond_3
    :goto_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 56
    :goto_1
    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 58
    move-result-object v3

    .line 61
    new-instance v4, Landroid/graphics/Canvas;

    .line 62
    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    const/4 v5, 0x0

    .line 67
    invoke-virtual {p0, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    if-eqz v2, :cond_4

    .line 71
    check-cast p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;

    .line 73
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    .line 75
    move-result-object v0

    .line 78
    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 79
    const/4 v0, 0x1

    .line 82
    invoke-static {p0, v0}, Lcom/miui/utils/DrawableUtils;->getRealDrawables(Lcom/miui/maml/MamlAdaptiveIconDrawable;Z)Ljava/util/List;

    .line 83
    move-result-object p0

    .line 86
    check-cast p0, Ljava/util/ArrayList;

    .line 87
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object p0

    .line 92
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v0

    .line 96
    if-eqz v0, :cond_5

    .line 97
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 102
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 103
    invoke-static {v4, v0}, Lcom/miui/utils/DrawableUtils;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 105
    goto :goto_2

    .line 108
    :cond_4
    invoke-static {v4, p0}, Lcom/miui/utils/DrawableUtils;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_5
    return-object v3

    .line 112
    :cond_6
    return-object v0
    .line 113
.end method

.method public static getFancyChildOrSelf(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/miui/maml/AnimatingDrawable;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    move-object v0, p0

    .line 6
    check-cast v0, Lcom/miui/maml/AnimatingDrawable;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/AnimatingDrawable;->isOnlyFancyWork()Z

    .line 9
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/AnimatingDrawable;->getFancyDrawable()Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object v0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 21
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 25
    :cond_0
    return-object v0

    .line 28
    :cond_1
    return-object p0
    .line 29
.end method

.method public static getRealDrawables(Lcom/miui/maml/MamlAdaptiveIconDrawable;Z)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object v1

    .line 10
    invoke-static {v1, p1}, Lcom/miui/utils/DrawableUtils;->getFancyChildOrSelf(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object p0

    .line 21
    instance-of v1, p0, Landroid/graphics/drawable/LayerDrawable;

    .line 22
    if-eqz v1, :cond_0

    .line 24
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 26
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 28
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    :goto_0
    if-ge v2, v1, :cond_1

    .line 33
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object v3

    .line 38
    invoke-static {v3, p1}, Lcom/miui/utils/DrawableUtils;->getFancyChildOrSelf(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/utils/DrawableUtils;->getFancyChildOrSelf(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_1
    return-object v0
    .line 56
.end method
