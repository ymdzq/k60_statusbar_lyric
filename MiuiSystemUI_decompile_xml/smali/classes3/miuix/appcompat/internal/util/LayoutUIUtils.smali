.class public abstract Lmiuix/appcompat/internal/util/LayoutUIUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static getExtraPaddingByLevel(ILandroid/content/Context;)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p0

    .line 16
    const p1, 0x7f070b8f    # @dimen/miuix_appcompat_window_extra_padding_horizontal_huge '0.0dp'

    .line 17
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object p0

    .line 28
    const p1, 0x7f070b90    # @dimen/miuix_appcompat_window_extra_padding_horizontal_large '0.0dp'

    .line 29
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object p0

    .line 40
    const p1, 0x7f070b91    # @dimen/miuix_appcompat_window_extra_padding_horizontal_small '0.0dp'

    .line 41
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result p0

    .line 47
    return p0
    .line 48
.end method
