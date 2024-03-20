.class public Lmiuix/core/util/screenutils/FreeFormModeHelper;
.super Ljava/lang/Object;
.source "FreeFormModeHelper.java"


# direct methods
.method private static acquireFreeFormWindowRatioInternal(Lmiuix/core/util/WindowBaseInfo;Landroid/content/Context;Landroid/graphics/Point;)Lmiuix/core/util/WindowBaseInfo;
    .locals 1

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 36
    invoke-static {p1, p2, v0}, Lmiuix/core/util/WindowUtils;->isFreeformMode(Landroid/content/res/Configuration;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 41
    iget p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    and-int/lit16 p1, p1, -0x2001

    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    return-object p0

    .line 45
    :cond_0
    iget-object p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 46
    iget p1, p1, Landroid/graphics/Point;->y:I

    if-eqz p2, :cond_1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 50
    :goto_0
    invoke-static {p0, p1}, Lmiuix/core/util/screenutils/FreeFormModeHelper;->freeFormModeRatioToCodeInternal(Lmiuix/core/util/WindowBaseInfo;F)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    return-object p0
.end method

.method public static detectFreeFormInfo(Lmiuix/core/util/WindowBaseInfo;Landroid/content/Context;Landroid/graphics/Point;)Lmiuix/core/util/WindowBaseInfo;
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lmiuix/core/util/screenutils/FreeFormModeHelper;->acquireFreeFormWindowRatioInternal(Lmiuix/core/util/WindowBaseInfo;Landroid/content/Context;Landroid/graphics/Point;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    return-object p0
.end method

.method private static freeFormModeRatioToCodeInternal(Lmiuix/core/util/WindowBaseInfo;F)Lmiuix/core/util/WindowBaseInfo;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    goto :goto_0

    :cond_0
    const v0, 0x3f3d70a4    # 0.74f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const v0, 0x3f428f5c    # 0.76f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/16 p1, 0x2003

    .line 58
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    goto :goto_0

    :cond_1
    const v0, 0x3fa8f5c3    # 1.32f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    const v0, 0x3fab851f    # 1.34f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    const/16 p1, 0x2002

    .line 60
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    goto :goto_0

    :cond_2
    const v0, 0x3fe147ae    # 1.76f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    const v0, 0x3fe51eb8    # 1.79f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    const/16 p1, 0x2001

    .line 62
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x2004

    .line 64
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    :goto_0
    return-object p0
.end method
