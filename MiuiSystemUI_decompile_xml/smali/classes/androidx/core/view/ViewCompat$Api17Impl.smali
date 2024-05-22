.class public abstract Landroidx/core/view/ViewCompat$Api17Impl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static generateViewId()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 2
    move-result v0

    .line 5
    return v0
    .line 6
.end method

.method public static getDisplay(Landroid/view/View;)Landroid/view/Display;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static getLayoutDirection(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static getPaddingEnd(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static getPaddingStart(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static isPaddingRelative(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isPaddingRelative()Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static setLabelFor(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setLabelFor(I)V

    .line 2
    return-void
    .line 5
.end method

.method public static setPaddingRelative(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 2
    return-void
    .line 5
.end method
