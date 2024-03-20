.class public final Lcom/android/systemui/qs/customize/TileAdapter$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;

.field public final synthetic val$holder:Lcom/android/systemui/qs/customize/TileAdapter$Holder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/qs/customize/TileAdapter$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$1;->val$holder:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$1;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$1;->val$holder:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 12
    move-result p0

    .line 15
    invoke-static {p1, p0}, Lcom/android/systemui/qs/customize/TileAdapter;->-$$Nest$mselectPosition(Lcom/android/systemui/qs/customize/TileAdapter;I)V

    .line 16
    return-void

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$1;->val$holder:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 22
    move-result p1

    .line 25
    const/4 v0, -0x1

    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    goto :goto_1

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 30
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 32
    if-eqz v0, :cond_1

    .line 34
    invoke-static {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->-$$Nest$mselectPosition(Lcom/android/systemui/qs/customize/TileAdapter;I)V

    .line 36
    :cond_1
    :goto_1
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 40
.end method
