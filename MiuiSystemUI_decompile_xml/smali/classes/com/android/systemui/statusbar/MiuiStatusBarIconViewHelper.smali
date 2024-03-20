.class public abstract Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static transformResId(IZZ)I
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    sget-object p1, Lcom/android/systemui/statusbar/Icons;->sTintIconMap:Ljava/util/Map;

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p2

    .line 9
    check-cast p1, Ljava/util/HashMap;

    .line 10
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Integer;

    .line 16
    if-nez p1, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p0

    .line 24
    :goto_0
    return p0

    .line 25
    :cond_1
    if-eqz p2, :cond_2

    .line 26
    invoke-static {p0}, Lcom/android/systemui/statusbar/Icons;->getLightDrawableId(I)I

    .line 28
    move-result p0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/Icons;->getDarkDrawableId(I)I

    .line 33
    move-result p0

    .line 36
    :goto_1
    return p0
    .line 37
.end method
