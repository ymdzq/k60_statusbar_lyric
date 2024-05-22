.class public final Landroidx/recyclerview/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAttachedScrap:Ljava/util/ArrayList;

.field public final mCachedViews:Ljava/util/ArrayList;

.field public mChangedScrap:Ljava/util/ArrayList;

.field public mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field public mRequestedCacheMax:I

.field public final mUnmodifiableAttachedScrap:Ljava/util/List;

.field public mViewCacheMax:I

.field public final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 12
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 22
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    .line 28
    const/4 p1, 0x2

    .line 30
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 31
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 33
    return-void
    .line 35
.end method


# virtual methods
.method public final addViewHolderToRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    .line 7
    const/4 v2, 0x0

    .line 9
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;

    .line 14
    move-result-object v1

    .line 17
    instance-of v4, v1, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    .line 18
    if-eqz v4, :cond_0

    .line 20
    check-cast v1, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    .line 22
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mOriginalItemDelegates:Ljava/util/Map;

    .line 24
    check-cast v1, Ljava/util/WeakHashMap;

    .line 26
    invoke-virtual {v1, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    check-cast v1, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    move-object v1, v2

    .line 35
    :goto_0
    invoke-static {v3, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 36
    :cond_1
    if-eqz p2, :cond_6

    .line 39
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

    .line 41
    if-eqz p2, :cond_2

    .line 43
    check-cast p2, Landroidx/leanback/widget/BaseGridView$1;

    .line 45
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/BaseGridView$1;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 47
    :cond_2
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    .line 50
    check-cast p2, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 54
    move-result p2

    .line 57
    const/4 v1, 0x0

    .line 58
    :goto_1
    if-ge v1, p2, :cond_3

    .line 59
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    .line 61
    check-cast v4, Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v4

    .line 68
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

    .line 69
    check-cast v4, Landroidx/leanback/widget/BaseGridView$1;

    .line 71
    invoke-virtual {v4, p1}, Landroidx/leanback/widget/BaseGridView$1;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 76
    goto :goto_1

    .line 78
    :cond_3
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 79
    if-eqz p2, :cond_4

    .line 81
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 83
    :cond_4
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 86
    if-eqz p2, :cond_5

    .line 88
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    .line 90
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ViewInfoStore;->removeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 92
    :cond_5
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 95
    if-eqz p2, :cond_6

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 99
    const-string v0, "dispatchViewRecycled: "

    .line 101
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p2

    .line 112
    const-string v0, "RecyclerView"

    .line 113
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_6
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 118
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 122
    move-result-object p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 129
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 131
    move-result-object v0

    .line 134
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 135
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 137
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 139
    move-result-object p0

    .line 142
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 143
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 147
    move-result p2

    .line 150
    if-gt p0, p2, :cond_7

    .line 151
    invoke-static {v3}, Landroidx/customview/poolingcontainer/PoolingContainer;->callPoolingContainerOnRelease(Landroid/view/View;)V

    .line 153
    goto :goto_3

    .line 156
    :cond_7
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 157
    if-eqz p0, :cond_9

    .line 159
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 161
    move-result p0

    .line 164
    if-nez p0, :cond_8

    .line 165
    goto :goto_2

    .line 167
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 168
    const-string/jumbo p1, "this scrap item already exists"

    .line 170
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 173
    throw p0

    .line 176
    :cond_9
    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 177
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :goto_3
    return-void
    .line 183
.end method

.method public final convertPreLayoutPositionToPostLayout(I)I
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    if-ltz p1, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 8
    move-result v0

    .line 11
    if-ge p1, v0, :cond_1

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 14
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 16
    if-nez v0, :cond_0

    .line 18
    return p1

    .line 20
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    .line 21
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    .line 24
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 29
    const-string v1, "invalid position "

    .line 31
    const-string v2, ". State item count is "

    .line 33
    invoke-static {v1, p1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object p1

    .line 38
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 39
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 41
    move-result v1

    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 59
    throw v0
    .line 62
.end method

.method public final getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 6
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->maybeSendPoolingContainerAttach()V

    .line 13
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 16
    return-object p0
    .line 18
.end method

.method public final getViewForPosition(I)Landroid/view/View;
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7
    move-result-object p0

    .line 10
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11
    return-object p0
    .line 13
.end method

.method public final maybeSendPoolingContainerAttach()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 18
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 20
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachedAdaptersForPoolingContainer:Ljava/util/Set;

    .line 22
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method public final poolingContainerDetach(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachedAdaptersForPoolingContainer:Ljava/util/Set;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 11
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    if-nez p2, :cond_1

    .line 17
    const/4 p1, 0x0

    .line 19
    move p2, p1

    .line 20
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 23
    move-result v1

    .line 26
    if-ge p2, v1, :cond_1

    .line 27
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 29
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 37
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 39
    move v1, p1

    .line 41
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v2

    .line 45
    if-ge v1, v2, :cond_0

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 51
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 52
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 54
    invoke-static {v2}, Landroidx/customview/poolingcontainer/PoolingContainer;->callPoolingContainerOnRelease(Landroid/view/View;)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 62
    goto :goto_0

    .line 64
    :cond_1
    return-void
    .line 65
.end method

.method public final recycleAndClearCachedViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    :goto_0
    if-ltz v1, :cond_0

    .line 10
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 21
    if-eqz v0, :cond_2

    .line 23
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 27
    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 37
    :cond_2
    return-void
    .line 39
.end method

.method public final recycleCachedViewAt(I)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 2
    const-string v1, "RecyclerView"

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const-string v0, "Recycling cached view at index "

    .line 8
    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 18
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 19
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 21
    if-eqz v3, :cond_1

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    const-string v4, "CachedViewHolder to be recycled: "

    .line 27
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 38
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_1
    const/4 v1, 0x1

    .line 42
    invoke-virtual {p0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 43
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 46
    return-void
    .line 49
.end method

.method public final recycleView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 6
    move-result v1

    .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    .line 18
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 24
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 26
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 30
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    iget p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 36
    and-int/lit8 p1, p1, -0x21

    .line 38
    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 40
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 42
    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 45
    if-eqz p0, :cond_3

    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    .line 49
    move-result p0

    .line 52
    if-nez p0, :cond_3

    .line 53
    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 55
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 57
    :cond_3
    return-void
    .line 60
.end method

.method public final recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    if-nez v0, :cond_16

    .line 12
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    goto/16 :goto_b

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 22
    move-result v0

    .line 25
    if-nez v0, :cond_15

    .line 26
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    .line 28
    move-result v0

    .line 31
    if-nez v0, :cond_14

    .line 32
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 34
    and-int/lit8 v0, v0, 0x10

    .line 36
    if-nez v0, :cond_1

    .line 38
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 40
    invoke-static {v4}, Landroidx/core/view/ViewCompat$Api16Impl;->hasTransientState(Landroid/view/View;)Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    move v0, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v0, v1

    .line 50
    :goto_0
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 51
    if-eqz v5, :cond_2

    .line 53
    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 57
    move-result v5

    .line 60
    if-eqz v5, :cond_2

    .line 61
    move v5, v2

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v5, v1

    .line 65
    :goto_1
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 66
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 68
    if-eqz v6, :cond_4

    .line 70
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 72
    move-result v6

    .line 75
    if-nez v6, :cond_3

    .line 76
    goto :goto_2

    .line 78
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "cached view received recycle internal? "

    .line 83
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {v3, v0}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 94
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p0

    .line 98
    :cond_4
    :goto_2
    if-nez v5, :cond_7

    .line 99
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    .line 101
    move-result v5

    .line 104
    if-eqz v5, :cond_5

    .line 105
    goto :goto_3

    .line 107
    :cond_5
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 108
    if-eqz p0, :cond_6

    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    .line 112
    const-string/jumbo v2, "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists"

    .line 114
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 120
    move-result-object v2

    .line 123
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 130
    const-string v2, "RecyclerView"

    .line 131
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_6
    move p0, v1

    .line 136
    goto/16 :goto_a

    .line 137
    :cond_7
    :goto_3
    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 139
    if-lez v5, :cond_11

    .line 141
    iget v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 143
    and-int/lit16 v5, v5, 0x20e

    .line 145
    if-eqz v5, :cond_8

    .line 147
    move v5, v2

    .line 149
    goto :goto_4

    .line 150
    :cond_8
    move v5, v1

    .line 151
    :goto_4
    if-nez v5, :cond_11

    .line 152
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 154
    move-result v5

    .line 157
    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 158
    if-lt v5, v6, :cond_9

    .line 160
    if-lez v5, :cond_9

    .line 162
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 164
    add-int/lit8 v5, v5, -0x1

    .line 167
    :cond_9
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 169
    if-eqz v6, :cond_10

    .line 171
    if-lez v5, :cond_10

    .line 173
    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 175
    iget v8, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 177
    iget-object v9, v6, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 179
    if-eqz v9, :cond_b

    .line 181
    iget v9, v6, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 183
    mul-int/lit8 v9, v9, 0x2

    .line 185
    move v10, v1

    .line 187
    :goto_5
    if-ge v10, v9, :cond_b

    .line 188
    iget-object v11, v6, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 190
    aget v11, v11, v10

    .line 192
    if-ne v11, v8, :cond_a

    .line 194
    move v6, v2

    .line 196
    goto :goto_6

    .line 197
    :cond_a
    add-int/lit8 v10, v10, 0x2

    .line 198
    goto :goto_5

    .line 200
    :cond_b
    move v6, v1

    .line 201
    :goto_6
    if-nez v6, :cond_10

    .line 202
    :cond_c
    add-int/lit8 v5, v5, -0x1

    .line 204
    if-ltz v5, :cond_f

    .line 206
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    move-result-object v6

    .line 211
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 212
    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 214
    iget-object v8, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 216
    iget-object v9, v8, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 218
    if-eqz v9, :cond_e

    .line 220
    iget v9, v8, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 222
    mul-int/lit8 v9, v9, 0x2

    .line 224
    move v10, v1

    .line 226
    :goto_7
    if-ge v10, v9, :cond_e

    .line 227
    iget-object v11, v8, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 229
    aget v11, v11, v10

    .line 231
    if-ne v11, v6, :cond_d

    .line 233
    move v6, v2

    .line 235
    goto :goto_8

    .line 236
    :cond_d
    add-int/lit8 v10, v10, 0x2

    .line 237
    goto :goto_7

    .line 239
    :cond_e
    move v6, v1

    .line 240
    :goto_8
    if-nez v6, :cond_c

    .line 241
    :cond_f
    add-int/2addr v5, v2

    .line 243
    :cond_10
    invoke-virtual {v7, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 244
    move v5, v2

    .line 247
    goto :goto_9

    .line 248
    :cond_11
    move v5, v1

    .line 249
    :goto_9
    if-nez v5, :cond_12

    .line 250
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 252
    move v1, v2

    .line 255
    :cond_12
    move p0, v1

    .line 256
    move v1, v5

    .line 257
    :goto_a
    iget-object v2, v3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    .line 258
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/ViewInfoStore;->removeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 260
    if-nez v1, :cond_13

    .line 263
    if-nez p0, :cond_13

    .line 265
    if-eqz v0, :cond_13

    .line 267
    invoke-static {v4}, Landroidx/customview/poolingcontainer/PoolingContainer;->callPoolingContainerOnRelease(Landroid/view/View;)V

    .line 269
    const/4 p0, 0x0

    .line 272
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 273
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 275
    :cond_13
    return-void

    .line 277
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    .line 280
    const-string v0, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    .line 282
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-static {v3, p1}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 287
    move-result-object p1

    .line 290
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 291
    throw p0

    .line 294
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    .line 297
    const-string v1, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    .line 299
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static {v3, v0}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 307
    move-result-object p1

    .line 310
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 311
    throw p0

    .line 314
    :cond_16
    :goto_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    .line 317
    const-string v5, "Scrapped or attached views may not be recycled. isScrap:"

    .line 319
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    .line 324
    move-result p1

    .line 327
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 328
    const-string p1, " isAttached:"

    .line 331
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 336
    move-result-object p1

    .line 339
    if-eqz p1, :cond_17

    .line 340
    move v1, v2

    .line 342
    :cond_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 346
    move-result-object p1

    .line 349
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    move-result-object p1

    .line 356
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 357
    throw p0
    .line 360
.end method

.method public final scrapView(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    move-result-object p1

    .line 5
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 6
    and-int/lit8 v1, v0, 0xc

    .line 8
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    move v1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v3

    .line 16
    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    if-nez v1, :cond_6

    .line 19
    and-int/lit8 v0, v0, 0x2

    .line 21
    if-eqz v0, :cond_1

    .line 23
    move v0, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v0, v3

    .line 27
    :goto_1
    if-eqz v0, :cond_6

    .line 28
    iget-object v0, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 30
    if-eqz v0, :cond_3

    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    goto :goto_2

    .line 44
    :cond_2
    move v0, v3

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    :goto_2
    move v0, v2

    .line 47
    :goto_3
    if-eqz v0, :cond_4

    .line 48
    goto :goto_4

    .line 50
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 51
    if-nez v0, :cond_5

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 60
    :cond_5
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 62
    iput-boolean v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 64
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_6

    .line 71
    :cond_6
    :goto_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 72
    move-result v0

    .line 75
    if-eqz v0, :cond_8

    .line 76
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 78
    move-result v0

    .line 81
    if-nez v0, :cond_8

    .line 82
    iget-object v0, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 84
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 86
    if-eqz v0, :cond_7

    .line 88
    goto :goto_5

    .line 90
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 93
    const-string v0, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    .line 95
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-static {v4, p1}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 103
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    throw p0

    .line 107
    :cond_8
    :goto_5
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 108
    iput-boolean v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 110
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :goto_6
    return-void
    .line 117
.end method

.method public final tryGetViewHolderForPositionByDeadline(IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    if-ltz v1, :cond_57

    .line 8
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 10
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 12
    move-result v3

    .line 15
    if-ge v1, v3, :cond_57

    .line 16
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 18
    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 20
    const/4 v4, 0x0

    .line 22
    const/16 v5, 0x20

    .line 23
    if-eqz v3, :cond_5

    .line 25
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 27
    if-eqz v3, :cond_4

    .line 29
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v3

    .line 34
    if-nez v3, :cond_0

    .line 35
    goto :goto_2

    .line 37
    :cond_0
    move v6, v4

    .line 38
    :goto_0
    if-ge v6, v3, :cond_2

    .line 39
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v7

    .line 46
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 47
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 49
    move-result v8

    .line 52
    if-nez v8, :cond_1

    .line 53
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 55
    move-result v8

    .line 58
    if-ne v8, v1, :cond_1

    .line 59
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 61
    goto :goto_3

    .line 64
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 68
    iget-boolean v6, v6, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 70
    if-eqz v6, :cond_4

    .line 72
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    .line 74
    invoke-virtual {v6, v1, v4}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    .line 76
    move-result v6

    .line 79
    if-lez v6, :cond_4

    .line 80
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 82
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 84
    move-result v7

    .line 87
    if-ge v6, v7, :cond_4

    .line 88
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 90
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 92
    move-result-wide v6

    .line 95
    move v8, v4

    .line 96
    :goto_1
    if-ge v8, v3, :cond_4

    .line 97
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v9

    .line 104
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 105
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 107
    move-result v10

    .line 110
    if-nez v10, :cond_3

    .line 111
    iget-wide v10, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 113
    cmp-long v10, v10, v6

    .line 115
    if-nez v10, :cond_3

    .line 117
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 119
    move-object v7, v9

    .line 122
    goto :goto_3

    .line 123
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 124
    goto :goto_1

    .line 126
    :cond_4
    :goto_2
    const/4 v7, 0x0

    .line 127
    :goto_3
    if-eqz v7, :cond_6

    .line 128
    const/4 v3, 0x1

    .line 130
    goto :goto_4

    .line 131
    :cond_5
    const/4 v7, 0x0

    .line 132
    :cond_6
    move v3, v4

    .line 133
    :goto_4
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 134
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 136
    const/4 v9, -0x1

    .line 138
    const-string v10, "RecyclerView"

    .line 139
    if-nez v7, :cond_1d

    .line 141
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 143
    move-result v7

    .line 146
    move v11, v4

    .line 147
    :goto_5
    if-ge v11, v7, :cond_9

    .line 148
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    move-result-object v12

    .line 153
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 154
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 156
    move-result v13

    .line 159
    if-nez v13, :cond_8

    .line 160
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 162
    move-result v13

    .line 165
    if-ne v13, v1, :cond_8

    .line 166
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 168
    move-result v13

    .line 171
    if-nez v13, :cond_8

    .line 172
    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 174
    iget-boolean v13, v13, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 176
    if-nez v13, :cond_7

    .line 178
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 180
    move-result v13

    .line 183
    if-nez v13, :cond_8

    .line 184
    :cond_7
    invoke-virtual {v12, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 186
    move-object v7, v12

    .line 189
    goto/16 :goto_a

    .line 190
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 192
    goto :goto_5

    .line 194
    :cond_9
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    .line 195
    iget-object v11, v7, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 197
    check-cast v11, Ljava/util/ArrayList;

    .line 199
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 201
    move-result v12

    .line 204
    move v13, v4

    .line 205
    :goto_6
    if-ge v13, v12, :cond_b

    .line 206
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    move-result-object v14

    .line 211
    check-cast v14, Landroid/view/View;

    .line 212
    iget-object v15, v7, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/RecyclerView$4;

    .line 214
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 219
    move-result-object v15

    .line 222
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 223
    move-result v5

    .line 226
    if-ne v5, v1, :cond_a

    .line 227
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 229
    move-result v5

    .line 232
    if-nez v5, :cond_a

    .line 233
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 235
    move-result v5

    .line 238
    if-nez v5, :cond_a

    .line 239
    goto :goto_7

    .line 241
    :cond_a
    add-int/lit8 v13, v13, 0x1

    .line 242
    const/16 v5, 0x20

    .line 244
    goto :goto_6

    .line 246
    :cond_b
    const/4 v14, 0x0

    .line 247
    :goto_7
    if-eqz v14, :cond_f

    .line 248
    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 250
    move-result-object v5

    .line 253
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    .line 254
    iget-object v11, v7, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/RecyclerView$4;

    .line 256
    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 258
    invoke-virtual {v11, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 260
    move-result v11

    .line 263
    if-ltz v11, :cond_e

    .line 264
    iget-object v12, v7, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 266
    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    .line 268
    move-result v13

    .line 271
    if-eqz v13, :cond_d

    .line 272
    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->clear(I)V

    .line 274
    invoke-virtual {v7, v14}, Landroidx/recyclerview/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)V

    .line 277
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    .line 280
    invoke-virtual {v7, v14}, Landroidx/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    .line 282
    move-result v7

    .line 285
    if-eq v7, v9, :cond_c

    .line 286
    iget-object v11, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    .line 288
    invoke-virtual {v11, v7}, Landroidx/recyclerview/widget/ChildHelper;->detachViewFromParent(I)V

    .line 290
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 293
    const/16 v7, 0x2020

    .line 296
    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 298
    goto/16 :goto_9

    .line 301
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    .line 305
    const-string v3, "layout index should not be -1 after unhiding a view:"

    .line 307
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    invoke-static {v2, v1}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 315
    move-result-object v1

    .line 318
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 319
    throw v0

    .line 322
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    .line 325
    const-string/jumbo v2, "trying to unhide a view that was not hidden"

    .line 327
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    move-result-object v1

    .line 339
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 340
    throw v0

    .line 343
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    .line 346
    const-string/jumbo v2, "view is not a child, cannot hide "

    .line 348
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    move-result-object v1

    .line 360
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 361
    throw v0

    .line 364
    :cond_f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 365
    move-result v5

    .line 368
    move v7, v4

    .line 369
    :goto_8
    if-ge v7, v5, :cond_12

    .line 370
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 372
    move-result-object v11

    .line 375
    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 376
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 378
    move-result v12

    .line 381
    if-nez v12, :cond_11

    .line 382
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 384
    move-result v12

    .line 387
    if-ne v12, v1, :cond_11

    .line 388
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    .line 390
    move-result v12

    .line 393
    if-nez v12, :cond_11

    .line 394
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 396
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 399
    if-eqz v5, :cond_10

    .line 401
    new-instance v5, Ljava/lang/StringBuilder;

    .line 403
    const-string v7, "getScrapOrHiddenOrCachedHolderForPosition("

    .line 405
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    const-string v7, ") found match in cache: "

    .line 413
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    move-result-object v5

    .line 424
    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_10
    move-object v7, v11

    .line 428
    goto :goto_a

    .line 429
    :cond_11
    add-int/lit8 v7, v7, 0x1

    .line 430
    goto :goto_8

    .line 432
    :cond_12
    const/4 v5, 0x0

    .line 433
    :goto_9
    move-object v7, v5

    .line 434
    :goto_a
    if-eqz v7, :cond_1d

    .line 435
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 437
    move-result v5

    .line 440
    if-eqz v5, :cond_15

    .line 441
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 443
    if-eqz v5, :cond_14

    .line 445
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 447
    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 449
    if-eqz v5, :cond_13

    .line 451
    goto :goto_b

    .line 453
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    .line 456
    const-string/jumbo v3, "should not receive a removed view unless it is pre layout"

    .line 458
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-static {v2, v1}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 464
    move-result-object v1

    .line 467
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 468
    throw v0

    .line 471
    :cond_14
    :goto_b
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 472
    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 474
    goto :goto_e

    .line 476
    :cond_15
    iget v5, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 477
    if-ltz v5, :cond_1c

    .line 479
    iget-object v11, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 481
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 483
    move-result v11

    .line 486
    if-ge v5, v11, :cond_1c

    .line 487
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 489
    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 491
    if-nez v5, :cond_16

    .line 493
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 495
    iget v11, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 497
    invoke-virtual {v5, v11}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 499
    move-result v5

    .line 502
    iget v11, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 503
    if-eq v5, v11, :cond_16

    .line 505
    goto :goto_c

    .line 507
    :cond_16
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 508
    iget-boolean v11, v5, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 510
    if-eqz v11, :cond_18

    .line 512
    iget-wide v11, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 514
    iget v13, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 516
    invoke-virtual {v5, v13}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 518
    move-result-wide v13

    .line 521
    cmp-long v5, v11, v13

    .line 522
    if-nez v5, :cond_17

    .line 524
    goto :goto_d

    .line 526
    :cond_17
    :goto_c
    move v5, v4

    .line 527
    goto :goto_e

    .line 528
    :cond_18
    :goto_d
    const/4 v5, 0x1

    .line 529
    :goto_e
    if-nez v5, :cond_1b

    .line 530
    const/4 v5, 0x4

    .line 532
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 533
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    .line 536
    move-result v5

    .line 539
    if-eqz v5, :cond_19

    .line 540
    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 542
    invoke-virtual {v2, v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 544
    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 547
    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 549
    goto :goto_f

    .line 552
    :cond_19
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 553
    move-result v5

    .line 556
    if-eqz v5, :cond_1a

    .line 557
    iget v5, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 559
    and-int/lit8 v5, v5, -0x21

    .line 561
    iput v5, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 563
    :cond_1a
    :goto_f
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 565
    const/4 v7, 0x0

    .line 568
    goto :goto_10

    .line 569
    :cond_1b
    const/4 v3, 0x1

    .line 570
    goto :goto_10

    .line 571
    :cond_1c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    .line 574
    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    .line 576
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 581
    invoke-static {v2, v1}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 584
    move-result-object v1

    .line 587
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 588
    throw v0

    .line 591
    :cond_1d
    :goto_10
    const/4 v5, 0x2

    .line 592
    if-nez v7, :cond_33

    .line 593
    iget-object v15, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    .line 595
    invoke-virtual {v15, v1, v4}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    .line 597
    move-result v4

    .line 600
    if-ltz v4, :cond_32

    .line 601
    iget-object v15, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 603
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 605
    move-result v15

    .line 608
    if-ge v4, v15, :cond_32

    .line 609
    iget-object v15, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 611
    invoke-virtual {v15, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 613
    move-result v15

    .line 616
    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 617
    iget-boolean v14, v13, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 619
    if-eqz v14, :cond_25

    .line 621
    invoke-virtual {v13, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 623
    move-result-wide v13

    .line 626
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 627
    move-result v7

    .line 630
    add-int/2addr v7, v9

    .line 631
    :goto_11
    if-ltz v7, :cond_21

    .line 632
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 634
    move-result-object v9

    .line 637
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 638
    iget-wide v11, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 640
    cmp-long v11, v11, v13

    .line 642
    if-nez v11, :cond_20

    .line 644
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 646
    move-result v11

    .line 649
    if-nez v11, :cond_20

    .line 650
    iget v11, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 652
    if-ne v15, v11, :cond_1f

    .line 654
    const/16 v11, 0x20

    .line 656
    invoke-virtual {v9, v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 658
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 661
    move-result v6

    .line 664
    if-eqz v6, :cond_1e

    .line 665
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 667
    iget-boolean v6, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 669
    if-nez v6, :cond_1e

    .line 671
    iget v6, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 673
    and-int/lit8 v6, v6, -0xf

    .line 675
    or-int/2addr v6, v5

    .line 677
    iput v6, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 678
    :cond_1e
    move-object v7, v9

    .line 680
    goto :goto_12

    .line 681
    :cond_1f
    const/16 v11, 0x20

    .line 682
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 684
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 687
    const/4 v12, 0x0

    .line 689
    invoke-virtual {v2, v9, v12}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 690
    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 693
    move-result-object v9

    .line 696
    const/4 v11, 0x0

    .line 697
    iput-object v11, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 698
    iput-boolean v12, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 700
    iget v11, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 702
    and-int/lit8 v11, v11, -0x21

    .line 704
    iput v11, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 706
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 708
    :cond_20
    add-int/lit8 v7, v7, -0x1

    .line 711
    goto :goto_11

    .line 713
    :cond_21
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 714
    move-result v7

    .line 717
    :cond_22
    add-int/lit8 v7, v7, -0x1

    .line 718
    if-ltz v7, :cond_24

    .line 720
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 722
    move-result-object v8

    .line 725
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 726
    iget-wide v11, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 728
    cmp-long v9, v11, v13

    .line 730
    if-nez v9, :cond_22

    .line 732
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    .line 734
    move-result v9

    .line 737
    if-nez v9, :cond_22

    .line 738
    iget v9, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 740
    if-ne v15, v9, :cond_23

    .line 742
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 744
    move-object v7, v8

    .line 747
    goto :goto_12

    .line 748
    :cond_23
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 749
    :cond_24
    const/4 v6, 0x0

    .line 752
    move-object v7, v6

    .line 753
    :goto_12
    if-eqz v7, :cond_25

    .line 754
    iput v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 756
    const/4 v3, 0x1

    .line 758
    :cond_25
    if-nez v7, :cond_2a

    .line 759
    sget-boolean v4, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 761
    if-eqz v4, :cond_26

    .line 763
    new-instance v4, Ljava/lang/StringBuilder;

    .line 765
    const-string/jumbo v6, "tryGetViewHolderForPositionByDeadline("

    .line 767
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 773
    const-string v6, ") fetching from shared pool"

    .line 776
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    move-result-object v4

    .line 784
    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 788
    move-result-object v4

    .line 791
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 792
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 794
    move-result-object v4

    .line 797
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 798
    if-eqz v4, :cond_28

    .line 800
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 802
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 804
    move-result v6

    .line 807
    if-nez v6, :cond_28

    .line 808
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 810
    move-result v6

    .line 813
    :cond_27
    add-int/lit8 v6, v6, -0x1

    .line 814
    if-ltz v6, :cond_28

    .line 816
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 818
    move-result-object v7

    .line 821
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 822
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    .line 824
    move-result v7

    .line 827
    if-nez v7, :cond_27

    .line 828
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 830
    move-result-object v4

    .line 833
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 834
    goto :goto_13

    .line 836
    :cond_28
    const/4 v4, 0x0

    .line 837
    :goto_13
    if-eqz v4, :cond_29

    .line 838
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 840
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 843
    :cond_29
    move-object v7, v4

    .line 845
    :cond_2a
    if-nez v7, :cond_33

    .line 846
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 848
    move-result-wide v6

    .line 851
    const-wide v8, 0x7fffffffffffffffL

    .line 852
    cmp-long v4, p2, v8

    .line 857
    if-eqz v4, :cond_2d

    .line 859
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 861
    invoke-virtual {v4, v15}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 863
    move-result-object v4

    .line 866
    iget-wide v8, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 867
    const-wide/16 v11, 0x0

    .line 869
    cmp-long v4, v8, v11

    .line 871
    if-eqz v4, :cond_2c

    .line 873
    add-long/2addr v8, v6

    .line 875
    cmp-long v4, v8, p2

    .line 876
    if-gez v4, :cond_2b

    .line 878
    goto :goto_14

    .line 880
    :cond_2b
    const/4 v4, 0x0

    .line 881
    goto :goto_15

    .line 882
    :cond_2c
    :goto_14
    const/4 v4, 0x1

    .line 883
    :goto_15
    if-nez v4, :cond_2d

    .line 884
    const/4 v0, 0x0

    .line 886
    return-object v0

    .line 887
    :cond_2d
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 888
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 890
    :try_start_0
    const-string v8, "RV CreateView"

    .line 893
    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 895
    invoke-virtual {v4, v15, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 898
    move-result-object v4

    .line 901
    iget-object v8, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 902
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 904
    move-result-object v8

    .line 907
    if-nez v8, :cond_31

    .line 908
    iput v15, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 912
    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 915
    if-eqz v8, :cond_2e

    .line 917
    iget-object v8, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 919
    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 921
    move-result-object v8

    .line 924
    if-eqz v8, :cond_2e

    .line 925
    new-instance v9, Ljava/lang/ref/WeakReference;

    .line 927
    invoke-direct {v9, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 929
    iput-object v9, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 932
    :cond_2e
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 934
    move-result-wide v8

    .line 937
    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 938
    sub-long/2addr v8, v6

    .line 940
    invoke-virtual {v11, v15}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 941
    move-result-object v6

    .line 944
    iget-wide v11, v6, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 945
    const-wide/16 v13, 0x0

    .line 947
    cmp-long v7, v11, v13

    .line 949
    if-nez v7, :cond_2f

    .line 951
    goto :goto_16

    .line 953
    :cond_2f
    const-wide/16 v13, 0x4

    .line 954
    div-long/2addr v11, v13

    .line 956
    const-wide/16 v15, 0x3

    .line 957
    mul-long/2addr v11, v15

    .line 959
    div-long/2addr v8, v13

    .line 960
    add-long/2addr v8, v11

    .line 961
    :goto_16
    iput-wide v8, v6, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 962
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 964
    if-eqz v6, :cond_30

    .line 966
    const-string/jumbo v6, "tryGetViewHolderForPositionByDeadline created new ViewHolder"

    .line 968
    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_30
    move-object v7, v4

    .line 974
    goto :goto_17

    .line 975
    :cond_31
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 976
    const-string v1, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    .line 978
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 980
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 983
    :catchall_0
    move-exception v0

    .line 984
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 985
    throw v0

    .line 988
    :cond_32
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 989
    const-string v3, "Inconsistency detected. Invalid item position "

    .line 991
    const-string v5, "(offset:"

    .line 993
    const-string v6, ").state:"

    .line 995
    invoke-static {v3, v1, v5, v4, v6}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    move-result-object v1

    .line 1000
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 1001
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 1003
    move-result v3

    .line 1006
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 1010
    move-result-object v2

    .line 1013
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1017
    move-result-object v1

    .line 1020
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1021
    throw v0

    .line 1024
    :cond_33
    :goto_17
    if-eqz v3, :cond_35

    .line 1025
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 1027
    iget-boolean v6, v4, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 1029
    if-nez v6, :cond_35

    .line 1031
    iget v6, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 1033
    and-int/lit16 v8, v6, 0x2000

    .line 1035
    if-eqz v8, :cond_34

    .line 1037
    const/4 v8, 0x1

    .line 1039
    goto :goto_18

    .line 1040
    :cond_34
    const/4 v8, 0x0

    .line 1041
    :goto_18
    if-eqz v8, :cond_35

    .line 1042
    and-int/lit16 v6, v6, -0x2001

    .line 1044
    or-int/lit8 v6, v6, 0x0

    .line 1046
    iput v6, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 1048
    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 1050
    if-eqz v4, :cond_35

    .line 1052
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1054
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 1057
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    .line 1059
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1062
    new-instance v4, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 1065
    invoke-direct {v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;-><init>()V

    .line 1067
    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1070
    invoke-virtual {v2, v7, v4}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 1073
    :cond_35
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 1076
    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 1078
    if-eqz v4, :cond_36

    .line 1080
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    .line 1082
    move-result v4

    .line 1085
    if-eqz v4, :cond_36

    .line 1086
    iput v1, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 1088
    goto :goto_1a

    .line 1090
    :cond_36
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    .line 1091
    move-result v4

    .line 1094
    if-eqz v4, :cond_39

    .line 1095
    iget v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 1097
    and-int/2addr v4, v5

    .line 1099
    if-eqz v4, :cond_37

    .line 1100
    const/4 v4, 0x1

    .line 1102
    goto :goto_19

    .line 1103
    :cond_37
    const/4 v4, 0x0

    .line 1104
    :goto_19
    if-nez v4, :cond_39

    .line 1105
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 1107
    move-result v4

    .line 1110
    if-eqz v4, :cond_38

    .line 1111
    goto :goto_1b

    .line 1113
    :cond_38
    :goto_1a
    const/4 v0, 0x1

    .line 1114
    const/4 v1, 0x0

    .line 1115
    const/4 v4, 0x0

    .line 1116
    goto/16 :goto_29

    .line 1117
    :cond_39
    :goto_1b
    sget-boolean v4, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 1119
    if-eqz v4, :cond_3b

    .line 1121
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 1123
    move-result v4

    .line 1126
    if-nez v4, :cond_3a

    .line 1127
    goto :goto_1c

    .line 1129
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1132
    const-string v3, "Removed holder should be bound and it should come here only in pre-layout. Holder: "

    .line 1134
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1139
    invoke-static {v2, v1}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1142
    move-result-object v1

    .line 1145
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1146
    throw v0

    .line 1149
    :cond_3b
    :goto_1c
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    .line 1150
    const/4 v5, 0x0

    .line 1152
    invoke-virtual {v4, v1, v5}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    .line 1153
    move-result v4

    .line 1156
    const/4 v6, 0x0

    .line 1157
    iput-object v6, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1158
    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1160
    iget v8, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 1162
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1164
    move-result-wide v9

    .line 1167
    const-wide v11, 0x7fffffffffffffffL

    .line 1168
    cmp-long v11, p2, v11

    .line 1173
    if-eqz v11, :cond_3e

    .line 1175
    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 1177
    invoke-virtual {v11, v8}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 1179
    move-result-object v8

    .line 1182
    iget-wide v11, v8, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 1183
    const-wide/16 v13, 0x0

    .line 1185
    cmp-long v8, v11, v13

    .line 1187
    if-eqz v8, :cond_3d

    .line 1189
    add-long/2addr v11, v9

    .line 1191
    cmp-long v8, v11, p2

    .line 1192
    if-gez v8, :cond_3c

    .line 1194
    goto :goto_1d

    .line 1196
    :cond_3c
    move v8, v5

    .line 1197
    goto :goto_1e

    .line 1198
    :cond_3d
    :goto_1d
    const/4 v8, 0x1

    .line 1199
    :goto_1e
    if-nez v8, :cond_3e

    .line 1200
    const/4 v0, 0x1

    .line 1202
    move v4, v5

    .line 1203
    goto/16 :goto_28

    .line 1204
    :cond_3e
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 1206
    move-result v8

    .line 1209
    iget-object v11, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1210
    if-eqz v8, :cond_3f

    .line 1212
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1214
    move-result v8

    .line 1217
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1218
    move-result-object v12

    .line 1221
    invoke-static {v2, v11, v8, v12}, Landroidx/recyclerview/widget/RecyclerView;->access$300(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1222
    const/4 v8, 0x1

    .line 1225
    goto :goto_1f

    .line 1226
    :cond_3f
    move v8, v5

    .line 1227
    :goto_1f
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1228
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1230
    iget-object v13, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1233
    if-nez v13, :cond_40

    .line 1235
    const/4 v13, 0x1

    .line 1237
    goto :goto_20

    .line 1238
    :cond_40
    move v13, v5

    .line 1239
    :goto_20
    if-eqz v13, :cond_42

    .line 1240
    iput v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 1242
    iget-boolean v14, v12, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 1244
    if-eqz v14, :cond_41

    .line 1246
    invoke-virtual {v12, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 1248
    move-result-wide v14

    .line 1251
    iput-wide v14, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 1252
    :cond_41
    iget v14, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 1254
    and-int/lit16 v14, v14, -0x208

    .line 1256
    or-int/lit8 v14, v14, 0x1

    .line 1258
    iput v14, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 1260
    const-string v14, "RV OnBindView"

    .line 1262
    invoke-static {v14}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1264
    :cond_42
    iput-object v12, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1267
    sget-boolean v14, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 1269
    if-eqz v14, :cond_46

    .line 1271
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1273
    move-result-object v14

    .line 1276
    if-nez v14, :cond_44

    .line 1277
    sget-object v14, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1279
    invoke-static {v11}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    .line 1281
    move-result v14

    .line 1284
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 1285
    move-result v15

    .line 1288
    if-ne v14, v15, :cond_43

    .line 1289
    goto :goto_21

    .line 1291
    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1292
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1294
    const-string v2, "Temp-detached state out of sync with reality. holder.isTmpDetached(): "

    .line 1296
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 1301
    move-result v2

    .line 1304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1305
    const-string v2, ", attached to window: "

    .line 1308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    invoke-static {v11}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    .line 1313
    move-result v2

    .line 1316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1317
    const-string v2, ", holder: "

    .line 1320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1328
    move-result-object v1

    .line 1331
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1332
    throw v0

    .line 1335
    :cond_44
    :goto_21
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1336
    move-result-object v14

    .line 1339
    if-nez v14, :cond_46

    .line 1340
    sget-object v14, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1342
    invoke-static {v11}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    .line 1344
    move-result v14

    .line 1347
    if-nez v14, :cond_45

    .line 1348
    goto :goto_22

    .line 1350
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1351
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1353
    const-string v2, "Attempting to bind attached holder with no parent (AKA temp detached): "

    .line 1355
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1363
    move-result-object v1

    .line 1366
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1367
    throw v0

    .line 1370
    :cond_46
    :goto_22
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    .line 1371
    move-result-object v14

    .line 1374
    invoke-virtual {v12, v7, v4, v14}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 1375
    if-eqz v13, :cond_49

    .line 1378
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 1380
    if-eqz v4, :cond_47

    .line 1382
    check-cast v4, Ljava/util/ArrayList;

    .line 1384
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1386
    :cond_47
    iget v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 1389
    and-int/lit16 v4, v4, -0x401

    .line 1391
    iput v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 1393
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1395
    move-result-object v4

    .line 1398
    instance-of v12, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1399
    if-eqz v12, :cond_48

    .line 1401
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1403
    const/4 v12, 0x1

    .line 1405
    iput-boolean v12, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 1406
    :cond_48
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1408
    :cond_49
    if-eqz v8, :cond_4a

    .line 1411
    invoke-static {v11, v2}, Landroidx/recyclerview/widget/RecyclerView;->access$400(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1413
    :cond_4a
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1416
    move-result-wide v12

    .line 1419
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 1420
    iget v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 1422
    sub-long/2addr v12, v9

    .line 1424
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 1425
    move-result-object v0

    .line 1428
    iget-wide v8, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 1429
    const-wide/16 v14, 0x0

    .line 1431
    cmp-long v4, v8, v14

    .line 1433
    if-nez v4, :cond_4b

    .line 1435
    goto :goto_23

    .line 1437
    :cond_4b
    const-wide/16 v14, 0x4

    .line 1438
    div-long/2addr v8, v14

    .line 1440
    const-wide/16 v16, 0x3

    .line 1441
    mul-long v8, v8, v16

    .line 1443
    div-long/2addr v12, v14

    .line 1445
    add-long/2addr v12, v8

    .line 1446
    :goto_23
    iput-wide v12, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 1447
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1449
    if-eqz v0, :cond_4c

    .line 1451
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 1453
    move-result v0

    .line 1456
    if-eqz v0, :cond_4c

    .line 1457
    const/4 v0, 0x1

    .line 1459
    goto :goto_24

    .line 1460
    :cond_4c
    move v0, v5

    .line 1461
    :goto_24
    if-eqz v0, :cond_52

    .line 1462
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1464
    invoke-static {v11}, Landroidx/core/view/ViewCompat$Api16Impl;->getImportantForAccessibility(Landroid/view/View;)I

    .line 1466
    move-result v0

    .line 1469
    if-nez v0, :cond_4d

    .line 1470
    const/4 v0, 0x1

    .line 1472
    invoke-static {v11, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1473
    goto :goto_25

    .line 1476
    :cond_4d
    const/4 v0, 0x1

    .line 1477
    :goto_25
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    .line 1478
    if-nez v4, :cond_4e

    .line 1480
    goto :goto_27

    .line 1482
    :cond_4e
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;

    .line 1483
    move-result-object v4

    .line 1486
    instance-of v8, v4, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    .line 1487
    if-eqz v8, :cond_51

    .line 1489
    move-object v8, v4

    .line 1491
    check-cast v8, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    .line 1492
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1494
    invoke-static {v11}, Landroidx/core/view/ViewCompat$Api29Impl;->getAccessibilityDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 1497
    move-result-object v9

    .line 1500
    if-nez v9, :cond_4f

    .line 1501
    goto :goto_26

    .line 1503
    :cond_4f
    instance-of v6, v9, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    .line 1504
    if-eqz v6, :cond_50

    .line 1506
    check-cast v9, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    .line 1508
    iget-object v6, v9, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 1510
    goto :goto_26

    .line 1512
    :cond_50
    new-instance v6, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 1513
    invoke-direct {v6, v9}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 1515
    :goto_26
    if-eqz v6, :cond_51

    .line 1518
    if-eq v6, v8, :cond_51

    .line 1520
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mOriginalItemDelegates:Ljava/util/Map;

    .line 1522
    check-cast v8, Ljava/util/WeakHashMap;

    .line 1524
    invoke-virtual {v8, v11, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    :cond_51
    invoke-static {v11, v4}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 1529
    goto :goto_27

    .line 1532
    :cond_52
    const/4 v0, 0x1

    .line 1533
    :goto_27
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 1534
    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 1536
    if-eqz v4, :cond_53

    .line 1538
    iput v1, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 1540
    :cond_53
    move v4, v0

    .line 1542
    :goto_28
    move v1, v5

    .line 1543
    :goto_29
    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1544
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1546
    move-result-object v5

    .line 1549
    iget-object v6, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1550
    if-nez v5, :cond_54

    .line 1552
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1554
    move-result-object v2

    .line 1557
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1558
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1560
    goto :goto_2a

    .line 1563
    :cond_54
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 1564
    move-result v8

    .line 1567
    if-nez v8, :cond_55

    .line 1568
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1570
    move-result-object v2

    .line 1573
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1574
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1576
    goto :goto_2a

    .line 1579
    :cond_55
    move-object v2, v5

    .line 1580
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1581
    :goto_2a
    iput-object v7, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1583
    if-eqz v3, :cond_56

    .line 1585
    if-eqz v4, :cond_56

    .line 1587
    goto :goto_2b

    .line 1589
    :cond_56
    move v0, v1

    .line 1590
    :goto_2b
    iput-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 1591
    return-object v7

    .line 1593
    :cond_57
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 1594
    const-string v3, "Invalid item position "

    .line 1596
    const-string v4, "("

    .line 1598
    const-string v5, "). Item count:"

    .line 1600
    invoke-static {v3, v1, v4, v1, v5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    move-result-object v1

    .line 1605
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 1606
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 1608
    move-result v3

    .line 1611
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1612
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 1615
    move-result-object v2

    .line 1618
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1622
    move-result-object v1

    .line 1625
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1626
    throw v0
    .line 1629
.end method

.method public final unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    :goto_0
    const/4 p0, 0x0

    .line 17
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 18
    const/4 p0, 0x0

    .line 20
    iput-boolean p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 21
    iget p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 23
    and-int/lit8 p0, p0, -0x21

    .line 25
    iput p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 27
    return-void
    .line 29
.end method

.method public final updateViewCacheSize()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 12
    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    :goto_1
    if-ltz v1, :cond_1

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v2

    .line 30
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 31
    if-le v2, v3, :cond_1

    .line 33
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 38
    goto :goto_1

    .line 40
    :cond_1
    return-void
    .line 41
.end method
