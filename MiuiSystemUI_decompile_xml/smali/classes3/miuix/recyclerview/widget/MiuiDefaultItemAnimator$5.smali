.class public final Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

.field public final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    iput p4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 4
    iput-object p2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;->val$view:Landroid/view/View;

    .line 6
    iput-object p3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v5

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    goto :goto_0

    .line 12
    :pswitch_0
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;->val$view:Landroid/view/View;

    .line 13
    filled-new-array {v0}, [Landroid/view/View;

    .line 15
    move-result-object v0

    .line 18
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 19
    move-result-object v0

    .line 22
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 23
    move-result-object v0

    .line 26
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 27
    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 29
    sget-object v6, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 31
    const/high16 v1, 0x3f800000    # 1.0f

    .line 33
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 35
    move-result-object v7

    .line 38
    move-object v3, v5

    .line 39
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 43
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 44
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 47
    iget-object p0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 49
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 51
    iget-object v1, v0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v0}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->isRunning()Z

    .line 59
    move-result p0

    .line 62
    if-nez p0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    .line 65
    :cond_0
    return-void

    .line 68
    :goto_0
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;->val$view:Landroid/view/View;

    .line 69
    filled-new-array {v0}, [Landroid/view/View;

    .line 71
    move-result-object v0

    .line 74
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 75
    move-result-object v0

    .line 78
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 79
    move-result-object v0

    .line 82
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 83
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 85
    filled-new-array {v1, v5, v2, v5}, [Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 90
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 91
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 94
    iget-object p0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 96
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 98
    iget-object v1, v0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v0}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->isRunning()Z

    .line 106
    move-result p0

    .line 109
    if-nez p0, :cond_1

    .line 110
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    .line 112
    :cond_1
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 116
.end method
