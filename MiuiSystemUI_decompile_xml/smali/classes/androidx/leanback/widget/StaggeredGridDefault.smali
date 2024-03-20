.class public final Landroidx/leanback/widget/StaggeredGridDefault;
.super Landroidx/leanback/widget/Grid;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mFirstIndex:I

.field public final mLocations:Landroidx/collection/CircularArray;

.field public mPendingItem:Ljava/lang/Object;

.field public mPendingItemSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/Grid;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/CircularArray;

    .line 5
    invoke-direct {v0}, Landroidx/collection/CircularArray;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLocations:Landroidx/collection/CircularArray;

    .line 10
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final appendVisbleItemsWithCache(IZ)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mLocations:Landroidx/collection/CircularArray;

    .line 4
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    .line 6
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    goto/16 :goto_6

    .line 13
    :cond_0
    iget-object v2, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 15
    invoke-virtual {v2}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    .line 17
    move-result v2

    .line 20
    iget v4, v0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 21
    const/4 v5, 0x1

    .line 23
    const v6, 0x7fffffff

    .line 24
    if-ltz v4, :cond_1

    .line 27
    add-int/lit8 v7, v4, 0x1

    .line 29
    iget-object v8, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 31
    invoke-virtual {v8, v4}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 33
    move-result v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget v4, v0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    .line 38
    const/4 v7, -0x1

    .line 40
    if-eq v4, v7, :cond_2

    .line 41
    move v7, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v7, v3

    .line 45
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    .line 46
    move-result v4

    .line 49
    add-int/2addr v4, v5

    .line 50
    if-gt v7, v4, :cond_b

    .line 51
    iget v4, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 53
    if-ge v7, v4, :cond_3

    .line 55
    goto/16 :goto_5

    .line 57
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    .line 59
    move-result v4

    .line 62
    if-le v7, v4, :cond_4

    .line 63
    goto/16 :goto_6

    .line 65
    :cond_4
    move v4, v6

    .line 67
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    .line 68
    move-result v8

    .line 71
    move v13, v7

    .line 72
    :goto_2
    if-ge v13, v2, :cond_c

    .line 73
    if-gt v13, v8, :cond_c

    .line 75
    invoke-virtual {v0, v13}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 77
    move-result-object v7

    .line 80
    if-eq v4, v6, :cond_5

    .line 81
    iget v9, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    .line 83
    add-int/2addr v4, v9

    .line 85
    :cond_5
    iget v14, v7, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 86
    iget-object v9, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 88
    iget-object v10, v0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    .line 90
    invoke-virtual {v9, v13, v5, v10, v3}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 92
    move-result v11

    .line 95
    iget v9, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 96
    if-eq v11, v9, :cond_6

    .line 98
    iput v11, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 100
    sub-int/2addr v8, v13

    .line 102
    invoke-virtual {v1, v8}, Landroidx/collection/CircularArray;->removeFromEnd(I)V

    .line 103
    move v15, v13

    .line 106
    goto :goto_3

    .line 107
    :cond_6
    move v15, v8

    .line 108
    :goto_3
    iput v13, v0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 109
    iget v7, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 111
    if-gez v7, :cond_7

    .line 113
    iput v13, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 115
    :cond_7
    iget-object v7, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 117
    aget-object v8, v10, v3

    .line 119
    move v9, v13

    .line 121
    move v10, v11

    .line 122
    move v11, v14

    .line 123
    move v12, v4

    .line 124
    invoke-virtual/range {v7 .. v12}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(Ljava/lang/Object;IIII)V

    .line 125
    if-nez p2, :cond_8

    .line 128
    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    .line 130
    move-result v7

    .line 133
    if-eqz v7, :cond_8

    .line 134
    goto :goto_4

    .line 136
    :cond_8
    if-ne v4, v6, :cond_9

    .line 137
    iget-object v4, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 139
    invoke-virtual {v4, v13}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 141
    move-result v4

    .line 144
    :cond_9
    iget v7, v0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 145
    sub-int/2addr v7, v5

    .line 147
    if-ne v14, v7, :cond_a

    .line 148
    if-eqz p2, :cond_a

    .line 150
    :goto_4
    move v3, v5

    .line 152
    goto :goto_6

    .line 153
    :cond_a
    add-int/lit8 v13, v13, 0x1

    .line 154
    move v8, v15

    .line 156
    goto :goto_2

    .line 157
    :cond_b
    :goto_5
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    .line 158
    move-result v0

    .line 161
    invoke-virtual {v1, v0}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    .line 162
    :cond_c
    :goto_6
    return v3
    .line 165
.end method

.method public final appendVisibleItemToRow(III)I
    .locals 11

    .line 1
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 2
    if-ltz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    .line 6
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 12
    add-int/lit8 v1, p1, -0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 21
    throw p0

    .line 24
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 25
    const/4 v1, 0x1

    .line 27
    iget-object v2, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLocations:Landroidx/collection/CircularArray;

    .line 28
    const/4 v3, 0x0

    .line 30
    if-gez v0, :cond_7

    .line 31
    invoke-virtual {v2}, Landroidx/collection/CircularArray;->size()I

    .line 33
    move-result v0

    .line 36
    if-lez v0, :cond_6

    .line 37
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    .line 39
    move-result v0

    .line 42
    add-int/2addr v0, v1

    .line 43
    if-ne p1, v0, :cond_6

    .line 44
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    .line 46
    move-result v0

    .line 49
    :goto_1
    iget v4, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 50
    if-lt v0, v4, :cond_3

    .line 52
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 54
    move-result-object v4

    .line 57
    iget v4, v4, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 58
    if-ne v4, p2, :cond_2

    .line 60
    move v4, v1

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 64
    goto :goto_1

    .line 66
    :cond_3
    move v4, v3

    .line 67
    :goto_2
    if-nez v4, :cond_4

    .line 68
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    .line 70
    move-result v0

    .line 73
    :cond_4
    iget-boolean v4, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 74
    if-eqz v4, :cond_5

    .line 76
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 78
    move-result-object v4

    .line 81
    iget v4, v4, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 82
    neg-int v4, v4

    .line 84
    iget v5, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 85
    sub-int/2addr v4, v5

    .line 87
    goto :goto_3

    .line 88
    :cond_5
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 89
    move-result-object v4

    .line 92
    iget v4, v4, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 93
    iget v5, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 95
    add-int/2addr v4, v5

    .line 97
    :goto_3
    add-int/2addr v0, v1

    .line 98
    :goto_4
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    .line 99
    move-result v5

    .line 102
    if-gt v0, v5, :cond_8

    .line 103
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 105
    move-result-object v5

    .line 108
    iget v5, v5, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    .line 109
    sub-int/2addr v4, v5

    .line 111
    add-int/lit8 v0, v0, 0x1

    .line 112
    goto :goto_4

    .line 114
    :cond_6
    move v4, v3

    .line 115
    goto :goto_5

    .line 116
    :cond_7
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 117
    invoke-virtual {v4, v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 119
    move-result v0

    .line 122
    sub-int v4, p3, v0

    .line 123
    :cond_8
    :goto_5
    new-instance v0, Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 125
    invoke-direct {v0, p2, v4}, Landroidx/leanback/widget/StaggeredGrid$Location;-><init>(II)V

    .line 127
    iget-object v4, v2, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    .line 130
    iget v5, v2, Landroidx/collection/CircularArray;->tail:I

    .line 132
    aput-object v0, v4, v5

    .line 134
    add-int/2addr v5, v1

    .line 136
    iget v4, v2, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 137
    and-int/2addr v4, v5

    .line 139
    iput v4, v2, Landroidx/collection/CircularArray;->tail:I

    .line 140
    iget v5, v2, Landroidx/collection/CircularArray;->head:I

    .line 142
    if-ne v4, v5, :cond_9

    .line 144
    invoke-virtual {v2}, Landroidx/collection/CircularArray;->doubleCapacity()V

    .line 146
    :cond_9
    iget-object v4, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mPendingItem:Ljava/lang/Object;

    .line 149
    if-eqz v4, :cond_a

    .line 151
    iget v3, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mPendingItemSize:I

    .line 153
    iput v3, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 155
    const/4 v3, 0x0

    .line 157
    iput-object v3, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mPendingItem:Ljava/lang/Object;

    .line 158
    goto :goto_6

    .line 160
    :cond_a
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 161
    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    .line 163
    invoke-virtual {v4, p1, v1, v5, v3}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 165
    move-result v4

    .line 168
    iput v4, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 169
    aget-object v4, v5, v3

    .line 171
    :goto_6
    move-object v6, v4

    .line 173
    invoke-virtual {v2}, Landroidx/collection/CircularArray;->size()I

    .line 174
    move-result v2

    .line 177
    if-ne v2, v1, :cond_b

    .line 178
    iput p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 180
    iput p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 182
    iput p1, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 184
    goto :goto_7

    .line 186
    :cond_b
    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 187
    if-gez v2, :cond_c

    .line 189
    iput p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 191
    iput p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 193
    goto :goto_7

    .line 195
    :cond_c
    add-int/2addr v2, v1

    .line 196
    iput v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 197
    :goto_7
    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 199
    iget v8, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 201
    move v7, p1

    .line 203
    move v9, p2

    .line 204
    move v10, p3

    .line 205
    invoke-virtual/range {v5 .. v10}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(Ljava/lang/Object;IIII)V

    .line 206
    iget p0, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 209
    return p0
    .line 211
.end method

.method public final appendVisibleItems(IZ)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 4
    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    if-nez p2, :cond_1

    .line 14
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGridDefault;->appendVisbleItemsWithCache(IZ)Z

    .line 24
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz v3, :cond_2

    .line 28
    aput-object v1, v0, v2

    .line 30
    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mPendingItem:Ljava/lang/Object;

    .line 32
    const/4 v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGridDefault;->appendVisibleItemsWithoutCache(IZ)Z

    .line 36
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    aput-object v1, v0, v2

    .line 40
    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mPendingItem:Ljava/lang/Object;

    .line 42
    move v2, p1

    .line 44
    :goto_0
    return v2

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    aput-object v1, v0, v2

    .line 47
    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mPendingItem:Ljava/lang/Object;

    .line 49
    throw p1
    .line 51
.end method

.method public final appendVisibleItemsWithoutCache(IZ)Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 2
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    .line 4
    move-result v0

    .line 7
    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 8
    const/high16 v2, -0x80000000

    .line 10
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    if-ltz v1, :cond_9

    .line 15
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    .line 17
    move-result v6

    .line 20
    if-ge v1, v6, :cond_0

    .line 21
    return v4

    .line 23
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 24
    add-int/lit8 v6, v1, 0x1

    .line 26
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 28
    move-result-object v1

    .line 31
    iget v1, v1, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 32
    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    .line 34
    move-result v7

    .line 37
    if-gez v7, :cond_3

    .line 38
    move v8, v2

    .line 40
    move v7, v4

    .line 41
    :goto_0
    iget v9, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 42
    if-ge v7, v9, :cond_5

    .line 44
    iget-boolean v8, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 46
    if-eqz v8, :cond_1

    .line 48
    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 50
    move-result v8

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 55
    move-result v8

    .line 58
    :goto_1
    if-eq v8, v2, :cond_2

    .line 59
    goto :goto_3

    .line 61
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 62
    goto :goto_0

    .line 64
    :cond_3
    iget-boolean v8, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 65
    if-eqz v8, :cond_4

    .line 67
    invoke-virtual {p0, v7, v4, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMin(IZ[I)I

    .line 69
    move-result v7

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    invoke-virtual {p0, v7, v5, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMax(IZ[I)I

    .line 74
    move-result v7

    .line 77
    :goto_2
    move v8, v7

    .line 78
    :cond_5
    :goto_3
    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 79
    if-eqz v7, :cond_6

    .line 81
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 83
    move-result v7

    .line 86
    if-gt v7, v8, :cond_8

    .line 87
    goto :goto_4

    .line 89
    :cond_6
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 90
    move-result v7

    .line 93
    if-lt v7, v8, :cond_8

    .line 94
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 96
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 98
    if-ne v1, v7, :cond_8

    .line 100
    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 102
    if-eqz v1, :cond_7

    .line 104
    invoke-virtual {p0, v4, v3}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    .line 106
    move-result v1

    .line 109
    goto :goto_5

    .line 110
    :cond_7
    invoke-virtual {p0, v5, v3}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    .line 111
    move-result v1

    .line 114
    :goto_5
    move v8, v1

    .line 115
    move v1, v4

    .line 116
    :cond_8
    move v7, v5

    .line 117
    goto :goto_8

    .line 118
    :cond_9
    iget v1, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    .line 119
    const/4 v6, -0x1

    .line 121
    if-eq v1, v6, :cond_a

    .line 122
    move v6, v1

    .line 124
    goto :goto_6

    .line 125
    :cond_a
    move v6, v4

    .line 126
    :goto_6
    iget-object v1, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLocations:Landroidx/collection/CircularArray;

    .line 127
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    .line 129
    move-result v1

    .line 132
    if-lez v1, :cond_b

    .line 133
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    .line 135
    move-result v1

    .line 138
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 139
    move-result-object v1

    .line 142
    iget v1, v1, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 143
    add-int/2addr v1, v5

    .line 145
    goto :goto_7

    .line 146
    :cond_b
    move v1, v6

    .line 147
    :goto_7
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 148
    rem-int/2addr v1, v7

    .line 150
    move v7, v4

    .line 151
    move v8, v7

    .line 152
    :goto_8
    move v9, v4

    .line 153
    :goto_9
    iget v10, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 154
    if-ge v1, v10, :cond_1e

    .line 156
    if-eq v6, v0, :cond_1d

    .line 158
    if-nez p2, :cond_c

    .line 160
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    .line 162
    move-result v10

    .line 165
    if-eqz v10, :cond_c

    .line 166
    goto/16 :goto_17

    .line 168
    :cond_c
    iget-boolean v9, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 170
    if-eqz v9, :cond_d

    .line 172
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 174
    move-result v9

    .line 177
    goto :goto_a

    .line 178
    :cond_d
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 179
    move-result v9

    .line 182
    :goto_a
    const v10, 0x7fffffff

    .line 183
    if-eq v9, v10, :cond_10

    .line 186
    if-ne v9, v2, :cond_e

    .line 188
    goto :goto_d

    .line 190
    :cond_e
    iget-boolean v10, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 191
    if-eqz v10, :cond_f

    .line 193
    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 195
    :goto_b
    neg-int v10, v10

    .line 197
    goto :goto_c

    .line 198
    :cond_f
    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 199
    :goto_c
    add-int/2addr v9, v10

    .line 201
    goto :goto_f

    .line 202
    :cond_10
    :goto_d
    if-nez v1, :cond_13

    .line 203
    iget-boolean v9, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 205
    if-eqz v9, :cond_11

    .line 207
    iget v9, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 209
    sub-int/2addr v9, v5

    .line 211
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 212
    move-result v9

    .line 215
    goto :goto_e

    .line 216
    :cond_11
    iget v9, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 217
    sub-int/2addr v9, v5

    .line 219
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 220
    move-result v9

    .line 223
    :goto_e
    if-eq v9, v10, :cond_15

    .line 224
    if-eq v9, v2, :cond_15

    .line 226
    iget-boolean v10, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 228
    if-eqz v10, :cond_12

    .line 230
    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 232
    goto :goto_b

    .line 234
    :cond_12
    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 235
    goto :goto_c

    .line 237
    :cond_13
    iget-boolean v9, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 238
    if-eqz v9, :cond_14

    .line 240
    add-int/lit8 v9, v1, -0x1

    .line 242
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 244
    move-result v9

    .line 247
    goto :goto_f

    .line 248
    :cond_14
    add-int/lit8 v9, v1, -0x1

    .line 249
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 251
    move-result v9

    .line 254
    :cond_15
    :goto_f
    add-int/lit8 v10, v6, 0x1

    .line 255
    invoke-virtual {p0, v6, v1, v9}, Landroidx/leanback/widget/StaggeredGridDefault;->appendVisibleItemToRow(III)I

    .line 257
    move-result v6

    .line 260
    if-eqz v7, :cond_1b

    .line 261
    :goto_10
    iget-boolean v11, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 263
    if-eqz v11, :cond_16

    .line 265
    sub-int v11, v9, v6

    .line 267
    if-le v11, v8, :cond_1a

    .line 269
    goto :goto_11

    .line 271
    :cond_16
    add-int v11, v9, v6

    .line 272
    if-ge v11, v8, :cond_1a

    .line 274
    :goto_11
    if-eq v10, v0, :cond_19

    .line 276
    if-nez p2, :cond_17

    .line 278
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    .line 280
    move-result v11

    .line 283
    if-eqz v11, :cond_17

    .line 284
    goto :goto_13

    .line 286
    :cond_17
    iget-boolean v11, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 287
    if-eqz v11, :cond_18

    .line 289
    neg-int v6, v6

    .line 291
    iget v11, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 292
    sub-int/2addr v6, v11

    .line 294
    goto :goto_12

    .line 295
    :cond_18
    iget v11, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 296
    add-int/2addr v6, v11

    .line 298
    :goto_12
    add-int/2addr v9, v6

    .line 299
    add-int/lit8 v6, v10, 0x1

    .line 300
    invoke-virtual {p0, v10, v1, v9}, Landroidx/leanback/widget/StaggeredGridDefault;->appendVisibleItemToRow(III)I

    .line 302
    move-result v10

    .line 305
    move v12, v10

    .line 306
    move v10, v6

    .line 307
    move v6, v12

    .line 308
    goto :goto_10

    .line 309
    :cond_19
    :goto_13
    return v5

    .line 310
    :cond_1a
    :goto_14
    move v6, v10

    .line 311
    goto :goto_16

    .line 312
    :cond_1b
    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 313
    if-eqz v6, :cond_1c

    .line 315
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 317
    move-result v6

    .line 320
    goto :goto_15

    .line 321
    :cond_1c
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 322
    move-result v6

    .line 325
    :goto_15
    move v7, v5

    .line 326
    move v8, v6

    .line 327
    goto :goto_14

    .line 328
    :goto_16
    add-int/lit8 v1, v1, 0x1

    .line 329
    move v9, v5

    .line 331
    goto/16 :goto_9

    .line 332
    :cond_1d
    :goto_17
    return v9

    .line 334
    :cond_1e
    if-eqz p2, :cond_1f

    .line 335
    return v9

    .line 337
    :cond_1f
    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 338
    if-eqz v1, :cond_20

    .line 340
    invoke-virtual {p0, v4, v3}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    .line 342
    move-result v1

    .line 345
    goto :goto_18

    .line 346
    :cond_20
    invoke-virtual {p0, v5, v3}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    .line 347
    move-result v1

    .line 350
    :goto_18
    move v8, v1

    .line 351
    move v1, v4

    .line 352
    goto/16 :goto_9
    .line 353
.end method

.method public final findRowEdgeLimitSearchIndex(Z)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_2

    .line 4
    iget p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 6
    :goto_0
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 8
    if-lt p1, v2, :cond_5

    .line 10
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 12
    move-result-object v2

    .line 15
    iget v2, v2, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 16
    if-nez v2, :cond_0

    .line 18
    move v1, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    if-eqz v1, :cond_1

    .line 22
    iget v3, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 24
    sub-int/2addr v3, v0

    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    return p1

    .line 29
    :cond_1
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_2
    iget p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 33
    :goto_2
    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 35
    if-gt p1, v2, :cond_5

    .line 37
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 39
    move-result-object v2

    .line 42
    iget v2, v2, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 43
    iget v3, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 45
    sub-int/2addr v3, v0

    .line 47
    if-ne v2, v3, :cond_3

    .line 48
    move v1, v0

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    if-eqz v1, :cond_4

    .line 52
    if-nez v2, :cond_4

    .line 54
    return p1

    .line 56
    :cond_4
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 57
    goto :goto_2

    .line 59
    :cond_5
    const/4 p0, -0x1

    .line 60
    return p0
    .line 61
.end method

.method public final findRowMax(IZ[I)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 8
    move-result-object v1

    .line 11
    iget v2, v1, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 12
    iget-boolean v3, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 14
    const/4 v4, 0x1

    .line 16
    if-eqz v3, :cond_3

    .line 17
    add-int/lit8 v1, p1, 0x1

    .line 19
    move v3, v2

    .line 21
    move v5, v3

    .line 22
    move v6, v4

    .line 23
    move v2, v1

    .line 24
    move v1, v0

    .line 25
    :goto_0
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 26
    if-ge v6, v7, :cond_7

    .line 28
    iget v7, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 30
    if-gt v2, v7, :cond_7

    .line 32
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 34
    move-result-object v7

    .line 37
    iget v8, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    .line 38
    add-int/2addr v1, v8

    .line 40
    iget v7, v7, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 41
    if-eq v7, v5, :cond_2

    .line 43
    add-int/lit8 v6, v6, 0x1

    .line 45
    if-eqz p2, :cond_0

    .line 47
    if-le v1, v0, :cond_1

    .line 49
    goto :goto_1

    .line 51
    :cond_0
    if-ge v1, v0, :cond_1

    .line 52
    :goto_1
    move v0, v1

    .line 54
    move p1, v2

    .line 55
    move v3, v7

    .line 56
    move v5, v3

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    move v5, v7

    .line 59
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_0

    .line 62
    :cond_3
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 63
    invoke-virtual {v3, p1}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    .line 65
    move-result v3

    .line 68
    add-int/2addr v3, v0

    .line 69
    add-int/lit8 v5, p1, -0x1

    .line 70
    move v7, v4

    .line 72
    move v6, v5

    .line 73
    move v5, v2

    .line 74
    move-object v2, v1

    .line 75
    move v1, v0

    .line 76
    move v0, v3

    .line 77
    move v3, v5

    .line 78
    :goto_3
    iget v8, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 79
    if-ge v7, v8, :cond_7

    .line 81
    iget v8, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 83
    if-lt v6, v8, :cond_7

    .line 85
    iget v2, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    .line 87
    sub-int/2addr v1, v2

    .line 89
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 90
    move-result-object v2

    .line 93
    iget v8, v2, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 94
    if-eq v8, v5, :cond_6

    .line 96
    add-int/lit8 v7, v7, 0x1

    .line 98
    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 100
    invoke-virtual {v5, v6}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    .line 102
    move-result v5

    .line 105
    add-int/2addr v5, v1

    .line 106
    if-eqz p2, :cond_4

    .line 107
    if-le v5, v0, :cond_5

    .line 109
    goto :goto_4

    .line 111
    :cond_4
    if-ge v5, v0, :cond_5

    .line 112
    :goto_4
    move v0, v5

    .line 114
    move p1, v6

    .line 115
    move v3, v8

    .line 116
    move v5, v3

    .line 117
    goto :goto_5

    .line 118
    :cond_5
    move v5, v8

    .line 119
    :cond_6
    :goto_5
    add-int/lit8 v6, v6, -0x1

    .line 120
    goto :goto_3

    .line 122
    :cond_7
    if-eqz p3, :cond_8

    .line 123
    const/4 p0, 0x0

    .line 125
    aput v3, p3, p0

    .line 126
    aput p1, p3, v4

    .line 128
    :cond_8
    return v0
    .line 130
.end method

.method public final findRowMin(IZ[I)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 8
    move-result-object v1

    .line 11
    iget v2, v1, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 12
    iget-boolean v3, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 14
    const/4 v4, 0x1

    .line 16
    if-eqz v3, :cond_3

    .line 17
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 19
    invoke-virtual {v3, p1}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    .line 21
    move-result v3

    .line 24
    sub-int v3, v0, v3

    .line 25
    add-int/lit8 v5, p1, -0x1

    .line 27
    move v7, v4

    .line 29
    move v6, v5

    .line 30
    move v5, v3

    .line 31
    move v3, v2

    .line 32
    :goto_0
    iget v8, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 33
    if-ge v7, v8, :cond_8

    .line 35
    iget v8, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 37
    if-lt v6, v8, :cond_8

    .line 39
    iget v1, v1, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    .line 41
    sub-int/2addr v0, v1

    .line 43
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 44
    move-result-object v1

    .line 47
    iget v8, v1, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 48
    if-eq v8, v3, :cond_2

    .line 50
    add-int/lit8 v7, v7, 0x1

    .line 52
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 54
    invoke-virtual {v3, v6}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    .line 56
    move-result v3

    .line 59
    sub-int v3, v0, v3

    .line 60
    if-eqz p2, :cond_0

    .line 62
    if-le v3, v5, :cond_1

    .line 64
    goto :goto_1

    .line 66
    :cond_0
    if-ge v3, v5, :cond_1

    .line 67
    :goto_1
    move v5, v3

    .line 69
    move p1, v6

    .line 70
    move v2, v8

    .line 71
    move v3, v2

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    move v3, v8

    .line 74
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, -0x1

    .line 75
    goto :goto_0

    .line 77
    :cond_3
    add-int/lit8 v1, p1, 0x1

    .line 78
    move v3, v2

    .line 80
    move v5, v3

    .line 81
    move v6, v4

    .line 82
    move v2, v1

    .line 83
    move v1, v0

    .line 84
    :goto_3
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 85
    if-ge v6, v7, :cond_7

    .line 87
    iget v7, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 89
    if-gt v2, v7, :cond_7

    .line 91
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 93
    move-result-object v7

    .line 96
    iget v8, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    .line 97
    add-int/2addr v1, v8

    .line 99
    iget v7, v7, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 100
    if-eq v7, v5, :cond_6

    .line 102
    add-int/lit8 v6, v6, 0x1

    .line 104
    if-eqz p2, :cond_4

    .line 106
    if-le v1, v0, :cond_5

    .line 108
    goto :goto_4

    .line 110
    :cond_4
    if-ge v1, v0, :cond_5

    .line 111
    :goto_4
    move v0, v1

    .line 113
    move p1, v2

    .line 114
    move v3, v7

    .line 115
    move v5, v3

    .line 116
    goto :goto_5

    .line 117
    :cond_5
    move v5, v7

    .line 118
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 119
    goto :goto_3

    .line 121
    :cond_7
    move v5, v0

    .line 122
    move v2, v3

    .line 123
    :cond_8
    if-eqz p3, :cond_9

    .line 124
    const/4 p0, 0x0

    .line 126
    aput v2, p3, p0

    .line 127
    aput p1, p3, v4

    .line 129
    :cond_9
    return v5
    .line 131
.end method

.method public final getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 4
    if-ge v1, v2, :cond_0

    .line 6
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    .line 8
    aget-object v2, v2, v1

    .line 10
    iput v0, v2, Landroidx/collection/CircularIntArray;->tail:I

    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    if-ltz p1, :cond_4

    .line 17
    :goto_1
    if-gt p1, p2, :cond_4

    .line 19
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    .line 21
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 23
    move-result-object v1

    .line 26
    iget v1, v1, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 27
    aget-object v0, v0, v1

    .line 29
    iget v1, v0, Landroidx/collection/CircularIntArray;->tail:I

    .line 31
    add-int/lit8 v2, v1, 0x0

    .line 33
    iget v3, v0, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    .line 35
    and-int/2addr v2, v3

    .line 37
    if-lez v2, :cond_3

    .line 38
    if-eqz v1, :cond_2

    .line 40
    iget-object v2, v0, Landroidx/collection/CircularIntArray;->elements:[I

    .line 42
    add-int/lit8 v4, v1, -0x1

    .line 44
    and-int/2addr v3, v4

    .line 46
    aget v2, v2, v3

    .line 47
    add-int/lit8 v4, p1, -0x1

    .line 49
    if-ne v2, v4, :cond_3

    .line 51
    if-eqz v1, :cond_1

    .line 53
    iput v3, v0, Landroidx/collection/CircularIntArray;->tail:I

    .line 55
    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 57
    goto :goto_2

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 61
    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 63
    throw p0

    .line 66
    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 67
    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 69
    throw p0

    .line 72
    :cond_3
    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 73
    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 76
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 79
    goto :goto_1

    .line 81
    :cond_4
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    .line 82
    return-object p0
    .line 84
.end method

.method public final getLastIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 2
    iget-object p0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLocations:Landroidx/collection/CircularArray;

    .line 4
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    .line 6
    move-result p0

    .line 9
    add-int/2addr p0, v0

    .line 10
    add-int/lit8 p0, p0, -0x1

    .line 11
    return p0
    .line 13
.end method

.method public final bridge synthetic getLocation(I)Landroidx/leanback/widget/Grid$Location;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object p0

    return-object p0
.end method

.method public final getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;
    .locals 2

    .line 2
    iget v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_2

    .line 3
    iget-object p0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    add-int/2addr v1, p1

    iget p0, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr p0, v1

    aget-object p0, v0, p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    check-cast p0, Landroidx/leanback/widget/StaggeredGrid$Location;

    goto :goto_1

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final getRowMax(I)I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 2
    const/high16 v1, -0x80000000

    .line 4
    if-gez v0, :cond_0

    .line 6
    return v1

    .line 8
    :cond_0
    iget-boolean v2, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 9
    if-eqz v2, :cond_3

    .line 11
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 13
    invoke-virtual {v2, v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 15
    move-result v0

    .line 18
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 19
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 21
    move-result-object v2

    .line 24
    iget v2, v2, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 25
    if-ne v2, p1, :cond_1

    .line 27
    return v0

    .line 29
    :cond_1
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 30
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    .line 34
    move-result v3

    .line 37
    if-gt v2, v3, :cond_6

    .line 38
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 40
    move-result-object v3

    .line 43
    iget v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    .line 44
    add-int/2addr v0, v4

    .line 46
    iget v3, v3, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 47
    if-ne v3, p1, :cond_2

    .line 49
    return v0

    .line 51
    :cond_2
    goto :goto_0

    .line 52
    :cond_3
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 53
    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 55
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 57
    move-result v0

    .line 60
    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 61
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 63
    move-result-object v2

    .line 66
    iget v3, v2, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 67
    if-ne v3, p1, :cond_4

    .line 69
    iget p0, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 71
    :goto_1
    add-int/2addr v0, p0

    .line 73
    return v0

    .line 74
    :cond_4
    iget v3, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 75
    add-int/lit8 v3, v3, -0x1

    .line 77
    :goto_2
    iget v4, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 79
    if-lt v3, v4, :cond_6

    .line 81
    iget v2, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    .line 83
    sub-int/2addr v0, v2

    .line 85
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 86
    move-result-object v2

    .line 89
    iget v4, v2, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 90
    if-ne v4, p1, :cond_5

    .line 92
    iget p0, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 94
    goto :goto_1

    .line 96
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 97
    goto :goto_2

    .line 99
    :cond_6
    return v1
    .line 100
.end method

.method public final getRowMin(I)I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 2
    const v1, 0x7fffffff

    .line 4
    if-gez v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    iget-boolean v2, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 10
    if-eqz v2, :cond_3

    .line 12
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 14
    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 16
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 18
    move-result v0

    .line 21
    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 22
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 24
    move-result-object v2

    .line 27
    iget v3, v2, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 28
    if-ne v3, p1, :cond_1

    .line 30
    iget p0, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 32
    :goto_0
    sub-int/2addr v0, p0

    .line 34
    return v0

    .line 35
    :cond_1
    iget v3, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 36
    add-int/lit8 v3, v3, -0x1

    .line 38
    :goto_1
    iget v4, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 40
    if-lt v3, v4, :cond_6

    .line 42
    iget v2, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    .line 44
    sub-int/2addr v0, v2

    .line 46
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 47
    move-result-object v2

    .line 50
    iget v4, v2, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 51
    if-ne v4, p1, :cond_2

    .line 53
    iget p0, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 58
    goto :goto_1

    .line 60
    :cond_3
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 61
    invoke-virtual {v2, v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 63
    move-result v0

    .line 66
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 67
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 69
    move-result-object v2

    .line 72
    iget v2, v2, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 73
    if-ne v2, p1, :cond_4

    .line 75
    return v0

    .line 77
    :cond_4
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 78
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 80
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    .line 82
    move-result v3

    .line 85
    if-gt v2, v3, :cond_6

    .line 86
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 88
    move-result-object v3

    .line 91
    iget v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    .line 92
    add-int/2addr v0, v4

    .line 94
    iget v3, v3, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 95
    if-ne v3, p1, :cond_5

    .line 97
    return v0

    .line 99
    :cond_5
    goto :goto_2

    .line 100
    :cond_6
    return v1
    .line 101
.end method

.method public final invalidateItemsAfter(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/widget/Grid;->invalidateItemsAfter(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    .line 5
    move-result v0

    .line 8
    sub-int/2addr v0, p1

    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    iget-object p1, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLocations:Landroidx/collection/CircularArray;

    .line 12
    invoke-virtual {p1, v0}, Landroidx/collection/CircularArray;->removeFromEnd(I)V

    .line 14
    invoke-virtual {p1}, Landroidx/collection/CircularArray;->size()I

    .line 17
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    const/4 p1, -0x1

    .line 23
    iput p1, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 24
    :cond_0
    return-void
    .line 26
.end method

.method public final prependVisbleItemsWithCache(IZ)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mLocations:Landroidx/collection/CircularArray;

    .line 4
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    .line 6
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    goto/16 :goto_5

    .line 13
    :cond_0
    iget v2, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 15
    const/4 v4, 0x1

    .line 17
    if-ltz v2, :cond_1

    .line 18
    iget-object v5, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 20
    invoke-virtual {v5, v2}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 22
    move-result v2

    .line 25
    iget v5, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 26
    invoke-virtual {v0, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 28
    move-result-object v5

    .line 31
    iget v5, v5, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    .line 32
    iget v6, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 34
    sub-int/2addr v6, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget v2, v0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    .line 38
    const/4 v5, -0x1

    .line 40
    if-eq v2, v5, :cond_2

    .line 41
    move v6, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v6, v3

    .line 45
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    .line 46
    move-result v2

    .line 49
    if-gt v6, v2, :cond_9

    .line 50
    iget v2, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 52
    add-int/lit8 v5, v2, -0x1

    .line 54
    if-ge v6, v5, :cond_3

    .line 56
    goto/16 :goto_4

    .line 58
    :cond_3
    if-ge v6, v2, :cond_4

    .line 60
    goto/16 :goto_5

    .line 62
    :cond_4
    const v2, 0x7fffffff

    .line 64
    move v5, v3

    .line 67
    :goto_1
    iget-object v7, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 68
    iget-object v7, v7, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 70
    iget v7, v7, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 72
    iget v8, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 74
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 76
    move-result v7

    .line 79
    :goto_2
    if-lt v6, v7, :cond_a

    .line 80
    invoke-virtual {v0, v6}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 82
    move-result-object v14

    .line 85
    iget v15, v14, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 86
    iget-object v8, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 88
    iget-object v9, v0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    .line 90
    invoke-virtual {v8, v6, v3, v9, v3}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 92
    move-result v11

    .line 95
    iget v8, v14, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 96
    if-eq v11, v8, :cond_5

    .line 98
    add-int/2addr v6, v4

    .line 100
    iget v2, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 101
    sub-int/2addr v6, v2

    .line 103
    invoke-virtual {v1, v6}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    .line 104
    iget v1, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 107
    iput v1, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 109
    aget-object v1, v9, v3

    .line 111
    iput-object v1, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mPendingItem:Ljava/lang/Object;

    .line 113
    iput v11, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mPendingItemSize:I

    .line 115
    goto :goto_5

    .line 117
    :cond_5
    iput v6, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 118
    iget v8, v0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 120
    if-gez v8, :cond_6

    .line 122
    iput v6, v0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 124
    :cond_6
    iget-object v8, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 126
    aget-object v9, v9, v3

    .line 128
    sub-int v13, v2, v5

    .line 130
    move v10, v6

    .line 132
    move v12, v15

    .line 133
    invoke-virtual/range {v8 .. v13}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(Ljava/lang/Object;IIII)V

    .line 134
    if-nez p2, :cond_7

    .line 137
    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    .line 139
    move-result v2

    .line 142
    if-eqz v2, :cond_7

    .line 143
    goto :goto_3

    .line 145
    :cond_7
    iget-object v2, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 146
    invoke-virtual {v2, v6}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 148
    move-result v2

    .line 151
    iget v5, v14, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    .line 152
    if-nez v15, :cond_8

    .line 154
    if-eqz p2, :cond_8

    .line 156
    :goto_3
    move v3, v4

    .line 158
    goto :goto_5

    .line 159
    :cond_8
    add-int/lit8 v6, v6, -0x1

    .line 160
    goto :goto_2

    .line 162
    :cond_9
    :goto_4
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    .line 163
    move-result v0

    .line 166
    invoke-virtual {v1, v0}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    .line 167
    :cond_a
    :goto_5
    return v3
    .line 170
.end method

.method public final prependVisibleItemToRow(III)I
    .locals 12

    .line 1
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 2
    if-ltz v0, :cond_1

    .line 4
    iget v1, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    add-int/lit8 v1, p1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 17
    throw p0

    .line 20
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 21
    const/4 v1, 0x0

    .line 23
    if-ltz v0, :cond_2

    .line 24
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 26
    move-result-object v0

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move-object v0, v1

    .line 31
    :goto_1
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 32
    iget v3, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 34
    invoke-virtual {v2, v3}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 36
    move-result v2

    .line 39
    new-instance v3, Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 40
    const/4 v4, 0x0

    .line 42
    invoke-direct {v3, p2, v4}, Landroidx/leanback/widget/StaggeredGrid$Location;-><init>(II)V

    .line 43
    iget-object v5, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLocations:Landroidx/collection/CircularArray;

    .line 46
    iget v6, v5, Landroidx/collection/CircularArray;->head:I

    .line 48
    add-int/lit8 v6, v6, -0x1

    .line 50
    iget v7, v5, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 52
    and-int/2addr v6, v7

    .line 54
    iput v6, v5, Landroidx/collection/CircularArray;->head:I

    .line 55
    iget-object v7, v5, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    .line 57
    aput-object v3, v7, v6

    .line 59
    iget v7, v5, Landroidx/collection/CircularArray;->tail:I

    .line 61
    if-ne v6, v7, :cond_3

    .line 63
    invoke-virtual {v5}, Landroidx/collection/CircularArray;->doubleCapacity()V

    .line 65
    :cond_3
    iget-object v5, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mPendingItem:Ljava/lang/Object;

    .line 68
    if-eqz v5, :cond_4

    .line 70
    iget v4, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mPendingItemSize:I

    .line 72
    iput v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 74
    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mPendingItem:Ljava/lang/Object;

    .line 76
    goto :goto_2

    .line 78
    :cond_4
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 79
    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    .line 81
    invoke-virtual {v1, p1, v4, v5, v4}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 83
    move-result v1

    .line 86
    iput v1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 87
    aget-object v5, v5, v4

    .line 89
    :goto_2
    move-object v7, v5

    .line 91
    iput p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 92
    iput p1, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 94
    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 96
    if-gez v1, :cond_5

    .line 98
    iput p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 100
    :cond_5
    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 102
    if-nez v1, :cond_6

    .line 104
    iget v1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 106
    sub-int/2addr p3, v1

    .line 108
    goto :goto_3

    .line 109
    :cond_6
    iget v1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 110
    add-int/2addr p3, v1

    .line 112
    :goto_3
    move v11, p3

    .line 113
    if-eqz v0, :cond_7

    .line 114
    sub-int/2addr v2, v11

    .line 116
    iput v2, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    .line 117
    :cond_7
    iget-object v6, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 119
    iget v9, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 121
    move v8, p1

    .line 123
    move v10, p2

    .line 124
    invoke-virtual/range {v6 .. v11}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(Ljava/lang/Object;IIII)V

    .line 125
    iget p0, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    .line 128
    return p0
    .line 130
.end method

.method public final prependVisibleItems(IZ)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    .line 4
    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    if-nez p2, :cond_1

    .line 14
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGridDefault;->prependVisbleItemsWithCache(IZ)Z

    .line 24
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz v3, :cond_2

    .line 28
    aput-object v1, v0, v2

    .line 30
    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mPendingItem:Ljava/lang/Object;

    .line 32
    const/4 v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGridDefault;->prependVisibleItemsWithoutCache(IZ)Z

    .line 36
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    aput-object v1, v0, v2

    .line 40
    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mPendingItem:Ljava/lang/Object;

    .line 42
    move v2, p1

    .line 44
    :goto_0
    return v2

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    aput-object v1, v0, v2

    .line 47
    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mPendingItem:Ljava/lang/Object;

    .line 49
    throw p1
    .line 51
.end method

.method public final prependVisibleItemsWithoutCache(IZ)Z
    .locals 12

    .line 1
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 2
    const v1, 0x7fffffff

    .line 4
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ltz v0, :cond_9

    .line 10
    iget v5, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 12
    if-le v0, v5, :cond_0

    .line 14
    return v3

    .line 16
    :cond_0
    add-int/lit8 v5, v0, -0x1

    .line 17
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 19
    move-result-object v0

    .line 22
    iget v0, v0, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 23
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    .line 25
    move-result v6

    .line 28
    if-gez v6, :cond_3

    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 31
    iget v6, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 33
    sub-int/2addr v6, v4

    .line 35
    move v7, v1

    .line 36
    :goto_0
    if-ltz v6, :cond_5

    .line 37
    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 39
    if-eqz v7, :cond_1

    .line 41
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 43
    move-result v7

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 48
    move-result v7

    .line 51
    :goto_1
    if-eq v7, v1, :cond_2

    .line 52
    goto :goto_3

    .line 54
    :cond_2
    add-int/lit8 v6, v6, -0x1

    .line 55
    goto :goto_0

    .line 57
    :cond_3
    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 58
    if-eqz v7, :cond_4

    .line 60
    invoke-virtual {p0, v6, v4, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMax(IZ[I)I

    .line 62
    move-result v6

    .line 65
    goto :goto_2

    .line 66
    :cond_4
    invoke-virtual {p0, v6, v3, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMin(IZ[I)I

    .line 67
    move-result v6

    .line 70
    :goto_2
    move v7, v6

    .line 71
    :cond_5
    :goto_3
    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 72
    if-eqz v6, :cond_6

    .line 74
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 76
    move-result v6

    .line 79
    if-lt v6, v7, :cond_8

    .line 80
    goto :goto_4

    .line 82
    :cond_6
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 83
    move-result v6

    .line 86
    if-gt v6, v7, :cond_8

    .line 87
    :goto_4
    add-int/lit8 v0, v0, -0x1

    .line 89
    if-gez v0, :cond_8

    .line 91
    iget v0, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 93
    sub-int/2addr v0, v4

    .line 95
    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 96
    if-eqz v6, :cond_7

    .line 98
    invoke-virtual {p0, v4, v2}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    .line 100
    move-result v6

    .line 103
    goto :goto_5

    .line 104
    :cond_7
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    .line 105
    move-result v6

    .line 108
    :goto_5
    move v7, v6

    .line 109
    :cond_8
    move v6, v4

    .line 110
    goto :goto_8

    .line 111
    :cond_9
    iget v0, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    .line 112
    const/4 v5, -0x1

    .line 114
    if-eq v0, v5, :cond_a

    .line 115
    move v5, v0

    .line 117
    goto :goto_6

    .line 118
    :cond_a
    move v5, v3

    .line 119
    :goto_6
    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLocations:Landroidx/collection/CircularArray;

    .line 120
    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    .line 122
    move-result v0

    .line 125
    if-lez v0, :cond_b

    .line 126
    iget v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstIndex:I

    .line 128
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 130
    move-result-object v0

    .line 133
    iget v0, v0, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 134
    iget v6, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 136
    add-int/2addr v0, v6

    .line 138
    sub-int/2addr v0, v4

    .line 139
    goto :goto_7

    .line 140
    :cond_b
    move v0, v5

    .line 141
    :goto_7
    iget v6, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 142
    rem-int/2addr v0, v6

    .line 144
    move v6, v3

    .line 145
    move v7, v6

    .line 146
    :goto_8
    move v8, v3

    .line 147
    :goto_9
    if-ltz v0, :cond_1e

    .line 148
    if-ltz v5, :cond_1d

    .line 150
    if-nez p2, :cond_c

    .line 152
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    .line 154
    move-result v9

    .line 157
    if-eqz v9, :cond_c

    .line 158
    goto/16 :goto_17

    .line 160
    :cond_c
    iget-boolean v8, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 162
    if-eqz v8, :cond_d

    .line 164
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 166
    move-result v8

    .line 169
    goto :goto_a

    .line 170
    :cond_d
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 171
    move-result v8

    .line 174
    :goto_a
    const/high16 v9, -0x80000000

    .line 175
    if-eq v8, v1, :cond_10

    .line 177
    if-ne v8, v9, :cond_e

    .line 179
    goto :goto_d

    .line 181
    :cond_e
    iget-boolean v9, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 182
    if-eqz v9, :cond_f

    .line 184
    iget v9, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 186
    goto :goto_c

    .line 188
    :cond_f
    iget v9, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 189
    :goto_b
    neg-int v9, v9

    .line 191
    :goto_c
    add-int/2addr v8, v9

    .line 192
    goto :goto_f

    .line 193
    :cond_10
    :goto_d
    iget v8, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 194
    sub-int/2addr v8, v4

    .line 196
    if-ne v0, v8, :cond_13

    .line 197
    iget-boolean v8, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 199
    if-eqz v8, :cond_11

    .line 201
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 203
    move-result v8

    .line 206
    goto :goto_e

    .line 207
    :cond_11
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 208
    move-result v8

    .line 211
    :goto_e
    if-eq v8, v1, :cond_15

    .line 212
    if-eq v8, v9, :cond_15

    .line 214
    iget-boolean v9, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 216
    if-eqz v9, :cond_12

    .line 218
    iget v9, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 220
    goto :goto_c

    .line 222
    :cond_12
    iget v9, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 223
    goto :goto_b

    .line 225
    :cond_13
    iget-boolean v8, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 226
    if-eqz v8, :cond_14

    .line 228
    add-int/lit8 v8, v0, 0x1

    .line 230
    invoke-virtual {p0, v8}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 232
    move-result v8

    .line 235
    goto :goto_f

    .line 236
    :cond_14
    add-int/lit8 v8, v0, 0x1

    .line 237
    invoke-virtual {p0, v8}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 239
    move-result v8

    .line 242
    :cond_15
    :goto_f
    add-int/lit8 v9, v5, -0x1

    .line 243
    invoke-virtual {p0, v5, v0, v8}, Landroidx/leanback/widget/StaggeredGridDefault;->prependVisibleItemToRow(III)I

    .line 245
    move-result v5

    .line 248
    if-eqz v6, :cond_1b

    .line 249
    :goto_10
    iget-boolean v10, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 251
    if-eqz v10, :cond_16

    .line 253
    add-int v10, v8, v5

    .line 255
    if-ge v10, v7, :cond_1a

    .line 257
    goto :goto_11

    .line 259
    :cond_16
    sub-int v10, v8, v5

    .line 260
    if-le v10, v7, :cond_1a

    .line 262
    :goto_11
    if-ltz v9, :cond_19

    .line 264
    if-nez p2, :cond_17

    .line 266
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    .line 268
    move-result v10

    .line 271
    if-eqz v10, :cond_17

    .line 272
    goto :goto_13

    .line 274
    :cond_17
    iget-boolean v10, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 275
    if-eqz v10, :cond_18

    .line 277
    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 279
    add-int/2addr v5, v10

    .line 281
    goto :goto_12

    .line 282
    :cond_18
    neg-int v5, v5

    .line 283
    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 284
    sub-int/2addr v5, v10

    .line 286
    :goto_12
    add-int/2addr v8, v5

    .line 287
    add-int/lit8 v5, v9, -0x1

    .line 288
    invoke-virtual {p0, v9, v0, v8}, Landroidx/leanback/widget/StaggeredGridDefault;->prependVisibleItemToRow(III)I

    .line 290
    move-result v9

    .line 293
    move v11, v9

    .line 294
    move v9, v5

    .line 295
    move v5, v11

    .line 296
    goto :goto_10

    .line 297
    :cond_19
    :goto_13
    return v4

    .line 298
    :cond_1a
    :goto_14
    move v5, v9

    .line 299
    goto :goto_16

    .line 300
    :cond_1b
    iget-boolean v5, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 301
    if-eqz v5, :cond_1c

    .line 303
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 305
    move-result v5

    .line 308
    goto :goto_15

    .line 309
    :cond_1c
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 310
    move-result v5

    .line 313
    :goto_15
    move v6, v4

    .line 314
    move v7, v5

    .line 315
    goto :goto_14

    .line 316
    :goto_16
    add-int/lit8 v0, v0, -0x1

    .line 317
    move v8, v4

    .line 319
    goto/16 :goto_9

    .line 320
    :cond_1d
    :goto_17
    return v8

    .line 322
    :cond_1e
    if-eqz p2, :cond_1f

    .line 323
    return v8

    .line 325
    :cond_1f
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 326
    if-eqz v0, :cond_20

    .line 328
    invoke-virtual {p0, v4, v2}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    .line 330
    move-result v0

    .line 333
    goto :goto_18

    .line 334
    :cond_20
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    .line 335
    move-result v0

    .line 338
    :goto_18
    move v7, v0

    .line 339
    iget v0, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 340
    sub-int/2addr v0, v4

    .line 342
    goto/16 :goto_9
    .line 343
.end method
