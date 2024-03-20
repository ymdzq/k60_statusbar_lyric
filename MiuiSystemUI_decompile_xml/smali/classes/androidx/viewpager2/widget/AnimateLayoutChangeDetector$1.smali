.class public final Landroidx/viewpager2/widget/AnimateLayoutChangeDetector$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, [I

    .line 2
    check-cast p2, [I

    .line 4
    const/4 p0, 0x0

    .line 6
    aget p1, p1, p0

    .line 7
    aget p0, p2, p0

    .line 9
    sub-int/2addr p1, p0

    .line 11
    return p1
    .line 12
.end method
