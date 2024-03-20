.class Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "HeaderViewRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$1;->this$0:Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$1;->this$0:Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 36
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$1;->this$0:Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->getHeadersCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    .line 41
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$1;->this$0:Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->getHeadersCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1

    .line 51
    iget-object p3, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$1;->this$0:Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;

    invoke-virtual {p3}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->getHeadersCount()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$1;->this$0:Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->getHeadersCount()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p3, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    .line 46
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$1;->this$0:Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->getHeadersCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
