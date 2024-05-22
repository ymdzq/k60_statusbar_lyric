.class public final Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/FavoritesModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/FavoritesModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/FavoritesModel;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final canDropOver(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 2
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/FavoritesModel;

    .line 6
    iget p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    .line 8
    if-ge p1, p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final getMovementFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 2
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/FavoritesModel;

    .line 6
    iget p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    .line 8
    if-ge p1, p0, :cond_0

    .line 10
    const/16 p0, 0xf

    .line 12
    invoke-static {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(I)I

    .line 14
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    invoke-static {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(I)I

    .line 20
    move-result p0

    .line 23
    return p0
.end method

.method public final isItemViewSwipeEnabled()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 2
    move-result p1

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 6
    move-result p2

    .line 9
    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/FavoritesModel;

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/FavoritesModel;->onMoveItemInternal(II)V

    .line 12
    const/4 p0, 0x1

    .line 15
    return p0
    .line 16
.end method

.method public final onSwiped()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
