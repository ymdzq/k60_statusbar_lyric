.class public final Lcom/google/android/material/internal/ToolbarUtils$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    check-cast p2, Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 6
    move-result p0

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 10
    move-result p1

    .line 13
    sub-int/2addr p0, p1

    .line 14
    return p0
    .line 15
.end method
