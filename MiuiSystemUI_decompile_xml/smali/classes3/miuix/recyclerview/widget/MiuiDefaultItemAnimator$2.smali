.class public final Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

.field public final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    iput p3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 4
    iput-object p2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 8
    iget-object p0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 10
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 12
    iget-object v1, v0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v0}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->isRunning()Z

    .line 20
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    .line 26
    :cond_0
    return-void

    .line 29
    :pswitch_1
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 30
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 32
    filled-new-array {v0}, [Landroid/view/View;

    .line 34
    move-result-object v0

    .line 37
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 38
    move-result-object v0

    .line 41
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 42
    move-result-object v0

    .line 45
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 46
    const/high16 v2, 0x3f800000    # 1.0f

    .line 48
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    move-result-object v2

    .line 53
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 57
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 58
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 61
    iget-object p0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 63
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 65
    iget-object v1, v0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v0}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->isRunning()Z

    .line 73
    move-result p0

    .line 76
    if-nez p0, :cond_1

    .line 77
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    .line 79
    :cond_1
    return-void

    .line 82
    :goto_0
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 83
    iget-object p0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 85
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 87
    iget-object v1, v0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v0}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->isRunning()Z

    .line 95
    move-result p0

    .line 98
    if-nez p0, :cond_2

    .line 99
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    .line 101
    :cond_2
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 106
.end method
