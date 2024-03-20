.class public abstract Lmiuix/internal/util/ActionBarUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static getActionBarOverlayLayout(Landroid/view/View;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
    .locals 2

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    instance-of v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    move-object v0, p0

    .line 9
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 10
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    move-result-object v1

    .line 16
    instance-of v1, v1, Landroid/view/View;

    .line 17
    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    move-result-object p0

    .line 24
    check-cast p0, Landroid/view/View;

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    move-object p0, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    :goto_1
    return-object v0
    .line 30
.end method
