.class public abstract Lcom/android/systemui/fsgesture/CornerRadiusUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static getPhoneRadius(Landroid/content/Context;Landroid/view/WindowInsets;)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/internal/modules/utils/build/SdkLevel;->isAtLeastT()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/view/RoundedCorner;->getRadius()I

    .line 15
    move-result p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p0

    .line 23
    const-string/jumbo p1, "rounded_corner_radius_top"

    .line 24
    const-string v0, "dimen"

    .line 27
    const-string v2, "android"

    .line 29
    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    move-result p1

    .line 34
    if-lez p1, :cond_1

    .line 35
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    move-result v1

    .line 40
    :cond_1
    move p0, v1

    .line 41
    :goto_0
    return p0
    .line 42
.end method
