.class public Lcom/android/settings/datetime/MiuiRegionEmptyViewObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "MiuiRegionEmptyViewObserver.java"


# instance fields
.field private mEmptyView:Landroid/view/View;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/settings/datetime/MiuiRegionEmptyViewObserver;->mEmptyView:Landroid/view/View;

    .line 14
    iput-object p2, p0, Lcom/android/settings/datetime/MiuiRegionEmptyViewObserver;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    invoke-virtual {p0}, Lcom/android/settings/datetime/MiuiRegionEmptyViewObserver;->checkItemIsEmpty()V

    return-void
.end method


# virtual methods
.method public checkItemIsEmpty()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/android/settings/datetime/MiuiRegionEmptyViewObserver;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/datetime/MiuiRegionEmptyViewObserver;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/android/settings/datetime/MiuiRegionEmptyViewObserver;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 21
    :goto_0
    iget-object p0, p0, Lcom/android/settings/datetime/MiuiRegionEmptyViewObserver;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onChanged()V
    .locals 0

    .line 27
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/datetime/MiuiRegionEmptyViewObserver;->checkItemIsEmpty()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/datetime/MiuiRegionEmptyViewObserver;->checkItemIsEmpty()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/datetime/MiuiRegionEmptyViewObserver;->checkItemIsEmpty()V

    return-void
.end method
