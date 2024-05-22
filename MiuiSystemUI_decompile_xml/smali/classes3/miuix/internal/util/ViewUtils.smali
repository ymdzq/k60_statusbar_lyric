.class public abstract Lmiuix/internal/util/ViewUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 11
    move-result p0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    sub-int v0, p0, p4

    .line 17
    goto :goto_1

    .line 19
    :cond_1
    move v0, p2

    .line 20
    :goto_1
    if-eqz v1, :cond_2

    .line 21
    sub-int p4, p0, p2

    .line 23
    :cond_2
    invoke-virtual {p1, v0, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 25
    return-void
    .line 28
.end method
