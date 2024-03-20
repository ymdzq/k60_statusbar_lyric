.class public Lcom/android/settings/emergency/ui/view/SimpleItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SimpleItemTouchHelperCallback.java"


# instance fields
.field private mAdapter:Lcom/android/settings/emergency/ui/view/ItemTouchHelperAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/emergency/ui/view/ItemTouchHelperAdapter;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/settings/emergency/ui/view/SimpleItemTouchHelperCallback;->mAdapter:Lcom/android/settings/emergency/ui/view/ItemTouchHelperAdapter;

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 58
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p1

    if-nez p1, :cond_0

    .line 59
    iget-object p0, p0, Lcom/android/settings/emergency/ui/view/SimpleItemTouchHelperCallback;->mAdapter:Lcom/android/settings/emergency/ui/view/ItemTouchHelperAdapter;

    invoke-interface {p0, p2}, Lcom/android/settings/emergency/ui/view/ItemTouchHelperAdapter;->onItemClear(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    const/4 p0, 0x0

    const/4 p1, 0x3

    .line 23
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result p0

    const/4 p2, 0x2

    invoke-static {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result p1

    or-int/2addr p0, p1

    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settings/emergency/ui/view/SimpleItemTouchHelperCallback;->mAdapter:Lcom/android/settings/emergency/ui/view/ItemTouchHelperAdapter;

    invoke-interface {p0, p2, p3}, Lcom/android/settings/emergency/ui/view/ItemTouchHelperAdapter;->onItemMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    if-eqz p2, :cond_0

    .line 51
    iget-object p0, p0, Lcom/android/settings/emergency/ui/view/SimpleItemTouchHelperCallback;->mAdapter:Lcom/android/settings/emergency/ui/view/ItemTouchHelperAdapter;

    invoke-interface {p0, p1}, Lcom/android/settings/emergency/ui/view/ItemTouchHelperAdapter;->onItemSelect(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 0
    return-void
.end method
