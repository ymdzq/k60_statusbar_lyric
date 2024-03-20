.class public final Landroidx/recyclerview/widget/DiffUtil$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 2
    check-cast p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 4
    iget p0, p1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 6
    iget p1, p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 8
    sub-int/2addr p0, p1

    .line 10
    return p0
    .line 11
.end method
