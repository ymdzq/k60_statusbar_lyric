.class public final Landroidx/leanback/widget/BaseGridView$2;
.super Landroidx/leanback/widget/OnChildViewHolderSelectedListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/leanback/widget/BaseGridView;

.field public final synthetic val$position:I


# direct methods
.method public synthetic constructor <init>(Landroidx/leanback/widget/BaseGridView;II)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/leanback/widget/BaseGridView$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/leanback/widget/BaseGridView$2;->this$0:Landroidx/leanback/widget/BaseGridView;

    .line 4
    iput p2, p0, Landroidx/leanback/widget/BaseGridView$2;->val$position:I

    .line 6
    invoke-direct {p0}, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onChildViewHolderSelected(Landroidx/leanback/widget/BaseGridView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/leanback/widget/BaseGridView$2;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    return-void

    .line 7
    :pswitch_0
    iget p1, p0, Landroidx/leanback/widget/BaseGridView$2;->val$position:I

    .line 8
    if-eq p3, p1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/BaseGridView$2;->this$0:Landroidx/leanback/widget/BaseGridView;

    .line 13
    iget-object p1, p1, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 15
    iget-object p1, p1, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 17
    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 24
    throw p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method

.method public final onChildViewHolderSelectedAndPositioned(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseGridView$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    return-void

    .line 7
    :pswitch_0
    iget v0, p0, Landroidx/leanback/widget/BaseGridView$2;->val$position:I

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/BaseGridView$2;->this$0:Landroidx/leanback/widget/BaseGridView;

    .line 13
    iget-object p1, p1, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 15
    iget-object p1, p1, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 17
    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 24
    throw p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
    .line 26
.end method
