.class public final Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 8
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    .line 18
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    .line 8
    const/4 v1, 0x1

    .line 10
    if-ge p2, v1, :cond_0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, v0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 17
    const/4 v3, 0x4

    .line 19
    invoke-virtual {v0, p3, v3, p1, p2}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 20
    move-result-object p1

    .line 23
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 27
    or-int/2addr p1, v3

    .line 29
    iput p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result p1

    .line 35
    if-ne p1, v1, :cond_1

    .line 36
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 39
    :goto_1
    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 42
    :cond_2
    return-void
    .line 45
.end method

.method public final onItemRangeInserted(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    .line 8
    const/4 v2, 0x1

    .line 10
    if-ge p2, v2, :cond_0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    iget-object v3, v0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 26
    or-int/2addr p1, v2

    .line 28
    iput p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 29
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result p1

    .line 34
    if-ne p1, v2, :cond_1

    .line 35
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 38
    :goto_1
    if-eqz v2, :cond_2

    .line 39
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 41
    :cond_2
    return-void
.end method

.method public final onItemRangeMoved(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    if-ne p1, p2, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iget-object v2, v0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 16
    const/16 v3, 0x8

    .line 18
    invoke-virtual {v0, v1, v3, p1, p2}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 20
    move-result-object p1

    .line 23
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 27
    or-int/2addr p1, v3

    .line 29
    iput p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result p1

    .line 35
    const/4 p2, 0x1

    .line 36
    if-ne p1, p2, :cond_1

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 40
    :goto_1
    if-eqz p2, :cond_2

    .line 41
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 43
    :cond_2
    return-void
    .line 46
.end method

.method public final onItemRangeRemoved(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    .line 8
    const/4 v2, 0x1

    .line 10
    if-ge p2, v2, :cond_0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    iget-object v3, v0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 17
    const/4 v4, 0x2

    .line 19
    invoke-virtual {v0, v1, v4, p1, p2}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 20
    move-result-object p1

    .line 23
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 27
    or-int/2addr p1, v4

    .line 29
    iput p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 30
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result p1

    .line 35
    if-ne p1, v2, :cond_1

    .line 36
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 39
    :goto_1
    if-eqz v2, :cond_2

    .line 40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 42
    :cond_2
    return-void
    .line 45
.end method

.method public final triggerUpdateProcessor()V
    .locals 2

    .line 1
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Landroidx/recyclerview/widget/RecyclerView$1;

    .line 16
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 18
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 27
    :goto_0
    return-void
    .line 30
.end method
