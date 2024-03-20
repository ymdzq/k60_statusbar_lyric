.class public abstract Landroidx/leanback/widget/Grid;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mFirstVisibleIndex:I

.field public mLastVisibleIndex:I

.field public mNumRows:I

.field public mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

.field public mReversedFlow:Z

.field public mSpacing:I

.field public mStartIndex:I

.field public final mTmpItem:[Ljava/lang/Object;

.field public mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    .line 8
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 11
    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 13
    iput v0, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public abstract appendVisibleItems(IZ)Z
.end method

.method public final checkAppendOverLimit(I)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 2
    const/4 v1, 0x0

    .line 4
    if-gez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 8
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    .line 14
    move-result v0

    .line 17
    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 18
    add-int/2addr p1, p0

    .line 20
    if-gt v0, p1, :cond_2

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0, v1, v2}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    .line 24
    move-result v0

    .line 27
    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 28
    sub-int/2addr p1, p0

    .line 30
    if-lt v0, p1, :cond_2

    .line 31
    :goto_0
    move v1, v3

    .line 33
    :cond_2
    return v1
    .line 34
.end method

.method public final checkPrependOverLimit(I)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 2
    const/4 v1, 0x0

    .line 4
    if-gez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 8
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0, v1, v2}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    .line 14
    move-result v0

    .line 17
    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 18
    sub-int/2addr p1, p0

    .line 20
    if-lt v0, p1, :cond_2

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    .line 24
    move-result v0

    .line 27
    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 28
    add-int/2addr p1, p0

    .line 30
    if-gt v0, p1, :cond_2

    .line 31
    :goto_0
    move v1, v3

    .line 33
    :cond_2
    return v1
    .line 34
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract findRowMax(IZ[I)I
.end method

.method public final findRowMax(Z[I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Landroidx/leanback/widget/Grid;->findRowMax(IZ[I)I

    move-result p0

    return p0
.end method

.method public abstract findRowMin(IZ[I)I
.end method

.method public final findRowMin(Z[I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Landroidx/leanback/widget/Grid;->findRowMin(IZ[I)I

    move-result p0

    return p0
.end method

.method public abstract getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;
.end method

.method public abstract getLocation(I)Landroidx/leanback/widget/Grid$Location;
.end method

.method public invalidateItemsAfter(I)V
    .locals 2

    .line 1
    if-gez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 5
    if-gez v0, :cond_1

    .line 7
    return-void

    .line 9
    :cond_1
    if-lt v0, p1, :cond_2

    .line 10
    add-int/lit8 v0, p1, -0x1

    .line 12
    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 14
    :cond_2
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 16
    iget v1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 18
    if-ge v0, v1, :cond_3

    .line 20
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 23
    iput v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 25
    :cond_3
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 27
    if-gez v0, :cond_4

    .line 29
    iput p1, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    .line 31
    :cond_4
    return-void
    .line 33
.end method

.method public abstract prependVisibleItems(IZ)Z
.end method

.method public final setNumRows(I)V
    .locals 2

    .line 1
    if-lez p1, :cond_2

    .line 2
    iget v0, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 4
    if-ne v0, p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iput p1, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 9
    new-array p1, p1, [Landroidx/collection/CircularIntArray;

    .line 11
    iput-object p1, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    .line 13
    const/4 p1, 0x0

    .line 15
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 16
    if-ge p1, v0, :cond_1

    .line 18
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    .line 20
    new-instance v1, Landroidx/collection/CircularIntArray;

    .line 22
    invoke-direct {v1}, Landroidx/collection/CircularIntArray;-><init>()V

    .line 24
    aput-object v1, v0, p1

    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 33
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 35
    throw p0
    .line 38
.end method
