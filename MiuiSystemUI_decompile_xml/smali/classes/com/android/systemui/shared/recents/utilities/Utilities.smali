.class public abstract Lcom/android/systemui/shared/recents/utilities/Utilities;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static calculateBackDispositionHints(IIZ)I
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 v1, 0x1

    .line 5
    if-eq p1, v1, :cond_0

    .line 6
    if-eq p1, v0, :cond_0

    .line 8
    const/4 v1, 0x3

    .line 10
    if-eq p1, v1, :cond_1

    .line 11
    move v1, p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    or-int/lit8 v1, p0, 0x1

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    and-int/lit8 v1, p0, -0x2

    .line 20
    :goto_0
    if-eqz p2, :cond_2

    .line 22
    or-int/2addr v0, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    and-int/lit8 v0, v1, -0x3

    .line 26
    :goto_1
    const-string v1, " oldHints : "

    .line 28
    const-string v2, " backDisposition : "

    .line 30
    const-string v3, " imeShown : "

    .line 32
    invoke-static {v1, p0, v2, p1, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object p0

    .line 37
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    const-string p1, " hints "

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    const-string p1, "Utilities"

    .line 53
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return v0
    .line 58
.end method

.method public static isLargeScreen(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-class v0, Landroid/view/WindowManager;

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/WindowManager;

    .line 8
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 18
    move-result v1

    .line 21
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 22
    move-result v0

    .line 25
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result v0

    .line 29
    int-to-float v0, v0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 35
    move-result-object p0

    .line 38
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 39
    int-to-float p0, p0

    .line 41
    const/high16 v1, 0x43200000    # 160.0f

    .line 42
    div-float/2addr p0, v1

    .line 44
    div-float/2addr v0, p0

    .line 45
    const/high16 p0, 0x44160000    # 600.0f

    .line 46
    cmpl-float p0, v0, p0

    .line 48
    if-ltz p0, :cond_0

    .line 50
    const/4 p0, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p0, 0x0

    .line 54
    :goto_0
    return p0
    .line 55
.end method
