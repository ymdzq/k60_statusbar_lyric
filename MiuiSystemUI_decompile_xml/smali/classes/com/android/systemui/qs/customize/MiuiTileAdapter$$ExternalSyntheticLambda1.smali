.class public final synthetic Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/MiuiTileAdapter;ILcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 5
    iput p2, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 2
    iget v0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiTileAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 6
    if-nez p2, :cond_0

    .line 8
    iput v0, p1, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityFromIndex:I

    .line 10
    iget-object p0, p1, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTiles:Ljava/util/List;

    .line 12
    check-cast p0, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 24
    iput-object p0, p1, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityFromLabel:Ljava/lang/CharSequence;

    .line 26
    const/4 p0, 0x2

    .line 28
    iput p0, p1, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAccessibilityAction:I

    .line 29
    const/4 p0, 0x1

    .line 31
    iput-boolean p0, p1, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mNeedsFocus:Z

    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 34
    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;->isSystem:Z

    .line 41
    if-eqz p0, :cond_1

    .line 43
    iget p0, p1, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mEditIndex:I

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    iget p0, p1, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTileDividerIndex:I

    .line 48
    :goto_0
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->move(II)V

    .line 50
    iget p0, p1, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mTileDividerIndex:I

    .line 53
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 55
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 58
    :goto_1
    return-void
    .line 61
.end method
