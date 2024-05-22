.class public final Landroidx/leanback/widget/GridLayoutManager$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/GridLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final addItem(Ljava/lang/Object;IIII)V
    .locals 7

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Landroid/view/View;

    .line 3
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 5
    const/high16 v0, -0x80000000

    .line 7
    if-eq p5, v0, :cond_0

    .line 9
    const v0, 0x7fffffff

    .line 11
    if-ne p5, v0, :cond_2

    .line 14
    :cond_0
    iget-object p5, p1, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 16
    iget-boolean p5, p5, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 18
    if-nez p5, :cond_1

    .line 20
    iget-object p5, p1, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 22
    iget-object p5, p5, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    .line 24
    iget p5, p5, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    iget-object p5, p1, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 29
    iget-object p5, p5, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    .line 31
    iget v0, p5, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    .line 33
    iget p5, p5, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    .line 35
    sub-int p5, v0, p5

    .line 37
    :cond_2
    :goto_0
    iget-object v0, p1, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 39
    iget-boolean v0, v0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 41
    const/4 v6, 0x1

    .line 43
    xor-int/2addr v0, v6

    .line 44
    if-eqz v0, :cond_3

    .line 45
    add-int/2addr p3, p5

    .line 47
    move v4, p3

    .line 48
    move v3, p5

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    sub-int p3, p5, p3

    .line 51
    move v3, p3

    .line 53
    move v4, p5

    .line 54
    :goto_1
    invoke-virtual {p1, p4}, Landroidx/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    .line 55
    move-result p3

    .line 58
    iget-object p5, p1, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 59
    iget-object p5, p5, Landroidx/leanback/widget/WindowAlignment;->mSecondAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    .line 61
    iget p5, p5, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    .line 63
    add-int/2addr p3, p5

    .line 65
    iget p5, p1, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    .line 66
    sub-int v5, p3, p5

    .line 68
    iget-object p3, p1, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    .line 70
    iget-object p5, p3, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    .line 72
    if-eqz p5, :cond_5

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 76
    move-result-object p2

    .line 79
    iget-object p3, p3, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    .line 80
    iget-object p5, p3, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 82
    monitor-enter p5

    .line 84
    :try_start_0
    iget-object v0, p3, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    .line 85
    iget-object v0, v0, Landroidx/collection/internal/LruHashMap;->map:Ljava/util/LinkedHashMap;

    .line 87
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    move-result-object p2

    .line 92
    if-eqz p2, :cond_4

    .line 93
    iget v0, p3, Landroidx/collection/LruCache;->size:I

    .line 95
    add-int/lit8 v0, v0, -0x1

    .line 97
    iput v0, p3, Landroidx/collection/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_4
    monitor-exit p5

    .line 101
    check-cast p2, Landroid/util/SparseArray;

    .line 102
    if-eqz p2, :cond_5

    .line 104
    invoke-virtual {v1, p2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 106
    goto :goto_2

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    monitor-exit p5

    .line 111
    throw p0

    .line 112
    :cond_5
    :goto_2
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 113
    move v2, p4

    .line 115
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->layoutChild(Landroid/view/View;IIII)V

    .line 116
    iget-object p0, p1, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 119
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 121
    if-nez p0, :cond_6

    .line 123
    invoke-virtual {p1}, Landroidx/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 125
    :cond_6
    iget p0, p1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 128
    and-int/lit8 p0, p0, 0x3

    .line 130
    if-eq p0, v6, :cond_a

    .line 132
    iget-object p0, p1, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    .line 134
    if-eqz p0, :cond_a

    .line 136
    iget-boolean p1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    .line 138
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 140
    if-eqz p1, :cond_7

    .line 142
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 144
    if-eqz p1, :cond_7

    .line 146
    invoke-virtual {p2, p1, v6}, Landroidx/leanback/widget/GridLayoutManager;->processSelectionMoves(IZ)I

    .line 148
    move-result p1

    .line 151
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 152
    :cond_7
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 154
    if-eqz p1, :cond_9

    .line 156
    if-lez p1, :cond_8

    .line 158
    invoke-virtual {p2}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    .line 160
    move-result p1

    .line 163
    if-nez p1, :cond_9

    .line 164
    :cond_8
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 166
    if-gez p1, :cond_a

    .line 168
    invoke-virtual {p2}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    .line 170
    move-result p1

    .line 173
    if-eqz p1, :cond_a

    .line 174
    :cond_9
    iget p1, p2, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 176
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 178
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 180
    :cond_a
    return-void
    .line 183
.end method

.method public final createItem(IZ[Ljava/lang/Object;Z)I
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 4
    sub-int v0, p1, v0

    .line 6
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 8
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 18
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    .line 20
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    move-result-object v1

    .line 31
    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 32
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    .line 34
    move-result v1

    .line 37
    const/4 v2, 0x0

    .line 38
    if-nez v1, :cond_12

    .line 39
    const/4 v1, -0x1

    .line 41
    const/4 v3, 0x1

    .line 42
    if-eqz p4, :cond_1

    .line 43
    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p0, v1, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(ILandroid/view/View;Z)V

    .line 47
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0, v2, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(ILandroid/view/View;Z)V

    .line 51
    goto :goto_0

    .line 54
    :cond_1
    if-eqz p2, :cond_2

    .line 55
    invoke-virtual {p0, v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(ILandroid/view/View;Z)V

    .line 57
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0, v2, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(ILandroid/view/View;Z)V

    .line 61
    :goto_0
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildVisibility:I

    .line 64
    if-eq p2, v1, :cond_3

    .line 66
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_3
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    .line 71
    if-eqz p2, :cond_d

    .line 73
    iget-boolean p4, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    .line 75
    if-nez p4, :cond_d

    .line 77
    iget p4, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 79
    if-nez p4, :cond_4

    .line 81
    goto/16 :goto_7

    .line 83
    :cond_4
    iget-object v1, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 85
    if-lez p4, :cond_5

    .line 87
    iget p4, v1, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 89
    iget v4, v1, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 91
    add-int/2addr p4, v4

    .line 93
    goto :goto_1

    .line 94
    :cond_5
    iget p4, v1, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 95
    iget v4, v1, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 97
    sub-int/2addr p4, v4

    .line 99
    :goto_1
    const/4 v4, 0x0

    .line 100
    :goto_2
    iget v5, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 101
    if-eqz v5, :cond_c

    .line 103
    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    .line 105
    move-result-object v5

    .line 108
    if-nez v5, :cond_6

    .line 109
    goto :goto_6

    .line 111
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 115
    move-result v6

    .line 118
    if-nez v6, :cond_8

    .line 119
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    .line 121
    move-result v6

    .line 124
    if-eqz v6, :cond_7

    .line 125
    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    .line 127
    move-result v6

    .line 130
    if-eqz v6, :cond_8

    .line 131
    :cond_7
    move v6, v3

    .line 133
    goto :goto_3

    .line 134
    :cond_8
    move v6, v2

    .line 135
    :goto_3
    if-nez v6, :cond_9

    .line 136
    goto :goto_5

    .line 138
    :cond_9
    iput p4, v1, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 139
    iput v2, v1, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 141
    iget v4, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 143
    if-lez v4, :cond_a

    .line 145
    add-int/lit8 v4, v4, -0x1

    .line 147
    iput v4, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 149
    goto :goto_4

    .line 151
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 152
    iput v4, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 154
    :goto_4
    move-object v4, v5

    .line 156
    :goto_5
    iget v5, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 157
    if-lez v5, :cond_b

    .line 159
    iget v5, v1, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 161
    add-int/2addr p4, v5

    .line 163
    goto :goto_2

    .line 164
    :cond_b
    iget v5, v1, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 165
    sub-int/2addr p4, v5

    .line 167
    goto :goto_2

    .line 168
    :cond_c
    :goto_6
    if-eqz v4, :cond_d

    .line 169
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    .line 171
    move-result p2

    .line 174
    if-eqz p2, :cond_d

    .line 175
    iget p2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 177
    or-int/lit8 p2, p2, 0x20

    .line 179
    iput p2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 181
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 183
    iget p2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 186
    and-int/lit8 p2, p2, -0x21

    .line 188
    iput p2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 190
    :cond_d
    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 192
    move-result-object p2

    .line 195
    if-nez p2, :cond_e

    .line 196
    goto :goto_8

    .line 198
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 199
    move-result-object p2

    .line 202
    check-cast p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 203
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    :goto_8
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 208
    and-int/lit8 p4, p2, 0x3

    .line 210
    if-eq p4, v3, :cond_f

    .line 212
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 214
    if-ne p1, p2, :cond_11

    .line 216
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 218
    if-nez p1, :cond_11

    .line 220
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    .line 222
    if-nez p1, :cond_11

    .line 224
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 226
    goto :goto_9

    .line 229
    :cond_f
    and-int/lit8 p4, p2, 0x4

    .line 230
    if-nez p4, :cond_11

    .line 232
    and-int/lit8 p2, p2, 0x10

    .line 234
    if-nez p2, :cond_10

    .line 236
    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 238
    if-ne p1, p4, :cond_10

    .line 240
    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 242
    if-nez p4, :cond_10

    .line 244
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 246
    goto :goto_9

    .line 249
    :cond_10
    if-eqz p2, :cond_11

    .line 250
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 252
    if-lt p1, p2, :cond_11

    .line 254
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    .line 256
    move-result p2

    .line 259
    if-eqz p2, :cond_11

    .line 260
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 262
    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 264
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 266
    and-int/lit8 p1, p1, -0x11

    .line 268
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 270
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 272
    :cond_11
    :goto_9
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 275
    :cond_12
    aput-object v0, p3, v2

    .line 278
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 280
    if-nez p0, :cond_13

    .line 282
    invoke-static {v0}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    .line 284
    move-result p0

    .line 287
    goto :goto_a

    .line 288
    :cond_13
    invoke-static {v0}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    .line 289
    move-result p0

    .line 292
    :goto_a
    return p0
    .line 293
.end method

.method public final getCount()I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 6
    move-result v0

    .line 9
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 10
    add-int/2addr v0, p0

    .line 12
    return v0
    .line 13
.end method

.method public final getEdge(I)I
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 4
    sub-int/2addr p1, v0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 10
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 11
    const/high16 v1, 0x40000

    .line 13
    and-int/2addr v0, v1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 18
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    .line 20
    move-result p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 25
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    .line 27
    move-result p0

    .line 30
    :goto_0
    return p0
    .line 31
.end method

.method public final getSize(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 4
    sub-int/2addr p1, v0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 10
    sget-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {p0, v0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedBoundsWithMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 13
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 16
    if-nez p0, :cond_0

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 20
    move-result p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 25
    move-result p0

    .line 28
    :goto_0
    return p0
    .line 29
.end method
