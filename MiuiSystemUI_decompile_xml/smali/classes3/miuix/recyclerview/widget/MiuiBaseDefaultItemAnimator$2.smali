.class public final Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;

.field public final synthetic val$addList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$2;->this$0:Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;

    .line 2
    iput-object p2, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$2;->val$addList:Ljava/util/List;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$2;->val$addList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 18
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$2;->this$0:Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;

    .line 20
    check-cast v2, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 22
    iget-object v3, v2, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 29
    filled-new-array {v3}, [Landroid/view/View;

    .line 31
    move-result-object v3

    .line 34
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 35
    move-result-object v3

    .line 38
    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 39
    move-result-object v3

    .line 42
    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 43
    const/high16 v5, 0x3f800000    # 1.0f

    .line 45
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    move-result-object v6

    .line 50
    sget-object v7, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->sSpeedConfig:Lmiuix/animation/base/AnimConfig;

    .line 51
    filled-new-array {v4, v6, v7}, [Ljava/lang/Object;

    .line 53
    move-result-object v6

    .line 56
    invoke-interface {v3, v6}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 57
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 60
    filled-new-array {v3}, [Landroid/view/View;

    .line 62
    move-result-object v6

    .line 65
    invoke-static {v6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 66
    move-result-object v6

    .line 69
    invoke-interface {v6}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 70
    move-result-object v6

    .line 73
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 74
    move-result-object v5

    .line 77
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 78
    move-result-object v4

    .line 81
    invoke-interface {v6, v4}, Lmiuix/animation/IStateStyle;->predictDuration([Ljava/lang/Object;)J

    .line 82
    move-result-wide v4

    .line 85
    new-instance v6, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;

    .line 86
    const/4 v7, 0x2

    .line 88
    invoke-direct {v6, v2, v1, v7}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 89
    invoke-virtual {v3, v6, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    goto :goto_0

    .line 95
    :cond_0
    return-void
    .line 96
.end method
