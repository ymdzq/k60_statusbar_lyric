.class public abstract Lmiuix/core/util/WindowUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 1

    .line 1
    const-string v0, "window"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/WindowManager;

    .line 8
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 18
    move-result v0

    .line 21
    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 22
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 24
    move-result p0

    .line 27
    iput p0, p1, Landroid/graphics/Point;->y:I

    .line 28
    return-void
    .line 30
.end method

.method public static getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 1

    .line 1
    const-string v0, "window"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/WindowManager;

    .line 8
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 18
    move-result v0

    .line 21
    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 22
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 24
    move-result p0

    .line 27
    iput p0, p1, Landroid/graphics/Point;->y:I

    .line 28
    return-void
    .line 30
.end method
