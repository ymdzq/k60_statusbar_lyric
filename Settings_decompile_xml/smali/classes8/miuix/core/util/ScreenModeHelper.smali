.class public Lmiuix/core/util/ScreenModeHelper;
.super Ljava/lang/Object;
.source "ScreenModeHelper.java"


# direct methods
.method public static detectWindowMode(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/graphics/Point;)V
    .locals 0

    .line 28
    invoke-static {p1, p0, p2}, Lmiuix/core/util/screenutils/FreeFormModeHelper;->detectFreeFormInfo(Lmiuix/core/util/WindowBaseInfo;Landroid/content/Context;Landroid/graphics/Point;)Lmiuix/core/util/WindowBaseInfo;

    .line 29
    iget p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    invoke-static {p0}, Lmiuix/core/util/ScreenModeHelper;->isInFreeFormMode(I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 30
    invoke-static {p1, p2}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->detectSplitScreenInfo(Lmiuix/core/util/WindowBaseInfo;Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public static isInFreeFormMode(I)Z
    .locals 0

    .line 0
    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInSplitScreenMode(I)Z
    .locals 0

    .line 0
    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
