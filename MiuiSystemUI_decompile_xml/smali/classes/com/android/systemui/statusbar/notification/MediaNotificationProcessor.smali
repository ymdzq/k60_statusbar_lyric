.class public abstract Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static findBackgroundSwatch(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Swatch;
    .locals 6

    .line 1
    new-instance v0, Landroidx/palette/graphics/Palette$Builder;

    .line 2
    invoke-direct {v0, p0}, Landroidx/palette/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 7
    move-result v1

    .line 10
    div-int/lit8 v1, v1, 0x2

    .line 11
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 13
    move-result p0

    .line 16
    iget-object v2, v0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 17
    if-eqz v2, :cond_2

    .line 19
    iget-object v3, v0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 21
    if-nez v3, :cond_0

    .line 23
    new-instance v3, Landroid/graphics/Rect;

    .line 25
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 27
    iput-object v3, v0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 30
    :cond_0
    iget-object v3, v0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 32
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 34
    move-result v4

    .line 37
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 38
    move-result v2

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual {v3, v5, v5, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    iget-object v2, v0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 46
    invoke-virtual {v2, v5, v5, v1, p0}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 48
    move-result p0

    .line 51
    if-eqz p0, :cond_1

    .line 52
    goto :goto_0

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 55
    const-string v0, "The given region must intersect with the Bitmap\'s dimensions."

    .line 57
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0

    .line 62
    :cond_2
    :goto_0
    iget-object p0, v0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    .line 63
    check-cast p0, Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 67
    const/16 p0, 0x57e4

    .line 70
    iput p0, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    .line 72
    const/4 p0, -0x1

    .line 74
    iput p0, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 75
    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    .line 77
    move-result-object v0

    .line 80
    iget-object v1, v0, Landroidx/palette/graphics/Palette;->mDominantSwatch:Landroidx/palette/graphics/Palette$Swatch;

    .line 81
    if-nez v1, :cond_3

    .line 83
    new-instance v1, Landroidx/palette/graphics/Palette$Swatch;

    .line 85
    const/16 v0, 0x64

    .line 87
    invoke-direct {v1, p0, v0}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    .line 89
    goto :goto_2

    .line 92
    :cond_3
    invoke-virtual {v1}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    .line 93
    move-result-object p0

    .line 96
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhiteOrBlack([F)Z

    .line 97
    move-result p0

    .line 100
    if-nez p0, :cond_4

    .line 101
    goto :goto_2

    .line 103
    :cond_4
    iget-object p0, v0, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    .line 104
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 106
    move-result-object p0

    .line 109
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    move-result-object p0

    .line 113
    const/high16 v0, -0x40800000    # -1.0f

    .line 114
    const/4 v2, 0x0

    .line 116
    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    move-result v3

    .line 120
    if-eqz v3, :cond_6

    .line 121
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    move-result-object v3

    .line 126
    check-cast v3, Landroidx/palette/graphics/Palette$Swatch;

    .line 127
    if-eq v3, v1, :cond_5

    .line 129
    iget v4, v3, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 131
    int-to-float v4, v4

    .line 133
    cmpl-float v4, v4, v0

    .line 134
    if-lez v4, :cond_5

    .line 136
    invoke-virtual {v3}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    .line 138
    move-result-object v4

    .line 141
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhiteOrBlack([F)Z

    .line 142
    move-result v4

    .line 145
    if-nez v4, :cond_5

    .line 146
    iget v0, v3, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 148
    int-to-float v0, v0

    .line 150
    move-object v2, v3

    .line 151
    goto :goto_1

    .line 152
    :cond_6
    if-nez v2, :cond_7

    .line 153
    goto :goto_2

    .line 155
    :cond_7
    iget p0, v1, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 156
    int-to-float p0, p0

    .line 158
    div-float/2addr p0, v0

    .line 159
    const/high16 v0, 0x40200000    # 2.5f

    .line 160
    cmpl-float p0, p0, v0

    .line 162
    if-lez p0, :cond_8

    .line 164
    goto :goto_2

    .line 166
    :cond_8
    move-object v1, v2

    .line 167
    :goto_2
    return-object v1
    .line 168
.end method

.method public static isWhiteOrBlack([F)Z
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    aget p0, p0, v0

    .line 3
    const v0, 0x3da3d70a    # 0.08f

    .line 5
    cmpg-float v0, p0, v0

    .line 8
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-gtz v0, :cond_0

    .line 12
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    if-nez v0, :cond_3

    .line 17
    const v0, 0x3f666666    # 0.9f

    .line 19
    cmpl-float p0, p0, v0

    .line 22
    if-ltz p0, :cond_1

    .line 24
    move p0, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move p0, v2

    .line 28
    :goto_1
    if-eqz p0, :cond_2

    .line 29
    goto :goto_2

    .line 31
    :cond_2
    move v1, v2

    .line 32
    :cond_3
    :goto_2
    return v1
    .line 33
.end method
