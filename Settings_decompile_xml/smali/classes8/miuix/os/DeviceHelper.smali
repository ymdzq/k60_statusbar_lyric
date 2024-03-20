.class public Lmiuix/os/DeviceHelper;
.super Ljava/lang/Object;
.source "DeviceHelper.java"


# direct methods
.method public static detectType(Landroid/content/Context;)I
    .locals 0

    .line 14
    sget-boolean p0, Lmiuix/os/Build;->IS_FOLDABLE:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 17
    :cond_0
    sget-boolean p0, Lmiuix/os/Build;->IS_TABLET:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isWideScreen(Landroid/content/Context;)Z
    .locals 2

    .line 29
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getScreenShortEdge(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44160000    # 600.0f

    mul-float/2addr p0, v1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
