.class public final Landroidx/viewpager2/widget/ScrollEventAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAdapterState:I

.field public mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public mDataSetChangeHappened:Z

.field public mDispatchSelected:Z

.field public mDragStartPosition:I

.field public mFakeDragging:Z

.field public final mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mScrollHappened:Z

.field public mScrollState:I

.field public final mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

.field public mTarget:I

.field public final mViewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 5
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    .line 7
    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 11
    move-result-object p1

    .line 14
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 17
    new-instance p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 19
    invoke-direct {p1}, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;-><init>()V

    .line 21
    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 24
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    .line 26
    return-void
    .line 29
.end method


# virtual methods
.method public final dispatchStateChanged(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    .line 2
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    .line 12
    if-ne v0, p1, :cond_1

    .line 14
    return-void

    .line 16
    :cond_1
    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    .line 17
    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 19
    if-eqz p0, :cond_2

    .line 21
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    .line 23
    :cond_2
    return-void
    .line 26
.end method

.method public final onScrollStateChanged(ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 1
    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    .line 2
    const/4 v0, -0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne p2, v2, :cond_0

    .line 7
    iget v3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    .line 9
    if-eq v3, v2, :cond_3

    .line 11
    :cond_0
    if-ne p1, v2, :cond_3

    .line 13
    iput-boolean v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    .line 15
    iput v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    .line 17
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    .line 19
    if-eq p1, v0, :cond_1

    .line 21
    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    .line 23
    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    .line 28
    if-ne p1, v0, :cond_2

    .line 30
    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 34
    move-result p1

    .line 37
    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    .line 38
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    .line 40
    return-void

    .line 43
    :cond_3
    const/4 v3, 0x4

    .line 44
    if-eq p2, v2, :cond_5

    .line 45
    if-ne p2, v3, :cond_4

    .line 47
    goto :goto_1

    .line 49
    :cond_4
    move v4, v1

    .line 50
    goto :goto_2

    .line 51
    :cond_5
    :goto_1
    move v4, v2

    .line 52
    :goto_2
    const/4 v5, 0x2

    .line 53
    if-eqz v4, :cond_7

    .line 54
    if-ne p1, v5, :cond_7

    .line 56
    iget-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    .line 58
    if-eqz p1, :cond_6

    .line 60
    invoke-virtual {p0, v5}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    .line 62
    iput-boolean v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    .line 65
    :cond_6
    return-void

    .line 67
    :cond_7
    if-eq p2, v2, :cond_9

    .line 68
    if-ne p2, v3, :cond_8

    .line 70
    goto :goto_3

    .line 72
    :cond_8
    move p2, v1

    .line 73
    goto :goto_4

    .line 74
    :cond_9
    :goto_3
    move p2, v2

    .line 75
    :goto_4
    iget-object v3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 76
    if-eqz p2, :cond_d

    .line 78
    if-nez p1, :cond_d

    .line 80
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    .line 82
    iget-boolean p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    .line 85
    if-nez p2, :cond_a

    .line 87
    iget p2, v3, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    .line 89
    if-eq p2, v0, :cond_c

    .line 91
    iget-object v4, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 93
    if-eqz v4, :cond_c

    .line 95
    const/4 v6, 0x0

    .line 97
    invoke-virtual {v4, p2, v6, v1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    .line 98
    goto :goto_5

    .line 101
    :cond_a
    iget p2, v3, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    .line 102
    if-nez p2, :cond_b

    .line 104
    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    .line 106
    iget v4, v3, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    .line 108
    if-eq p2, v4, :cond_c

    .line 110
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 112
    if-eqz p2, :cond_c

    .line 114
    invoke-virtual {p2, v4}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 116
    goto :goto_5

    .line 119
    :cond_b
    move v2, v1

    .line 120
    :cond_c
    :goto_5
    if-eqz v2, :cond_d

    .line 121
    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    .line 123
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    .line 126
    :cond_d
    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    .line 129
    if-ne p2, v5, :cond_10

    .line 131
    if-nez p1, :cond_10

    .line 133
    iget-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDataSetChangeHappened:Z

    .line 135
    if-eqz p1, :cond_10

    .line 137
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    .line 139
    iget p1, v3, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    .line 142
    if-nez p1, :cond_10

    .line 144
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    .line 146
    iget p2, v3, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    .line 148
    if-eq p1, p2, :cond_f

    .line 150
    if-ne p2, v0, :cond_e

    .line 152
    move p2, v1

    .line 154
    :cond_e
    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 155
    if-eqz p1, :cond_f

    .line 157
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 159
    :cond_f
    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    .line 162
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    .line 165
    :cond_10
    return-void
    .line 168
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    .line 3
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    .line 5
    iget-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    .line 8
    const/4 v1, -0x1

    .line 10
    iget-object v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 11
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    iput-boolean v3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    .line 16
    if-gtz p3, :cond_3

    .line 18
    if-nez p3, :cond_2

    .line 20
    if-gez p2, :cond_0

    .line 22
    move p2, p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p2, v3

    .line 26
    :goto_0
    iget-object p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 27
    iget-object p3, p3, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    .line 29
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 31
    move-result p3

    .line 34
    if-ne p3, p1, :cond_1

    .line 35
    move p3, p1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move p3, v3

    .line 39
    :goto_1
    if-ne p2, p3, :cond_2

    .line 40
    goto :goto_2

    .line 42
    :cond_2
    move p2, v3

    .line 43
    goto :goto_3

    .line 44
    :cond_3
    :goto_2
    move p2, p1

    .line 45
    :goto_3
    if-eqz p2, :cond_4

    .line 46
    iget p2, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    .line 48
    if-eqz p2, :cond_4

    .line 50
    iget p2, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    .line 52
    add-int/2addr p2, p1

    .line 54
    goto :goto_4

    .line 55
    :cond_4
    iget p2, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    .line 56
    :goto_4
    iput p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    .line 58
    iget p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    .line 60
    if-eq p3, p2, :cond_7

    .line 62
    iget-object p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 64
    if-eqz p3, :cond_7

    .line 66
    invoke-virtual {p3, p2}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 68
    goto :goto_5

    .line 71
    :cond_5
    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    .line 72
    if-nez p2, :cond_7

    .line 74
    iget p2, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    .line 76
    if-ne p2, v1, :cond_6

    .line 78
    move p2, v3

    .line 80
    :cond_6
    iget-object p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 81
    if-eqz p3, :cond_7

    .line 83
    invoke-virtual {p3, p2}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 85
    :cond_7
    :goto_5
    iget p2, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    .line 88
    if-ne p2, v1, :cond_8

    .line 90
    move p2, v3

    .line 92
    :cond_8
    iget p3, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    .line 93
    iget v0, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    .line 95
    iget-object v4, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 97
    if-eqz v4, :cond_9

    .line 99
    invoke-virtual {v4, p2, p3, v0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    .line 101
    :cond_9
    iget p2, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    .line 104
    iget p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    .line 106
    if-eq p2, p3, :cond_a

    .line 108
    if-ne p3, v1, :cond_b

    .line 110
    :cond_a
    iget p2, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    .line 112
    if-nez p2, :cond_b

    .line 114
    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    .line 116
    if-eq p2, p1, :cond_b

    .line 118
    invoke-virtual {p0, v3}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    .line 120
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    .line 123
    :cond_b
    return-void
    .line 126
.end method

.method public final resetState()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    .line 3
    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    .line 5
    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 7
    const/4 v2, -0x1

    .line 9
    iput v2, v1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    .line 10
    const/4 v3, 0x0

    .line 12
    iput v3, v1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    .line 13
    iput v0, v1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    .line 15
    iput v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    .line 17
    iput v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    .line 19
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    .line 21
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    .line 23
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    .line 25
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDataSetChangeHappened:Z

    .line 27
    return-void
    .line 29
.end method

.method public final updateScrollEventValues()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 4
    move-result v1

    .line 7
    iget-object v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 8
    iput v1, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    .line 10
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, -0x1

    .line 14
    if-ne v1, v5, :cond_0

    .line 15
    iput v5, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    .line 17
    iput v3, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    .line 19
    iput v4, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    .line 21
    return-void

    .line 23
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 24
    move-result-object v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    iput v5, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    .line 30
    iput v3, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    .line 32
    iput v4, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    .line 34
    return-void

    .line 36
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    move-result-object v5

    .line 40
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 41
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 43
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    move-result-object v6

    .line 50
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 51
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 53
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    move-result-object v7

    .line 60
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 61
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 63
    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 67
    move-result-object v8

    .line 70
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 71
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 73
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 75
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    move-result-object v9

    .line 80
    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 81
    if-eqz v10, :cond_2

    .line 83
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 85
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 87
    add-int/2addr v5, v10

    .line 89
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 90
    add-int/2addr v6, v10

    .line 92
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 93
    add-int/2addr v7, v10

    .line 95
    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 96
    add-int/2addr v8, v9

    .line 98
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 99
    move-result v9

    .line 102
    add-int/2addr v9, v7

    .line 103
    add-int/2addr v9, v8

    .line 104
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 105
    move-result v8

    .line 108
    add-int/2addr v8, v5

    .line 109
    add-int/2addr v8, v6

    .line 110
    iget v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 111
    const/4 v10, 0x1

    .line 113
    if-nez v6, :cond_3

    .line 114
    move v6, v10

    .line 116
    goto :goto_0

    .line 117
    :cond_3
    move v6, v4

    .line 118
    :goto_0
    iget-object v11, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    if-eqz v6, :cond_6

    .line 121
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 123
    move-result v1

    .line 126
    sub-int/2addr v1, v5

    .line 127
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 128
    move-result v5

    .line 131
    sub-int/2addr v1, v5

    .line 132
    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 133
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    .line 135
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 137
    move-result p0

    .line 140
    if-ne p0, v10, :cond_4

    .line 141
    move p0, v10

    .line 143
    goto :goto_1

    .line 144
    :cond_4
    move p0, v4

    .line 145
    :goto_1
    if-eqz p0, :cond_5

    .line 146
    neg-int v1, v1

    .line 148
    :cond_5
    move v9, v8

    .line 149
    goto :goto_2

    .line 150
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 151
    move-result p0

    .line 154
    sub-int/2addr p0, v7

    .line 155
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 156
    move-result v1

    .line 159
    sub-int v1, p0, v1

    .line 160
    :goto_2
    neg-int p0, v1

    .line 162
    iput p0, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    .line 163
    if-gez p0, :cond_17

    .line 165
    new-instance p0, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;

    .line 167
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 169
    move-result p0

    .line 172
    if-nez p0, :cond_7

    .line 173
    goto/16 :goto_9

    .line 175
    :cond_7
    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 177
    if-nez v1, :cond_8

    .line 179
    move v1, v10

    .line 181
    goto :goto_3

    .line 182
    :cond_8
    move v1, v4

    .line 183
    :goto_3
    const/4 v3, 0x2

    .line 184
    filled-new-array {p0, v3}, [I

    .line 185
    move-result-object v3

    .line 188
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 189
    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 191
    move-result-object v3

    .line 194
    check-cast v3, [[I

    .line 195
    move v5, v4

    .line 197
    :goto_4
    if-ge v5, p0, :cond_d

    .line 198
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 200
    move-result-object v6

    .line 203
    if-eqz v6, :cond_c

    .line 204
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 206
    move-result-object v7

    .line 209
    instance-of v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 210
    if-eqz v8, :cond_9

    .line 212
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 214
    goto :goto_5

    .line 216
    :cond_9
    sget-object v7, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->ZERO_MARGIN_LAYOUT_PARAMS:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 217
    :goto_5
    aget-object v8, v3, v5

    .line 219
    if-eqz v1, :cond_a

    .line 221
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 223
    move-result v9

    .line 226
    iget v11, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 227
    goto :goto_6

    .line 229
    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 230
    move-result v9

    .line 233
    iget v11, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 234
    :goto_6
    sub-int/2addr v9, v11

    .line 236
    aput v9, v8, v4

    .line 237
    aget-object v8, v3, v5

    .line 239
    if-eqz v1, :cond_b

    .line 241
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 243
    move-result v6

    .line 246
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 247
    goto :goto_7

    .line 249
    :cond_b
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 250
    move-result v6

    .line 253
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 254
    :goto_7
    add-int/2addr v6, v7

    .line 256
    aput v6, v8, v10

    .line 257
    add-int/lit8 v5, v5, 0x1

    .line 259
    goto :goto_4

    .line 261
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 262
    const-string v0, "null view contained in the view hierarchy"

    .line 264
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 266
    throw p0

    .line 269
    :cond_d
    new-instance v1, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector$1;

    .line 270
    invoke-direct {v1}, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector$1;-><init>()V

    .line 272
    invoke-static {v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 275
    move v1, v10

    .line 278
    :goto_8
    if-ge v1, p0, :cond_f

    .line 279
    add-int/lit8 v5, v1, -0x1

    .line 281
    aget-object v5, v3, v5

    .line 283
    aget v5, v5, v10

    .line 285
    aget-object v6, v3, v1

    .line 287
    aget v6, v6, v4

    .line 289
    if-eq v5, v6, :cond_e

    .line 291
    goto :goto_a

    .line 293
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 294
    goto :goto_8

    .line 296
    :cond_f
    aget-object v1, v3, v4

    .line 297
    aget v5, v1, v10

    .line 299
    aget v1, v1, v4

    .line 301
    sub-int/2addr v5, v1

    .line 303
    if-gtz v1, :cond_11

    .line 304
    sub-int/2addr p0, v10

    .line 306
    aget-object p0, v3, p0

    .line 307
    aget p0, p0, v10

    .line 309
    if-ge p0, v5, :cond_10

    .line 311
    goto :goto_a

    .line 313
    :cond_10
    :goto_9
    move p0, v10

    .line 314
    goto :goto_b

    .line 315
    :cond_11
    :goto_a
    move p0, v4

    .line 316
    :goto_b
    if-eqz p0, :cond_12

    .line 317
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 319
    move-result p0

    .line 322
    if-gt p0, v10, :cond_15

    .line 323
    :cond_12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 325
    move-result p0

    .line 328
    move v1, v4

    .line 329
    :goto_c
    if-ge v1, p0, :cond_14

    .line 330
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 332
    move-result-object v3

    .line 335
    invoke-static {v3}, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->hasRunningChangingLayoutTransition(Landroid/view/View;)Z

    .line 336
    move-result v3

    .line 339
    if-eqz v3, :cond_13

    .line 340
    move p0, v10

    .line 342
    goto :goto_d

    .line 343
    :cond_13
    add-int/lit8 v1, v1, 0x1

    .line 344
    goto :goto_c

    .line 346
    :cond_14
    move p0, v4

    .line 347
    :goto_d
    if-eqz p0, :cond_15

    .line 348
    move v4, v10

    .line 350
    :cond_15
    if-eqz v4, :cond_16

    .line 351
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 353
    const-string v0, "Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started."

    .line 355
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 357
    throw p0

    .line 360
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 361
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 363
    iget v1, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    .line 365
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 367
    move-result-object v1

    .line 370
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 371
    move-result-object v1

    .line 374
    const-string v2, "Page can only be offset by a positive amount, not by %d"

    .line 375
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 377
    move-result-object v0

    .line 380
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 381
    throw p0

    .line 384
    :cond_17
    if-nez v9, :cond_18

    .line 385
    goto :goto_e

    .line 387
    :cond_18
    int-to-float p0, p0

    .line 388
    int-to-float v0, v9

    .line 389
    div-float v3, p0, v0

    .line 390
    :goto_e
    iput v3, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    .line 392
    return-void
    .line 394
.end method
