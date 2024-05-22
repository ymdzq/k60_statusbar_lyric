.class public final Landroidx/viewpager2/widget/AnimateLayoutChangeDetector$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
