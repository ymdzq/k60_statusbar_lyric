.class public abstract Landroidx/leanback/widget/Util;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static isDescendant(Landroid/view/View;Landroid/view/ViewGroup;)Z
    .locals 2

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    if-ne p0, p1, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    move-result-object p0

    .line 12
    instance-of v1, p0, Landroid/view/View;

    .line 13
    if-nez v1, :cond_1

    .line 15
    return v0

    .line 17
    :cond_1
    check-cast p0, Landroid/view/View;

    .line 18
    goto :goto_0

    .line 20
    :cond_2
    return v0
    .line 21
.end method
