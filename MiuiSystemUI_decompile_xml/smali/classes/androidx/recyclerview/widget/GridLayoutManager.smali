.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCachedBorders:[I

.field public final mDecorInsets:Landroid/graphics/Rect;

.field public mPendingSpanCountChange:Z

.field public final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field public final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field public mSet:[Landroid/view/View;

.field public mSpanCount:I

.field public mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 18
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 21
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 22
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 23
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    const/4 p2, 0x1

    .line 10
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 p2, -0x1

    .line 12
    iput p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 13
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 14
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 15
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {p2}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 16
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 17
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 5
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 6
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 8
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 9
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method


# virtual methods
.method public final calculateItemBorders(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 2
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    array-length v3, v0

    .line 9
    add-int/lit8 v4, v1, 0x1

    .line 10
    if-ne v3, v4, :cond_0

    .line 12
    array-length v3, v0

    .line 14
    sub-int/2addr v3, v2

    .line 15
    aget v3, v0, v3

    .line 16
    if-eq v3, p1, :cond_1

    .line 18
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 20
    new-array v0, v0, [I

    .line 22
    :cond_1
    const/4 v3, 0x0

    .line 24
    aput v3, v0, v3

    .line 25
    div-int v4, p1, v1

    .line 27
    rem-int/2addr p1, v1

    .line 29
    move v5, v3

    .line 30
    :goto_0
    if-gt v2, v1, :cond_3

    .line 31
    add-int/2addr v3, p1

    .line 33
    if-lez v3, :cond_2

    .line 34
    sub-int v6, v1, v3

    .line 36
    if-ge v6, p1, :cond_2

    .line 38
    add-int/lit8 v6, v4, 0x1

    .line 40
    sub-int/2addr v3, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v6, v4

    .line 44
    :goto_1
    add-int/2addr v5, v6

    .line 45
    aput v5, v0, v2

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_0

    .line 50
    :cond_3
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 51
    return-void
    .line 53
.end method

.method public final checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 2
    return p0
    .line 4
.end method

.method public final collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 2
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 6
    if-ge v2, v3, :cond_1

    .line 8
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 10
    if-ltz v3, :cond_0

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 14
    move-result v4

    .line 17
    if-ge v3, v4, :cond_0

    .line 18
    const/4 v3, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move v3, v1

    .line 22
    :goto_1
    if-eqz v3, :cond_1

    .line 23
    if-lez v0, :cond_1

    .line 25
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 27
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 29
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 31
    move-result v4

    .line 34
    invoke-virtual {p3, v3, v4}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->addPosition(II)V

    .line 35
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 38
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    .line 40
    move-result v3

    .line 43
    sub-int/2addr v0, v3

    .line 44
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 45
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 47
    add-int/2addr v3, v4

    .line 49
    iput v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 52
    goto :goto_0

    .line 54
    :cond_1
    return-void
    .line 55
.end method

.method public final computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ZZ)Landroid/view/View;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    move-result p3

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p4, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 9
    move-result p3

    .line 12
    sub-int/2addr p3, v0

    .line 13
    const/4 p4, -0x1

    .line 14
    move v0, p4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p4, 0x0

    .line 17
    move v8, p4

    .line 18
    move p4, p3

    .line 19
    move p3, v8

    .line 20
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 21
    move-result v1

    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 25
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 28
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    .line 30
    move-result v2

    .line 33
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 34
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper$1;->getEndAfterPadding()I

    .line 36
    move-result v3

    .line 39
    const/4 v4, 0x0

    .line 40
    move-object v5, v4

    .line 41
    :goto_1
    if-eq p3, p4, :cond_6

    .line 42
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 44
    move-result-object v6

    .line 47
    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 48
    move-result v7

    .line 51
    if-ltz v7, :cond_5

    .line 52
    if-ge v7, v1, :cond_5

    .line 54
    invoke-virtual {p0, v7, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 56
    move-result v7

    .line 59
    if-eqz v7, :cond_1

    .line 60
    goto :goto_3

    .line 62
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    move-result-object v7

    .line 66
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 67
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    .line 69
    move-result v7

    .line 72
    if-eqz v7, :cond_2

    .line 73
    if-nez v5, :cond_5

    .line 75
    move-object v5, v6

    .line 77
    goto :goto_3

    .line 78
    :cond_2
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 79
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    .line 81
    move-result v7

    .line 84
    if-ge v7, v3, :cond_4

    .line 85
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 87
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    .line 89
    move-result v7

    .line 92
    if-ge v7, v2, :cond_3

    .line 93
    goto :goto_2

    .line 95
    :cond_3
    return-object v6

    .line 96
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    .line 97
    move-object v4, v6

    .line 99
    :cond_5
    :goto_3
    add-int/2addr p3, v0

    .line 100
    goto :goto_1

    .line 101
    :cond_6
    if-eqz v4, :cond_7

    .line 102
    goto :goto_4

    .line 104
    :cond_7
    move-object v4, v5

    .line 105
    :goto_4
    return-object v4
    .line 106
.end method

.method public final generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 2
    const/4 v0, -0x2

    .line 4
    const/4 v1, -0x1

    .line 5
    if-nez p0, :cond_0

    .line 6
    new-instance p0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 8
    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    .line 10
    return-object p0

    .line 13
    :cond_0
    new-instance p0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 14
    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    .line 16
    return-object p0
    .line 19
.end method

.method public final generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 1
    new-instance p0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 2
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    .line 3
    new-instance p0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 9
    move-result p0

    .line 12
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 13
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 18
    move-result v0

    .line 21
    if-ge v0, v1, :cond_1

    .line 22
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 26
    move-result v0

    .line 29
    sub-int/2addr v0, v1

    .line 30
    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 31
    move-result p0

    .line 34
    add-int/2addr p0, v1

    .line 35
    return p0
    .line 36
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 8
    move-result p0

    .line 11
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 12
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 17
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ge v0, v1, :cond_1

    .line 22
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 26
    move-result v0

    .line 29
    sub-int/2addr v0, v1

    .line 30
    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 31
    move-result p0

    .line 34
    add-int/2addr p0, v1

    .line 35
    return p0
    .line 36
.end method

.method public final getSpaceForSpanRange(II)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 13
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 15
    sub-int v1, p0, p1

    .line 17
    aget v1, v0, v1

    .line 19
    sub-int/2addr p0, p1

    .line 21
    sub-int/2addr p0, p2

    .line 22
    aget p0, v0, p0

    .line 23
    sub-int/2addr v1, p0

    .line 25
    return v1

    .line 26
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 27
    add-int/2addr p2, p1

    .line 29
    aget p2, p0, p2

    .line 30
    aget p0, p0, p1

    .line 32
    sub-int/2addr p2, p0

    .line 34
    return p2
    .line 35
.end method

.method public final getSpanGroupIndex(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    iget-boolean p3, p3, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 2
    if-nez p3, :cond_0

    .line 4
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 6
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 8
    invoke-virtual {p2, p1, p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    .line 15
    move-result p2

    .line 18
    const/4 p3, -0x1

    .line 19
    if-ne p2, p3, :cond_1

    .line 20
    const-string p0, "Cannot find span size for pre layout position. "

    .line 22
    const-string p2, "GridLayoutManager"

    .line 24
    invoke-static {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 31
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 33
    invoke-virtual {p1, p2, p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    .line 35
    move-result p0

    .line 38
    return p0
    .line 39
.end method

.method public final getSpanIndex(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 1
    iget-boolean p3, p3, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 2
    const/4 v0, -0x1

    .line 4
    if-nez p3, :cond_2

    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 7
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 9
    iget-boolean p3, p2, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 11
    if-nez p3, :cond_0

    .line 13
    invoke-virtual {p2, p1, p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    .line 15
    move-result p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p3, p2, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 20
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 22
    move-result v1

    .line 25
    if-eq v1, v0, :cond_1

    .line 26
    move p0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p2, p1, p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    .line 30
    move-result p0

    .line 33
    invoke-virtual {p3, p1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    :goto_0
    return p0

    .line 37
    :cond_2
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 38
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 40
    move-result p3

    .line 43
    if-eq p3, v0, :cond_3

    .line 44
    return p3

    .line 46
    :cond_3
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    .line 47
    move-result p2

    .line 50
    if-ne p2, v0, :cond_4

    .line 51
    const-string p0, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    .line 53
    const-string p2, "GridLayoutManager"

    .line 55
    invoke-static {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    const/4 p0, 0x0

    .line 60
    return p0

    .line 61
    :cond_4
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 62
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 64
    iget-boolean p3, p1, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 66
    if-nez p3, :cond_5

    .line 68
    invoke-virtual {p1, p2, p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    .line 70
    move-result p0

    .line 73
    goto :goto_1

    .line 74
    :cond_5
    iget-object p3, p1, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 75
    invoke-virtual {p3, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 77
    move-result v1

    .line 80
    if-eq v1, v0, :cond_6

    .line 81
    move p0, v1

    .line 83
    goto :goto_1

    .line 84
    :cond_6
    invoke-virtual {p1, p2, p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    .line 85
    move-result p0

    .line 88
    invoke-virtual {p3, p2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    :goto_1
    return p0
    .line 92
.end method

.method public final getSpanSize(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1
    iget-boolean p3, p3, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 2
    if-nez p3, :cond_0

    .line 4
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 13
    const/4 v0, -0x1

    .line 15
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 16
    move-result p3

    .line 19
    if-eq p3, v0, :cond_1

    .line 20
    return p3

    .line 22
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    .line 23
    move-result p2

    .line 26
    if-ne p2, v0, :cond_2

    .line 27
    const-string p0, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    .line 29
    const-string p2, "GridLayoutManager"

    .line 31
    invoke-static {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 38
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    .line 40
    move-result p0

    .line 43
    return p0
    .line 44
.end method

.method public final layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move-object/from16 v3, p3

    .line 8
    move-object/from16 v4, p4

    .line 10
    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 12
    iget v6, v5, Landroidx/recyclerview/widget/OrientationHelper$1;->$r8$classId:I

    .line 14
    iget-object v5, v5, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 16
    packed-switch v6, :pswitch_data_0

    .line 18
    goto :goto_0

    .line 21
    :pswitch_0
    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 22
    goto :goto_1

    .line 24
    :goto_0
    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 25
    :goto_1
    const/high16 v6, 0x40000000    # 2.0f

    .line 27
    const/4 v7, 0x1

    .line 29
    if-eq v5, v6, :cond_0

    .line 30
    move v6, v7

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    const/4 v6, 0x0

    .line 34
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 35
    move-result v8

    .line 38
    if-lez v8, :cond_1

    .line 39
    iget-object v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 41
    iget v9, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 43
    aget v8, v8, v9

    .line 45
    goto :goto_3

    .line 47
    :cond_1
    const/4 v8, 0x0

    .line 48
    :goto_3
    if-eqz v6, :cond_2

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 51
    :cond_2
    iget v9, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 54
    if-ne v9, v7, :cond_3

    .line 56
    move v9, v7

    .line 58
    goto :goto_4

    .line 59
    :cond_3
    const/4 v9, 0x0

    .line 60
    :goto_4
    iget v10, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 61
    if-nez v9, :cond_4

    .line 63
    iget v10, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 65
    invoke-virtual {v0, v10, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 67
    move-result v10

    .line 70
    iget v11, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 71
    invoke-virtual {v0, v11, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 73
    move-result v11

    .line 76
    add-int/2addr v10, v11

    .line 77
    :cond_4
    const/4 v11, 0x0

    .line 78
    :goto_5
    iget v12, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 79
    if-ge v11, v12, :cond_9

    .line 81
    iget v12, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 83
    if-ltz v12, :cond_5

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 87
    move-result v13

    .line 90
    if-ge v12, v13, :cond_5

    .line 91
    move v12, v7

    .line 93
    goto :goto_6

    .line 94
    :cond_5
    const/4 v12, 0x0

    .line 95
    :goto_6
    if-eqz v12, :cond_9

    .line 96
    if-lez v10, :cond_9

    .line 98
    iget v12, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 100
    invoke-virtual {v0, v12, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 102
    move-result v13

    .line 105
    iget v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 106
    if-gt v13, v14, :cond_8

    .line 108
    sub-int/2addr v10, v13

    .line 110
    if-gez v10, :cond_6

    .line 111
    goto :goto_7

    .line 113
    :cond_6
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    .line 114
    move-result-object v12

    .line 117
    if-nez v12, :cond_7

    .line 118
    goto :goto_7

    .line 120
    :cond_7
    iget-object v13, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 121
    aput-object v12, v13, v11

    .line 123
    add-int/lit8 v11, v11, 0x1

    .line 125
    goto :goto_5

    .line 127
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 128
    const-string v2, "Item at position "

    .line 130
    const-string v3, " requires "

    .line 132
    const-string v4, " spans but GridLayoutManager has only "

    .line 134
    invoke-static {v2, v12, v3, v13, v4}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    move-result-object v2

    .line 139
    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 140
    const-string v3, " spans."

    .line 142
    invoke-static {v2, v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 147
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    throw v1

    .line 151
    :cond_9
    :goto_7
    if-nez v11, :cond_a

    .line 152
    iput-boolean v7, v4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 154
    return-void

    .line 156
    :cond_a
    if-eqz v9, :cond_b

    .line 157
    const/4 v12, 0x0

    .line 159
    move v13, v11

    .line 160
    goto :goto_8

    .line 161
    :cond_b
    add-int/lit8 v12, v11, -0x1

    .line 162
    const/4 v7, -0x1

    .line 164
    const/4 v13, -0x1

    .line 165
    :goto_8
    const/4 v14, 0x0

    .line 166
    :goto_9
    if-eq v12, v13, :cond_c

    .line 167
    iget-object v15, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 169
    aget-object v15, v15, v12

    .line 171
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 173
    move-result-object v16

    .line 176
    move-object/from16 v10, v16

    .line 177
    check-cast v10, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 179
    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 181
    move-result v15

    .line 184
    invoke-virtual {v0, v15, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 185
    move-result v15

    .line 188
    iput v15, v10, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 189
    iput v14, v10, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 191
    add-int/2addr v14, v15

    .line 193
    add-int/2addr v12, v7

    .line 194
    goto :goto_9

    .line 195
    :cond_c
    const/4 v1, 0x0

    .line 196
    const/4 v2, 0x0

    .line 197
    const/4 v7, 0x0

    .line 198
    :goto_a
    if-ge v2, v11, :cond_12

    .line 199
    iget-object v10, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 201
    aget-object v10, v10, v2

    .line 203
    iget-object v12, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 205
    if-nez v12, :cond_e

    .line 207
    if-eqz v9, :cond_d

    .line 209
    const/4 v12, 0x0

    .line 211
    const/4 v13, -0x1

    .line 212
    invoke-virtual {v0, v13, v10, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(ILandroid/view/View;Z)V

    .line 213
    goto :goto_b

    .line 216
    :cond_d
    const/4 v13, -0x1

    .line 217
    const/4 v12, 0x0

    .line 218
    invoke-virtual {v0, v12, v10, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(ILandroid/view/View;Z)V

    .line 219
    goto :goto_b

    .line 222
    :cond_e
    const/4 v13, -0x1

    .line 223
    const/4 v12, 0x0

    .line 224
    if-eqz v9, :cond_f

    .line 225
    const/4 v14, 0x1

    .line 227
    invoke-virtual {v0, v13, v10, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(ILandroid/view/View;Z)V

    .line 228
    goto :goto_b

    .line 231
    :cond_f
    const/4 v13, 0x1

    .line 232
    invoke-virtual {v0, v12, v10, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(ILandroid/view/View;Z)V

    .line 233
    :goto_b
    iget-object v13, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 236
    invoke-virtual {v0, v13, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 238
    invoke-virtual {v0, v5, v10, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(ILandroid/view/View;Z)V

    .line 241
    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 244
    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 246
    move-result v12

    .line 249
    if-le v12, v7, :cond_10

    .line 250
    move v7, v12

    .line 252
    :cond_10
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 253
    move-result-object v12

    .line 256
    check-cast v12, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 257
    iget-object v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 259
    invoke-virtual {v13, v10}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 261
    move-result v10

    .line 264
    int-to-float v10, v10

    .line 265
    const/high16 v13, 0x3f800000    # 1.0f

    .line 266
    mul-float/2addr v10, v13

    .line 268
    iget v12, v12, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 269
    int-to-float v12, v12

    .line 271
    div-float/2addr v10, v12

    .line 272
    cmpl-float v12, v10, v1

    .line 273
    if-lez v12, :cond_11

    .line 275
    move v1, v10

    .line 277
    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 278
    goto :goto_a

    .line 280
    :cond_12
    if-eqz v6, :cond_14

    .line 281
    iget v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 283
    int-to-float v2, v2

    .line 285
    mul-float/2addr v1, v2

    .line 286
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 287
    move-result v1

    .line 290
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    .line 291
    move-result v1

    .line 294
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 295
    const/4 v1, 0x0

    .line 298
    const/4 v2, 0x0

    .line 299
    move v7, v1

    .line 300
    :goto_c
    if-ge v2, v11, :cond_14

    .line 301
    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 303
    aget-object v1, v1, v2

    .line 305
    const/high16 v5, 0x40000000    # 2.0f

    .line 307
    const/4 v6, 0x1

    .line 309
    invoke-virtual {v0, v5, v1, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(ILandroid/view/View;Z)V

    .line 310
    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 313
    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 315
    move-result v1

    .line 318
    if-le v1, v7, :cond_13

    .line 319
    move v7, v1

    .line 321
    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 322
    goto :goto_c

    .line 324
    :cond_14
    const/4 v1, 0x0

    .line 325
    :goto_d
    if-ge v1, v11, :cond_17

    .line 326
    iget-object v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 328
    aget-object v2, v2, v1

    .line 330
    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 332
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 334
    move-result v5

    .line 337
    if-eq v5, v7, :cond_16

    .line 338
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 340
    move-result-object v5

    .line 343
    check-cast v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 344
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 346
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 348
    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 350
    add-int/2addr v8, v9

    .line 352
    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 353
    add-int/2addr v8, v9

    .line 355
    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 356
    add-int/2addr v8, v9

    .line 358
    iget v9, v6, Landroid/graphics/Rect;->left:I

    .line 359
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 361
    add-int/2addr v9, v6

    .line 363
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 364
    add-int/2addr v9, v6

    .line 366
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 367
    add-int/2addr v9, v6

    .line 369
    iget v6, v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 370
    iget v10, v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 372
    invoke-virtual {v0, v6, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    .line 374
    move-result v6

    .line 377
    iget v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 378
    const/4 v12, 0x1

    .line 380
    if-ne v10, v12, :cond_15

    .line 381
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 383
    const/4 v10, 0x0

    .line 385
    const/high16 v12, 0x40000000    # 2.0f

    .line 386
    invoke-static {v6, v12, v9, v5, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 388
    move-result v5

    .line 391
    sub-int v6, v7, v8

    .line 392
    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 394
    move-result v6

    .line 397
    goto :goto_e

    .line 398
    :cond_15
    const/4 v10, 0x0

    .line 399
    const/high16 v12, 0x40000000    # 2.0f

    .line 400
    sub-int v9, v7, v9

    .line 402
    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 404
    move-result v9

    .line 407
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 408
    invoke-static {v6, v12, v8, v5, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 410
    move-result v6

    .line 413
    move v5, v9

    .line 414
    :goto_e
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 415
    move-result-object v8

    .line 418
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 419
    invoke-virtual {v0, v2, v5, v6, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    .line 421
    move-result v8

    .line 424
    if-eqz v8, :cond_16

    .line 425
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 427
    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 430
    goto :goto_d

    .line 432
    :cond_17
    const/4 v1, 0x0

    .line 433
    iput v7, v4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 434
    iget v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 436
    const/4 v5, 0x1

    .line 438
    if-ne v2, v5, :cond_19

    .line 439
    iget v2, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 441
    const/4 v5, -0x1

    .line 443
    if-ne v2, v5, :cond_18

    .line 444
    iget v2, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 446
    sub-int v3, v2, v7

    .line 448
    goto :goto_f

    .line 450
    :cond_18
    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 451
    add-int v2, v7, v3

    .line 453
    :goto_f
    move v5, v1

    .line 455
    move v6, v3

    .line 456
    move v3, v2

    .line 457
    move v2, v5

    .line 458
    goto :goto_11

    .line 459
    :cond_19
    const/4 v5, -0x1

    .line 460
    iget v2, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 461
    if-ne v2, v5, :cond_1a

    .line 463
    iget v2, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 465
    sub-int v3, v2, v7

    .line 467
    goto :goto_10

    .line 469
    :cond_1a
    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 470
    add-int v2, v7, v3

    .line 472
    :goto_10
    move v6, v1

    .line 474
    move v5, v3

    .line 475
    move v3, v6

    .line 476
    :goto_11
    if-ge v1, v11, :cond_1f

    .line 477
    iget-object v7, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 479
    aget-object v7, v7, v1

    .line 481
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 483
    move-result-object v8

    .line 486
    check-cast v8, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 487
    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 489
    const/4 v10, 0x1

    .line 491
    if-ne v9, v10, :cond_1c

    .line 492
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 494
    move-result v2

    .line 497
    if-eqz v2, :cond_1b

    .line 498
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 500
    move-result v2

    .line 503
    iget-object v5, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 504
    iget v9, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 506
    iget v10, v8, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 508
    sub-int/2addr v9, v10

    .line 510
    aget v5, v5, v9

    .line 511
    add-int/2addr v2, v5

    .line 513
    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 514
    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 516
    move-result v5

    .line 519
    sub-int v5, v2, v5

    .line 520
    goto :goto_12

    .line 522
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 523
    move-result v2

    .line 526
    iget-object v5, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 527
    iget v9, v8, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 529
    aget v5, v5, v9

    .line 531
    add-int/2addr v5, v2

    .line 533
    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 534
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 536
    move-result v2

    .line 539
    add-int/2addr v2, v5

    .line 540
    goto :goto_12

    .line 541
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 542
    move-result v3

    .line 545
    iget-object v6, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 546
    iget v9, v8, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 548
    aget v6, v6, v9

    .line 550
    add-int/2addr v3, v6

    .line 552
    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 553
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 555
    move-result v6

    .line 558
    add-int/2addr v6, v3

    .line 559
    move/from16 v17, v6

    .line 560
    move v6, v3

    .line 562
    move/from16 v3, v17

    .line 563
    :goto_12
    invoke-static {v7, v5, v6, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 565
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    .line 568
    move-result v9

    .line 571
    if-nez v9, :cond_1d

    .line 572
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    .line 574
    move-result v8

    .line 577
    if-eqz v8, :cond_1e

    .line 578
    :cond_1d
    const/4 v8, 0x1

    .line 580
    iput-boolean v8, v4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 581
    :cond_1e
    iget-boolean v8, v4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 583
    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    .line 585
    move-result v7

    .line 588
    or-int/2addr v7, v8

    .line 589
    iput-boolean v7, v4, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 590
    add-int/lit8 v1, v1, 0x1

    .line 592
    goto :goto_11

    .line 594
    :cond_1f
    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 595
    const/4 v1, 0x0

    .line 597
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 598
    return-void

    .line 601
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 602
.end method

.method public final measureChild(ILandroid/view/View;Z)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 6
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 10
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 12
    add-int/2addr v2, v3

    .line 14
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 15
    add-int/2addr v2, v3

    .line 17
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 18
    add-int/2addr v2, v3

    .line 20
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 21
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 23
    add-int/2addr v3, v1

    .line 25
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 26
    add-int/2addr v3, v1

    .line 28
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 29
    add-int/2addr v3, v1

    .line 31
    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 32
    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 34
    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    .line 36
    move-result v1

    .line 39
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 40
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x1

    .line 43
    if-ne v4, v6, :cond_0

    .line 44
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 46
    invoke-static {v1, p1, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 48
    move-result p1

    .line 51
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 52
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper$1;->getTotalSpace()I

    .line 54
    move-result v1

    .line 57
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 58
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 60
    invoke-static {v1, v3, v2, v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 62
    move-result v0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 67
    invoke-static {v1, p1, v2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 69
    move-result p1

    .line 72
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 73
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper$1;->getTotalSpace()I

    .line 75
    move-result v1

    .line 78
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 79
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 81
    invoke-static {v1, v2, v3, v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 83
    move-result v0

    .line 86
    move v7, v0

    .line 87
    move v0, p1

    .line 88
    move p1, v7

    .line 89
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 90
    move-result-object v1

    .line 93
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 94
    if-eqz p3, :cond_1

    .line 96
    invoke-virtual {p0, p2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    .line 98
    move-result p0

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {p0, p2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    .line 103
    move-result p0

    .line 106
    :goto_1
    if-eqz p0, :cond_2

    .line 107
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    .line 109
    :cond_2
    return-void
    .line 112
.end method

.method public final onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 5
    move-result v0

    .line 8
    if-lez v0, :cond_3

    .line 9
    iget-boolean v0, p2, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 11
    if-nez v0, :cond_3

    .line 13
    const/4 v0, 0x1

    .line 15
    if-ne p4, v0, :cond_0

    .line 16
    move p4, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p4, 0x0

    .line 20
    :goto_0
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 21
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 23
    move-result v1

    .line 26
    if-eqz p4, :cond_1

    .line 27
    :goto_1
    if-lez v1, :cond_3

    .line 29
    iget p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 31
    if-lez p4, :cond_3

    .line 33
    add-int/lit8 p4, p4, -0x1

    .line 35
    iput p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 37
    invoke-virtual {p0, p4, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 39
    move-result v1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 44
    move-result p4

    .line 47
    sub-int/2addr p4, v0

    .line 48
    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 49
    :goto_2
    if-ge v0, p4, :cond_2

    .line 51
    add-int/lit8 v2, v0, 0x1

    .line 53
    invoke-virtual {p0, v2, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 55
    move-result v3

    .line 58
    if-le v3, v1, :cond_2

    .line 59
    move v0, v2

    .line 61
    move v1, v3

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    iput v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 64
    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 66
    if-eqz p1, :cond_4

    .line 68
    array-length p1, p1

    .line 70
    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 71
    if-eq p1, p2, :cond_5

    .line 73
    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 75
    new-array p1, p1, [Landroid/view/View;

    .line 77
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 79
    :cond_5
    return-void
    .line 81
.end method

.method public final onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p3

    .line 4
    move-object/from16 v2, p4

    .line 6
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 8
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_0

    .line 13
    return-object v4

    .line 15
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v5

    .line 19
    check-cast v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 20
    iget v6, v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 22
    iget v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 24
    add-int/2addr v5, v6

    .line 26
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    .line 27
    move-result-object v7

    .line 30
    if-nez v7, :cond_1

    .line 31
    return-object v4

    .line 33
    :cond_1
    move/from16 v7, p2

    .line 34
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    .line 36
    move-result v7

    .line 39
    const/4 v8, 0x1

    .line 40
    if-ne v7, v8, :cond_2

    .line 41
    move v7, v8

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v7, 0x0

    .line 45
    :goto_0
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 46
    if-eq v7, v10, :cond_3

    .line 48
    move v7, v8

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    const/4 v7, 0x0

    .line 52
    :goto_1
    const/4 v10, -0x1

    .line 53
    if-eqz v7, :cond_4

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 56
    move-result v7

    .line 59
    sub-int/2addr v7, v8

    .line 60
    move v11, v10

    .line 61
    move v12, v11

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 64
    move-result v7

    .line 67
    move v11, v7

    .line 68
    move v12, v8

    .line 69
    const/4 v7, 0x0

    .line 70
    :goto_2
    iget v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 71
    if-ne v13, v8, :cond_5

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 75
    move-result v13

    .line 78
    if-eqz v13, :cond_5

    .line 79
    move v13, v8

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    const/4 v13, 0x0

    .line 83
    :goto_3
    invoke-virtual {v0, v7, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 84
    move-result v14

    .line 87
    move v9, v10

    .line 88
    move v15, v9

    .line 89
    move/from16 v16, v12

    .line 90
    const/4 v8, 0x0

    .line 92
    const/4 v12, 0x0

    .line 93
    move v10, v7

    .line 94
    move-object v7, v4

    .line 95
    :goto_4
    if-eq v10, v11, :cond_17

    .line 96
    move/from16 v17, v11

    .line 98
    invoke-virtual {v0, v10, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 100
    move-result v11

    .line 103
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 104
    move-result-object v1

    .line 107
    if-ne v1, v3, :cond_6

    .line 108
    goto/16 :goto_d

    .line 110
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 112
    move-result v18

    .line 115
    if-eqz v18, :cond_8

    .line 116
    if-eq v11, v14, :cond_8

    .line 118
    if-eqz v4, :cond_7

    .line 120
    goto/16 :goto_d

    .line 122
    :cond_7
    move-object/from16 v18, v3

    .line 124
    move-object/from16 v21, v7

    .line 126
    move/from16 v19, v8

    .line 128
    const/16 v20, 0x1

    .line 130
    goto/16 :goto_b

    .line 132
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 134
    move-result-object v11

    .line 137
    check-cast v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 138
    iget v2, v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 140
    move-object/from16 v18, v3

    .line 142
    iget v3, v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 144
    add-int/2addr v3, v2

    .line 146
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 147
    move-result v19

    .line 150
    if-eqz v19, :cond_9

    .line 151
    if-ne v2, v6, :cond_9

    .line 153
    if-ne v3, v5, :cond_9

    .line 155
    return-object v1

    .line 157
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 158
    move-result v19

    .line 161
    if-eqz v19, :cond_a

    .line 162
    if-eqz v4, :cond_b

    .line 164
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 166
    move-result v19

    .line 169
    if-nez v19, :cond_c

    .line 170
    if-nez v7, :cond_c

    .line 172
    :cond_b
    move-object/from16 v21, v7

    .line 174
    goto :goto_6

    .line 176
    :cond_c
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 177
    move-result v19

    .line 180
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 181
    move-result v20

    .line 184
    move-object/from16 v21, v7

    .line 185
    sub-int v7, v20, v19

    .line 187
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 189
    move-result v19

    .line 192
    if-eqz v19, :cond_f

    .line 193
    if-le v7, v8, :cond_d

    .line 195
    goto :goto_6

    .line 197
    :cond_d
    if-ne v7, v8, :cond_13

    .line 198
    if-le v2, v15, :cond_e

    .line 200
    const/4 v7, 0x1

    .line 202
    goto :goto_5

    .line 203
    :cond_e
    const/4 v7, 0x0

    .line 204
    :goto_5
    if-ne v13, v7, :cond_13

    .line 205
    :goto_6
    move/from16 v19, v8

    .line 207
    const/4 v7, 0x1

    .line 209
    const/16 v20, 0x1

    .line 210
    goto :goto_a

    .line 212
    :cond_f
    if-nez v4, :cond_13

    .line 213
    move/from16 v19, v8

    .line 215
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    .line 217
    invoke-virtual {v8, v1}, Landroidx/recyclerview/widget/ViewBoundsCheck;->isViewWithinBoundFlags(Landroid/view/View;)Z

    .line 219
    move-result v8

    .line 222
    if-eqz v8, :cond_10

    .line 223
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    .line 225
    invoke-virtual {v8, v1}, Landroidx/recyclerview/widget/ViewBoundsCheck;->isViewWithinBoundFlags(Landroid/view/View;)Z

    .line 227
    move-result v8

    .line 230
    if-eqz v8, :cond_10

    .line 231
    const/4 v8, 0x1

    .line 233
    goto :goto_7

    .line 234
    :cond_10
    const/4 v8, 0x0

    .line 235
    :goto_7
    const/16 v20, 0x1

    .line 236
    xor-int/lit8 v8, v8, 0x1

    .line 238
    if-eqz v8, :cond_14

    .line 240
    if-le v7, v12, :cond_11

    .line 242
    goto :goto_9

    .line 244
    :cond_11
    if-ne v7, v12, :cond_14

    .line 245
    if-le v2, v9, :cond_12

    .line 247
    move/from16 v7, v20

    .line 249
    goto :goto_8

    .line 251
    :cond_12
    const/4 v7, 0x0

    .line 252
    :goto_8
    if-ne v13, v7, :cond_14

    .line 253
    :goto_9
    move/from16 v7, v20

    .line 255
    goto :goto_a

    .line 257
    :cond_13
    move/from16 v19, v8

    .line 258
    const/16 v20, 0x1

    .line 260
    :cond_14
    const/4 v7, 0x0

    .line 262
    :goto_a
    if-eqz v7, :cond_16

    .line 263
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 265
    move-result v7

    .line 268
    if-eqz v7, :cond_15

    .line 269
    iget v4, v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 271
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 273
    move-result v3

    .line 276
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 277
    move-result v2

    .line 280
    sub-int v8, v3, v2

    .line 281
    move v15, v4

    .line 283
    move-object/from16 v7, v21

    .line 284
    move-object v4, v1

    .line 286
    goto :goto_c

    .line 287
    :cond_15
    iget v7, v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 288
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 290
    move-result v3

    .line 293
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 294
    move-result v2

    .line 297
    sub-int v12, v3, v2

    .line 298
    move v9, v7

    .line 300
    move/from16 v8, v19

    .line 301
    move-object v7, v1

    .line 303
    goto :goto_c

    .line 304
    :cond_16
    :goto_b
    move/from16 v8, v19

    .line 305
    move-object/from16 v7, v21

    .line 307
    :goto_c
    add-int v10, v10, v16

    .line 309
    move-object/from16 v1, p3

    .line 311
    move-object/from16 v2, p4

    .line 313
    move/from16 v11, v17

    .line 315
    move-object/from16 v3, v18

    .line 317
    goto/16 :goto_4

    .line 319
    :cond_17
    :goto_d
    move-object/from16 v21, v7

    .line 321
    if-eqz v4, :cond_18

    .line 323
    goto :goto_e

    .line 325
    :cond_18
    move-object/from16 v4, v21

    .line 326
    :goto_e
    return-object v4
    .line 328
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2
    const-class p0, Landroid/widget/GridView;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p3, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    return-void
    .line 14
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 6
    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 10
    return-void

    .line 13
    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    .line 16
    move-result p3

    .line 19
    invoke-virtual {p0, p3, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 20
    move-result p1

    .line 23
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 24
    if-nez p0, :cond_1

    .line 26
    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 28
    iget v2, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 30
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    move v3, p1

    .line 35
    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    .line 36
    move-result-object p0

    .line 39
    invoke-virtual {p4, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;)V

    .line 40
    goto :goto_0

    .line 43
    :cond_1
    const/4 v2, 0x1

    .line 44
    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 45
    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 47
    const/4 v5, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    move v1, p1

    .line 51
    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    .line 52
    move-result-object p0

    .line 55
    invoke-virtual {p4, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;)V

    .line 56
    :goto_0
    return-void
    .line 59
.end method

.method public final onItemsAdded(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 4
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 7
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 9
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    return-void
    .line 14
.end method

.method public final onItemsChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 4
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 7
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 9
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    return-void
    .line 14
.end method

.method public final onItemsMoved(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 4
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 7
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 9
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    return-void
    .line 14
.end method

.method public final onItemsRemoved(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 4
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 7
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 9
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    return-void
    .line 14
.end method

.method public final onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 4
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 7
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 9
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    return-void
    .line 14
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .line 1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 4
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 10
    move-result v0

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v0, :cond_0

    .line 15
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    move-result-object v4

    .line 24
    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 25
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    .line 27
    move-result v5

    .line 30
    iget v6, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 31
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    iget v4, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 36
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 44
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 47
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 50
    return-void
    .line 53
.end method

.method public final onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 6
    return-void
    .line 8
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 8

    .line 1
    const v0, 0x1020037    # @android:id/accessibilityActionScrollToPosition

    .line 2
    if-ne p1, v0, :cond_5

    .line 5
    if-eqz p2, :cond_5

    .line 7
    const-string p1, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    .line 9
    const/4 v0, -0x1

    .line 11
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 12
    move-result p1

    .line 15
    const-string v1, "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

    .line 16
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 18
    move-result p2

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eq p1, v0, :cond_4

    .line 23
    if-ne p2, v0, :cond_0

    .line 25
    goto :goto_2

    .line 27
    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 30
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 32
    move-result v2

    .line 35
    move v3, v1

    .line 36
    :goto_0
    const/4 v4, 0x1

    .line 37
    if-ge v3, v2, :cond_3

    .line 38
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 42
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 44
    invoke-virtual {p0, v3, v6, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 46
    move-result v5

    .line 49
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 52
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 54
    invoke-virtual {p0, v3, v7, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 56
    move-result v6

    .line 59
    iget v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 60
    if-ne v7, v4, :cond_1

    .line 62
    if-ne v5, p2, :cond_2

    .line 64
    if-ne v6, p1, :cond_2

    .line 66
    goto :goto_1

    .line 68
    :cond_1
    if-ne v5, p1, :cond_2

    .line 69
    if-ne v6, p2, :cond_2

    .line 71
    goto :goto_1

    .line 73
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 74
    goto :goto_0

    .line 76
    :cond_3
    move v3, v0

    .line 77
    :goto_1
    if-le v3, v0, :cond_4

    .line 78
    invoke-virtual {p0, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 80
    return v4

    .line 83
    :cond_4
    :goto_2
    return v1

    .line 84
    :cond_5
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 85
    move-result p0

    .line 88
    return p0
    .line 89
.end method

.method public final scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    array-length v0, v0

    .line 9
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 10
    if-eq v0, v1, :cond_1

    .line 12
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 14
    new-array v0, v0, [Landroid/view/View;

    .line 16
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 18
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 20
    move-result p0

    .line 23
    return p0
    .line 24
.end method

.method public final scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    array-length v0, v0

    .line 9
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 10
    if-eq v0, v1, :cond_1

    .line 12
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 14
    new-array v0, v0, [Landroid/view/View;

    .line 16
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 18
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 20
    move-result p0

    .line 23
    return p0
    .line 24
.end method

.method public final setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 9
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 13
    move-result v1

    .line 16
    add-int/2addr v1, v0

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 18
    move-result v0

    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 22
    move-result v2

    .line 25
    add-int/2addr v2, v0

    .line 26
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 27
    const/4 v3, 0x1

    .line 29
    if-ne v0, v3, :cond_1

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 32
    move-result p1

    .line 35
    add-int/2addr p1, v2

    .line 36
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 39
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 41
    move-result v0

    .line 44
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 45
    move-result p1

    .line 48
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 49
    array-length v0, p3

    .line 51
    sub-int/2addr v0, v3

    .line 52
    aget p3, p3, v0

    .line 53
    add-int/2addr p3, v1

    .line 55
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumWidth(Landroid/view/View;)I

    .line 58
    move-result v0

    .line 61
    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 62
    move-result p2

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 67
    move-result p1

    .line 70
    add-int/2addr p1, v1

    .line 71
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 74
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumWidth(Landroid/view/View;)I

    .line 76
    move-result v0

    .line 79
    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 80
    move-result p2

    .line 83
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 84
    array-length v0, p1

    .line 86
    sub-int/2addr v0, v3

    .line 87
    aget p1, p1, v0

    .line 88
    add-int/2addr p1, v2

    .line 90
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 93
    move-result v0

    .line 96
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 97
    move-result p1

    .line 100
    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    invoke-static {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->access$500(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 103
    return-void
    .line 106
.end method

.method public final setSpanCount(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 8
    if-lt p1, v0, :cond_1

    .line 10
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 12
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 19
    return-void

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    const-string v0, "Span count should be at least 1. Provided "

    .line 25
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0
    .line 34
.end method

.method public final setStackFromEnd(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 5
    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 9
    const-string p1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p0
    .line 16
.end method

.method public final supportsPredictiveItemAnimations()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-boolean p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 6
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public final updateMeasurements()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 9
    move-result v1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 14
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 21
    move-result v1

    .line 24
    sub-int/2addr v0, v1

    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 26
    move-result v1

    .line 29
    :goto_0
    sub-int/2addr v0, v1

    .line 30
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 31
    return-void
    .line 34
.end method
