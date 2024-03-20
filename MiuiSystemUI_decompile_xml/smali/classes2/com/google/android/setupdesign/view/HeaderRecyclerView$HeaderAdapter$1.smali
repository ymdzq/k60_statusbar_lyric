.class public final Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    return-void
    .line 7
.end method

.method public final onItemRangeChanged(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    .line 2
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 10
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 11
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 13
    return-void
    .line 16
.end method

.method public final onItemRangeInserted(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    .line 2
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 10
    return-void
    .line 13
.end method

.method public final onItemRangeMoved(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    .line 2
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 8
    add-int/lit8 p2, p2, 0x1

    .line 10
    :cond_0
    add-int/lit8 p1, p1, 0x0

    .line 12
    add-int/lit8 p2, p2, 0x0

    .line 14
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 16
    return-void
    .line 19
.end method

.method public final onItemRangeRemoved(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    .line 2
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 10
    return-void
    .line 13
.end method
