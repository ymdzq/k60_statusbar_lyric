.class public final Landroidx/recyclerview/widget/DefaultItemAnimator;
.super Landroidx/recyclerview/widget/SimpleItemAnimator;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field public final mAddAnimations:Ljava/util/ArrayList;

.field public final mAdditionsList:Ljava/util/ArrayList;

.field public final mChangeAnimations:Ljava/util/ArrayList;

.field public final mChangesList:Ljava/util/ArrayList;

.field public final mMoveAnimations:Ljava/util/ArrayList;

.field public final mMovesList:Ljava/util/ArrayList;

.field public final mPendingAdditions:Ljava/util/ArrayList;

.field public final mPendingChanges:Ljava/util/ArrayList;

.field public final mPendingMoves:Ljava/util/ArrayList;

.field public final mPendingRemovals:Ljava/util/ArrayList;

.field public final mRemoveAnimations:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 80
    return-void
    .line 82
.end method


# virtual methods
.method public final animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 8
    iget-object p0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
    .line 16
.end method

.method public final animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 8

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p3

    .line 6
    move v3, p4

    .line 7
    move v4, p5

    .line 8
    move v5, p6

    .line 9
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 17
    move-result v1

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 21
    move-result v2

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 25
    move-result v3

    .line 28
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 29
    sub-int v4, p5, p3

    .line 32
    int-to-float v4, v4

    .line 34
    sub-float/2addr v4, v1

    .line 35
    float-to-int v4, v4

    .line 36
    sub-int v5, p6, p4

    .line 37
    int-to-float v5, v5

    .line 39
    sub-float/2addr v5, v2

    .line 40
    float-to-int v5, v5

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 45
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 48
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 51
    neg-int v0, v4

    .line 54
    int-to-float v0, v0

    .line 55
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 56
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 58
    neg-int v0, v5

    .line 61
    int-to-float v0, v0

    .line 62
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 63
    const/4 v0, 0x0

    .line 66
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 67
    iget-object p0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 70
    new-instance v7, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 72
    move-object v0, v7

    .line 74
    move-object v1, p1

    .line 75
    move-object v2, p2

    .line 76
    move v3, p3

    .line 77
    move v4, p4

    .line 78
    move v5, p5

    .line 79
    move v6, p6

    .line 80
    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    .line 81
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    const/4 p0, 0x1

    .line 87
    return p0
    .line 88
.end method

.method public final animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 8

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 4
    move-result v1

    .line 7
    float-to-int v1, v1

    .line 8
    add-int v4, p2, v1

    .line 9
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 13
    move-result p2

    .line 16
    float-to-int p2, p2

    .line 17
    add-int v5, p3, p2

    .line 18
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 20
    sub-int p2, p4, v4

    .line 23
    sub-int p3, p5, v5

    .line 25
    if-nez p2, :cond_0

    .line 27
    if-nez p3, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 31
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_0
    if-eqz p2, :cond_1

    .line 36
    neg-int p2, p2

    .line 38
    int-to-float p2, p2

    .line 39
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 40
    :cond_1
    if-eqz p3, :cond_2

    .line 43
    neg-int p2, p3

    .line 45
    int-to-float p2, p2

    .line 46
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 47
    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 50
    new-instance p2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 52
    move-object v2, p2

    .line 54
    move-object v3, p1

    .line 55
    move v6, p4

    .line 56
    move v7, p5

    .line 57
    invoke-direct/range {v2 .. v7}, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    .line 58
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const/4 p0, 0x1

    .line 64
    return p0
    .line 65
.end method

.method public final animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    return-void
    .line 10
.end method

.method public final canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 2
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_3

    .line 7
    iget-boolean p0, p0, Landroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    .line 9
    const/4 p2, 0x0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 14
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    move p0, p2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move p0, v0

    .line 23
    :goto_1
    if-eqz p0, :cond_2

    .line 24
    goto :goto_2

    .line 26
    :cond_2
    move v0, p2

    .line 27
    :cond_3
    :goto_2
    return v0
    .line 28
.end method

.method public final cancelAll(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    move-result p0

    .line 5
    add-int/lit8 p0, p0, -0x1

    .line 6
    :goto_0
    if-ltz p0, :cond_0

    .line 8
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 14
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 22
    add-int/lit8 p0, p0, -0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method

.method public final dispatchFinishedWhenDone()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v2

    .line 16
    add-int/lit8 v2, v2, -0x1

    .line 17
    :goto_0
    const/4 v3, 0x0

    .line 19
    if-ltz v2, :cond_1

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 25
    check-cast v4, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 26
    iget-object v4, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 28
    if-ne v4, p1, :cond_0

    .line 30
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 32
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 35
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 41
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 49
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 54
    move-result v1

    .line 57
    const/high16 v2, 0x3f800000    # 1.0f

    .line 58
    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 62
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 65
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 76
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 79
    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 84
    move-result v4

    .line 87
    add-int/lit8 v4, v4, -0x1

    .line 88
    :goto_1
    if-ltz v4, :cond_5

    .line 90
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v5

    .line 95
    check-cast v5, Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p0, p1, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 98
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 101
    move-result v5

    .line 104
    if-eqz v5, :cond_4

    .line 105
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 107
    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 110
    goto :goto_1

    .line 112
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 115
    move-result v4

    .line 118
    add-int/lit8 v4, v4, -0x1

    .line 119
    :goto_2
    if-ltz v4, :cond_8

    .line 121
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object v5

    .line 126
    check-cast v5, Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 129
    move-result v6

    .line 132
    add-int/lit8 v6, v6, -0x1

    .line 133
    :goto_3
    if-ltz v6, :cond_7

    .line 135
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    move-result-object v7

    .line 140
    check-cast v7, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 141
    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 143
    if-ne v7, p1, :cond_6

    .line 145
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 147
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 150
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 153
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 156
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 159
    move-result v5

    .line 162
    if-eqz v5, :cond_7

    .line 163
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 165
    goto :goto_4

    .line 168
    :cond_6
    add-int/lit8 v6, v6, -0x1

    .line 169
    goto :goto_3

    .line 171
    :cond_7
    :goto_4
    add-int/lit8 v4, v4, -0x1

    .line 172
    goto :goto_2

    .line 174
    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 175
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 177
    move-result v3

    .line 180
    add-int/lit8 v3, v3, -0x1

    .line 181
    :goto_5
    if-ltz v3, :cond_a

    .line 183
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    move-result-object v4

    .line 188
    check-cast v4, Ljava/util/ArrayList;

    .line 189
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 191
    move-result v5

    .line 194
    if-eqz v5, :cond_9

    .line 195
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 197
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 200
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 203
    move-result v4

    .line 206
    if-eqz v4, :cond_9

    .line 207
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 209
    :cond_9
    add-int/lit8 v3, v3, -0x1

    .line 212
    goto :goto_5

    .line 214
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 215
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 220
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 225
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 230
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 235
    return-void
    .line 238
.end method

.method public final endAnimations()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v1

    .line 7
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 8
    const/4 v2, 0x0

    .line 10
    if-ltz v1, :cond_0

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 16
    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 17
    iget-object v4, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 19
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 21
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 23
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 26
    iget-object v2, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 29
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 34
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v1

    .line 43
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 44
    if-ltz v1, :cond_1

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 51
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 52
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 57
    goto :goto_1

    .line 60
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result v1

    .line 66
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 67
    const/high16 v3, 0x3f800000    # 1.0f

    .line 69
    if-ltz v1, :cond_2

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v4

    .line 76
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 77
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 79
    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 81
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 87
    goto :goto_2

    .line 90
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 93
    move-result v1

    .line 96
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 97
    if-ltz v1, :cond_5

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v4

    .line 104
    check-cast v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 105
    iget-object v5, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 107
    if-eqz v5, :cond_3

    .line 109
    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 111
    :cond_3
    iget-object v5, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 114
    if-eqz v5, :cond_4

    .line 116
    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 118
    :cond_4
    goto :goto_3

    .line 121
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    .line 125
    move-result v0

    .line 128
    if-nez v0, :cond_6

    .line 129
    return-void

    .line 131
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 134
    move-result v1

    .line 137
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 138
    if-ltz v1, :cond_9

    .line 140
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    move-result-object v4

    .line 145
    check-cast v4, Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 148
    move-result v5

    .line 151
    :goto_5
    add-int/lit8 v5, v5, -0x1

    .line 152
    if-ltz v5, :cond_8

    .line 154
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    move-result-object v6

    .line 159
    check-cast v6, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 160
    iget-object v7, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 162
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 164
    invoke-virtual {v7, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 166
    invoke-virtual {v7, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 169
    iget-object v6, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 172
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 174
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 177
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 180
    move-result v6

    .line 183
    if-eqz v6, :cond_7

    .line 184
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 186
    :cond_7
    goto :goto_5

    .line 189
    :cond_8
    goto :goto_4

    .line 190
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 193
    move-result v1

    .line 196
    :goto_6
    add-int/lit8 v1, v1, -0x1

    .line 197
    if-ltz v1, :cond_c

    .line 199
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    move-result-object v2

    .line 204
    check-cast v2, Ljava/util/ArrayList;

    .line 205
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 207
    move-result v4

    .line 210
    :goto_7
    add-int/lit8 v4, v4, -0x1

    .line 211
    if-ltz v4, :cond_b

    .line 213
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    move-result-object v5

    .line 218
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 219
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 221
    invoke-virtual {v6, v3}, Landroid/view/View;->setAlpha(F)V

    .line 223
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 226
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 229
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 232
    move-result v5

    .line 235
    if-eqz v5, :cond_a

    .line 236
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 238
    :cond_a
    goto :goto_7

    .line 241
    :cond_b
    goto :goto_6

    .line 242
    :cond_c
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 243
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 245
    move-result v1

    .line 248
    :goto_8
    add-int/lit8 v1, v1, -0x1

    .line 249
    if-ltz v1, :cond_11

    .line 251
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 253
    move-result-object v2

    .line 256
    check-cast v2, Ljava/util/ArrayList;

    .line 257
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 259
    move-result v3

    .line 262
    :goto_9
    add-int/lit8 v3, v3, -0x1

    .line 263
    if-ltz v3, :cond_10

    .line 265
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 267
    move-result-object v4

    .line 270
    check-cast v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 271
    iget-object v5, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 273
    if-eqz v5, :cond_d

    .line 275
    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 277
    :cond_d
    iget-object v5, v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 280
    if-eqz v5, :cond_e

    .line 282
    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 284
    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 287
    move-result v4

    .line 290
    if-eqz v4, :cond_f

    .line 291
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 293
    :cond_f
    goto :goto_9

    .line 296
    :cond_10
    goto :goto_8

    .line 297
    :cond_11
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 298
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 300
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 303
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 305
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 308
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 310
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 313
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 315
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    .line 318
    return-void
    .line 321
.end method

.method public final endChangeAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    move-result v0

    .line 5
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 6
    if-ltz v0, :cond_1

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 14
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 16
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    iget-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 22
    if-nez v2, :cond_0

    .line 24
    iget-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 26
    if-nez v2, :cond_0

    .line 28
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    return-void
    .line 34
.end method

.method public final endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-ne v0, p2, :cond_0

    .line 5
    iput-object v1, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 10
    if-ne v0, p2, :cond_1

    .line 12
    iput-object v1, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 14
    :goto_0
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 20
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 23
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 29
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 32
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return p0
    .line 38
.end method

.method public final isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 68
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 76
    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    iget-object p0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 84
    move-result p0

    .line 87
    if-nez p0, :cond_0

    .line 88
    goto :goto_0

    .line 90
    :cond_0
    const/4 p0, 0x0

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 93
    :goto_1
    return p0
    .line 94
.end method

.method public final resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 6
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 11
    move-result-object v0

    .line 14
    sput-object v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 15
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 19
    move-result-object v0

    .line 22
    sget-object v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 25
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 28
    return-void
    .line 31
.end method

.method public final runPendingAnimations()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    xor-int/2addr v2, v3

    .line 11
    iget-object v4, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    move-result v5

    .line 17
    xor-int/2addr v5, v3

    .line 18
    iget-object v6, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    move-result v7

    .line 24
    xor-int/2addr v7, v3

    .line 25
    iget-object v8, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    move-result v9

    .line 31
    xor-int/2addr v9, v3

    .line 32
    if-nez v2, :cond_0

    .line 33
    if-nez v5, :cond_0

    .line 35
    if-nez v9, :cond_0

    .line 37
    if-nez v7, :cond_0

    .line 39
    return-void

    .line 41
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v10

    .line 45
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v11

    .line 49
    iget-wide v12, v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 50
    if-eqz v11, :cond_1

    .line 52
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v11

    .line 57
    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 58
    iget-object v14, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 60
    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 62
    move-result-object v15

    .line 65
    iget-object v3, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v15, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 71
    move-result-object v3

    .line 74
    const/4 v12, 0x0

    .line 75
    invoke-virtual {v3, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 76
    move-result-object v3

    .line 79
    new-instance v12, Landroidx/recyclerview/widget/DefaultItemAnimator$4;

    .line 80
    invoke-direct {v12, v0, v11, v15, v14}, Landroidx/recyclerview/widget/DefaultItemAnimator$4;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 82
    invoke-virtual {v3, v12}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 85
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 89
    const/4 v3, 0x1

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 94
    const/4 v1, 0x0

    .line 97
    if-eqz v5, :cond_3

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    .line 100
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object v10, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 113
    new-instance v4, Landroidx/recyclerview/widget/DefaultItemAnimator$1;

    .line 116
    invoke-direct {v4, v0, v3, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator$1;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;I)V

    .line 118
    if-eqz v2, :cond_2

    .line 121
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object v3

    .line 126
    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 127
    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 129
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 131
    sget-object v10, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 133
    invoke-static {v3, v4, v12, v13}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 135
    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {v4}, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->run()V

    .line 139
    :cond_3
    :goto_1
    if-eqz v7, :cond_5

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    .line 144
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 149
    iget-object v4, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 157
    new-instance v4, Landroidx/recyclerview/widget/DefaultItemAnimator$1;

    .line 160
    const/4 v6, 0x1

    .line 162
    invoke-direct {v4, v0, v3, v6}, Landroidx/recyclerview/widget/DefaultItemAnimator$1;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;I)V

    .line 163
    if-eqz v2, :cond_4

    .line 166
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    move-result-object v3

    .line 171
    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 172
    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 174
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 176
    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 178
    invoke-static {v3, v4, v12, v13}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 180
    goto :goto_2

    .line 183
    :cond_4
    invoke-virtual {v4}, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->run()V

    .line 184
    :cond_5
    :goto_2
    if-eqz v9, :cond_b

    .line 187
    new-instance v3, Ljava/util/ArrayList;

    .line 189
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 194
    iget-object v4, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 197
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 202
    new-instance v4, Landroidx/recyclerview/widget/DefaultItemAnimator$1;

    .line 205
    const/4 v6, 0x2

    .line 207
    invoke-direct {v4, v0, v3, v6}, Landroidx/recyclerview/widget/DefaultItemAnimator$1;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;I)V

    .line 208
    if-nez v2, :cond_7

    .line 211
    if-nez v5, :cond_7

    .line 213
    if-eqz v7, :cond_6

    .line 215
    goto :goto_3

    .line 217
    :cond_6
    invoke-virtual {v4}, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->run()V

    .line 218
    goto :goto_6

    .line 221
    :cond_7
    :goto_3
    const-wide/16 v8, 0x0

    .line 222
    if-eqz v2, :cond_8

    .line 224
    goto :goto_4

    .line 226
    :cond_8
    move-wide v12, v8

    .line 227
    :goto_4
    if-eqz v5, :cond_9

    .line 228
    iget-wide v5, v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 230
    goto :goto_5

    .line 232
    :cond_9
    move-wide v5, v8

    .line 233
    :goto_5
    if-eqz v7, :cond_a

    .line 234
    iget-wide v8, v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 236
    :cond_a
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 238
    move-result-wide v5

    .line 241
    add-long/2addr v5, v12

    .line 242
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 243
    move-result-object v0

    .line 246
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 247
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 249
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 251
    invoke-static {v0, v4, v5, v6}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 253
    :cond_b
    :goto_6
    return-void
    .line 256
.end method
