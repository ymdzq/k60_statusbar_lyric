.class public final Lcom/android/systemui/qs/customize/MiuiTileAdapter$3;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/MiuiTileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/MiuiTileAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$3;->this$0:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final canDropOver(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 2
    move-result p2

    .line 5
    const/4 v0, -0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    return v1

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$3;->this$0:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    move-result v0

    .line 18
    iget v2, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mMinNumTiles:I

    .line 19
    const/4 v3, 0x1

    .line 21
    if-le v0, v2, :cond_1

    .line 22
    move v0, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v0, v1

    .line 26
    :goto_0
    if-nez v0, :cond_3

    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 29
    move-result p1

    .line 32
    iget v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 33
    if-ge p1, v0, :cond_3

    .line 35
    if-ge p2, v0, :cond_2

    .line 37
    move v1, v3

    .line 39
    :cond_2
    return v1

    .line 40
    :cond_3
    iget p0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 41
    if-gt p2, p0, :cond_4

    .line 43
    move v1, v3

    .line 45
    :cond_4
    return v1
    .line 46
.end method

.method public final getMovementFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 1
    iget p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 2
    const/4 p1, 0x1

    .line 4
    if-eq p0, p1, :cond_0

    .line 5
    const/4 p1, 0x3

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    const/16 p0, 0xf

    .line 10
    invoke-static {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(I)I

    .line 12
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    invoke-static {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(I)I

    .line 18
    move-result p0

    .line 21
    return p0
    .line 22
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
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$3;->this$0:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->move(II)V

    .line 12
    const/4 p0, 0x1

    .line 15
    return p0
    .line 16
.end method

.method public final onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p2, v0, :cond_0

    .line 4
    move-object p1, v1

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$3;->this$0:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 7
    iget-object v0, p2, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;

    .line 9
    if-ne p1, v0, :cond_1

    .line 11
    return-void

    .line 13
    :cond_1
    const v2, 0x7f0a0985    # @id/tile_label

    .line 14
    const-wide/16 v3, 0x64

    .line 17
    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 21
    move-result v0

    .line 24
    const/4 v5, -0x1

    .line 25
    if-ne v0, v5, :cond_2

    .line 26
    return-void

    .line 28
    :cond_2
    iget-object v5, p2, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTiles:Ljava/util/List;

    .line 29
    check-cast v5, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v5

    .line 36
    check-cast v5, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 37
    iget-object v6, p2, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;

    .line 39
    iget-object v6, v6, Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;

    .line 41
    iget v7, p2, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 43
    if-le v0, v7, :cond_3

    .line 45
    iget-boolean v0, v5, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->isSystem:Z

    .line 47
    if-nez v0, :cond_3

    .line 49
    const/4 v0, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const/4 v0, 0x0

    .line 53
    :goto_0
    invoke-virtual {v6, v0}, Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;->setShowAppLabel(Z)V

    .line 54
    iget-object v0, p2, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;

    .line 57
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 59
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 61
    move-result-object v5

    .line 64
    invoke-virtual {v5, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 65
    move-result-object v5

    .line 68
    const/high16 v6, 0x3f800000    # 1.0f

    .line 69
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 71
    move-result-object v5

    .line 74
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 75
    iget-object v0, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;

    .line 78
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object v5

    .line 83
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 84
    move-result-object v5

    .line 87
    invoke-virtual {v5, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 88
    move-result-object v5

    .line 91
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 92
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;->getAppLabel()Landroid/widget/TextView;

    .line 95
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 99
    move-result-object v0

    .line 102
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 103
    move-result-object v0

    .line 106
    const v5, 0x3f19999a    # 0.6f

    .line 107
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 110
    iput-object v1, p2, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;

    .line 113
    :cond_4
    if-eqz p1, :cond_5

    .line 115
    check-cast p1, Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;

    .line 117
    iput-object p1, p2, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;

    .line 119
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 123
    move-result-object v0

    .line 126
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 127
    move-result-object v0

    .line 130
    const v1, 0x3f99999a    # 1.2f

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 134
    move-result-object v0

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 138
    iget-object p1, p1, Lcom/android/systemui/qs/customize/MiuiTileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;

    .line 141
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 143
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 147
    move-result-object v0

    .line 150
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 151
    move-result-object v0

    .line 154
    const/4 v1, 0x0

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 156
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;->getAppLabel()Landroid/widget/TextView;

    .line 159
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 163
    move-result-object p1

    .line 166
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 167
    move-result-object p1

    .line 170
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 171
    :cond_5
    iget-object p1, p2, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mHandler:Landroid/os/Handler;

    .line 174
    new-instance p2, Lcom/android/systemui/qs/customize/MiuiTileAdapter$3$1;

    .line 176
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/MiuiTileAdapter$3$1;-><init>(Lcom/android/systemui/qs/customize/MiuiTileAdapter$3;)V

    .line 178
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
    .line 184
.end method

.method public final onSwiped()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
