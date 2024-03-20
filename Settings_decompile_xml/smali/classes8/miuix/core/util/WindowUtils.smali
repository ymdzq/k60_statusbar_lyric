.class public Lmiuix/core/util/WindowUtils;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# direct methods
.method public static getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 2

    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string v0, "WindowUtils"

    const-string v1, "This context is not associated with a display. You should use createDisplayContext() to create a display context to work with windows."

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 1

    .line 154
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;)V

    return-void
.end method

.method public static getScreenSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 0

    .line 159
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 161
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p2, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public static getWindowHeight(Landroid/content/Context;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public static getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    const-string v0, "window"

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method public static getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    .line 179
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 180
    invoke-static {p0, v0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    return-object v0
.end method

.method public static getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 1

    .line 70
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;)V

    return-void
.end method

.method public static getWindowSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 0

    .line 102
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 104
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p2, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public static isFreeformMode(Landroid/content/res/Configuration;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 3

    .line 363
    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/4 v1, 0x0

    add-float/2addr v0, v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 364
    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    add-float/2addr p2, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 365
    invoke-virtual {p0}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mWindowingMode=freeform"

    .line 366
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x3f666666    # 0.9f

    cmpg-float p1, v0, p0

    if-lez p1, :cond_0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
