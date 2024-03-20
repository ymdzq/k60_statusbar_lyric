.class public final Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mData:[I

.field public mFullSpanItems:Ljava/util/List;


# virtual methods
.method public final clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v1, -0x1

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 11
    return-void
    .line 13
.end method

.method public final ensureSize(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    const/16 v0, 0xa

    .line 7
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 9
    move-result p1

    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    new-array p1, p1, [I

    .line 15
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 17
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    .line 19
    goto :goto_1

    .line 22
    :cond_0
    array-length v2, v0

    .line 23
    if-lt p1, v2, :cond_2

    .line 24
    array-length v2, v0

    .line 26
    :goto_0
    if-gt v2, p1, :cond_1

    .line 27
    mul-int/lit8 v2, v2, 0x2

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    new-array p1, v2, [I

    .line 32
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 34
    array-length v2, v0

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 41
    array-length p1, v0

    .line 43
    array-length v0, p0

    .line 44
    invoke-static {p0, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 45
    :cond_2
    :goto_1
    return-void
    .line 48
.end method

.method public final invalidateAfter(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    array-length v0, v0

    .line 8
    if-lt p1, v0, :cond_1

    .line 9
    return v1

    .line 11
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 12
    if-nez v0, :cond_2

    .line 14
    goto :goto_4

    .line 16
    :cond_2
    const/4 v2, 0x0

    .line 17
    if-nez v0, :cond_3

    .line 18
    goto :goto_1

    .line 20
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    :goto_0
    if-ltz v0, :cond_5

    .line 26
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 28
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 33
    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 34
    iget v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 36
    if-ne v4, p1, :cond_4

    .line 38
    move-object v2, v3

    .line 40
    goto :goto_1

    .line 41
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 45
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 47
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 49
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 54
    move-result v0

    .line 57
    const/4 v2, 0x0

    .line 58
    :goto_2
    if-ge v2, v0, :cond_8

    .line 59
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 61
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 66
    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 67
    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 69
    if-lt v3, p1, :cond_7

    .line 71
    goto :goto_3

    .line 73
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 74
    goto :goto_2

    .line 76
    :cond_8
    move v2, v1

    .line 77
    :goto_3
    if-eq v2, v1, :cond_9

    .line 78
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 80
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 85
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 86
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 88
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 90
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 93
    goto :goto_5

    .line 95
    :cond_9
    :goto_4
    move v0, v1

    .line 96
    :goto_5
    if-ne v0, v1, :cond_a

    .line 97
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 99
    array-length v2, v0

    .line 101
    invoke-static {v0, p1, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 102
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 105
    array-length p0, p0

    .line 107
    return p0

    .line 108
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 109
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 111
    array-length v2, v2

    .line 113
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 114
    move-result v0

    .line 117
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 118
    invoke-static {p0, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 120
    return v0
    .line 123
.end method

.method public final offsetForAddition(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2
    if-eqz v0, :cond_3

    .line 4
    array-length v0, v0

    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    goto :goto_2

    .line 9
    :cond_0
    add-int v0, p1, p2

    .line 10
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 15
    array-length v2, v1

    .line 17
    sub-int/2addr v2, p1

    .line 18
    sub-int/2addr v2, p2

    .line 19
    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 23
    const/4 v2, -0x1

    .line 25
    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 26
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 29
    if-nez v0, :cond_1

    .line 31
    goto :goto_2

    .line 33
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    move-result v0

    .line 37
    add-int/2addr v0, v2

    .line 38
    :goto_0
    if-ltz v0, :cond_3

    .line 39
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 41
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 46
    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 47
    iget v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 49
    if-ge v2, p1, :cond_2

    .line 51
    goto :goto_1

    .line 53
    :cond_2
    add-int/2addr v2, p2

    .line 54
    iput v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 55
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 57
    goto :goto_0

    .line 59
    :cond_3
    :goto_2
    return-void
    .line 60
.end method

.method public final offsetForRemoval(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2
    if-eqz v0, :cond_4

    .line 4
    array-length v0, v0

    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    goto :goto_2

    .line 9
    :cond_0
    add-int v0, p1, p2

    .line 10
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 15
    array-length v2, v1

    .line 17
    sub-int/2addr v2, p1

    .line 18
    sub-int/2addr v2, p2

    .line 19
    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 23
    array-length v2, v1

    .line 25
    sub-int/2addr v2, p2

    .line 26
    array-length v3, v1

    .line 27
    const/4 v4, -0x1

    .line 28
    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 29
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 32
    if-nez v1, :cond_1

    .line 34
    goto :goto_2

    .line 36
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    move-result v1

    .line 40
    add-int/2addr v1, v4

    .line 41
    :goto_0
    if-ltz v1, :cond_4

    .line 42
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 44
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 49
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 50
    iget v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 52
    if-ge v3, p1, :cond_2

    .line 54
    goto :goto_1

    .line 56
    :cond_2
    if-ge v3, v0, :cond_3

    .line 57
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 59
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 61
    goto :goto_1

    .line 64
    :cond_3
    sub-int/2addr v3, p2

    .line 65
    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 66
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 68
    goto :goto_0

    .line 70
    :cond_4
    :goto_2
    return-void
    .line 71
.end method
