.class public final Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;


# direct methods
.method public constructor <init>(Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$1;->this$0:Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object p0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$1;->this$0:Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;

    .line 2
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v3

    .line 14
    if-eqz v1, :cond_0

    .line 15
    sget-object v0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->sEmptyMoveList:Ljava/util/List;

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/List;

    .line 24
    :goto_0
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    move-result v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    sget-object v1, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->sEmptyChangeList:Ljava/util/List;

    .line 34
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 40
    check-cast v1, Ljava/util/List;

    .line 41
    :goto_1
    iget-object v4, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 45
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 49
    sget-object v4, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->sEmptyAddList:Ljava/util/List;

    .line 51
    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 57
    check-cast v4, Ljava/util/List;

    .line 58
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v5

    .line 63
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v6

    .line 67
    if-eqz v6, :cond_3

    .line 68
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v6

    .line 73
    check-cast v6, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$MoveInfo;

    .line 74
    move-object v7, p0

    .line 76
    check-cast v7, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 77
    iget-object v8, v6, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 79
    iget-object v9, v7, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v6, v6, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 86
    iget-object v8, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 88
    filled-new-array {v8}, [Landroid/view/View;

    .line 90
    move-result-object v8

    .line 93
    invoke-static {v8}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 94
    move-result-object v8

    .line 97
    invoke-interface {v8}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 98
    move-result-object v8

    .line 101
    sget-object v9, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 102
    sget-object v10, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 104
    sget-object v11, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->sSpeedConfig:Lmiuix/animation/base/AnimConfig;

    .line 106
    filled-new-array {v9, v3, v10, v3, v11}, [Ljava/lang/Object;

    .line 108
    move-result-object v11

    .line 111
    invoke-interface {v8, v11}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 112
    iget-object v8, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 115
    filled-new-array {v8}, [Landroid/view/View;

    .line 117
    move-result-object v11

    .line 120
    invoke-static {v11}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 121
    move-result-object v11

    .line 124
    invoke-interface {v11}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 125
    move-result-object v11

    .line 128
    filled-new-array {v9, v3, v10, v3}, [Ljava/lang/Object;

    .line 129
    move-result-object v9

    .line 132
    invoke-interface {v11, v9}, Lmiuix/animation/IStateStyle;->predictDuration([Ljava/lang/Object;)J

    .line 133
    move-result-wide v9

    .line 136
    new-instance v11, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;

    .line 137
    const/4 v12, 0x1

    .line 139
    invoke-direct {v11, v7, v6, v12}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 140
    invoke-virtual {v8, v11, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    goto :goto_3

    .line 146
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 147
    move-result-object v3

    .line 150
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    move-result v5

    .line 154
    if-eqz v5, :cond_4

    .line 155
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    move-result-object v5

    .line 160
    check-cast v5, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;

    .line 161
    invoke-virtual {p0, v5}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->animateChangeImpl(Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;)V

    .line 163
    goto :goto_4

    .line 166
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 167
    move-result v3

    .line 170
    if-nez v3, :cond_7

    .line 171
    new-instance v3, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$2;

    .line 173
    invoke-direct {v3, p0, v4}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$2;-><init>(Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;Ljava/util/List;)V

    .line 175
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 178
    move-result p0

    .line 181
    if-eqz p0, :cond_6

    .line 182
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 184
    move-result p0

    .line 187
    if-nez p0, :cond_5

    .line 188
    goto :goto_5

    .line 190
    :cond_5
    invoke-virtual {v3}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$2;->run()V

    .line 191
    goto :goto_6

    .line 194
    :cond_6
    :goto_5
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    move-result-object p0

    .line 198
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 199
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 201
    const-wide/16 v0, 0x32

    .line 203
    invoke-virtual {p0, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    :cond_7
    :goto_6
    return-void
    .line 208
.end method
